cmake_minimum_required(VERSION 2.8.3)
project(teleop_joystick_control)

include ("../cmake_modules/CMakeOpt.cmake")

find_package(catkin REQUIRED COMPONENTS
	actionlib
	cmake_modules
	control_msgs
	dynamic_reconfigure
	dynamic_reconfigure_wrapper
	roscpp
	std_srvs
	talon_state_msgs
	)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${PROJECT_SOURCE_DIR}/cmake)
find_package(Eigen3 REQUIRED)

## Generate messages in the 'msg' folder
add_message_files(
  FILES
  JoystickState.msg
)

# Generate services in the 'srv' folder
add_service_files (
	FILES
	RobotOrient.srv
	)

generate_messages (
	DEPENDENCIES
	std_msgs
	teleop_joystick_control

	)

## Generate dynamic reconfigure parameters in the 'cfg' folder
generate_dynamic_reconfigure_options(
	cfg/TeleopJoystickComp.cfg
	)

## System dependencies are found with CMake's conventions
# find_package(Boost REQUIRED COMPONENTS system)
catkin_package(
	INCLUDE_DIRS
	include
	CATKIN_DEPENDS
	roscpp
	std_msgs
	message_runtime
	message_generation
	control_msgs
	LIBRARIES
	DEPENDS
	)

###########
## Build ##
###########

include_directories(SYSTEM ${EIGEN3_INCLUDE_DIRS})

include_directories(
	include/
	${catkin_INCLUDE_DIRS}
	${Eigen3_INCLUDE_DIRS}
	)

# Add cmake target dependencies of the executable
# same as for the library above. This is needed to force
# talon controller messages to be built before the
# talon controller code tries to use them

add_executable(translate_joystick_data_node src/translate_joystick_data.cpp)
set_target_properties(translate_joystick_data_node PROPERTIES OUTPUT_NAME 
	translate_joystick_data_node PREFIX "")
target_link_libraries(translate_joystick_data_node
	${catkin_LIBRARIES}
	)

add_dependencies(translate_joystick_data_node
	${${PROJECT_NAME}_EXPORTED_TARGETS}
	${catkin_EXPORTED_TARGETS}
	)

add_executable(snap_to_nearest_goal src/snap_to_nearest_goal.cpp)
set_target_properties(snap_to_nearest_goal PROPERTIES OUTPUT_NAME 
	snap_to_nearest_goal PREFIX "")
target_link_libraries(snap_to_nearest_goal
	${catkin_LIBRARIES}
	)

add_dependencies(snap_to_nearest_goal
	${${PROJECT_NAME}_EXPORTED_TARGETS}
	${catkin_EXPORTED_TARGETS}
	)
## TOOLS ------------------------------------------------------

# Install ------------------------------------------------------------
# Install header files

#install(DIRECTORY
#launch
#config
#DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
#)
install(DIRECTORY
	config
	DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
	PATTERN *~ EXCLUDE
	PATTERN *.sw? EXCLUDE
	)
