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

# Include any dependencies generated for this target.
include vicon_bridge/CMakeFiles/msvc_bridge.dir/depend.make

# Include the progress variables for this target.
include vicon_bridge/CMakeFiles/msvc_bridge.dir/progress.make

# Include the compile flags for this target's objects.
include vicon_bridge/CMakeFiles/msvc_bridge.dir/flags.make

vicon_bridge/CMakeFiles/msvc_bridge.dir/src/msvc_bridge.cpp.o: vicon_bridge/CMakeFiles/msvc_bridge.dir/flags.make
vicon_bridge/CMakeFiles/msvc_bridge.dir/src/msvc_bridge.cpp.o: ../vicon_bridge/src/msvc_bridge.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chengque/workspace/catkin_ws/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object vicon_bridge/CMakeFiles/msvc_bridge.dir/src/msvc_bridge.cpp.o"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/vicon_bridge && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/msvc_bridge.dir/src/msvc_bridge.cpp.o -c /home/chengque/workspace/catkin_ws/src/vicon_bridge/src/msvc_bridge.cpp

vicon_bridge/CMakeFiles/msvc_bridge.dir/src/msvc_bridge.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/msvc_bridge.dir/src/msvc_bridge.cpp.i"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/vicon_bridge && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chengque/workspace/catkin_ws/src/vicon_bridge/src/msvc_bridge.cpp > CMakeFiles/msvc_bridge.dir/src/msvc_bridge.cpp.i

vicon_bridge/CMakeFiles/msvc_bridge.dir/src/msvc_bridge.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/msvc_bridge.dir/src/msvc_bridge.cpp.s"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/vicon_bridge && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chengque/workspace/catkin_ws/src/vicon_bridge/src/msvc_bridge.cpp -o CMakeFiles/msvc_bridge.dir/src/msvc_bridge.cpp.s

vicon_bridge/CMakeFiles/msvc_bridge.dir/src/msvc_bridge.cpp.o.requires:

.PHONY : vicon_bridge/CMakeFiles/msvc_bridge.dir/src/msvc_bridge.cpp.o.requires

vicon_bridge/CMakeFiles/msvc_bridge.dir/src/msvc_bridge.cpp.o.provides: vicon_bridge/CMakeFiles/msvc_bridge.dir/src/msvc_bridge.cpp.o.requires
	$(MAKE) -f vicon_bridge/CMakeFiles/msvc_bridge.dir/build.make vicon_bridge/CMakeFiles/msvc_bridge.dir/src/msvc_bridge.cpp.o.provides.build
.PHONY : vicon_bridge/CMakeFiles/msvc_bridge.dir/src/msvc_bridge.cpp.o.provides

vicon_bridge/CMakeFiles/msvc_bridge.dir/src/msvc_bridge.cpp.o.provides.build: vicon_bridge/CMakeFiles/msvc_bridge.dir/src/msvc_bridge.cpp.o


# Object files for target msvc_bridge
msvc_bridge_OBJECTS = \
"CMakeFiles/msvc_bridge.dir/src/msvc_bridge.cpp.o"

# External object files for target msvc_bridge
msvc_bridge_EXTERNAL_OBJECTS =

devel/lib/libmsvc_bridge.so: vicon_bridge/CMakeFiles/msvc_bridge.dir/src/msvc_bridge.cpp.o
devel/lib/libmsvc_bridge.so: vicon_bridge/CMakeFiles/msvc_bridge.dir/build.make
devel/lib/libmsvc_bridge.so: vicon_bridge/CMakeFiles/msvc_bridge.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chengque/workspace/catkin_ws/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ../devel/lib/libmsvc_bridge.so"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/vicon_bridge && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/msvc_bridge.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
vicon_bridge/CMakeFiles/msvc_bridge.dir/build: devel/lib/libmsvc_bridge.so

.PHONY : vicon_bridge/CMakeFiles/msvc_bridge.dir/build

vicon_bridge/CMakeFiles/msvc_bridge.dir/requires: vicon_bridge/CMakeFiles/msvc_bridge.dir/src/msvc_bridge.cpp.o.requires

.PHONY : vicon_bridge/CMakeFiles/msvc_bridge.dir/requires

vicon_bridge/CMakeFiles/msvc_bridge.dir/clean:
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/vicon_bridge && $(CMAKE_COMMAND) -P CMakeFiles/msvc_bridge.dir/cmake_clean.cmake
.PHONY : vicon_bridge/CMakeFiles/msvc_bridge.dir/clean

vicon_bridge/CMakeFiles/msvc_bridge.dir/depend:
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chengque/workspace/catkin_ws/src /home/chengque/workspace/catkin_ws/src/vicon_bridge /home/chengque/workspace/catkin_ws/src/cmake-build-debug /home/chengque/workspace/catkin_ws/src/cmake-build-debug/vicon_bridge /home/chengque/workspace/catkin_ws/src/cmake-build-debug/vicon_bridge/CMakeFiles/msvc_bridge.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : vicon_bridge/CMakeFiles/msvc_bridge.dir/depend

