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
include FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/compiler_depend.make

# Include the progress variables for this target.
include FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/progress.make

# Include the compile flags for this target's objects.
include FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/flags.make

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cmutex.cpp.obj: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/flags.make
FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cmutex.cpp.obj: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/includes_CXX.rsp
FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cmutex.cpp.obj: C:/Users/niels/Documents/GitHub/DSP/software/STM32Basis/HAL/gemeenschappelijk/Third_Party/freertos-addons-1.1.0/c++/Source/cmutex.cpp
FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cmutex.cpp.obj: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cmutex.cpp.obj"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/FreeRTOSOOSchil/cmutex.cpp.lst" -MD -MT FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cmutex.cpp.obj -MF CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\cmutex.cpp.obj.d -o CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\cmutex.cpp.obj -c C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\freertos-addons-1.1.0\c++\Source\cmutex.cpp

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cmutex.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cmutex.cpp.i"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/FreeRTOSOOSchil/cmutex.cpp.lst" -E C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\freertos-addons-1.1.0\c++\Source\cmutex.cpp > CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\cmutex.cpp.i

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cmutex.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cmutex.cpp.s"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/FreeRTOSOOSchil/cmutex.cpp.lst" -S C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\freertos-addons-1.1.0\c++\Source\cmutex.cpp -o CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\cmutex.cpp.s

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cqueue.cpp.obj: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/flags.make
FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cqueue.cpp.obj: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/includes_CXX.rsp
FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cqueue.cpp.obj: C:/Users/niels/Documents/GitHub/DSP/software/STM32Basis/HAL/gemeenschappelijk/Third_Party/freertos-addons-1.1.0/c++/Source/cqueue.cpp
FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cqueue.cpp.obj: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cqueue.cpp.obj"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/FreeRTOSOOSchil/cqueue.cpp.lst" -MD -MT FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cqueue.cpp.obj -MF CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\cqueue.cpp.obj.d -o CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\cqueue.cpp.obj -c C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\freertos-addons-1.1.0\c++\Source\cqueue.cpp

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cqueue.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cqueue.cpp.i"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/FreeRTOSOOSchil/cqueue.cpp.lst" -E C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\freertos-addons-1.1.0\c++\Source\cqueue.cpp > CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\cqueue.cpp.i

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cqueue.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cqueue.cpp.s"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/FreeRTOSOOSchil/cqueue.cpp.lst" -S C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\freertos-addons-1.1.0\c++\Source\cqueue.cpp -o CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\cqueue.cpp.s

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cread_write_lock.cpp.obj: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/flags.make
FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cread_write_lock.cpp.obj: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/includes_CXX.rsp
FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cread_write_lock.cpp.obj: C:/Users/niels/Documents/GitHub/DSP/software/STM32Basis/HAL/gemeenschappelijk/Third_Party/freertos-addons-1.1.0/c++/Source/cread_write_lock.cpp
FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cread_write_lock.cpp.obj: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cread_write_lock.cpp.obj"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/FreeRTOSOOSchil/cread_write_lock.cpp.lst" -MD -MT FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cread_write_lock.cpp.obj -MF CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\cread_write_lock.cpp.obj.d -o CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\cread_write_lock.cpp.obj -c C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\freertos-addons-1.1.0\c++\Source\cread_write_lock.cpp

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cread_write_lock.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cread_write_lock.cpp.i"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/FreeRTOSOOSchil/cread_write_lock.cpp.lst" -E C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\freertos-addons-1.1.0\c++\Source\cread_write_lock.cpp > CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\cread_write_lock.cpp.i

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cread_write_lock.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cread_write_lock.cpp.s"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/FreeRTOSOOSchil/cread_write_lock.cpp.lst" -S C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\freertos-addons-1.1.0\c++\Source\cread_write_lock.cpp -o CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\cread_write_lock.cpp.s

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/csemaphore.cpp.obj: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/flags.make
FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/csemaphore.cpp.obj: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/includes_CXX.rsp
FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/csemaphore.cpp.obj: C:/Users/niels/Documents/GitHub/DSP/software/STM32Basis/HAL/gemeenschappelijk/Third_Party/freertos-addons-1.1.0/c++/Source/csemaphore.cpp
FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/csemaphore.cpp.obj: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/csemaphore.cpp.obj"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/FreeRTOSOOSchil/csemaphore.cpp.lst" -MD -MT FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/csemaphore.cpp.obj -MF CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\csemaphore.cpp.obj.d -o CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\csemaphore.cpp.obj -c C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\freertos-addons-1.1.0\c++\Source\csemaphore.cpp

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/csemaphore.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/csemaphore.cpp.i"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/FreeRTOSOOSchil/csemaphore.cpp.lst" -E C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\freertos-addons-1.1.0\c++\Source\csemaphore.cpp > CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\csemaphore.cpp.i

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/csemaphore.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/csemaphore.cpp.s"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/FreeRTOSOOSchil/csemaphore.cpp.lst" -S C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\freertos-addons-1.1.0\c++\Source\csemaphore.cpp -o CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\csemaphore.cpp.s

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctasklet.cpp.obj: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/flags.make
FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctasklet.cpp.obj: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/includes_CXX.rsp
FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctasklet.cpp.obj: C:/Users/niels/Documents/GitHub/DSP/software/STM32Basis/HAL/gemeenschappelijk/Third_Party/freertos-addons-1.1.0/c++/Source/ctasklet.cpp
FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctasklet.cpp.obj: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctasklet.cpp.obj"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/FreeRTOSOOSchil/ctasklet.cpp.lst" -MD -MT FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctasklet.cpp.obj -MF CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\ctasklet.cpp.obj.d -o CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\ctasklet.cpp.obj -c C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\freertos-addons-1.1.0\c++\Source\ctasklet.cpp

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctasklet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctasklet.cpp.i"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/FreeRTOSOOSchil/ctasklet.cpp.lst" -E C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\freertos-addons-1.1.0\c++\Source\ctasklet.cpp > CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\ctasklet.cpp.i

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctasklet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctasklet.cpp.s"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/FreeRTOSOOSchil/ctasklet.cpp.lst" -S C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\freertos-addons-1.1.0\c++\Source\ctasklet.cpp -o CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\ctasklet.cpp.s

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cthread.cpp.obj: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/flags.make
FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cthread.cpp.obj: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/includes_CXX.rsp
FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cthread.cpp.obj: C:/Users/niels/Documents/GitHub/DSP/software/STM32Basis/HAL/gemeenschappelijk/Third_Party/freertos-addons-1.1.0/c++/Source/cthread.cpp
FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cthread.cpp.obj: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cthread.cpp.obj"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/FreeRTOSOOSchil/cthread.cpp.lst" -MD -MT FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cthread.cpp.obj -MF CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\cthread.cpp.obj.d -o CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\cthread.cpp.obj -c C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\freertos-addons-1.1.0\c++\Source\cthread.cpp

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cthread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cthread.cpp.i"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/FreeRTOSOOSchil/cthread.cpp.lst" -E C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\freertos-addons-1.1.0\c++\Source\cthread.cpp > CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\cthread.cpp.i

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cthread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cthread.cpp.s"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/FreeRTOSOOSchil/cthread.cpp.lst" -S C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\freertos-addons-1.1.0\c++\Source\cthread.cpp -o CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\cthread.cpp.s

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctickhook.cpp.obj: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/flags.make
FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctickhook.cpp.obj: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/includes_CXX.rsp
FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctickhook.cpp.obj: C:/Users/niels/Documents/GitHub/DSP/software/STM32Basis/HAL/gemeenschappelijk/Third_Party/freertos-addons-1.1.0/c++/Source/ctickhook.cpp
FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctickhook.cpp.obj: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctickhook.cpp.obj"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/FreeRTOSOOSchil/ctickhook.cpp.lst" -MD -MT FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctickhook.cpp.obj -MF CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\ctickhook.cpp.obj.d -o CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\ctickhook.cpp.obj -c C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\freertos-addons-1.1.0\c++\Source\ctickhook.cpp

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctickhook.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctickhook.cpp.i"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/FreeRTOSOOSchil/ctickhook.cpp.lst" -E C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\freertos-addons-1.1.0\c++\Source\ctickhook.cpp > CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\ctickhook.cpp.i

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctickhook.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctickhook.cpp.s"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/FreeRTOSOOSchil/ctickhook.cpp.lst" -S C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\freertos-addons-1.1.0\c++\Source\ctickhook.cpp -o CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\ctickhook.cpp.s

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctimer.cpp.obj: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/flags.make
FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctimer.cpp.obj: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/includes_CXX.rsp
FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctimer.cpp.obj: C:/Users/niels/Documents/GitHub/DSP/software/STM32Basis/HAL/gemeenschappelijk/Third_Party/freertos-addons-1.1.0/c++/Source/ctimer.cpp
FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctimer.cpp.obj: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctimer.cpp.obj"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/FreeRTOSOOSchil/ctimer.cpp.lst" -MD -MT FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctimer.cpp.obj -MF CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\ctimer.cpp.obj.d -o CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\ctimer.cpp.obj -c C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\freertos-addons-1.1.0\c++\Source\ctimer.cpp

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctimer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctimer.cpp.i"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/FreeRTOSOOSchil/ctimer.cpp.lst" -E C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\freertos-addons-1.1.0\c++\Source\ctimer.cpp > CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\ctimer.cpp.i

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctimer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctimer.cpp.s"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/FreeRTOSOOSchil/ctimer.cpp.lst" -S C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\freertos-addons-1.1.0\c++\Source\ctimer.cpp -o CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\ctimer.cpp.s

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cworkqueue.cpp.obj: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/flags.make
FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cworkqueue.cpp.obj: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/includes_CXX.rsp
FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cworkqueue.cpp.obj: C:/Users/niels/Documents/GitHub/DSP/software/STM32Basis/HAL/gemeenschappelijk/Third_Party/freertos-addons-1.1.0/c++/Source/cworkqueue.cpp
FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cworkqueue.cpp.obj: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cworkqueue.cpp.obj"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/FreeRTOSOOSchil/cworkqueue.cpp.lst" -MD -MT FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cworkqueue.cpp.obj -MF CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\cworkqueue.cpp.obj.d -o CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\cworkqueue.cpp.obj -c C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\freertos-addons-1.1.0\c++\Source\cworkqueue.cpp

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cworkqueue.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cworkqueue.cpp.i"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/FreeRTOSOOSchil/cworkqueue.cpp.lst" -E C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\freertos-addons-1.1.0\c++\Source\cworkqueue.cpp > CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\cworkqueue.cpp.i

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cworkqueue.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cworkqueue.cpp.s"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && C:\PROGRA~2\GNUARM~1\102021~1.10\bin\AR10B2~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wa,-ahl="C:/Users/niels/Documents/GitHub/DSP/software/opdracht5/CLion/Debug/FreeRTOSOOSchil/cworkqueue.cpp.lst" -S C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\freertos-addons-1.1.0\c++\Source\cworkqueue.cpp -o CMakeFiles\FreeRTOSOOSchilLib.dir\c++\Source\cworkqueue.cpp.s

# Object files for target FreeRTOSOOSchilLib
FreeRTOSOOSchilLib_OBJECTS = \
"CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cmutex.cpp.obj" \
"CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cqueue.cpp.obj" \
"CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cread_write_lock.cpp.obj" \
"CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/csemaphore.cpp.obj" \
"CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctasklet.cpp.obj" \
"CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cthread.cpp.obj" \
"CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctickhook.cpp.obj" \
"CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctimer.cpp.obj" \
"CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cworkqueue.cpp.obj"

# External object files for target FreeRTOSOOSchilLib
FreeRTOSOOSchilLib_EXTERNAL_OBJECTS =

FreeRTOSOOSchil/libFreeRTOSOOSchilLib.a: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cmutex.cpp.obj
FreeRTOSOOSchil/libFreeRTOSOOSchilLib.a: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cqueue.cpp.obj
FreeRTOSOOSchil/libFreeRTOSOOSchilLib.a: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cread_write_lock.cpp.obj
FreeRTOSOOSchil/libFreeRTOSOOSchilLib.a: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/csemaphore.cpp.obj
FreeRTOSOOSchil/libFreeRTOSOOSchilLib.a: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctasklet.cpp.obj
FreeRTOSOOSchil/libFreeRTOSOOSchilLib.a: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cthread.cpp.obj
FreeRTOSOOSchil/libFreeRTOSOOSchilLib.a: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctickhook.cpp.obj
FreeRTOSOOSchil/libFreeRTOSOOSchilLib.a: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/ctimer.cpp.obj
FreeRTOSOOSchil/libFreeRTOSOOSchilLib.a: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/c++/Source/cworkqueue.cpp.obj
FreeRTOSOOSchil/libFreeRTOSOOSchilLib.a: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/build.make
FreeRTOSOOSchil/libFreeRTOSOOSchilLib.a: FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX static library libFreeRTOSOOSchilLib.a"
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && $(CMAKE_COMMAND) -P CMakeFiles\FreeRTOSOOSchilLib.dir\cmake_clean_target.cmake
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\FreeRTOSOOSchilLib.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/build: FreeRTOSOOSchil/libFreeRTOSOOSchilLib.a
.PHONY : FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/build

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/clean:
	cd /d C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil && $(CMAKE_COMMAND) -P CMakeFiles\FreeRTOSOOSchilLib.dir\cmake_clean.cmake
.PHONY : FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/clean

FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\niels\Documents\GitHub\DSP\software\opdracht5 C:\Users\niels\Documents\GitHub\DSP\software\STM32Basis\HAL\gemeenschappelijk\Third_Party\freertos-addons-1.1.0 C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil C:\Users\niels\Documents\GitHub\DSP\software\opdracht5\CLion\Debug\FreeRTOSOOSchil\CMakeFiles\FreeRTOSOOSchilLib.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : FreeRTOSOOSchil/CMakeFiles/FreeRTOSOOSchilLib.dir/depend

