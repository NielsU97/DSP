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
include BasisDir/CMakeFiles/ESEBasisLib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include BasisDir/CMakeFiles/ESEBasisLib.dir/compiler_depend.make

# Include the progress variables for this target.
include BasisDir/CMakeFiles/ESEBasisLib.dir/progress.make

# Include the compile flags for this target's objects.
include BasisDir/CMakeFiles/ESEBasisLib.dir/flags.make

BasisDir/CMakeFiles/ESEBasisLib.dir/CortexMProcessor.cpp.obj: BasisDir/CMakeFiles/ESEBasisLib.dir/flags.make
BasisDir/CMakeFiles/ESEBasisLib.dir/CortexMProcessor.cpp.obj: BasisDir/CMakeFiles/ESEBasisLib.dir/includes_CXX.rsp
BasisDir/CMakeFiles/ESEBasisLib.dir/CortexMProcessor.cpp.obj: C:/Users/niels/Documents/GitHub/DSP/software/STM32Basis/gemeenschappelijk/basis/CortexMProcessor.cpp
BasisDir/CMakeFiles/ESEBasisLib.dir/CortexMProcessor.cpp.obj: BasisDir/CMakeFiles/ESEBasisLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object BasisDir/CMakeFiles/ESEBasisLib.dir/CortexMProcessor.cpp.obj"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\BasisDir && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/BasisDir/CortexMProcessor.cpp.lst" -MD -MT BasisDir/CMakeFiles/ESEBasisLib.dir/CortexMProcessor.cpp.obj -MF CMakeFiles\ESEBasisLib.dir\CortexMProcessor.cpp.obj.d -o CMakeFiles\ESEBasisLib.dir\CortexMProcessor.cpp.obj -c C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\gemeenschappelijk\basis\CortexMProcessor.cpp

BasisDir/CMakeFiles/ESEBasisLib.dir/CortexMProcessor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ESEBasisLib.dir/CortexMProcessor.cpp.i"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\BasisDir && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/BasisDir/CortexMProcessor.cpp.lst" -E C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\gemeenschappelijk\basis\CortexMProcessor.cpp > CMakeFiles\ESEBasisLib.dir\CortexMProcessor.cpp.i

BasisDir/CMakeFiles/ESEBasisLib.dir/CortexMProcessor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ESEBasisLib.dir/CortexMProcessor.cpp.s"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\BasisDir && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/BasisDir/CortexMProcessor.cpp.lst" -S C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\gemeenschappelijk\basis\CortexMProcessor.cpp -o CMakeFiles\ESEBasisLib.dir\CortexMProcessor.cpp.s

# Object files for target ESEBasisLib
ESEBasisLib_OBJECTS = \
"CMakeFiles/ESEBasisLib.dir/CortexMProcessor.cpp.obj"

# External object files for target ESEBasisLib
ESEBasisLib_EXTERNAL_OBJECTS =

BasisDir/libESEBasisLib.a: BasisDir/CMakeFiles/ESEBasisLib.dir/CortexMProcessor.cpp.obj
BasisDir/libESEBasisLib.a: BasisDir/CMakeFiles/ESEBasisLib.dir/build.make
BasisDir/libESEBasisLib.a: BasisDir/CMakeFiles/ESEBasisLib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libESEBasisLib.a"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\BasisDir && $(CMAKE_COMMAND) -P CMakeFiles\ESEBasisLib.dir\cmake_clean_target.cmake
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\BasisDir && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ESEBasisLib.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
BasisDir/CMakeFiles/ESEBasisLib.dir/build: BasisDir/libESEBasisLib.a
.PHONY : BasisDir/CMakeFiles/ESEBasisLib.dir/build

BasisDir/CMakeFiles/ESEBasisLib.dir/clean:
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\BasisDir && $(CMAKE_COMMAND) -P CMakeFiles\ESEBasisLib.dir\cmake_clean.cmake
.PHONY : BasisDir/CMakeFiles/ESEBasisLib.dir/clean

BasisDir/CMakeFiles/ESEBasisLib.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\niels\Documents\GitHub\DSP\software\opdracht5 C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\gemeenschappelijk\basis C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\BasisDir C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\BasisDir\CMakeFiles\ESEBasisLib.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : BasisDir/CMakeFiles/ESEBasisLib.dir/depend

