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
include Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/depend.make

# Include the progress variables for this target.
include Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/progress.make

# Include the compile flags for this target's objects.
include Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/flags.make

Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/baro.cpp.o: Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/flags.make
Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/baro.cpp.o: ../Firmware/src/platforms/posix/drivers/barosim/baro.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chengque/workspace/catkin_ws/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/baro.cpp.o"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/platforms/posix/drivers/barosim && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/platforms__posix__drivers__barosim.dir/baro.cpp.o -c /home/chengque/workspace/catkin_ws/src/Firmware/src/platforms/posix/drivers/barosim/baro.cpp

Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/baro.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/platforms__posix__drivers__barosim.dir/baro.cpp.i"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/platforms/posix/drivers/barosim && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chengque/workspace/catkin_ws/src/Firmware/src/platforms/posix/drivers/barosim/baro.cpp > CMakeFiles/platforms__posix__drivers__barosim.dir/baro.cpp.i

Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/baro.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/platforms__posix__drivers__barosim.dir/baro.cpp.s"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/platforms/posix/drivers/barosim && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chengque/workspace/catkin_ws/src/Firmware/src/platforms/posix/drivers/barosim/baro.cpp -o CMakeFiles/platforms__posix__drivers__barosim.dir/baro.cpp.s

Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/baro.cpp.o.requires:

.PHONY : Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/baro.cpp.o.requires

Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/baro.cpp.o.provides: Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/baro.cpp.o.requires
	$(MAKE) -f Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/build.make Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/baro.cpp.o.provides.build
.PHONY : Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/baro.cpp.o.provides

Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/baro.cpp.o.provides.build: Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/baro.cpp.o


# Object files for target platforms__posix__drivers__barosim
platforms__posix__drivers__barosim_OBJECTS = \
"CMakeFiles/platforms__posix__drivers__barosim.dir/baro.cpp.o"

# External object files for target platforms__posix__drivers__barosim
platforms__posix__drivers__barosim_EXTERNAL_OBJECTS =

devel/lib/libplatforms__posix__drivers__barosim.a: Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/baro.cpp.o
devel/lib/libplatforms__posix__drivers__barosim.a: Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/build.make
devel/lib/libplatforms__posix__drivers__barosim.a: Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chengque/workspace/catkin_ws/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../../../../devel/lib/libplatforms__posix__drivers__barosim.a"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/platforms/posix/drivers/barosim && $(CMAKE_COMMAND) -P CMakeFiles/platforms__posix__drivers__barosim.dir/cmake_clean_target.cmake
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/platforms/posix/drivers/barosim && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/platforms__posix__drivers__barosim.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/build: devel/lib/libplatforms__posix__drivers__barosim.a

.PHONY : Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/build

Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/requires: Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/baro.cpp.o.requires

.PHONY : Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/requires

Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/clean:
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/platforms/posix/drivers/barosim && $(CMAKE_COMMAND) -P CMakeFiles/platforms__posix__drivers__barosim.dir/cmake_clean.cmake
.PHONY : Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/clean

Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/depend:
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chengque/workspace/catkin_ws/src /home/chengque/workspace/catkin_ws/src/Firmware/src/platforms/posix/drivers/barosim /home/chengque/workspace/catkin_ws/src/cmake-build-debug /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/platforms/posix/drivers/barosim /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Firmware/src/platforms/posix/drivers/barosim/CMakeFiles/platforms__posix__drivers__barosim.dir/depend

