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
include modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/depend.make

# Include the progress variables for this target.
include modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/progress.make

# Include the compile flags for this target's objects.
include modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/flags.make

modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/main.cpp.o: modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/flags.make
modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/main.cpp.o: ../modules/task_1/kustova_a_max_vector/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/osboxes/pp_2020_autumn_engineer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/main.cpp.o"
	cd /home/osboxes/pp_2020_autumn_engineer/build/modules/task_1/kustova_a_max_vector && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kustova_a_max_vector_mpi.dir/main.cpp.o -c /home/osboxes/pp_2020_autumn_engineer/modules/task_1/kustova_a_max_vector/main.cpp

modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kustova_a_max_vector_mpi.dir/main.cpp.i"
	cd /home/osboxes/pp_2020_autumn_engineer/build/modules/task_1/kustova_a_max_vector && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/osboxes/pp_2020_autumn_engineer/modules/task_1/kustova_a_max_vector/main.cpp > CMakeFiles/kustova_a_max_vector_mpi.dir/main.cpp.i

modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kustova_a_max_vector_mpi.dir/main.cpp.s"
	cd /home/osboxes/pp_2020_autumn_engineer/build/modules/task_1/kustova_a_max_vector && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/osboxes/pp_2020_autumn_engineer/modules/task_1/kustova_a_max_vector/main.cpp -o CMakeFiles/kustova_a_max_vector_mpi.dir/main.cpp.s

modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/main.cpp.o.requires:

.PHONY : modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/main.cpp.o.requires

modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/main.cpp.o.provides: modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/main.cpp.o.requires
	$(MAKE) -f modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/build.make modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/main.cpp.o.provides.build
.PHONY : modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/main.cpp.o.provides

modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/main.cpp.o.provides.build: modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/main.cpp.o


modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/max_vector.cpp.o: modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/flags.make
modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/max_vector.cpp.o: ../modules/task_1/kustova_a_max_vector/max_vector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/osboxes/pp_2020_autumn_engineer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/max_vector.cpp.o"
	cd /home/osboxes/pp_2020_autumn_engineer/build/modules/task_1/kustova_a_max_vector && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kustova_a_max_vector_mpi.dir/max_vector.cpp.o -c /home/osboxes/pp_2020_autumn_engineer/modules/task_1/kustova_a_max_vector/max_vector.cpp

modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/max_vector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kustova_a_max_vector_mpi.dir/max_vector.cpp.i"
	cd /home/osboxes/pp_2020_autumn_engineer/build/modules/task_1/kustova_a_max_vector && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/osboxes/pp_2020_autumn_engineer/modules/task_1/kustova_a_max_vector/max_vector.cpp > CMakeFiles/kustova_a_max_vector_mpi.dir/max_vector.cpp.i

modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/max_vector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kustova_a_max_vector_mpi.dir/max_vector.cpp.s"
	cd /home/osboxes/pp_2020_autumn_engineer/build/modules/task_1/kustova_a_max_vector && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/osboxes/pp_2020_autumn_engineer/modules/task_1/kustova_a_max_vector/max_vector.cpp -o CMakeFiles/kustova_a_max_vector_mpi.dir/max_vector.cpp.s

modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/max_vector.cpp.o.requires:

.PHONY : modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/max_vector.cpp.o.requires

modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/max_vector.cpp.o.provides: modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/max_vector.cpp.o.requires
	$(MAKE) -f modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/build.make modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/max_vector.cpp.o.provides.build
.PHONY : modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/max_vector.cpp.o.provides

modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/max_vector.cpp.o.provides.build: modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/max_vector.cpp.o


# Object files for target kustova_a_max_vector_mpi
kustova_a_max_vector_mpi_OBJECTS = \
"CMakeFiles/kustova_a_max_vector_mpi.dir/main.cpp.o" \
"CMakeFiles/kustova_a_max_vector_mpi.dir/max_vector.cpp.o"

# External object files for target kustova_a_max_vector_mpi
kustova_a_max_vector_mpi_EXTERNAL_OBJECTS =

bin/kustova_a_max_vector_mpi: modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/main.cpp.o
bin/kustova_a_max_vector_mpi: modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/max_vector.cpp.o
bin/kustova_a_max_vector_mpi: modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/build.make
bin/kustova_a_max_vector_mpi: arch/libkustova_a_max_vector_mpi_lib.a
bin/kustova_a_max_vector_mpi: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
bin/kustova_a_max_vector_mpi: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
bin/kustova_a_max_vector_mpi: lib/libgtest.a
bin/kustova_a_max_vector_mpi: lib/libgtest_main.a
bin/kustova_a_max_vector_mpi: lib/libgtest.a
bin/kustova_a_max_vector_mpi: modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/osboxes/pp_2020_autumn_engineer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../../bin/kustova_a_max_vector_mpi"
	cd /home/osboxes/pp_2020_autumn_engineer/build/modules/task_1/kustova_a_max_vector && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kustova_a_max_vector_mpi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/build: bin/kustova_a_max_vector_mpi

.PHONY : modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/build

modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/requires: modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/main.cpp.o.requires
modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/requires: modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/max_vector.cpp.o.requires

.PHONY : modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/requires

modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/clean:
	cd /home/osboxes/pp_2020_autumn_engineer/build/modules/task_1/kustova_a_max_vector && $(CMAKE_COMMAND) -P CMakeFiles/kustova_a_max_vector_mpi.dir/cmake_clean.cmake
.PHONY : modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/clean

modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/depend:
	cd /home/osboxes/pp_2020_autumn_engineer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/osboxes/pp_2020_autumn_engineer /home/osboxes/pp_2020_autumn_engineer/modules/task_1/kustova_a_max_vector /home/osboxes/pp_2020_autumn_engineer/build /home/osboxes/pp_2020_autumn_engineer/build/modules/task_1/kustova_a_max_vector /home/osboxes/pp_2020_autumn_engineer/build/modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/task_1/kustova_a_max_vector/CMakeFiles/kustova_a_max_vector_mpi.dir/depend

