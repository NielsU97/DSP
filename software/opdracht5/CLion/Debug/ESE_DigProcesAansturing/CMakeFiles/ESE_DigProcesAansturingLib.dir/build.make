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
include ESE_DigProcesAansturing/CMakeFiles/ESE_DigProcesAansturingLib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include ESE_DigProcesAansturing/CMakeFiles/ESE_DigProcesAansturingLib.dir/compiler_depend.make

# Include the progress variables for this target.
include ESE_DigProcesAansturing/CMakeFiles/ESE_DigProcesAansturingLib.dir/progress.make

# Include the compile flags for this target's objects.
include ESE_DigProcesAansturing/CMakeFiles/ESE_DigProcesAansturingLib.dir/flags.make

ESE_DigProcesAansturing/CMakeFiles/ESE_DigProcesAansturingLib.dir/DigProcesAansturing.cpp.obj: ESE_DigProcesAansturing/CMakeFiles/ESE_DigProcesAansturingLib.dir/flags.make
ESE_DigProcesAansturing/CMakeFiles/ESE_DigProcesAansturingLib.dir/DigProcesAansturing.cpp.obj: ESE_DigProcesAansturing/CMakeFiles/ESE_DigProcesAansturingLib.dir/includes_CXX.rsp
ESE_DigProcesAansturing/CMakeFiles/ESE_DigProcesAansturingLib.dir/DigProcesAansturing.cpp.obj: C:/Users/niels/Documents/GitHub/DSP/software/STM32Basis/HAL/gemeenschappelijk/Third_Party/ESE_BSP/DigProcesAansturing/DigProcesAansturing.cpp
ESE_DigProcesAansturing/CMakeFiles/ESE_DigProcesAansturingLib.dir/DigProcesAansturing.cpp.obj: ESE_DigProcesAansturing/CMakeFiles/ESE_DigProcesAansturingLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ESE_DigProcesAansturing/CMakeFiles/ESE_DigProcesAansturingLib.dir/DigProcesAansturing.cpp.obj"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\ESE_DigProcesAansturing && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/ESE_DigProcesAansturing/DigProcesAansturing.cpp.lst" -MD -MT ESE_DigProcesAansturing/CMakeFiles/ESE_DigProcesAansturingLib.dir/DigProcesAansturing.cpp.obj -MF CMakeFiles\ESE_DigProcesAansturingLib.dir\DigProcesAansturing.cpp.obj.d -o CMakeFiles\ESE_DigProcesAansturingLib.dir\DigProcesAansturing.cpp.obj -c C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\ESE_BSP\DigProcesAansturing\DigProcesAansturing.cpp

ESE_DigProcesAansturing/CMakeFiles/ESE_DigProcesAansturingLib.dir/DigProcesAansturing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ESE_DigProcesAansturingLib.dir/DigProcesAansturing.cpp.i"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\ESE_DigProcesAansturing && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/ESE_DigProcesAansturing/DigProcesAansturing.cpp.lst" -E C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\ESE_BSP\DigProcesAansturing\DigProcesAansturing.cpp > CMakeFiles\ESE_DigProcesAansturingLib.dir\DigProcesAansturing.cpp.i

ESE_DigProcesAansturing/CMakeFiles/ESE_DigProcesAansturingLib.dir/DigProcesAansturing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ESE_DigProcesAansturingLib.dir/DigProcesAansturing.cpp.s"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\ESE_DigProcesAansturing && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/ESE_DigProcesAansturing/DigProcesAansturing.cpp.lst" -S C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\ESE_BSP\DigProcesAansturing\DigProcesAansturing.cpp -o CMakeFiles\ESE_DigProcesAansturingLib.dir\DigProcesAansturing.cpp.s

# Object files for target ESE_DigProcesAansturingLib
ESE_DigProcesAansturingLib_OBJECTS = \
"CMakeFiles/ESE_DigProcesAansturingLib.dir/DigProcesAansturing.cpp.obj"

# External object files for target ESE_DigProcesAansturingLib
ESE_DigProcesAansturingLib_EXTERNAL_OBJECTS =

ESE_DigProcesAansturing/libESE_DigProcesAansturingLib.a: ESE_DigProcesAansturing/CMakeFiles/ESE_DigProcesAansturingLib.dir/DigProcesAansturing.cpp.obj
ESE_DigProcesAansturing/libESE_DigProcesAansturingLib.a: ESE_DigProcesAansturing/CMakeFiles/ESE_DigProcesAansturingLib.dir/build.make
ESE_DigProcesAansturing/libESE_DigProcesAansturingLib.a: ESE_DigProcesAansturing/CMakeFiles/ESE_DigProcesAansturingLib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libESE_DigProcesAansturingLib.a"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\ESE_DigProcesAansturing && $(CMAKE_COMMAND) -P CMakeFiles\ESE_DigProcesAansturingLib.dir\cmake_clean_target.cmake
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\ESE_DigProcesAansturing && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ESE_DigProcesAansturingLib.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ESE_DigProcesAansturing/CMakeFiles/ESE_DigProcesAansturingLib.dir/build: ESE_DigProcesAansturing/libESE_DigProcesAansturingLib.a
.PHONY : ESE_DigProcesAansturing/CMakeFiles/ESE_DigProcesAansturingLib.dir/build

ESE_DigProcesAansturing/CMakeFiles/ESE_DigProcesAansturingLib.dir/clean:
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\ESE_DigProcesAansturing && $(CMAKE_COMMAND) -P CMakeFiles\ESE_DigProcesAansturingLib.dir\cmake_clean.cmake
.PHONY : ESE_DigProcesAansturing/CMakeFiles/ESE_DigProcesAansturingLib.dir/clean

ESE_DigProcesAansturing/CMakeFiles/ESE_DigProcesAansturingLib.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\niels\Documents\GitHub\DSP\software\opdracht5 C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\ESE_BSP\DigProcesAansturing C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\ESE_DigProcesAansturing C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\ESE_DigProcesAansturing\CMakeFiles\ESE_DigProcesAansturingLib.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : ESE_DigProcesAansturing/CMakeFiles/ESE_DigProcesAansturingLib.dir/depend

