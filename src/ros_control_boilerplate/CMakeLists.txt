cmake_minimum_required(VERSION 2.8.3)
project(ros_control_boilerplate)

include ("../cmake_modules/CMakeOpt.cmake")
set(CMAKE_CXX_STANDARD 17)

find_package(xmlrpcpp REQUIRED)
find_package(rosparam_shortcuts REQUIRED)

find_package(catkin REQUIRED COMPONENTS
  cmake_modules
  realtime_tools
  hardware_interface
  controller_manager
  roscpp
  control_msgs
  trajectory_msgs
  actionlib
  urdf
  std_msgs
  sensor_msgs
  rosparam_shortcuts
  talon_interface
  message_generation
)

add_message_files (
  FILES
  AutoMode.msg
  AutoModeStatus.msg
)

add_service_files (
  FILES
  set_limit_switch.srv
  LineBreakSensors.srv
)

generate_messages(
  DEPENDENCIES
  std_msgs
  ros_control_boilerplate
)

#set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${PROJECT_SOURCE_DIR}/cmake)

catkin_package(
  INCLUDE_DIRS
    include
  CATKIN_DEPENDS
	hardware_interface
	controller_manager
	control_msgs
	trajectory_msgs
	actionlib
	urdf
	std_msgs
	sensor_msgs
	rosparam_shortcuts
	talon_interface
	message_runtime
  LIBRARIES
)

###########
## Build ##
###########

include_directories(
  include/
  ${catkin_INCLUDE_DIRS}
)

add_library(frc_robot_interface STATIC
	src/frc_robot_interface.cpp
	src/generic_hw_control_loop.cpp)

# Don't build sim code for the Rio or Jetson -
# saves time and space for something which will
# never be run
if (NOT (("${ARM_PREFIX}" STREQUAL "arm-frc2020-linux-gnueabi") OR
	     ("${CMAKE_LIBRARY_ARCHITECTURE}" STREQUAL "arm-linux-gnueabihf") OR
		 ("${CMAKE_LIBRARY_ARCHITECTURE}" STREQUAL "aarch64-linux-gnu") )) 
    # Sim version of main control
    # executable.  For now this just prints debugging
    # info for testing code which doens't actually hit
    # RoboRIO or CAN hardware. Eventually expand into
    # controlling some sort of sim?
	add_executable(frcrobot_sim_main 
		src/frcrobot_sim_main.cpp
		src/frcrobot_sim_interface.cpp
	)

	target_link_libraries(frcrobot_sim_main
		${catkin_LIBRARIES}
		frc_robot_interface
	)

    # Forces messages to be generated before
    # the target which uses them
	add_dependencies(frcrobot_sim_main
		${${PROJECT_NAME}_EXPORTED_TARGETS}
		${catkin_EXPORTED_TARGETS}
	)

	install(TARGETS
	  frcrobot_sim_main
	  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
	  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
	)
endif()

# Main control executable
set (FRCROBOT_HW_MAIN_SRCS 
	src/frcrobot_hw_main.cpp
	src/frcrobot_hw_interface.cpp
)

#for CTRE
set (CTRE_SYSROOT ${CMAKE_CURRENT_SOURCE_DIR}/../../CTRE)
set (MELODIC_LIB_SYSROOT ${CMAKE_CURRENT_SOURCE_DIR}/../../aarch64_root/opt/ros/melodic/lib)

set (MELODIC_USER_LIBS
	${MELODIC_LIB_SYSROOT}/libeigen_conversions.so
	${MELODIC_LIB_SYSROOT}/liborocos-kdl.so.1.4
)

include_directories(
	${catkin_INCLUDE_DIRS}
	${CTRE_SYSROOT}/include
)

if ("${CMAKE_LIBRARY_ARCHITECTURE}" STREQUAL "arm-linux-gnueabihf") # Jetson TK1
	set (CTRE_LIB_DIR ${CTRE_SYSROOT}/lib/ctre/linux/raspbian/static)    # Who knows if this will work
elseif ("${CMAKE_LIBRARY_ARCHITECTURE}" STREQUAL "aarch64-linux-gnu") # Jetson TX1/TX2
	set (CTRE_LIB_DIR ${CTRE_SYSROOT}/lib/ctre/linux/jetsontx/static)
else() # x86-64, hopefully. First person to try and build native on a Mac gets kicked off the team
	set (CTRE_LIB_DIR ${CTRE_SYSROOT}/lib/ctre/linux/x86-64/static)
endif()
  
# All platforms need these, they just live
# in different dirs for different architectures
set (CTRE_USER_LIBS
	${CTRE_LIB_DIR}/libCTRE_Phoenix.a
	${CTRE_LIB_DIR}/libCTRE_PhoenixCCI.a
	${CTRE_LIB_DIR}/libCTRE_PhoenixCore.a
	${CTRE_LIB_DIR}/libCTRE_PhoenixCanutils.a
	${CTRE_LIB_DIR}/libCTRE_PhoenixPlatform_socketcan.a
	${CTRE_LIB_DIR}/libCTRE_PhoenixDiagnostics.a
)

# Add socketcan library to everything but the Rio
# This adds code to use linux CAN sockets to talk to
# the CAN bus for the Jetson
# Also add all of the wpilib code needed to talk to PCM and PDP
if (NOT "${ARM_PREFIX}" STREQUAL "arm-frc2020-linux-gnueabi")

	#Phoenix_sim_main goes here
	if (NOT (("${CMAKE_LIBRARY_ARCHITECTURE}" STREQUAL "arm-linux-gnueabihf") OR
		      "${CMAKE_LIBRARY_ARCHITECTURE}" STREQUAL "aarch64-linux-gnu"))  
		add_executable(frcrobot_phoenixsim_main
			src/frcrobot_phoenixsim_interface.cpp
			src/frcrobot_phoenixsim_main.cpp
			src/frcrobot_hw_interface.cpp
		)

		if (NOT (("${CMAKE_LIBRARY_ARCHITECTURE}" STREQUAL "arm-linux-gnueabihf") OR
				  "${CMAKE_LIBRARY_ARCHITECTURE}" STREQUAL "aarch64-linux-gnu"))  
			set (CTRE_DIAGNOSTIC_LIBS 
				${CTRE_LIB_DIR}/libCTRE_PhoenixDiagnostics.a
			)
		endif()
		target_link_libraries(frcrobot_phoenixsim_main
			${catkin_LIBRARIES}
			${CTRE_LIB_DIR}/libCTRE_Phoenix.a
			${CTRE_LIB_DIR}/libCTRE_PhoenixCanutils.a
			${CTRE_LIB_DIR}/libCTRE_PhoenixCCI.a
			${CTRE_LIB_DIR}/libCTRE_PhoenixCore.a
			${CTRE_LIB_DIR}/../shared/libCTRE_PhoenixPlatform_sim.so
			${CTRE_DIAGNOSTIC_LIBS}
			frc_robot_interface
		)
		## Add cmake target dependencies of the executable
		## same as for the library above. This is needed to force
		## talon controller messages to be built before the
		## talon controller code tries to use them
		add_dependencies(frcrobot_phoenixsim_main
			${${PROJECT_NAME}_EXPORTED_TARGETS}
			${catkin_EXPORTED_TARGETS}
		)

		# Install executable on the off chance you'd ever
		# want to run sim on the RoboRIO
		install(TARGETS
		  frcrobot_phoenixsim_main
		  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
		  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
		)
	endif()

	#end Phoenix_sim_main
endif()

#if (NOT (("${CMAKE_LIBRARY_ARCHITECTURE}" STREQUAL "arm-linux-gnueabihf") OR
#		  "${CMAKE_LIBRARY_ARCHITECTURE}" STREQUAL "aarch64-linux-gnu"))  
#	set (CTRE_USER_LIBS 
#		${CTRE_USER_LIBS}
#		${CTRE_LIB_DIR}/libCTRE_PhoenixDiagnostics.a
#	)
#endif()

add_executable(frcrobot_hw_main ${FRCROBOT_HW_MAIN_SRCS})

# Link against wpi user libraries for CAN talon and navX-MXP code and
# wpilib for HAL, driver station, and so on
if (NOT ("${CMAKE_CROSS_COMPILE_PREFIX}" STREQUAL ""))

target_link_libraries(frcrobot_hw_main
	${catkin_LIBRARIES}
	${CTRE_USER_LIBS}
	frc_robot_interface
	${xmlrpcpp_LIBRARIES}
	${rosparam_shortcuts_LIBRARIES}
	${MELODIC_USER_LIBS}
)
else()
target_link_libraries(frcrobot_hw_main
	${catkin_LIBRARIES}
	${CTRE_USER_LIBS}
	frc_robot_interface
)
endif()

## Add cmake target dependencies of the executable
## same as for the library above. This is needed to force
## talon controller messages to be built before the
## talon controller code tries to use them
add_dependencies(frcrobot_hw_main
  ${${PROJECT_NAME}_EXPORTED_TARGETS}
  ${catkin_EXPORTED_TARGETS}
)

add_executable(q_to_rpy src/q_to_rpy.cpp)
target_link_libraries(q_to_rpy
	${catkin_LIBRARIES}
	${CTRE_USER_LIBS}
)

add_dependencies(q_to_rpy
  ${${PROJECT_NAME}_EXPORTED_TARGETS}
  ${catkin_EXPORTED_TARGETS}
)
## Install ------------------------------------------------------------

# Install executables
install(TARGETS
  frcrobot_hw_main
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

if (0)
# Test trajectory generator node
add_executable(${PROJECT_NAME}_test_trajectory src/tools/test_trajectory.cpp)
set_target_properties(${PROJECT_NAME}_test_trajectory PROPERTIES OUTPUT_NAME test_trajectory PREFIX "")
target_link_libraries(${PROJECT_NAME}_test_trajectory
  ${catkin_LIBRARIES}
)

## TOOLS ------------------------------------------------------

# Tool for analyzing controller performance
add_executable(${PROJECT_NAME}_controller_to_csv_main 
	src/tools/controller_to_csv_main.cpp
	src/tools/controller_to_csv.cpp)
set_target_properties(${PROJECT_NAME}_controller_to_csv_main PROPERTIES OUTPUT_NAME controller_to_csv_main PREFIX "")
target_link_libraries(${PROJECT_NAME}_controller_to_csv_main
  ${Gflags_LIBRARIES}
  ${catkin_LIBRARIES}
)

# Tool for analyzing controller performance
add_library(csv_to_controller src/tools/csv_to_controller.cpp)
target_link_libraries(csv_to_controller
  ${catkin_LIBRARIES}
)
add_executable(${PROJECT_NAME}_csv_to_controller_main 
	src/tools/csv_to_controller_main.cpp
	src/tools/csv_to_controller.cpp)
set_target_properties(${PROJECT_NAME}_csv_to_controller_main PROPERTIES OUTPUT_NAME csv_to_controller_main PREFIX "")
target_link_libraries(${PROJECT_NAME}_csv_to_controller_main
  ${Gflags_LIBRARIES}
  ${catkin_LIBRARIES}
)

# Tool for controlling a robot from keyboard
add_executable(${PROJECT_NAME}_keyboard_teleop src/tools/keyboard_teleop.cpp)
set_target_properties(${PROJECT_NAME}_keyboard_teleop PROPERTIES OUTPUT_NAME keyboard_teleop PREFIX "")
target_link_libraries(${PROJECT_NAME}_keyboard_teleop
  ${catkin_LIBRARIES}

install(TARGETS
    ${PROJECT_NAME}_test_trajectory
    ${PROJECT_NAME}_controller_to_csv_main
    ${PROJECT_NAME}_csv_to_controller_main
    ${PROJECT_NAME}_keyboard_teleop
    
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
)
endif()

# Install header files
install(DIRECTORY 
	include/${PROJECT_NAME}
	DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
	PATTERN *~ EXCLUDE
	PATTERN *.sw? EXCLUDE
)

install(DIRECTORY
	launch
	config
	urdf
	DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
	PATTERN *~ EXCLUDE
	PATTERN *.sw? EXCLUDE
)
