# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:\ClionProject\CPlus\LinkListDemo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\ClionProject\CPlus\LinkListDemo\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/LinkListDemo.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/LinkListDemo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LinkListDemo.dir/flags.make

CMakeFiles/LinkListDemo.dir/main.c.obj: CMakeFiles/LinkListDemo.dir/flags.make
CMakeFiles/LinkListDemo.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\ClionProject\CPlus\LinkListDemo\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/LinkListDemo.dir/main.c.obj"
	D:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\LinkListDemo.dir\main.c.obj -c E:\ClionProject\CPlus\LinkListDemo\main.c

CMakeFiles/LinkListDemo.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/LinkListDemo.dir/main.c.i"
	D:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\ClionProject\CPlus\LinkListDemo\main.c > CMakeFiles\LinkListDemo.dir\main.c.i

CMakeFiles/LinkListDemo.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/LinkListDemo.dir/main.c.s"
	D:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S E:\ClionProject\CPlus\LinkListDemo\main.c -o CMakeFiles\LinkListDemo.dir\main.c.s

# Object files for target LinkListDemo
LinkListDemo_OBJECTS = \
"CMakeFiles/LinkListDemo.dir/main.c.obj"

# External object files for target LinkListDemo
LinkListDemo_EXTERNAL_OBJECTS =

LinkListDemo.exe: CMakeFiles/LinkListDemo.dir/main.c.obj
LinkListDemo.exe: CMakeFiles/LinkListDemo.dir/build.make
LinkListDemo.exe: CMakeFiles/LinkListDemo.dir/linklibs.rsp
LinkListDemo.exe: CMakeFiles/LinkListDemo.dir/objects1.rsp
LinkListDemo.exe: CMakeFiles/LinkListDemo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\ClionProject\CPlus\LinkListDemo\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable LinkListDemo.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\LinkListDemo.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LinkListDemo.dir/build: LinkListDemo.exe
.PHONY : CMakeFiles/LinkListDemo.dir/build

CMakeFiles/LinkListDemo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\LinkListDemo.dir\cmake_clean.cmake
.PHONY : CMakeFiles/LinkListDemo.dir/clean

CMakeFiles/LinkListDemo.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\ClionProject\CPlus\LinkListDemo E:\ClionProject\CPlus\LinkListDemo E:\ClionProject\CPlus\LinkListDemo\cmake-build-debug E:\ClionProject\CPlus\LinkListDemo\cmake-build-debug E:\ClionProject\CPlus\LinkListDemo\cmake-build-debug\CMakeFiles\LinkListDemo.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LinkListDemo.dir/depend

