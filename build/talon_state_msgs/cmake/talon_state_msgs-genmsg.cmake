# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "talon_state_msgs: 3 messages, 0 services")

set(MSG_I_FLAGS "-Italon_state_msgs:/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Italon_state_msgs:/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(talon_state_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/TalonConfig.msg" NAME_WE)
add_custom_target(_talon_state_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "talon_state_msgs" "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/TalonConfig.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/CustomProfileStatus.msg" NAME_WE)
add_custom_target(_talon_state_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "talon_state_msgs" "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/CustomProfileStatus.msg" ""
)

get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/TalonState.msg" NAME_WE)
add_custom_target(_talon_state_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "talon_state_msgs" "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/TalonState.msg" "talon_state_msgs/CustomProfileStatus:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(talon_state_msgs
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/TalonConfig.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/talon_state_msgs
)
_generate_msg_cpp(talon_state_msgs
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/CustomProfileStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/talon_state_msgs
)
_generate_msg_cpp(talon_state_msgs
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/TalonState.msg"
  "${MSG_I_FLAGS}"
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/CustomProfileStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/talon_state_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(talon_state_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/talon_state_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(talon_state_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(talon_state_msgs_generate_messages talon_state_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/TalonConfig.msg" NAME_WE)
add_dependencies(talon_state_msgs_generate_messages_cpp _talon_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/CustomProfileStatus.msg" NAME_WE)
add_dependencies(talon_state_msgs_generate_messages_cpp _talon_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/TalonState.msg" NAME_WE)
add_dependencies(talon_state_msgs_generate_messages_cpp _talon_state_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(talon_state_msgs_gencpp)
add_dependencies(talon_state_msgs_gencpp talon_state_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS talon_state_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(talon_state_msgs
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/TalonConfig.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/talon_state_msgs
)
_generate_msg_eus(talon_state_msgs
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/CustomProfileStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/talon_state_msgs
)
_generate_msg_eus(talon_state_msgs
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/TalonState.msg"
  "${MSG_I_FLAGS}"
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/CustomProfileStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/talon_state_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(talon_state_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/talon_state_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(talon_state_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(talon_state_msgs_generate_messages talon_state_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/TalonConfig.msg" NAME_WE)
add_dependencies(talon_state_msgs_generate_messages_eus _talon_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/CustomProfileStatus.msg" NAME_WE)
add_dependencies(talon_state_msgs_generate_messages_eus _talon_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/TalonState.msg" NAME_WE)
add_dependencies(talon_state_msgs_generate_messages_eus _talon_state_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(talon_state_msgs_geneus)
add_dependencies(talon_state_msgs_geneus talon_state_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS talon_state_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(talon_state_msgs
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/TalonConfig.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/talon_state_msgs
)
_generate_msg_lisp(talon_state_msgs
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/CustomProfileStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/talon_state_msgs
)
_generate_msg_lisp(talon_state_msgs
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/TalonState.msg"
  "${MSG_I_FLAGS}"
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/CustomProfileStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/talon_state_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(talon_state_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/talon_state_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(talon_state_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(talon_state_msgs_generate_messages talon_state_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/TalonConfig.msg" NAME_WE)
add_dependencies(talon_state_msgs_generate_messages_lisp _talon_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/CustomProfileStatus.msg" NAME_WE)
add_dependencies(talon_state_msgs_generate_messages_lisp _talon_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/TalonState.msg" NAME_WE)
add_dependencies(talon_state_msgs_generate_messages_lisp _talon_state_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(talon_state_msgs_genlisp)
add_dependencies(talon_state_msgs_genlisp talon_state_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS talon_state_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(talon_state_msgs
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/TalonConfig.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/talon_state_msgs
)
_generate_msg_nodejs(talon_state_msgs
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/CustomProfileStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/talon_state_msgs
)
_generate_msg_nodejs(talon_state_msgs
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/TalonState.msg"
  "${MSG_I_FLAGS}"
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/CustomProfileStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/talon_state_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(talon_state_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/talon_state_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(talon_state_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(talon_state_msgs_generate_messages talon_state_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/TalonConfig.msg" NAME_WE)
add_dependencies(talon_state_msgs_generate_messages_nodejs _talon_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/CustomProfileStatus.msg" NAME_WE)
add_dependencies(talon_state_msgs_generate_messages_nodejs _talon_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/TalonState.msg" NAME_WE)
add_dependencies(talon_state_msgs_generate_messages_nodejs _talon_state_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(talon_state_msgs_gennodejs)
add_dependencies(talon_state_msgs_gennodejs talon_state_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS talon_state_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(talon_state_msgs
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/TalonConfig.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/talon_state_msgs
)
_generate_msg_py(talon_state_msgs
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/CustomProfileStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/talon_state_msgs
)
_generate_msg_py(talon_state_msgs
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/TalonState.msg"
  "${MSG_I_FLAGS}"
  "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/CustomProfileStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/talon_state_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(talon_state_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/talon_state_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(talon_state_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(talon_state_msgs_generate_messages talon_state_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/TalonConfig.msg" NAME_WE)
add_dependencies(talon_state_msgs_generate_messages_py _talon_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/CustomProfileStatus.msg" NAME_WE)
add_dependencies(talon_state_msgs_generate_messages_py _talon_state_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/talon_state_msgs/msg/TalonState.msg" NAME_WE)
add_dependencies(talon_state_msgs_generate_messages_py _talon_state_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(talon_state_msgs_genpy)
add_dependencies(talon_state_msgs_genpy talon_state_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS talon_state_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/talon_state_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/talon_state_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(talon_state_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET talon_state_msgs_generate_messages_cpp)
  add_dependencies(talon_state_msgs_generate_messages_cpp talon_state_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/talon_state_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/talon_state_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(talon_state_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET talon_state_msgs_generate_messages_eus)
  add_dependencies(talon_state_msgs_generate_messages_eus talon_state_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/talon_state_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/talon_state_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(talon_state_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET talon_state_msgs_generate_messages_lisp)
  add_dependencies(talon_state_msgs_generate_messages_lisp talon_state_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/talon_state_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/talon_state_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(talon_state_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET talon_state_msgs_generate_messages_nodejs)
  add_dependencies(talon_state_msgs_generate_messages_nodejs talon_state_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/talon_state_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/talon_state_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/talon_state_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(talon_state_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET talon_state_msgs_generate_messages_py)
  add_dependencies(talon_state_msgs_generate_messages_py talon_state_msgs_generate_messages_py)
endif()
