# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.8

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "E:\soft\CLion 2017.2\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "E:\soft\CLion 2017.2\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = F:\code\CommandPattern

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = F:\code\CommandPattern\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/CommandPattern.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CommandPattern.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CommandPattern.dir/flags.make

CMakeFiles/CommandPattern.dir/main.cpp.obj: CMakeFiles/CommandPattern.dir/flags.make
CMakeFiles/CommandPattern.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\code\CommandPattern\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CommandPattern.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\CommandPattern.dir\main.cpp.obj -c F:\code\CommandPattern\main.cpp

CMakeFiles/CommandPattern.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CommandPattern.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E F:\code\CommandPattern\main.cpp > CMakeFiles\CommandPattern.dir\main.cpp.i

CMakeFiles/CommandPattern.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CommandPattern.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S F:\code\CommandPattern\main.cpp -o CMakeFiles\CommandPattern.dir\main.cpp.s

CMakeFiles/CommandPattern.dir/main.cpp.obj.requires:

.PHONY : CMakeFiles/CommandPattern.dir/main.cpp.obj.requires

CMakeFiles/CommandPattern.dir/main.cpp.obj.provides: CMakeFiles/CommandPattern.dir/main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\CommandPattern.dir\build.make CMakeFiles/CommandPattern.dir/main.cpp.obj.provides.build
.PHONY : CMakeFiles/CommandPattern.dir/main.cpp.obj.provides

CMakeFiles/CommandPattern.dir/main.cpp.obj.provides.build: CMakeFiles/CommandPattern.dir/main.cpp.obj


# Object files for target CommandPattern
CommandPattern_OBJECTS = \
"CMakeFiles/CommandPattern.dir/main.cpp.obj"

# External object files for target CommandPattern
CommandPattern_EXTERNAL_OBJECTS =

CommandPattern.exe: CMakeFiles/CommandPattern.dir/main.cpp.obj
CommandPattern.exe: CMakeFiles/CommandPattern.dir/build.make
CommandPattern.exe: CMakeFiles/CommandPattern.dir/linklibs.rsp
CommandPattern.exe: CMakeFiles/CommandPattern.dir/objects1.rsp
CommandPattern.exe: CMakeFiles/CommandPattern.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=F:\code\CommandPattern\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable CommandPattern.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\CommandPattern.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CommandPattern.dir/build: CommandPattern.exe

.PHONY : CMakeFiles/CommandPattern.dir/build

CMakeFiles/CommandPattern.dir/requires: CMakeFiles/CommandPattern.dir/main.cpp.obj.requires

.PHONY : CMakeFiles/CommandPattern.dir/requires

CMakeFiles/CommandPattern.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\CommandPattern.dir\cmake_clean.cmake
.PHONY : CMakeFiles/CommandPattern.dir/clean

CMakeFiles/CommandPattern.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" F:\code\CommandPattern F:\code\CommandPattern F:\code\CommandPattern\cmake-build-debug F:\code\CommandPattern\cmake-build-debug F:\code\CommandPattern\cmake-build-debug\CMakeFiles\CommandPattern.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CommandPattern.dir/depend

