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
include Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/depend.make

# Include the progress variables for this target.
include Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/progress.make

# Include the compile flags for this target's objects.
include Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/flags.make

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/land_detector_main.cpp.o: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/flags.make
Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/land_detector_main.cpp.o: ../Firmware/src/modules/land_detector/land_detector_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chengque/workspace/catkin_ws/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/land_detector_main.cpp.o"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/modules/land_detector && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/modules__land_detector.dir/land_detector_main.cpp.o -c /home/chengque/workspace/catkin_ws/src/Firmware/src/modules/land_detector/land_detector_main.cpp

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/land_detector_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/modules__land_detector.dir/land_detector_main.cpp.i"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/modules/land_detector && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chengque/workspace/catkin_ws/src/Firmware/src/modules/land_detector/land_detector_main.cpp > CMakeFiles/modules__land_detector.dir/land_detector_main.cpp.i

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/land_detector_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/modules__land_detector.dir/land_detector_main.cpp.s"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/modules/land_detector && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chengque/workspace/catkin_ws/src/Firmware/src/modules/land_detector/land_detector_main.cpp -o CMakeFiles/modules__land_detector.dir/land_detector_main.cpp.s

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/land_detector_main.cpp.o.requires:

.PHONY : Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/land_detector_main.cpp.o.requires

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/land_detector_main.cpp.o.provides: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/land_detector_main.cpp.o.requires
	$(MAKE) -f Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/build.make Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/land_detector_main.cpp.o.provides.build
.PHONY : Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/land_detector_main.cpp.o.provides

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/land_detector_main.cpp.o.provides.build: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/land_detector_main.cpp.o


Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/LandDetector.cpp.o: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/flags.make
Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/LandDetector.cpp.o: ../Firmware/src/modules/land_detector/LandDetector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chengque/workspace/catkin_ws/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/LandDetector.cpp.o"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/modules/land_detector && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/modules__land_detector.dir/LandDetector.cpp.o -c /home/chengque/workspace/catkin_ws/src/Firmware/src/modules/land_detector/LandDetector.cpp

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/LandDetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/modules__land_detector.dir/LandDetector.cpp.i"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/modules/land_detector && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chengque/workspace/catkin_ws/src/Firmware/src/modules/land_detector/LandDetector.cpp > CMakeFiles/modules__land_detector.dir/LandDetector.cpp.i

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/LandDetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/modules__land_detector.dir/LandDetector.cpp.s"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/modules/land_detector && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chengque/workspace/catkin_ws/src/Firmware/src/modules/land_detector/LandDetector.cpp -o CMakeFiles/modules__land_detector.dir/LandDetector.cpp.s

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/LandDetector.cpp.o.requires:

.PHONY : Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/LandDetector.cpp.o.requires

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/LandDetector.cpp.o.provides: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/LandDetector.cpp.o.requires
	$(MAKE) -f Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/build.make Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/LandDetector.cpp.o.provides.build
.PHONY : Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/LandDetector.cpp.o.provides

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/LandDetector.cpp.o.provides.build: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/LandDetector.cpp.o


Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/MulticopterLandDetector.cpp.o: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/flags.make
Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/MulticopterLandDetector.cpp.o: ../Firmware/src/modules/land_detector/MulticopterLandDetector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chengque/workspace/catkin_ws/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/MulticopterLandDetector.cpp.o"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/modules/land_detector && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/modules__land_detector.dir/MulticopterLandDetector.cpp.o -c /home/chengque/workspace/catkin_ws/src/Firmware/src/modules/land_detector/MulticopterLandDetector.cpp

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/MulticopterLandDetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/modules__land_detector.dir/MulticopterLandDetector.cpp.i"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/modules/land_detector && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chengque/workspace/catkin_ws/src/Firmware/src/modules/land_detector/MulticopterLandDetector.cpp > CMakeFiles/modules__land_detector.dir/MulticopterLandDetector.cpp.i

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/MulticopterLandDetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/modules__land_detector.dir/MulticopterLandDetector.cpp.s"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/modules/land_detector && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chengque/workspace/catkin_ws/src/Firmware/src/modules/land_detector/MulticopterLandDetector.cpp -o CMakeFiles/modules__land_detector.dir/MulticopterLandDetector.cpp.s

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/MulticopterLandDetector.cpp.o.requires:

.PHONY : Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/MulticopterLandDetector.cpp.o.requires

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/MulticopterLandDetector.cpp.o.provides: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/MulticopterLandDetector.cpp.o.requires
	$(MAKE) -f Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/build.make Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/MulticopterLandDetector.cpp.o.provides.build
.PHONY : Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/MulticopterLandDetector.cpp.o.provides

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/MulticopterLandDetector.cpp.o.provides.build: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/MulticopterLandDetector.cpp.o


Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/FixedwingLandDetector.cpp.o: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/flags.make
Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/FixedwingLandDetector.cpp.o: ../Firmware/src/modules/land_detector/FixedwingLandDetector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chengque/workspace/catkin_ws/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/FixedwingLandDetector.cpp.o"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/modules/land_detector && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/modules__land_detector.dir/FixedwingLandDetector.cpp.o -c /home/chengque/workspace/catkin_ws/src/Firmware/src/modules/land_detector/FixedwingLandDetector.cpp

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/FixedwingLandDetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/modules__land_detector.dir/FixedwingLandDetector.cpp.i"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/modules/land_detector && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chengque/workspace/catkin_ws/src/Firmware/src/modules/land_detector/FixedwingLandDetector.cpp > CMakeFiles/modules__land_detector.dir/FixedwingLandDetector.cpp.i

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/FixedwingLandDetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/modules__land_detector.dir/FixedwingLandDetector.cpp.s"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/modules/land_detector && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chengque/workspace/catkin_ws/src/Firmware/src/modules/land_detector/FixedwingLandDetector.cpp -o CMakeFiles/modules__land_detector.dir/FixedwingLandDetector.cpp.s

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/FixedwingLandDetector.cpp.o.requires:

.PHONY : Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/FixedwingLandDetector.cpp.o.requires

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/FixedwingLandDetector.cpp.o.provides: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/FixedwingLandDetector.cpp.o.requires
	$(MAKE) -f Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/build.make Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/FixedwingLandDetector.cpp.o.provides.build
.PHONY : Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/FixedwingLandDetector.cpp.o.provides

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/FixedwingLandDetector.cpp.o.provides.build: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/FixedwingLandDetector.cpp.o


Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/VtolLandDetector.cpp.o: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/flags.make
Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/VtolLandDetector.cpp.o: ../Firmware/src/modules/land_detector/VtolLandDetector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chengque/workspace/catkin_ws/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/VtolLandDetector.cpp.o"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/modules/land_detector && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/modules__land_detector.dir/VtolLandDetector.cpp.o -c /home/chengque/workspace/catkin_ws/src/Firmware/src/modules/land_detector/VtolLandDetector.cpp

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/VtolLandDetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/modules__land_detector.dir/VtolLandDetector.cpp.i"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/modules/land_detector && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chengque/workspace/catkin_ws/src/Firmware/src/modules/land_detector/VtolLandDetector.cpp > CMakeFiles/modules__land_detector.dir/VtolLandDetector.cpp.i

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/VtolLandDetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/modules__land_detector.dir/VtolLandDetector.cpp.s"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/modules/land_detector && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chengque/workspace/catkin_ws/src/Firmware/src/modules/land_detector/VtolLandDetector.cpp -o CMakeFiles/modules__land_detector.dir/VtolLandDetector.cpp.s

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/VtolLandDetector.cpp.o.requires:

.PHONY : Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/VtolLandDetector.cpp.o.requires

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/VtolLandDetector.cpp.o.provides: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/VtolLandDetector.cpp.o.requires
	$(MAKE) -f Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/build.make Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/VtolLandDetector.cpp.o.provides.build
.PHONY : Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/VtolLandDetector.cpp.o.provides

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/VtolLandDetector.cpp.o.provides.build: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/VtolLandDetector.cpp.o


Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/RoverLandDetector.cpp.o: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/flags.make
Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/RoverLandDetector.cpp.o: ../Firmware/src/modules/land_detector/RoverLandDetector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chengque/workspace/catkin_ws/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/RoverLandDetector.cpp.o"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/modules/land_detector && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/modules__land_detector.dir/RoverLandDetector.cpp.o -c /home/chengque/workspace/catkin_ws/src/Firmware/src/modules/land_detector/RoverLandDetector.cpp

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/RoverLandDetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/modules__land_detector.dir/RoverLandDetector.cpp.i"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/modules/land_detector && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chengque/workspace/catkin_ws/src/Firmware/src/modules/land_detector/RoverLandDetector.cpp > CMakeFiles/modules__land_detector.dir/RoverLandDetector.cpp.i

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/RoverLandDetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/modules__land_detector.dir/RoverLandDetector.cpp.s"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/modules/land_detector && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chengque/workspace/catkin_ws/src/Firmware/src/modules/land_detector/RoverLandDetector.cpp -o CMakeFiles/modules__land_detector.dir/RoverLandDetector.cpp.s

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/RoverLandDetector.cpp.o.requires:

.PHONY : Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/RoverLandDetector.cpp.o.requires

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/RoverLandDetector.cpp.o.provides: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/RoverLandDetector.cpp.o.requires
	$(MAKE) -f Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/build.make Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/RoverLandDetector.cpp.o.provides.build
.PHONY : Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/RoverLandDetector.cpp.o.provides

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/RoverLandDetector.cpp.o.provides.build: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/RoverLandDetector.cpp.o


# Object files for target modules__land_detector
modules__land_detector_OBJECTS = \
"CMakeFiles/modules__land_detector.dir/land_detector_main.cpp.o" \
"CMakeFiles/modules__land_detector.dir/LandDetector.cpp.o" \
"CMakeFiles/modules__land_detector.dir/MulticopterLandDetector.cpp.o" \
"CMakeFiles/modules__land_detector.dir/FixedwingLandDetector.cpp.o" \
"CMakeFiles/modules__land_detector.dir/VtolLandDetector.cpp.o" \
"CMakeFiles/modules__land_detector.dir/RoverLandDetector.cpp.o"

# External object files for target modules__land_detector
modules__land_detector_EXTERNAL_OBJECTS =

devel/lib/libmodules__land_detector.a: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/land_detector_main.cpp.o
devel/lib/libmodules__land_detector.a: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/LandDetector.cpp.o
devel/lib/libmodules__land_detector.a: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/MulticopterLandDetector.cpp.o
devel/lib/libmodules__land_detector.a: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/FixedwingLandDetector.cpp.o
devel/lib/libmodules__land_detector.a: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/VtolLandDetector.cpp.o
devel/lib/libmodules__land_detector.a: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/RoverLandDetector.cpp.o
devel/lib/libmodules__land_detector.a: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/build.make
devel/lib/libmodules__land_detector.a: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chengque/workspace/catkin_ws/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX static library ../../../../devel/lib/libmodules__land_detector.a"
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/modules/land_detector && $(CMAKE_COMMAND) -P CMakeFiles/modules__land_detector.dir/cmake_clean_target.cmake
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/modules/land_detector && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/modules__land_detector.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/build: devel/lib/libmodules__land_detector.a

.PHONY : Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/build

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/requires: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/land_detector_main.cpp.o.requires
Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/requires: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/LandDetector.cpp.o.requires
Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/requires: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/MulticopterLandDetector.cpp.o.requires
Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/requires: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/FixedwingLandDetector.cpp.o.requires
Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/requires: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/VtolLandDetector.cpp.o.requires
Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/requires: Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/RoverLandDetector.cpp.o.requires

.PHONY : Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/requires

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/clean:
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/modules/land_detector && $(CMAKE_COMMAND) -P CMakeFiles/modules__land_detector.dir/cmake_clean.cmake
.PHONY : Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/clean

Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/depend:
	cd /home/chengque/workspace/catkin_ws/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chengque/workspace/catkin_ws/src /home/chengque/workspace/catkin_ws/src/Firmware/src/modules/land_detector /home/chengque/workspace/catkin_ws/src/cmake-build-debug /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/modules/land_detector /home/chengque/workspace/catkin_ws/src/cmake-build-debug/Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Firmware/src/modules/land_detector/CMakeFiles/modules__land_detector.dir/depend

