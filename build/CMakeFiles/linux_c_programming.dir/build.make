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
include CMakeFiles/linux_c_programming.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/linux_c_programming.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/linux_c_programming.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/linux_c_programming.dir/flags.make

CMakeFiles/linux_c_programming.dir/main.cpp.o: CMakeFiles/linux_c_programming.dir/flags.make
CMakeFiles/linux_c_programming.dir/main.cpp.o: ../main.cpp
CMakeFiles/linux_c_programming.dir/main.cpp.o: CMakeFiles/linux_c_programming.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/local/linux_c_programming/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/linux_c_programming.dir/main.cpp.o"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/linux_c_programming.dir/main.cpp.o -MF CMakeFiles/linux_c_programming.dir/main.cpp.o.d -o CMakeFiles/linux_c_programming.dir/main.cpp.o -c /usr/local/linux_c_programming/main.cpp

CMakeFiles/linux_c_programming.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/linux_c_programming.dir/main.cpp.i"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /usr/local/linux_c_programming/main.cpp > CMakeFiles/linux_c_programming.dir/main.cpp.i

CMakeFiles/linux_c_programming.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/linux_c_programming.dir/main.cpp.s"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /usr/local/linux_c_programming/main.cpp -o CMakeFiles/linux_c_programming.dir/main.cpp.s

CMakeFiles/linux_c_programming.dir/src/2_who.cpp.o: CMakeFiles/linux_c_programming.dir/flags.make
CMakeFiles/linux_c_programming.dir/src/2_who.cpp.o: ../src/2_who.cpp
CMakeFiles/linux_c_programming.dir/src/2_who.cpp.o: CMakeFiles/linux_c_programming.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/local/linux_c_programming/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/linux_c_programming.dir/src/2_who.cpp.o"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/linux_c_programming.dir/src/2_who.cpp.o -MF CMakeFiles/linux_c_programming.dir/src/2_who.cpp.o.d -o CMakeFiles/linux_c_programming.dir/src/2_who.cpp.o -c /usr/local/linux_c_programming/src/2_who.cpp

CMakeFiles/linux_c_programming.dir/src/2_who.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/linux_c_programming.dir/src/2_who.cpp.i"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /usr/local/linux_c_programming/src/2_who.cpp > CMakeFiles/linux_c_programming.dir/src/2_who.cpp.i

CMakeFiles/linux_c_programming.dir/src/2_who.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/linux_c_programming.dir/src/2_who.cpp.s"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /usr/local/linux_c_programming/src/2_who.cpp -o CMakeFiles/linux_c_programming.dir/src/2_who.cpp.s

# Object files for target linux_c_programming
linux_c_programming_OBJECTS = \
"CMakeFiles/linux_c_programming.dir/main.cpp.o" \
"CMakeFiles/linux_c_programming.dir/src/2_who.cpp.o"

# External object files for target linux_c_programming
linux_c_programming_EXTERNAL_OBJECTS =

linux_c_programming: CMakeFiles/linux_c_programming.dir/main.cpp.o
linux_c_programming: CMakeFiles/linux_c_programming.dir/src/2_who.cpp.o
linux_c_programming: CMakeFiles/linux_c_programming.dir/build.make
linux_c_programming: CMakeFiles/linux_c_programming.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/usr/local/linux_c_programming/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable linux_c_programming"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/linux_c_programming.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/linux_c_programming.dir/build: linux_c_programming
.PHONY : CMakeFiles/linux_c_programming.dir/build

CMakeFiles/linux_c_programming.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/linux_c_programming.dir/cmake_clean.cmake
.PHONY : CMakeFiles/linux_c_programming.dir/clean

CMakeFiles/linux_c_programming.dir/depend:
	cd /usr/local/linux_c_programming/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /usr/local/linux_c_programming /usr/local/linux_c_programming /usr/local/linux_c_programming/build /usr/local/linux_c_programming/build /usr/local/linux_c_programming/build/CMakeFiles/linux_c_programming.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/linux_c_programming.dir/depend

