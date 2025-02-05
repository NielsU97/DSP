# Install script for directory: C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht5

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/DSPESEL5")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/Program Files/JetBrains/CLion 2024.1.4/bin/mingw/bin/objdump.exe")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht5/CLion/Debug/BasisDir/cmake_install.cmake")
  include("C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht5/CLion/Debug/STM32CMSIS/cmake_install.cmake")
  include("C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht5/CLion/Debug/STM32_HAL_Driver/cmake_install.cmake")
  include("C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht5/CLion/Debug/FreeRTOS/cmake_install.cmake")
  include("C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht5/CLion/Debug/FreeRTOSOOSchil/cmake_install.cmake")
  include("C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht5/CLion/Debug/ESE_FreeRTOS/cmake_install.cmake")
  include("C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht5/CLion/Debug/Utilities/cmake_install.cmake")
  include("C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht5/CLion/Debug/STemWin/cmake_install.cmake")
  include("C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht5/CLion/Debug/Components/cmake_install.cmake")
  include("C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht5/CLion/Debug/F412GDiscoveryLib/cmake_install.cmake")
  include("C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht5/CLion/Debug/FatFS/cmake_install.cmake")
  include("C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht5/CLion/Debug/AlgemeenDir/cmake_install.cmake")
  include("C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht5/CLion/Debug/SeggerRTT/cmake_install.cmake")
  include("C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht5/CLion/Debug/ESE_DigProcesAansturing/cmake_install.cmake")
  include("C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht5/CLion/Debug/ESE_BSPProcessor/cmake_install.cmake")
  include("C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht5/CLion/Debug/Opdracht1/cmake_install.cmake")
  include("C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht5/CLion/Debug/filter/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht5/CLion/Debug/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
