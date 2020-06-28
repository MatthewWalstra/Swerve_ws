# Install script for directory: /home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/controller_node

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/build/controller_node/catkin_generated/installspace/controller_node.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/controller_node/cmake" TYPE FILE FILES
    "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/build/controller_node/catkin_generated/installspace/controller_nodeConfig.cmake"
    "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/build/controller_node/catkin_generated/installspace/controller_nodeConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/controller_node" TYPE FILE FILES "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/controller_node/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/controller_node" TYPE DIRECTORY FILES
    "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/controller_node/launch"
    "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/controller_node/urdf"
    "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/controller_node/configuration_files"
    "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/controller_node/config"
    "/home/matthew-walstra/Rover_Nano_Swerve/Swerve_ws/src/controller_node/maps"
    REGEX "/[^/]*\\~$" EXCLUDE REGEX "/[^/]*\\.sw[^/]$" EXCLUDE)
endif()
