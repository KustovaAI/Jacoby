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
include modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/depend.make

# Include the progress variables for this target.
include modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/progress.make

# Include the compile flags for this target's objects.
include modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/flags.make

modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/main.cpp.o: modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/flags.make
modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/main.cpp.o: ../modules/test_tasks/test_seq/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/osboxes/pp_2020_autumn_engineer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/main.cpp.o"
	cd /home/osboxes/pp_2020_autumn_engineer/build/modules/test_tasks/test_seq && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_seq_seq.dir/main.cpp.o -c /home/osboxes/pp_2020_autumn_engineer/modules/test_tasks/test_seq/main.cpp

modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_seq_seq.dir/main.cpp.i"
	cd /home/osboxes/pp_2020_autumn_engineer/build/modules/test_tasks/test_seq && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/osboxes/pp_2020_autumn_engineer/modules/test_tasks/test_seq/main.cpp > CMakeFiles/test_seq_seq.dir/main.cpp.i

modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_seq_seq.dir/main.cpp.s"
	cd /home/osboxes/pp_2020_autumn_engineer/build/modules/test_tasks/test_seq && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/osboxes/pp_2020_autumn_engineer/modules/test_tasks/test_seq/main.cpp -o CMakeFiles/test_seq_seq.dir/main.cpp.s

modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/main.cpp.o.requires:

.PHONY : modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/main.cpp.o.requires

modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/main.cpp.o.provides: modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/main.cpp.o.requires
	$(MAKE) -f modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/build.make modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/main.cpp.o.provides.build
.PHONY : modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/main.cpp.o.provides

modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/main.cpp.o.provides.build: modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/main.cpp.o


# Object files for target test_seq_seq
test_seq_seq_OBJECTS = \
"CMakeFiles/test_seq_seq.dir/main.cpp.o"

# External object files for target test_seq_seq
test_seq_seq_EXTERNAL_OBJECTS =

bin/test_seq_seq: modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/main.cpp.o
bin/test_seq_seq: modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/build.make
bin/test_seq_seq: arch/libtest_seq_seq_lib.a
bin/test_seq_seq: lib/libgtest.a
bin/test_seq_seq: lib/libgtest_main.a
bin/test_seq_seq: lib/libgtest.a
bin/test_seq_seq: modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/osboxes/pp_2020_autumn_engineer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/test_seq_seq"
	cd /home/osboxes/pp_2020_autumn_engineer/build/modules/test_tasks/test_seq && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_seq_seq.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/build: bin/test_seq_seq

.PHONY : modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/build

modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/requires: modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/main.cpp.o.requires

.PHONY : modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/requires

modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/clean:
	cd /home/osboxes/pp_2020_autumn_engineer/build/modules/test_tasks/test_seq && $(CMAKE_COMMAND) -P CMakeFiles/test_seq_seq.dir/cmake_clean.cmake
.PHONY : modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/clean

modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/depend:
	cd /home/osboxes/pp_2020_autumn_engineer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/osboxes/pp_2020_autumn_engineer /home/osboxes/pp_2020_autumn_engineer/modules/test_tasks/test_seq /home/osboxes/pp_2020_autumn_engineer/build /home/osboxes/pp_2020_autumn_engineer/build/modules/test_tasks/test_seq /home/osboxes/pp_2020_autumn_engineer/build/modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/test_tasks/test_seq/CMakeFiles/test_seq_seq.dir/depend
