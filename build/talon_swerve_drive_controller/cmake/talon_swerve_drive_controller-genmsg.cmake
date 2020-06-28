# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "talon_swerve_drive_controller: 0 messages, 2 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/melodic/share/trajectory_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(talon_swerve_drive_controller_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_swerve_drive_controller/srv/MotionProfile.srv" NAME_WE)
add_custom_target(_talon_swerve_drive_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "talon_swerve_drive_controller" "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_swerve_drive_controller/srv/MotionProfile.srv" "trajectory_msgs/JointTrajectory:trajectory_msgs/JointTrajectoryPoint:std_msgs/Header"
)

get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_swerve_drive_controller/srv/SetXY.srv" NAME_WE)
add_custom_target(_talon_swerve_drive_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "talon_swerve_drive_controller" "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_swerve_drive_controller/srv/SetXY.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(talon_swerve_drive_controller
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_swerve_drive_controller/srv/SetXY.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/talon_swerve_drive_controller
)
_generate_srv_cpp(talon_swerve_drive_controller
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_swerve_drive_controller/srv/MotionProfile.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/talon_swerve_drive_controller
)

### Generating Module File
_generate_module_cpp(talon_swerve_drive_controller
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/talon_swerve_drive_controller
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(talon_swerve_drive_controller_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(talon_swerve_drive_controller_generate_messages talon_swerve_drive_controller_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_swerve_drive_controller/srv/MotionProfile.srv" NAME_WE)
add_dependencies(talon_swerve_drive_controller_generate_messages_cpp _talon_swerve_drive_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_swerve_drive_controller/srv/SetXY.srv" NAME_WE)
add_dependencies(talon_swerve_drive_controller_generate_messages_cpp _talon_swerve_drive_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(talon_swerve_drive_controller_gencpp)
add_dependencies(talon_swerve_drive_controller_gencpp talon_swerve_drive_controller_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS talon_swerve_drive_controller_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(talon_swerve_drive_controller
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_swerve_drive_controller/srv/SetXY.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/talon_swerve_drive_controller
)
_generate_srv_eus(talon_swerve_drive_controller
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_swerve_drive_controller/srv/MotionProfile.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/talon_swerve_drive_controller
)

### Generating Module File
_generate_module_eus(talon_swerve_drive_controller
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/talon_swerve_drive_controller
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(talon_swerve_drive_controller_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(talon_swerve_drive_controller_generate_messages talon_swerve_drive_controller_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_swerve_drive_controller/srv/MotionProfile.srv" NAME_WE)
add_dependencies(talon_swerve_drive_controller_generate_messages_eus _talon_swerve_drive_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_swerve_drive_controller/srv/SetXY.srv" NAME_WE)
add_dependencies(talon_swerve_drive_controller_generate_messages_eus _talon_swerve_drive_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(talon_swerve_drive_controller_geneus)
add_dependencies(talon_swerve_drive_controller_geneus talon_swerve_drive_controller_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS talon_swerve_drive_controller_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(talon_swerve_drive_controller
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_swerve_drive_controller/srv/SetXY.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/talon_swerve_drive_controller
)
_generate_srv_lisp(talon_swerve_drive_controller
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_swerve_drive_controller/srv/MotionProfile.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/talon_swerve_drive_controller
)

### Generating Module File
_generate_module_lisp(talon_swerve_drive_controller
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/talon_swerve_drive_controller
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(talon_swerve_drive_controller_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(talon_swerve_drive_controller_generate_messages talon_swerve_drive_controller_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_swerve_drive_controller/srv/MotionProfile.srv" NAME_WE)
add_dependencies(talon_swerve_drive_controller_generate_messages_lisp _talon_swerve_drive_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_swerve_drive_controller/srv/SetXY.srv" NAME_WE)
add_dependencies(talon_swerve_drive_controller_generate_messages_lisp _talon_swerve_drive_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(talon_swerve_drive_controller_genlisp)
add_dependencies(talon_swerve_drive_controller_genlisp talon_swerve_drive_controller_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS talon_swerve_drive_controller_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(talon_swerve_drive_controller
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_swerve_drive_controller/srv/SetXY.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/talon_swerve_drive_controller
)
_generate_srv_nodejs(talon_swerve_drive_controller
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_swerve_drive_controller/srv/MotionProfile.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/talon_swerve_drive_controller
)

### Generating Module File
_generate_module_nodejs(talon_swerve_drive_controller
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/talon_swerve_drive_controller
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(talon_swerve_drive_controller_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(talon_swerve_drive_controller_generate_messages talon_swerve_drive_controller_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_swerve_drive_controller/srv/MotionProfile.srv" NAME_WE)
add_dependencies(talon_swerve_drive_controller_generate_messages_nodejs _talon_swerve_drive_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_swerve_drive_controller/srv/SetXY.srv" NAME_WE)
add_dependencies(talon_swerve_drive_controller_generate_messages_nodejs _talon_swerve_drive_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(talon_swerve_drive_controller_gennodejs)
add_dependencies(talon_swerve_drive_controller_gennodejs talon_swerve_drive_controller_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS talon_swerve_drive_controller_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(talon_swerve_drive_controller
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_swerve_drive_controller/srv/SetXY.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/talon_swerve_drive_controller
)
_generate_srv_py(talon_swerve_drive_controller
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_swerve_drive_controller/srv/MotionProfile.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/talon_swerve_drive_controller
)

### Generating Module File
_generate_module_py(talon_swerve_drive_controller
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/talon_swerve_drive_controller
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(talon_swerve_drive_controller_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(talon_swerve_drive_controller_generate_messages talon_swerve_drive_controller_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_swerve_drive_controller/srv/MotionProfile.srv" NAME_WE)
add_dependencies(talon_swerve_drive_controller_generate_messages_py _talon_swerve_drive_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_swerve_drive_controller/srv/SetXY.srv" NAME_WE)
add_dependencies(talon_swerve_drive_controller_generate_messages_py _talon_swerve_drive_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(talon_swerve_drive_controller_genpy)
add_dependencies(talon_swerve_drive_controller_genpy talon_swerve_drive_controller_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS talon_swerve_drive_controller_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/talon_swerve_drive_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/talon_swerve_drive_controller
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(talon_swerve_drive_controller_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(talon_swerve_drive_controller_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET trajectory_msgs_generate_messages_cpp)
  add_dependencies(talon_swerve_drive_controller_generate_messages_cpp trajectory_msgs_generate_messages_cpp)
endif()
if(TARGET talon_swerve_drive_controller_generate_messages_cpp)
  add_dependencies(talon_swerve_drive_controller_generate_messages_cpp talon_swerve_drive_controller_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/talon_swerve_drive_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/talon_swerve_drive_controller
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(talon_swerve_drive_controller_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(talon_swerve_drive_controller_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET trajectory_msgs_generate_messages_eus)
  add_dependencies(talon_swerve_drive_controller_generate_messages_eus trajectory_msgs_generate_messages_eus)
endif()
if(TARGET talon_swerve_drive_controller_generate_messages_eus)
  add_dependencies(talon_swerve_drive_controller_generate_messages_eus talon_swerve_drive_controller_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/talon_swerve_drive_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/talon_swerve_drive_controller
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(talon_swerve_drive_controller_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(talon_swerve_drive_controller_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET trajectory_msgs_generate_messages_lisp)
  add_dependencies(talon_swerve_drive_controller_generate_messages_lisp trajectory_msgs_generate_messages_lisp)
endif()
if(TARGET talon_swerve_drive_controller_generate_messages_lisp)
  add_dependencies(talon_swerve_drive_controller_generate_messages_lisp talon_swerve_drive_controller_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/talon_swerve_drive_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/talon_swerve_drive_controller
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(talon_swerve_drive_controller_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(talon_swerve_drive_controller_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET trajectory_msgs_generate_messages_nodejs)
  add_dependencies(talon_swerve_drive_controller_generate_messages_nodejs trajectory_msgs_generate_messages_nodejs)
endif()
if(TARGET talon_swerve_drive_controller_generate_messages_nodejs)
  add_dependencies(talon_swerve_drive_controller_generate_messages_nodejs talon_swerve_drive_controller_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/talon_swerve_drive_controller)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/talon_swerve_drive_controller\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/talon_swerve_drive_controller
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(talon_swerve_drive_controller_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(talon_swerve_drive_controller_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET trajectory_msgs_generate_messages_py)
  add_dependencies(talon_swerve_drive_controller_generate_messages_py trajectory_msgs_generate_messages_py)
endif()
if(TARGET talon_swerve_drive_controller_generate_messages_py)
  add_dependencies(talon_swerve_drive_controller_generate_messages_py talon_swerve_drive_controller_generate_messages_py)
endif()
