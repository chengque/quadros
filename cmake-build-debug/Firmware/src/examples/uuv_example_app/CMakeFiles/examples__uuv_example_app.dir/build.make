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
include Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/depend.make

# Include the progress variables for this target.
include Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/progress.make

# Include the compile flags for this target's objects.
include Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/flags.make

Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/uuv_example_app.cpp.o: Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/flags.make
Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/uuv_example_app.cpp.o: ../Firmware/src/examples/uuv_example_app/uuv_example_app.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chengque/workspace/catkin_ws/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/uuv_example_app.cpp.o"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/examples/uuv_example_app && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/examples__uuv_example_app.dir/uuv_example_app.cpp.o -c /home/chengque/workspace/catkin_ws/src/Firmware/src/examples/uuv_example_app/uuv_example_app.cpp

Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/uuv_example_app.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/examples__uuv_example_app.dir/uuv_example_app.cpp.i"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/examples/uuv_example_app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chengque/workspace/catkin_ws/src/Firmware/src/examples/uuv_example_app/uuv_example_app.cpp > CMakeFiles/examples__uuv_example_app.dir/uuv_example_app.cpp.i

Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/uuv_example_app.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/examples__uuv_example_app.dir/uuv_example_app.cpp.s"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/examples/uuv_example_app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chengque/workspace/catkin_ws/src/Firmware/src/examples/uuv_example_app/uuv_example_app.cpp -o CMakeFiles/examples__uuv_example_app.dir/uuv_example_app.cpp.s

Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/uuv_example_app.cpp.o.requires:

.PHONY : Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/uuv_example_app.cpp.o.requires

Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/uuv_example_app.cpp.o.provides: Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/uuv_example_app.cpp.o.requires
	$(MAKE) -f Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/build.make Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/uuv_example_app.cpp.o.provides.build
.PHONY : Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/uuv_example_app.cpp.o.provides

Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/uuv_example_app.cpp.o.provides.build: Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/uuv_example_app.cpp.o


# Object files for target examples__uuv_example_app
examples__uuv_example_app_OBJECTS = \
"CMakeFiles/examples__uuv_example_app.dir/uuv_example_app.cpp.o"

# External object files for target examples__uuv_example_app
examples__uuv_example_app_EXTERNAL_OBJECTS =

devel/lib/libexamples__uuv_example_app.a: Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/uuv_example_app.cpp.o
devel/lib/libexamples__uuv_example_app.a: Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/build.make
devel/lib/libexamples__uuv_example_app.a: Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chengque/workspace/catkin_ws/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../../devel/lib/libexamples__uuv_example_app.a"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/examples/uuv_example_app && $(CMAKE_COMMAND) -P CMakeFiles/examples__uuv_example_app.dir/cmake_clean_target.cmake
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/examples/uuv_example_app && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/examples__uuv_example_app.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/build: devel/lib/libexamples__uuv_example_app.a

.PHONY : Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/build

Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/requires: Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/uuv_example_app.cpp.o.requires

.PHONY : Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/requires

Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/clean:
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/examples/uuv_example_app && $(CMAKE_COMMAND) -P CMakeFiles/examples__uuv_example_app.dir/cmake_clean.cmake
.PHONY : Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/clean

Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/depend:
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chengque/workspace/catkin_ws/src /home/chengque/workspace/catkin_ws/src/Firmware/src/examples/uuv_example_app /home/chengque/workspace/catkin_ws/src/cmake-build-debug /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/examples/uuv_example_app /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Firmware/src/examples/uuv_example_app/CMakeFiles/examples__uuv_example_app.dir/depend
