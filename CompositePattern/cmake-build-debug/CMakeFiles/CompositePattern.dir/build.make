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
CMAKE_SOURCE_DIR = F:\code\CompositePattern

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = F:\code\CompositePattern\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/CompositePattern.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CompositePattern.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CompositePattern.dir/flags.make

CMakeFiles/CompositePattern.dir/main.cpp.obj: CMakeFiles/CompositePattern.dir/flags.make
CMakeFiles/CompositePattern.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\code\CompositePattern\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CompositePattern.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\CompositePattern.dir\main.cpp.obj -c F:\code\CompositePattern\main.cpp

CMakeFiles/CompositePattern.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CompositePattern.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E F:\code\CompositePattern\main.cpp > CMakeFiles\CompositePattern.dir\main.cpp.i

CMakeFiles/CompositePattern.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CompositePattern.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S F:\code\CompositePattern\main.cpp -o CMakeFiles\CompositePattern.dir\main.cpp.s

CMakeFiles/CompositePattern.dir/main.cpp.obj.requires:

.PHONY : CMakeFiles/CompositePattern.dir/main.cpp.obj.requires

CMakeFiles/CompositePattern.dir/main.cpp.obj.provides: CMakeFiles/CompositePattern.dir/main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\CompositePattern.dir\build.make CMakeFiles/CompositePattern.dir/main.cpp.obj.provides.build
.PHONY : CMakeFiles/CompositePattern.dir/main.cpp.obj.provides

CMakeFiles/CompositePattern.dir/main.cpp.obj.provides.build: CMakeFiles/CompositePattern.dir/main.cpp.obj


# Object files for target CompositePattern
CompositePattern_OBJECTS = \
"CMakeFiles/CompositePattern.dir/main.cpp.obj"

# External object files for target CompositePattern
CompositePattern_EXTERNAL_OBJECTS =

CompositePattern.exe: CMakeFiles/CompositePattern.dir/main.cpp.obj
CompositePattern.exe: CMakeFiles/CompositePattern.dir/build.make
CompositePattern.exe: CMakeFiles/CompositePattern.dir/linklibs.rsp
CompositePattern.exe: CMakeFiles/CompositePattern.dir/objects1.rsp
CompositePattern.exe: CMakeFiles/CompositePattern.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=F:\code\CompositePattern\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable CompositePattern.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\CompositePattern.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CompositePattern.dir/build: CompositePattern.exe

.PHONY : CMakeFiles/CompositePattern.dir/build

CMakeFiles/CompositePattern.dir/requires: CMakeFiles/CompositePattern.dir/main.cpp.obj.requires

.PHONY : CMakeFiles/CompositePattern.dir/requires

CMakeFiles/CompositePattern.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\CompositePattern.dir\cmake_clean.cmake
.PHONY : CMakeFiles/CompositePattern.dir/clean

CMakeFiles/CompositePattern.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" F:\code\CompositePattern F:\code\CompositePattern F:\code\CompositePattern\cmake-build-debug F:\code\CompositePattern\cmake-build-debug F:\code\CompositePattern\cmake-build-debug\CMakeFiles\CompositePattern.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CompositePattern.dir/depend

