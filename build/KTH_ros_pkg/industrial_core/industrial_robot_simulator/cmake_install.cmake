# Install script for directory: /home/casch/yumi_depends_ws/src/KTH_ros_pkg/industrial_core/industrial_robot_simulator

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/casch/yumi_depends_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/casch/yumi_depends_ws/build/KTH_ros_pkg/industrial_core/industrial_robot_simulator/catkin_generated/installspace/industrial_robot_simulator.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/industrial_robot_simulator/cmake" TYPE FILE FILES
    "/home/casch/yumi_depends_ws/build/KTH_ros_pkg/industrial_core/industrial_robot_simulator/catkin_generated/installspace/industrial_robot_simulatorConfig.cmake"
    "/home/casch/yumi_depends_ws/build/KTH_ros_pkg/industrial_core/industrial_robot_simulator/catkin_generated/installspace/industrial_robot_simulatorConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/industrial_robot_simulator" TYPE FILE FILES "/home/casch/yumi_depends_ws/src/KTH_ros_pkg/industrial_core/industrial_robot_simulator/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/industrial_robot_simulator" TYPE PROGRAM FILES "/home/casch/yumi_depends_ws/src/KTH_ros_pkg/industrial_core/industrial_robot_simulator/industrial_robot_simulator")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/industrial_robot_simulator/launch" TYPE DIRECTORY FILES "/home/casch/yumi_depends_ws/src/KTH_ros_pkg/industrial_core/industrial_robot_simulator/launch/")
endif()

