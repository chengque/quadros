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
include Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/depend.make

# Include the progress variables for this target.
include Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/progress.make

# Include the compile flags for this target's objects.
include Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/flags.make

Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/reboot.c.o: Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/flags.make
Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/reboot.c.o: ../Firmware/src/systemcmds/reboot/reboot.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chengque/workspace/catkin_ws/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/reboot.c.o"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/systemcmds/reboot && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/systemcmds__reboot.dir/reboot.c.o   -c /home/chengque/workspace/catkin_ws/src/Firmware/src/systemcmds/reboot/reboot.c

Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/reboot.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/systemcmds__reboot.dir/reboot.c.i"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/systemcmds/reboot && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/chengque/workspace/catkin_ws/src/Firmware/src/systemcmds/reboot/reboot.c > CMakeFiles/systemcmds__reboot.dir/reboot.c.i

Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/reboot.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/systemcmds__reboot.dir/reboot.c.s"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/systemcmds/reboot && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/chengque/workspace/catkin_ws/src/Firmware/src/systemcmds/reboot/reboot.c -o CMakeFiles/systemcmds__reboot.dir/reboot.c.s

Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/reboot.c.o.requires:

.PHONY : Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/reboot.c.o.requires

Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/reboot.c.o.provides: Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/reboot.c.o.requires
	$(MAKE) -f Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/build.make Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/reboot.c.o.provides.build
.PHONY : Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/reboot.c.o.provides

Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/reboot.c.o.provides.build: Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/reboot.c.o


# Object files for target systemcmds__reboot
systemcmds__reboot_OBJECTS = \
"CMakeFiles/systemcmds__reboot.dir/reboot.c.o"

# External object files for target systemcmds__reboot
systemcmds__reboot_EXTERNAL_OBJECTS =

devel/lib/libsystemcmds__reboot.a: Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/reboot.c.o
devel/lib/libsystemcmds__reboot.a: Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/build.make
devel/lib/libsystemcmds__reboot.a: Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chengque/workspace/catkin_ws/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library ../../../../devel/lib/libsystemcmds__reboot.a"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/systemcmds/reboot && $(CMAKE_COMMAND) -P CMakeFiles/systemcmds__reboot.dir/cmake_clean_target.cmake
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/systemcmds/reboot && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/systemcmds__reboot.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/build: devel/lib/libsystemcmds__reboot.a

.PHONY : Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/build

Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/requires: Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/reboot.c.o.requires

.PHONY : Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/requires

Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/clean:
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/systemcmds/reboot && $(CMAKE_COMMAND) -P CMakeFiles/systemcmds__reboot.dir/cmake_clean.cmake
.PHONY : Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/clean

Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/depend:
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chengque/workspace/catkin_ws/src /home/chengque/workspace/catkin_ws/src/Firmware/src/systemcmds/reboot /home/chengque/workspace/catkin_ws/src/cmake-build-debug /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/systemcmds/reboot /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Firmware/src/systemcmds/reboot/CMakeFiles/systemcmds__reboot.dir/depend
