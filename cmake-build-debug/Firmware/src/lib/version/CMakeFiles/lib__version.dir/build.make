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
include Firmware/src/lib/version/CMakeFiles/lib__version.dir/depend.make

# Include the progress variables for this target.
include Firmware/src/lib/version/CMakeFiles/lib__version.dir/progress.make

# Include the compile flags for this target's objects.
include Firmware/src/lib/version/CMakeFiles/lib__version.dir/flags.make

Firmware/src/lib/version/CMakeFiles/lib__version.dir/version.c.o: Firmware/src/lib/version/CMakeFiles/lib__version.dir/flags.make
Firmware/src/lib/version/CMakeFiles/lib__version.dir/version.c.o: ../Firmware/src/lib/version/version.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chengque/workspace/catkin_ws/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Firmware/src/lib/version/CMakeFiles/lib__version.dir/version.c.o"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/lib/version && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib__version.dir/version.c.o   -c /home/chengque/workspace/catkin_ws/src/Firmware/src/lib/version/version.c

Firmware/src/lib/version/CMakeFiles/lib__version.dir/version.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib__version.dir/version.c.i"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/lib/version && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/chengque/workspace/catkin_ws/src/Firmware/src/lib/version/version.c > CMakeFiles/lib__version.dir/version.c.i

Firmware/src/lib/version/CMakeFiles/lib__version.dir/version.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib__version.dir/version.c.s"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/lib/version && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/chengque/workspace/catkin_ws/src/Firmware/src/lib/version/version.c -o CMakeFiles/lib__version.dir/version.c.s

Firmware/src/lib/version/CMakeFiles/lib__version.dir/version.c.o.requires:

.PHONY : Firmware/src/lib/version/CMakeFiles/lib__version.dir/version.c.o.requires

Firmware/src/lib/version/CMakeFiles/lib__version.dir/version.c.o.provides: Firmware/src/lib/version/CMakeFiles/lib__version.dir/version.c.o.requires
	$(MAKE) -f Firmware/src/lib/version/CMakeFiles/lib__version.dir/build.make Firmware/src/lib/version/CMakeFiles/lib__version.dir/version.c.o.provides.build
.PHONY : Firmware/src/lib/version/CMakeFiles/lib__version.dir/version.c.o.provides

Firmware/src/lib/version/CMakeFiles/lib__version.dir/version.c.o.provides.build: Firmware/src/lib/version/CMakeFiles/lib__version.dir/version.c.o


# Object files for target lib__version
lib__version_OBJECTS = \
"CMakeFiles/lib__version.dir/version.c.o"

# External object files for target lib__version
lib__version_EXTERNAL_OBJECTS =

devel/lib/liblib__version.a: Firmware/src/lib/version/CMakeFiles/lib__version.dir/version.c.o
devel/lib/liblib__version.a: Firmware/src/lib/version/CMakeFiles/lib__version.dir/build.make
devel/lib/liblib__version.a: Firmware/src/lib/version/CMakeFiles/lib__version.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chengque/workspace/catkin_ws/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library ../../../../devel/lib/liblib__version.a"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/lib/version && $(CMAKE_COMMAND) -P CMakeFiles/lib__version.dir/cmake_clean_target.cmake
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/lib/version && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lib__version.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Firmware/src/lib/version/CMakeFiles/lib__version.dir/build: devel/lib/liblib__version.a

.PHONY : Firmware/src/lib/version/CMakeFiles/lib__version.dir/build

Firmware/src/lib/version/CMakeFiles/lib__version.dir/requires: Firmware/src/lib/version/CMakeFiles/lib__version.dir/version.c.o.requires

.PHONY : Firmware/src/lib/version/CMakeFiles/lib__version.dir/requires

Firmware/src/lib/version/CMakeFiles/lib__version.dir/clean:
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/lib/version && $(CMAKE_COMMAND) -P CMakeFiles/lib__version.dir/cmake_clean.cmake
.PHONY : Firmware/src/lib/version/CMakeFiles/lib__version.dir/clean

Firmware/src/lib/version/CMakeFiles/lib__version.dir/depend:
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chengque/workspace/catkin_ws/src /home/chengque/workspace/catkin_ws/src/Firmware/src/lib/version /home/chengque/workspace/catkin_ws/src/cmake-build-debug /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/lib/version /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/lib/version/CMakeFiles/lib__version.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Firmware/src/lib/version/CMakeFiles/lib__version.dir/depend
