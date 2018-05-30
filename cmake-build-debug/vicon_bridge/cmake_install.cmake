# Install script for directory: /home/chengque/workspace/catkin_ws/src/vicon_bridge

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vicon_bridge/msg" TYPE FILE FILES
    "/home/chengque/workspace/catkin_ws/src/vicon_bridge/msg/Marker.msg"
    "/home/chengque/workspace/catkin_ws/src/vicon_bridge/msg/Markers.msg"
    "/home/chengque/workspace/catkin_ws/src/vicon_bridge/msg/TfDistortInfo.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vicon_bridge/srv" TYPE FILE FILES
    "/home/chengque/workspace/catkin_ws/src/vicon_bridge/srv/viconCalibrateSegment.srv"
    "/home/chengque/workspace/catkin_ws/src/vicon_bridge/srv/viconGrabPose.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vicon_bridge/cmake" TYPE FILE FILES "/home/chengque/workspace/catkin_ws/src/cmake-build-debug/vicon_bridge/catkin_generated/installspace/vicon_bridge-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/chengque/workspace/catkin_ws/src/cmake-build-debug/devel/include/vicon_bridge")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/chengque/workspace/catkin_ws/src/cmake-build-debug/devel/share/common-lisp/ros/vicon_bridge")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/chengque/workspace/catkin_ws/src/cmake-build-debug/devel/lib/python2.7/dist-packages/vicon_bridge")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/chengque/workspace/catkin_ws/src/cmake-build-debug/devel/lib/python2.7/dist-packages/vicon_bridge")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vicon_bridge" TYPE FILE FILES "/home/chengque/workspace/catkin_ws/src/cmake-build-debug/devel/include/vicon_bridge/tf_distortConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/vicon_bridge" TYPE FILE FILES "/home/chengque/workspace/catkin_ws/src/cmake-build-debug/devel/lib/python2.7/dist-packages/vicon_bridge/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/chengque/workspace/catkin_ws/src/cmake-build-debug/devel/lib/python2.7/dist-packages/vicon_bridge/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/vicon_bridge" TYPE DIRECTORY FILES "/home/chengque/workspace/catkin_ws/src/cmake-build-debug/devel/lib/python2.7/dist-packages/vicon_bridge/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/chengque/workspace/catkin_ws/src/cmake-build-debug/vicon_bridge/catkin_generated/installspace/vicon_bridge.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vicon_bridge/cmake" TYPE FILE FILES "/home/chengque/workspace/catkin_ws/src/cmake-build-debug/vicon_bridge/catkin_generated/installspace/vicon_bridge-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vicon_bridge/cmake" TYPE FILE FILES
    "/home/chengque/workspace/catkin_ws/src/cmake-build-debug/vicon_bridge/catkin_generated/installspace/vicon_bridgeConfig.cmake"
    "/home/chengque/workspace/catkin_ws/src/cmake-build-debug/vicon_bridge/catkin_generated/installspace/vicon_bridgeConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vicon_bridge" TYPE FILE FILES "/home/chengque/workspace/catkin_ws/src/vicon_bridge/package.xml")
endif()

