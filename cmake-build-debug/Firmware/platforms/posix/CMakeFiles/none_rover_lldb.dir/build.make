# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/chengque/clion-2018.1.2/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/chengque/clion-2018.1.2/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/chengque/workspace/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/chengque/workspace/catkin_ws/src/cmake-build-debug

# Utility rule file for none_rover_lldb.

# Include the progress variables for this target.
include Firmware/platforms/posix/CMakeFiles/none_rover_lldb.dir/progress.make

Firmware/platforms/posix/CMakeFiles/none_rover_lldb:
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/tmp && /home/chengque/workspace/catkin_ws/src/Firmware/Tools/sitl_run.sh /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/px4 posix-configs/SITL/init/ekf2 lldb none rover /home/chengque/workspace/catkin_ws/src/Firmware /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware

none_rover_lldb: Firmware/platforms/posix/CMakeFiles/none_rover_lldb
none_rover_lldb: Firmware/platforms/posix/CMakeFiles/none_rover_lldb.dir/build.make

.PHONY : none_rover_lldb

# Rule to build all files generated by this target.
Firmware/platforms/posix/CMakeFiles/none_rover_lldb.dir/build: none_rover_lldb

.PHONY : Firmware/platforms/posix/CMakeFiles/none_rover_lldb.dir/build

Firmware/platforms/posix/CMakeFiles/none_rover_lldb.dir/clean:
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/platforms/posix && $(CMAKE_COMMAND) -P CMakeFiles/none_rover_lldb.dir/cmake_clean.cmake
.PHONY : Firmware/platforms/posix/CMakeFiles/none_rover_lldb.dir/clean

Firmware/platforms/posix/CMakeFiles/none_rover_lldb.dir/depend:
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chengque/workspace/catkin_ws/src /home/chengque/workspace/catkin_ws/src/Firmware/platforms/posix /home/chengque/workspace/catkin_ws/src/cmake-build-debug /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/platforms/posix /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/platforms/posix/CMakeFiles/none_rover_lldb.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Firmware/platforms/posix/CMakeFiles/none_rover_lldb.dir/depend

