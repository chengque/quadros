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

# Utility rule file for jmavsim_rover.

# Include the progress variables for this target.
include Firmware/platforms/posix/CMakeFiles/jmavsim_rover.dir/progress.make

Firmware/platforms/posix/CMakeFiles/jmavsim_rover:
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/tmp && /home/chengque/workspace/catkin_ws/src/Firmware/Tools/sitl_run.sh /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/px4 posix-configs/SITL/init/ekf2 none jmavsim rover /home/chengque/workspace/catkin_ws/src/Firmware /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware

jmavsim_rover: Firmware/platforms/posix/CMakeFiles/jmavsim_rover
jmavsim_rover: Firmware/platforms/posix/CMakeFiles/jmavsim_rover.dir/build.make

.PHONY : jmavsim_rover

# Rule to build all files generated by this target.
Firmware/platforms/posix/CMakeFiles/jmavsim_rover.dir/build: jmavsim_rover

.PHONY : Firmware/platforms/posix/CMakeFiles/jmavsim_rover.dir/build

Firmware/platforms/posix/CMakeFiles/jmavsim_rover.dir/clean:
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/platforms/posix && $(CMAKE_COMMAND) -P CMakeFiles/jmavsim_rover.dir/cmake_clean.cmake
.PHONY : Firmware/platforms/posix/CMakeFiles/jmavsim_rover.dir/clean

Firmware/platforms/posix/CMakeFiles/jmavsim_rover.dir/depend:
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chengque/workspace/catkin_ws/src /home/chengque/workspace/catkin_ws/src/Firmware/platforms/posix /home/chengque/workspace/catkin_ws/src/cmake-build-debug /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/platforms/posix /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/platforms/posix/CMakeFiles/jmavsim_rover.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Firmware/platforms/posix/CMakeFiles/jmavsim_rover.dir/depend

