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
CMAKE_SOURCE_DIR = F:\code\DecoratorPattern

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = F:\code\DecoratorPattern\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/DecoratorPattern.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/DecoratorPattern.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/DecoratorPattern.dir/flags.make

CMakeFiles/DecoratorPattern.dir/main.cpp.obj: CMakeFiles/DecoratorPattern.dir/flags.make
CMakeFiles/DecoratorPattern.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\code\DecoratorPattern\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/DecoratorPattern.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\DecoratorPattern.dir\main.cpp.obj -c F:\code\DecoratorPattern\main.cpp

CMakeFiles/DecoratorPattern.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DecoratorPattern.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E F:\code\DecoratorPattern\main.cpp > CMakeFiles\DecoratorPattern.dir\main.cpp.i

CMakeFiles/DecoratorPattern.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DecoratorPattern.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S F:\code\DecoratorPattern\main.cpp -o CMakeFiles\DecoratorPattern.dir\main.cpp.s

CMakeFiles/DecoratorPattern.dir/main.cpp.obj.requires:

.PHONY : CMakeFiles/DecoratorPattern.dir/main.cpp.obj.requires

CMakeFiles/DecoratorPattern.dir/main.cpp.obj.provides: CMakeFiles/DecoratorPattern.dir/main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\DecoratorPattern.dir\build.make CMakeFiles/DecoratorPattern.dir/main.cpp.obj.provides.build
.PHONY : CMakeFiles/DecoratorPattern.dir/main.cpp.obj.provides

CMakeFiles/DecoratorPattern.dir/main.cpp.obj.provides.build: CMakeFiles/DecoratorPattern.dir/main.cpp.obj


# Object files for target DecoratorPattern
DecoratorPattern_OBJECTS = \
"CMakeFiles/DecoratorPattern.dir/main.cpp.obj"

# External object files for target DecoratorPattern
DecoratorPattern_EXTERNAL_OBJECTS =

DecoratorPattern.exe: CMakeFiles/DecoratorPattern.dir/main.cpp.obj
DecoratorPattern.exe: CMakeFiles/DecoratorPattern.dir/build.make
DecoratorPattern.exe: CMakeFiles/DecoratorPattern.dir/linklibs.rsp
DecoratorPattern.exe: CMakeFiles/DecoratorPattern.dir/objects1.rsp
DecoratorPattern.exe: CMakeFiles/DecoratorPattern.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=F:\code\DecoratorPattern\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable DecoratorPattern.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\DecoratorPattern.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/DecoratorPattern.dir/build: DecoratorPattern.exe

.PHONY : CMakeFiles/DecoratorPattern.dir/build

CMakeFiles/DecoratorPattern.dir/requires: CMakeFiles/DecoratorPattern.dir/main.cpp.obj.requires

.PHONY : CMakeFiles/DecoratorPattern.dir/requires

CMakeFiles/DecoratorPattern.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\DecoratorPattern.dir\cmake_clean.cmake
.PHONY : CMakeFiles/DecoratorPattern.dir/clean

CMakeFiles/DecoratorPattern.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" F:\code\DecoratorPattern F:\code\DecoratorPattern F:\code\DecoratorPattern\cmake-build-debug F:\code\DecoratorPattern\cmake-build-debug F:\code\DecoratorPattern\cmake-build-debug\CMakeFiles\DecoratorPattern.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/DecoratorPattern.dir/depend

