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
CMAKE_SOURCE_DIR = F:\code\FacadePattern

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = F:\code\FacadePattern\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/FacadePattern.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/FacadePattern.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/FacadePattern.dir/flags.make

CMakeFiles/FacadePattern.dir/main.cpp.obj: CMakeFiles/FacadePattern.dir/flags.make
CMakeFiles/FacadePattern.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\code\FacadePattern\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/FacadePattern.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\FacadePattern.dir\main.cpp.obj -c F:\code\FacadePattern\main.cpp

CMakeFiles/FacadePattern.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FacadePattern.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E F:\code\FacadePattern\main.cpp > CMakeFiles\FacadePattern.dir\main.cpp.i

CMakeFiles/FacadePattern.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FacadePattern.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S F:\code\FacadePattern\main.cpp -o CMakeFiles\FacadePattern.dir\main.cpp.s

CMakeFiles/FacadePattern.dir/main.cpp.obj.requires:

.PHONY : CMakeFiles/FacadePattern.dir/main.cpp.obj.requires

CMakeFiles/FacadePattern.dir/main.cpp.obj.provides: CMakeFiles/FacadePattern.dir/main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\FacadePattern.dir\build.make CMakeFiles/FacadePattern.dir/main.cpp.obj.provides.build
.PHONY : CMakeFiles/FacadePattern.dir/main.cpp.obj.provides

CMakeFiles/FacadePattern.dir/main.cpp.obj.provides.build: CMakeFiles/FacadePattern.dir/main.cpp.obj


# Object files for target FacadePattern
FacadePattern_OBJECTS = \
"CMakeFiles/FacadePattern.dir/main.cpp.obj"

# External object files for target FacadePattern
FacadePattern_EXTERNAL_OBJECTS =

FacadePattern.exe: CMakeFiles/FacadePattern.dir/main.cpp.obj
FacadePattern.exe: CMakeFiles/FacadePattern.dir/build.make
FacadePattern.exe: CMakeFiles/FacadePattern.dir/linklibs.rsp
FacadePattern.exe: CMakeFiles/FacadePattern.dir/objects1.rsp
FacadePattern.exe: CMakeFiles/FacadePattern.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=F:\code\FacadePattern\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable FacadePattern.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\FacadePattern.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/FacadePattern.dir/build: FacadePattern.exe

.PHONY : CMakeFiles/FacadePattern.dir/build

CMakeFiles/FacadePattern.dir/requires: CMakeFiles/FacadePattern.dir/main.cpp.obj.requires

.PHONY : CMakeFiles/FacadePattern.dir/requires

CMakeFiles/FacadePattern.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\FacadePattern.dir\cmake_clean.cmake
.PHONY : CMakeFiles/FacadePattern.dir/clean

CMakeFiles/FacadePattern.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" F:\code\FacadePattern F:\code\FacadePattern F:\code\FacadePattern\cmake-build-debug F:\code\FacadePattern\cmake-build-debug F:\code\FacadePattern\cmake-build-debug\CMakeFiles\FacadePattern.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/FacadePattern.dir/depend

