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
include FatFS/CMakeFiles/FatFs_vR0.13a.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include FatFS/CMakeFiles/FatFs_vR0.13a.dir/compiler_depend.make

# Include the progress variables for this target.
include FatFS/CMakeFiles/FatFs_vR0.13a.dir/progress.make

# Include the compile flags for this target's objects.
include FatFS/CMakeFiles/FatFs_vR0.13a.dir/flags.make

FatFS/CMakeFiles/FatFs_vR0.13a.dir/ff.c.obj: FatFS/CMakeFiles/FatFs_vR0.13a.dir/flags.make
FatFS/CMakeFiles/FatFs_vR0.13a.dir/ff.c.obj: FatFS/CMakeFiles/FatFs_vR0.13a.dir/includes_C.rsp
FatFS/CMakeFiles/FatFs_vR0.13a.dir/ff.c.obj: C:/Users/niels/Documents/GitHub/DSP/software/STM32Basis/HAL/gemeenschappelijk/Third_Party/FatFs_vR0.13a/ff.c
FatFS/CMakeFiles/FatFs_vR0.13a.dir/ff.c.obj: FatFS/CMakeFiles/FatFs_vR0.13a.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object FatFS/CMakeFiles/FatFs_vR0.13a.dir/ff.c.obj"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FatFS && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT FatFS/CMakeFiles/FatFs_vR0.13a.dir/ff.c.obj -MF CMakeFiles\FatFs_vR0.13a.dir\ff.c.obj.d -o CMakeFiles\FatFs_vR0.13a.dir\ff.c.obj -c C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\FatFs_vR0.13a\ff.c

FatFS/CMakeFiles/FatFs_vR0.13a.dir/ff.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/FatFs_vR0.13a.dir/ff.c.i"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FatFS && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\FatFs_vR0.13a\ff.c > CMakeFiles\FatFs_vR0.13a.dir\ff.c.i

FatFS/CMakeFiles/FatFs_vR0.13a.dir/ff.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/FatFs_vR0.13a.dir/ff.c.s"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FatFS && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\FatFs_vR0.13a\ff.c -o CMakeFiles\FatFs_vR0.13a.dir\ff.c.s

FatFS/CMakeFiles/FatFs_vR0.13a.dir/ffsystem.c.obj: FatFS/CMakeFiles/FatFs_vR0.13a.dir/flags.make
FatFS/CMakeFiles/FatFs_vR0.13a.dir/ffsystem.c.obj: FatFS/CMakeFiles/FatFs_vR0.13a.dir/includes_C.rsp
FatFS/CMakeFiles/FatFs_vR0.13a.dir/ffsystem.c.obj: C:/Users/niels/Documents/GitHub/DSP/software/STM32Basis/HAL/gemeenschappelijk/Third_Party/FatFs_vR0.13a/ffsystem.c
FatFS/CMakeFiles/FatFs_vR0.13a.dir/ffsystem.c.obj: FatFS/CMakeFiles/FatFs_vR0.13a.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object FatFS/CMakeFiles/FatFs_vR0.13a.dir/ffsystem.c.obj"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FatFS && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT FatFS/CMakeFiles/FatFs_vR0.13a.dir/ffsystem.c.obj -MF CMakeFiles\FatFs_vR0.13a.dir\ffsystem.c.obj.d -o CMakeFiles\FatFs_vR0.13a.dir\ffsystem.c.obj -c C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\FatFs_vR0.13a\ffsystem.c

FatFS/CMakeFiles/FatFs_vR0.13a.dir/ffsystem.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/FatFs_vR0.13a.dir/ffsystem.c.i"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FatFS && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\FatFs_vR0.13a\ffsystem.c > CMakeFiles\FatFs_vR0.13a.dir\ffsystem.c.i

FatFS/CMakeFiles/FatFs_vR0.13a.dir/ffsystem.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/FatFs_vR0.13a.dir/ffsystem.c.s"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FatFS && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\FatFs_vR0.13a\ffsystem.c -o CMakeFiles\FatFs_vR0.13a.dir\ffsystem.c.s

FatFS/CMakeFiles/FatFs_vR0.13a.dir/ffunicode.c.obj: FatFS/CMakeFiles/FatFs_vR0.13a.dir/flags.make
FatFS/CMakeFiles/FatFs_vR0.13a.dir/ffunicode.c.obj: FatFS/CMakeFiles/FatFs_vR0.13a.dir/includes_C.rsp
FatFS/CMakeFiles/FatFs_vR0.13a.dir/ffunicode.c.obj: C:/Users/niels/Documents/GitHub/DSP/software/STM32Basis/HAL/gemeenschappelijk/Third_Party/FatFs_vR0.13a/ffunicode.c
FatFS/CMakeFiles/FatFs_vR0.13a.dir/ffunicode.c.obj: FatFS/CMakeFiles/FatFs_vR0.13a.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object FatFS/CMakeFiles/FatFs_vR0.13a.dir/ffunicode.c.obj"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FatFS && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT FatFS/CMakeFiles/FatFs_vR0.13a.dir/ffunicode.c.obj -MF CMakeFiles\FatFs_vR0.13a.dir\ffunicode.c.obj.d -o CMakeFiles\FatFs_vR0.13a.dir\ffunicode.c.obj -c C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\FatFs_vR0.13a\ffunicode.c

FatFS/CMakeFiles/FatFs_vR0.13a.dir/ffunicode.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/FatFs_vR0.13a.dir/ffunicode.c.i"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FatFS && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\FatFs_vR0.13a\ffunicode.c > CMakeFiles\FatFs_vR0.13a.dir\ffunicode.c.i

FatFS/CMakeFiles/FatFs_vR0.13a.dir/ffunicode.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/FatFs_vR0.13a.dir/ffunicode.c.s"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FatFS && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\FatFs_vR0.13a\ffunicode.c -o CMakeFiles\FatFs_vR0.13a.dir\ffunicode.c.s

# Object files for target FatFs_vR0.13a
FatFs_vR0_13a_OBJECTS = \
"CMakeFiles/FatFs_vR0.13a.dir/ff.c.obj" \
"CMakeFiles/FatFs_vR0.13a.dir/ffsystem.c.obj" \
"CMakeFiles/FatFs_vR0.13a.dir/ffunicode.c.obj"

# External object files for target FatFs_vR0.13a
FatFs_vR0_13a_EXTERNAL_OBJECTS =

FatFS/libFatFs_vR0.13a.a: FatFS/CMakeFiles/FatFs_vR0.13a.dir/ff.c.obj
FatFS/libFatFs_vR0.13a.a: FatFS/CMakeFiles/FatFs_vR0.13a.dir/ffsystem.c.obj
FatFS/libFatFs_vR0.13a.a: FatFS/CMakeFiles/FatFs_vR0.13a.dir/ffunicode.c.obj
FatFS/libFatFs_vR0.13a.a: FatFS/CMakeFiles/FatFs_vR0.13a.dir/build.make
FatFS/libFatFs_vR0.13a.a: FatFS/CMakeFiles/FatFs_vR0.13a.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C static library libFatFs_vR0.13a.a"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FatFS && $(CMAKE_COMMAND) -P CMakeFiles\FatFs_vR0.13a.dir\cmake_clean_target.cmake
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FatFS && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\FatFs_vR0.13a.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
FatFS/CMakeFiles/FatFs_vR0.13a.dir/build: FatFS/libFatFs_vR0.13a.a
.PHONY : FatFS/CMakeFiles/FatFs_vR0.13a.dir/build

FatFS/CMakeFiles/FatFs_vR0.13a.dir/clean:
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FatFS && $(CMAKE_COMMAND) -P CMakeFiles\FatFs_vR0.13a.dir\cmake_clean.cmake
.PHONY : FatFS/CMakeFiles/FatFs_vR0.13a.dir/clean

FatFS/CMakeFiles/FatFs_vR0.13a.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\niels\Documents\GitHub\DSP\software\opdracht5 C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\FatFs_vR0.13a C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FatFS C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FatFS\CMakeFiles\FatFs_vR0.13a.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : FatFS/CMakeFiles/FatFs_vR0.13a.dir/depend

