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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/osboxes/pp_2020_autumn_engineer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/osboxes/pp_2020_autumn_engineer/build

# Include any dependencies generated for this target.
include 3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/depend.make

# Include the progress variables for this target.
include 3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/progress.make

# Include the compile flags for this target's objects.
include 3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/flags.make

3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o: 3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/flags.make
3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o: ../3rdparty/gtest/googlemock/src/gmock_main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/osboxes/pp_2020_autumn_engineer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object 3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o"
	cd /home/osboxes/pp_2020_autumn_engineer/build/3rdparty/gtest/googlemock && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gmock_main.dir/src/gmock_main.cc.o -c /home/osboxes/pp_2020_autumn_engineer/3rdparty/gtest/googlemock/src/gmock_main.cc

3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gmock_main.dir/src/gmock_main.cc.i"
	cd /home/osboxes/pp_2020_autumn_engineer/build/3rdparty/gtest/googlemock && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/osboxes/pp_2020_autumn_engineer/3rdparty/gtest/googlemock/src/gmock_main.cc > CMakeFiles/gmock_main.dir/src/gmock_main.cc.i

3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gmock_main.dir/src/gmock_main.cc.s"
	cd /home/osboxes/pp_2020_autumn_engineer/build/3rdparty/gtest/googlemock && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/osboxes/pp_2020_autumn_engineer/3rdparty/gtest/googlemock/src/gmock_main.cc -o CMakeFiles/gmock_main.dir/src/gmock_main.cc.s

3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o.requires:

.PHONY : 3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o.requires

3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o.provides: 3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o.requires
	$(MAKE) -f 3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/build.make 3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o.provides.build
.PHONY : 3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o.provides

3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o.provides.build: 3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o


# Object files for target gmock_main
gmock_main_OBJECTS = \
"CMakeFiles/gmock_main.dir/src/gmock_main.cc.o"

# External object files for target gmock_main
gmock_main_EXTERNAL_OBJECTS =

lib/libgmock_main.a: 3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o
lib/libgmock_main.a: 3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/build.make
lib/libgmock_main.a: 3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/osboxes/pp_2020_autumn_engineer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../lib/libgmock_main.a"
	cd /home/osboxes/pp_2020_autumn_engineer/build/3rdparty/gtest/googlemock && $(CMAKE_COMMAND) -P CMakeFiles/gmock_main.dir/cmake_clean_target.cmake
	cd /home/osboxes/pp_2020_autumn_engineer/build/3rdparty/gtest/googlemock && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gmock_main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/build: lib/libgmock_main.a

.PHONY : 3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/build

3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/requires: 3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o.requires

.PHONY : 3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/requires

3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/clean:
	cd /home/osboxes/pp_2020_autumn_engineer/build/3rdparty/gtest/googlemock && $(CMAKE_COMMAND) -P CMakeFiles/gmock_main.dir/cmake_clean.cmake
.PHONY : 3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/clean

3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/depend:
	cd /home/osboxes/pp_2020_autumn_engineer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/osboxes/pp_2020_autumn_engineer /home/osboxes/pp_2020_autumn_engineer/3rdparty/gtest/googlemock /home/osboxes/pp_2020_autumn_engineer/build /home/osboxes/pp_2020_autumn_engineer/build/3rdparty/gtest/googlemock /home/osboxes/pp_2020_autumn_engineer/build/3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 3rdparty/gtest/googlemock/CMakeFiles/gmock_main.dir/depend

