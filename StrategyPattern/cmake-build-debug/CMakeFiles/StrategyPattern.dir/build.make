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
CMAKE_SOURCE_DIR = F:\code\StrategyPattern

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = F:\code\StrategyPattern\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/StrategyPattern.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/StrategyPattern.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/StrategyPattern.dir/flags.make

CMakeFiles/StrategyPattern.dir/main.cpp.obj: CMakeFiles/StrategyPattern.dir/flags.make
CMakeFiles/StrategyPattern.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\code\StrategyPattern\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/StrategyPattern.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\StrategyPattern.dir\main.cpp.obj -c F:\code\StrategyPattern\main.cpp

CMakeFiles/StrategyPattern.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/StrategyPattern.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E F:\code\StrategyPattern\main.cpp > CMakeFiles\StrategyPattern.dir\main.cpp.i

CMakeFiles/StrategyPattern.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/StrategyPattern.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S F:\code\StrategyPattern\main.cpp -o CMakeFiles\StrategyPattern.dir\main.cpp.s

CMakeFiles/StrategyPattern.dir/main.cpp.obj.requires:

.PHONY : CMakeFiles/StrategyPattern.dir/main.cpp.obj.requires

CMakeFiles/StrategyPattern.dir/main.cpp.obj.provides: CMakeFiles/StrategyPattern.dir/main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\StrategyPattern.dir\build.make CMakeFiles/StrategyPattern.dir/main.cpp.obj.provides.build
.PHONY : CMakeFiles/StrategyPattern.dir/main.cpp.obj.provides

CMakeFiles/StrategyPattern.dir/main.cpp.obj.provides.build: CMakeFiles/StrategyPattern.dir/main.cpp.obj


# Object files for target StrategyPattern
StrategyPattern_OBJECTS = \
"CMakeFiles/StrategyPattern.dir/main.cpp.obj"

# External object files for target StrategyPattern
StrategyPattern_EXTERNAL_OBJECTS =

StrategyPattern.exe: CMakeFiles/StrategyPattern.dir/main.cpp.obj
StrategyPattern.exe: CMakeFiles/StrategyPattern.dir/build.make
StrategyPattern.exe: CMakeFiles/StrategyPattern.dir/linklibs.rsp
StrategyPattern.exe: CMakeFiles/StrategyPattern.dir/objects1.rsp
StrategyPattern.exe: CMakeFiles/StrategyPattern.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=F:\code\StrategyPattern\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable StrategyPattern.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\StrategyPattern.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/StrategyPattern.dir/build: StrategyPattern.exe

.PHONY : CMakeFiles/StrategyPattern.dir/build

CMakeFiles/StrategyPattern.dir/requires: CMakeFiles/StrategyPattern.dir/main.cpp.obj.requires

.PHONY : CMakeFiles/StrategyPattern.dir/requires

CMakeFiles/StrategyPattern.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\StrategyPattern.dir\cmake_clean.cmake
.PHONY : CMakeFiles/StrategyPattern.dir/clean

CMakeFiles/StrategyPattern.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" F:\code\StrategyPattern F:\code\StrategyPattern F:\code\StrategyPattern\cmake-build-debug F:\code\StrategyPattern\cmake-build-debug F:\code\StrategyPattern\cmake-build-debug\CMakeFiles\StrategyPattern.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/StrategyPattern.dir/depend

