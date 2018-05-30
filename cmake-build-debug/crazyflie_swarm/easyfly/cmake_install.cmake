# Install script for directory: /home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/easyfly/srv" TYPE FILE FILES
    "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/srv/Swarm_Add.srv"
    "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/srv/Learning.srv"
    "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/srv/UpdateParams.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/easyfly/msg" TYPE FILE FILES
    "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/commands.msg"
    "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/LogBlock.msg"
    "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/GenericLogData.msg"
    "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/pos_ctrl_sp.msg"
    "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/raw_ctrl_sp.msg"
    "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/trj_ctrl_sp.msg"
    "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/pos_est.msg"
    "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/pos_est_test.msg"
    "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/output.msg"
    "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/Recording.msg"
    "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/att_est.msg"
    "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/iteration_errs.msg"
    "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/msg/vicon_markernum.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/easyfly/cmake" TYPE FILE FILES "/home/chengque/workspace/catkin_ws/src/cmake-build-debug/crazyflie_swarm/easyfly/catkin_generated/installspace/easyfly-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/chengque/workspace/catkin_ws/src/cmake-build-debug/devel/include/easyfly")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/chengque/workspace/catkin_ws/src/cmake-build-debug/devel/share/common-lisp/ros/easyfly")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/chengque/workspace/catkin_ws/src/cmake-build-debug/devel/lib/python2.7/dist-packages/easyfly")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/chengque/workspace/catkin_ws/src/cmake-build-debug/devel/lib/python2.7/dist-packages/easyfly")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/chengque/workspace/catkin_ws/src/cmake-build-debug/crazyflie_swarm/easyfly/catkin_generated/installspace/easyfly.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/easyfly/cmake" TYPE FILE FILES "/home/chengque/workspace/catkin_ws/src/cmake-build-debug/crazyflie_swarm/easyfly/catkin_generated/installspace/easyfly-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/easyfly/cmake" TYPE FILE FILES
    "/home/chengque/workspace/catkin_ws/src/cmake-build-debug/crazyflie_swarm/easyfly/catkin_generated/installspace/easyflyConfig.cmake"
    "/home/chengque/workspace/catkin_ws/src/cmake-build-debug/crazyflie_swarm/easyfly/catkin_generated/installspace/easyflyConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/easyfly" TYPE FILE FILES "/home/chengque/workspace/catkin_ws/src/crazyflie_swarm/easyfly/package.xml")
endif()

