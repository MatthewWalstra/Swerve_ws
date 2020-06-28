# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "imu_zero: 0 messages, 1 services")

set(MSG_I_FLAGS "-Iroscpp:/opt/ros/melodic/share/roscpp/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(imu_zero_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/imu_zero/srv/ImuZeroAngle.srv" NAME_WE)
add_custom_target(_imu_zero_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "imu_zero" "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/imu_zero/srv/ImuZeroAngle.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(imu_zero
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/imu_zero/srv/ImuZeroAngle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/imu_zero
)

### Generating Module File
_generate_module_cpp(imu_zero
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/imu_zero
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(imu_zero_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(imu_zero_generate_messages imu_zero_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/imu_zero/srv/ImuZeroAngle.srv" NAME_WE)
add_dependencies(imu_zero_generate_messages_cpp _imu_zero_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(imu_zero_gencpp)
add_dependencies(imu_zero_gencpp imu_zero_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS imu_zero_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(imu_zero
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/imu_zero/srv/ImuZeroAngle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/imu_zero
)

### Generating Module File
_generate_module_eus(imu_zero
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/imu_zero
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(imu_zero_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(imu_zero_generate_messages imu_zero_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/imu_zero/srv/ImuZeroAngle.srv" NAME_WE)
add_dependencies(imu_zero_generate_messages_eus _imu_zero_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(imu_zero_geneus)
add_dependencies(imu_zero_geneus imu_zero_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS imu_zero_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(imu_zero
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/imu_zero/srv/ImuZeroAngle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/imu_zero
)

### Generating Module File
_generate_module_lisp(imu_zero
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/imu_zero
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(imu_zero_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(imu_zero_generate_messages imu_zero_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/imu_zero/srv/ImuZeroAngle.srv" NAME_WE)
add_dependencies(imu_zero_generate_messages_lisp _imu_zero_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(imu_zero_genlisp)
add_dependencies(imu_zero_genlisp imu_zero_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS imu_zero_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(imu_zero
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/imu_zero/srv/ImuZeroAngle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/imu_zero
)

### Generating Module File
_generate_module_nodejs(imu_zero
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/imu_zero
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(imu_zero_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(imu_zero_generate_messages imu_zero_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/imu_zero/srv/ImuZeroAngle.srv" NAME_WE)
add_dependencies(imu_zero_generate_messages_nodejs _imu_zero_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(imu_zero_gennodejs)
add_dependencies(imu_zero_gennodejs imu_zero_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS imu_zero_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(imu_zero
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/imu_zero/srv/ImuZeroAngle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imu_zero
)

### Generating Module File
_generate_module_py(imu_zero
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imu_zero
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(imu_zero_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(imu_zero_generate_messages imu_zero_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/imu_zero/srv/ImuZeroAngle.srv" NAME_WE)
add_dependencies(imu_zero_generate_messages_py _imu_zero_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(imu_zero_genpy)
add_dependencies(imu_zero_genpy imu_zero_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS imu_zero_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/imu_zero)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/imu_zero
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_cpp)
  add_dependencies(imu_zero_generate_messages_cpp roscpp_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(imu_zero_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(imu_zero_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET imu_zero_generate_messages_cpp)
  add_dependencies(imu_zero_generate_messages_cpp imu_zero_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/imu_zero)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/imu_zero
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_eus)
  add_dependencies(imu_zero_generate_messages_eus roscpp_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(imu_zero_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(imu_zero_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET imu_zero_generate_messages_eus)
  add_dependencies(imu_zero_generate_messages_eus imu_zero_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/imu_zero)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/imu_zero
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_lisp)
  add_dependencies(imu_zero_generate_messages_lisp roscpp_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(imu_zero_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(imu_zero_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET imu_zero_generate_messages_lisp)
  add_dependencies(imu_zero_generate_messages_lisp imu_zero_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/imu_zero)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/imu_zero
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_nodejs)
  add_dependencies(imu_zero_generate_messages_nodejs roscpp_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(imu_zero_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(imu_zero_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET imu_zero_generate_messages_nodejs)
  add_dependencies(imu_zero_generate_messages_nodejs imu_zero_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imu_zero)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imu_zero\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imu_zero
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_py)
  add_dependencies(imu_zero_generate_messages_py roscpp_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(imu_zero_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(imu_zero_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET imu_zero_generate_messages_py)
  add_dependencies(imu_zero_generate_messages_py imu_zero_generate_messages_py)
endif()
