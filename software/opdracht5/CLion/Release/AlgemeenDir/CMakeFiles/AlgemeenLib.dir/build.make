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
CMAKE_BINARY_DIR = C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Release

# Include any dependencies generated for this target.
include AlgemeenDir/CMakeFiles/AlgemeenLib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include AlgemeenDir/CMakeFiles/AlgemeenLib.dir/compiler_depend.make

# Include the progress variables for this target.
include AlgemeenDir/CMakeFiles/AlgemeenLib.dir/progress.make

# Include the compile flags for this target's objects.
include AlgemeenDir/CMakeFiles/AlgemeenLib.dir/flags.make

AlgemeenDir/CMakeFiles/AlgemeenLib.dir/algdef.cpp.obj: AlgemeenDir/CMakeFiles/AlgemeenLib.dir/flags.make
AlgemeenDir/CMakeFiles/AlgemeenLib.dir/algdef.cpp.obj: AlgemeenDir/CMakeFiles/AlgemeenLib.dir/includes_CXX.rsp
AlgemeenDir/CMakeFiles/AlgemeenLib.dir/algdef.cpp.obj: C:/Users/niels/Documents/GitHub/DSP/software/algemeen/algdef.cpp
AlgemeenDir/CMakeFiles/AlgemeenLib.dir/algdef.cpp.obj: AlgemeenDir/CMakeFiles/AlgemeenLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object AlgemeenDir/CMakeFiles/AlgemeenLib.dir/algdef.cpp.obj"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Release\AlgemeenDir && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Release/AlgemeenDir/algdef.cpp.lst" -MD -MT AlgemeenDir/CMakeFiles/AlgemeenLib.dir/algdef.cpp.obj -MF CMakeFiles\AlgemeenLib.dir\algdef.cpp.obj.d -o CMakeFiles\AlgemeenLib.dir\algdef.cpp.obj -c C:\Users\niels\Documents\GitHub\DSP\software\algemeen\algdef.cpp

AlgemeenDir/CMakeFiles/AlgemeenLib.dir/algdef.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/AlgemeenLib.dir/algdef.cpp.i"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Release\AlgemeenDir && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Release/AlgemeenDir/algdef.cpp.lst" -E C:\Users\niels\Documents\GitHub\DSP\software\algemeen\algdef.cpp > CMakeFiles\AlgemeenLib.dir\algdef.cpp.i

AlgemeenDir/CMakeFiles/AlgemeenLib.dir/algdef.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/AlgemeenLib.dir/algdef.cpp.s"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Release\AlgemeenDir && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Release/AlgemeenDir/algdef.cpp.lst" -S C:\Users\niels\Documents\GitHub\DSP\software\algemeen\algdef.cpp -o CMakeFiles\AlgemeenLib.dir\algdef.cpp.s

# Object files for target AlgemeenLib
AlgemeenLib_OBJECTS = \
"CMakeFiles/AlgemeenLib.dir/algdef.cpp.obj"

# External object files for target AlgemeenLib
AlgemeenLib_EXTERNAL_OBJECTS =

AlgemeenDir/libAlgemeenLib.a: AlgemeenDir/CMakeFiles/AlgemeenLib.dir/algdef.cpp.obj
AlgemeenDir/libAlgemeenLib.a: AlgemeenDir/CMakeFiles/AlgemeenLib.dir/build.make
AlgemeenDir/libAlgemeenLib.a: AlgemeenDir/CMakeFiles/AlgemeenLib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libAlgemeenLib.a"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Release\AlgemeenDir && $(CMAKE_COMMAND) -P CMakeFiles\AlgemeenLib.dir\cmake_clean_target.cmake
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Release\AlgemeenDir && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\AlgemeenLib.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
AlgemeenDir/CMakeFiles/AlgemeenLib.dir/build: AlgemeenDir/libAlgemeenLib.a
.PHONY : AlgemeenDir/CMakeFiles/AlgemeenLib.dir/build

AlgemeenDir/CMakeFiles/AlgemeenLib.dir/clean:
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Release\AlgemeenDir && $(CMAKE_COMMAND) -P CMakeFiles\AlgemeenLib.dir\cmake_clean.cmake
.PHONY : AlgemeenDir/CMakeFiles/AlgemeenLib.dir/clean

AlgemeenDir/CMakeFiles/AlgemeenLib.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\niels\Documents\GitHub\DSP\software\opdracht5 C:\Users\niels\Documents\GitHub\DSP\software\algemeen C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Release C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Release\AlgemeenDir C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Release\AlgemeenDir\CMakeFiles\AlgemeenLib.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : AlgemeenDir/CMakeFiles/AlgemeenLib.dir/depend

