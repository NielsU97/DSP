# Install script for directory: C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht4

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht4/Executable/x86_64/Debug")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/locale/de_DE/LC_MESSAGES" TYPE FILE FILES "C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht4/../talen/de/DSB.mo")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/locale/de_DE/LC_MESSAGES" TYPE FILE FILES "C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht4/../talen/de/wxstd.mo")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/locale/id_ID/LC_MESSAGES" TYPE FILE FILES "C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht4/../talen/id/DSB.mo")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/locale/id_ID/LC_MESSAGES" TYPE FILE FILES "C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht4/../talen/id/wxstd.mo")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/locale/nl_NL/LC_MESSAGES" TYPE FILE FILES "C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht4/../talen/nl/DSB.mo")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/locale/nl_NL/LC_MESSAGES" TYPE FILE FILES "C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht4/../talen/nl/wxstd.mo")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/locale/ro_RO/LC_MESSAGES" TYPE FILE FILES "C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht4/../talen/ro/DSB.mo")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/locale/ro_RO/LC_MESSAGES" TYPE FILE FILES "C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht4/../talen/ro/wxstd.mo")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/locale/ru_RU/LC_MESSAGES" TYPE FILE FILES "C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht4/../talen/ru/DSB.mo")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/locale/ru_RU/LC_MESSAGES" TYPE FILE FILES "C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht4/../talen/ru/wxstd.mo")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/locale/vi_VI/LC_MESSAGES" TYPE FILE FILES "C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht4/../talen/vi/DSB.mo")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/locale/vi_VI/LC_MESSAGES" TYPE FILE FILES "C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht4/../talen/vi/wxstd.mo")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/locale/zh_CN/LC_MESSAGES" TYPE FILE FILES "C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht4/../talen/zh_CN/DSB.mo")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/locale/zh_CN/LC_MESSAGES" TYPE FILE FILES "C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht4/../talen/zh_CN/wxstd.mo")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht4/VisualStudio_x64/wxBasis/cmake_install.cmake")
  include("C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht4/VisualStudio_x64/Opdracht1/STUDENT/cmake_install.cmake")
  include("C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht4/VisualStudio_x64/Basis/cmake_install.cmake")
  include("C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht4/VisualStudio_x64/STUDENT/filter/cmake_install.cmake")
  include("C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht4/VisualStudio_x64/STUDENT/ontwerper/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/Users/niels/Documents/Elektrotechniek/Jaar 3/dspl/software/opdracht4/VisualStudio_x64/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
