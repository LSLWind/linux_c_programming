# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /usr/local/linux_c_programming

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /usr/local/linux_c_programming/build

# Include any dependencies generated for this target.
include CMakeFiles/2_who.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/2_who.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/2_who.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/2_who.dir/flags.make

CMakeFiles/2_who.dir/src/2_who.cpp.o: CMakeFiles/2_who.dir/flags.make
CMakeFiles/2_who.dir/src/2_who.cpp.o: ../src/2_who.cpp
CMakeFiles/2_who.dir/src/2_who.cpp.o: CMakeFiles/2_who.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/local/linux_c_programming/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/2_who.dir/src/2_who.cpp.o"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/2_who.dir/src/2_who.cpp.o -MF CMakeFiles/2_who.dir/src/2_who.cpp.o.d -o CMakeFiles/2_who.dir/src/2_who.cpp.o -c /usr/local/linux_c_programming/src/2_who.cpp

CMakeFiles/2_who.dir/src/2_who.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/2_who.dir/src/2_who.cpp.i"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /usr/local/linux_c_programming/src/2_who.cpp > CMakeFiles/2_who.dir/src/2_who.cpp.i

CMakeFiles/2_who.dir/src/2_who.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/2_who.dir/src/2_who.cpp.s"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /usr/local/linux_c_programming/src/2_who.cpp -o CMakeFiles/2_who.dir/src/2_who.cpp.s

# Object files for target 2_who
2_who_OBJECTS = \
"CMakeFiles/2_who.dir/src/2_who.cpp.o"

# External object files for target 2_who
2_who_EXTERNAL_OBJECTS =

2_who: CMakeFiles/2_who.dir/src/2_who.cpp.o
2_who: CMakeFiles/2_who.dir/build.make
2_who: CMakeFiles/2_who.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/usr/local/linux_c_programming/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 2_who"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/2_who.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/2_who.dir/build: 2_who
.PHONY : CMakeFiles/2_who.dir/build

CMakeFiles/2_who.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/2_who.dir/cmake_clean.cmake
.PHONY : CMakeFiles/2_who.dir/clean

CMakeFiles/2_who.dir/depend:
	cd /usr/local/linux_c_programming/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /usr/local/linux_c_programming /usr/local/linux_c_programming /usr/local/linux_c_programming/build /usr/local/linux_c_programming/build /usr/local/linux_c_programming/build/CMakeFiles/2_who.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/2_who.dir/depend

