# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2024.1.4\bin\cmake\win\x64\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2024.1.4\bin\cmake\win\x64\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\niels\Documents\GitHub\DSP\software\opdracht5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug

# Include any dependencies generated for this target.
include filter/CMakeFiles/FirFilterLib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include filter/CMakeFiles/FirFilterLib.dir/compiler_depend.make

# Include the progress variables for this target.
include filter/CMakeFiles/FirFilterLib.dir/progress.make

# Include the compile flags for this target's objects.
include filter/CMakeFiles/FirFilterLib.dir/flags.make

filter/CMakeFiles/FirFilterLib.dir/firfilter.cpp.obj: filter/CMakeFiles/FirFilterLib.dir/flags.make
filter/CMakeFiles/FirFilterLib.dir/firfilter.cpp.obj: filter/CMakeFiles/FirFilterLib.dir/includes_CXX.rsp
filter/CMakeFiles/FirFilterLib.dir/firfilter.cpp.obj: C:/Users/niels/Documents/GitHub/DSP/software/opdracht4/STUDENT/filter/firfilter.cpp
filter/CMakeFiles/FirFilterLib.dir/firfilter.cpp.obj: filter/CMakeFiles/FirFilterLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object filter/CMakeFiles/FirFilterLib.dir/firfilter.cpp.obj"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\filter && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT filter/CMakeFiles/FirFilterLib.dir/firfilter.cpp.obj -MF CMakeFiles\FirFilterLib.dir\firfilter.cpp.obj.d -o CMakeFiles\FirFilterLib.dir\firfilter.cpp.obj -c C:\Users\niels\Documents\GitHub\DSP\software\opdracht4\STUDENT\filter\firfilter.cpp

filter/CMakeFiles/FirFilterLib.dir/firfilter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/FirFilterLib.dir/firfilter.cpp.i"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\filter && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\niels\Documents\GitHub\DSP\software\opdracht4\STUDENT\filter\firfilter.cpp > CMakeFiles\FirFilterLib.dir\firfilter.cpp.i

filter/CMakeFiles/FirFilterLib.dir/firfilter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/FirFilterLib.dir/firfilter.cpp.s"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\filter && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\niels\Documents\GitHub\DSP\software\opdracht4\STUDENT\filter\firfilter.cpp -o CMakeFiles\FirFilterLib.dir\firfilter.cpp.s

# Object files for target FirFilterLib
FirFilterLib_OBJECTS = \
"CMakeFiles/FirFilterLib.dir/firfilter.cpp.obj"

# External object files for target FirFilterLib
FirFilterLib_EXTERNAL_OBJECTS =

filter/libFirFilterLib.a: filter/CMakeFiles/FirFilterLib.dir/firfilter.cpp.obj
filter/libFirFilterLib.a: filter/CMakeFiles/FirFilterLib.dir/build.make
filter/libFirFilterLib.a: filter/CMakeFiles/FirFilterLib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libFirFilterLib.a"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\filter && $(CMAKE_COMMAND) -P CMakeFiles\FirFilterLib.dir\cmake_clean_target.cmake
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\filter && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\FirFilterLib.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
filter/CMakeFiles/FirFilterLib.dir/build: filter/libFirFilterLib.a
.PHONY : filter/CMakeFiles/FirFilterLib.dir/build

filter/CMakeFiles/FirFilterLib.dir/clean:
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\filter && $(CMAKE_COMMAND) -P CMakeFiles\FirFilterLib.dir\cmake_clean.cmake
.PHONY : filter/CMakeFiles/FirFilterLib.dir/clean

filter/CMakeFiles/FirFilterLib.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\niels\Documents\GitHub\DSP\software\opdracht5 C:\Users\niels\Documents\GitHub\DSP\software\opdracht4\STUDENT\filter C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\filter C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\filter\CMakeFiles\FirFilterLib.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : filter/CMakeFiles/FirFilterLib.dir/depend

