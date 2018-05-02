#!/bin/bash
echo "This is for px4 multi-agent simulation"
cd ~/workspace/catkin_ws/src/Firmware
source Tools/setup_gazebo.bash $(pwd) $(pwd)/build_posix_sitl_default
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd) 
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)/Tools/sitl_gazebo 
roslaunch px4 multi_uav_mavros_sitl.launch

