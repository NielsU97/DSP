# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


set(CPACK_BINARY_7Z "OFF")
set(CPACK_BINARY_IFW "OFF")
set(CPACK_BINARY_NSIS "ON")
set(CPACK_BINARY_NUGET "OFF")
set(CPACK_BINARY_WIX "OFF")
set(CPACK_BINARY_ZIP "OFF")
set(CPACK_BUILD_SOURCE_DIRS "C:/Users/niels/Documents/GitHub/DSP/software/opdracht3;C:/Users/niels/Documents/GitHub/DSP/software/opdracht3/VisualStudio_x64")
set(CPACK_CMAKE_GENERATOR "Visual Studio 17 2022")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_CREATE_DESKTOP_LINKS "DSPESEL3")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_FILE "C:/Program Files/CMake/share/cmake-3.25/Templates/CPack.GenericDescription.txt")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_SUMMARY "DSPESEL3 built using CMake")
set(CPACK_DMG_SLA_USE_RESOURCE_FILE_LICENSE "ON")
set(CPACK_GENERATOR "NSIS")
set(CPACK_INSTALL_CMAKE_PROJECTS "C:/Users/niels/Documents/GitHub/DSP/software/opdracht3/VisualStudio_x64;DSPESEL3;ALL;/")
set(CPACK_INSTALL_PREFIX "C:/Users/niels/Documents/GitHub/DSP/software/opdracht3/Executable/x86_64/Debug")
set(CPACK_MODULE_PATH "C:/Users/niels/Documents/GitHub/DSP/software/DesktopBasis/buildsystem")
set(CPACK_NSIS_DISPLAY_NAME "DSPESEL3 4.1")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES64")
set(CPACK_NSIS_MENU_LINKS "https://ese.han.nl;HAN Embedded Systems Engineering")
set(CPACK_NSIS_MUI_FINISHPAGE_RUN "DSPESEL3")
set(CPACK_NSIS_PACKAGE_NAME "DSPESEL3 4.1")
set(CPACK_NSIS_UNINSTALL_NAME "Uninstall")
set(CPACK_OUTPUT_CONFIG_FILE "C:/Users/niels/Documents/GitHub/DSP/software/opdracht3/VisualStudio_x64/CPackConfig.cmake")
set(CPACK_PACKAGE_CONTACT "Ewout Boks (ewout.boks@han.nl)")
set(CPACK_PACKAGE_DEFAULT_LOCATION "/")
set(CPACK_PACKAGE_DESCRIPTION_FILE "C:/Program Files/CMake/share/cmake-3.25/Templates/CPack.GenericDescription.txt")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Dit is een demonstratieversie van software die bij het vak Digitale Signaalbewerking van de opleiding Embedded Systems Engineering van de HAN wordt gebruikt.")
set(CPACK_PACKAGE_EXECUTABLES "DSPESEL3;DSPESEL3")
set(CPACK_PACKAGE_FILE_NAME "DSPESEL3_4.2.0_Windows_x86_64")
set(CPACK_PACKAGE_ICON "C:/Users/niels/Documents/GitHub/DSP/software/DesktopBasis/gemeenschappelijk/logos\\hanlogo.png")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "DSPESEL3 4.1")
set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "DSPESEL3 4.1")
set(CPACK_PACKAGE_NAME "DSPESEL3")
set(CPACK_PACKAGE_RELOCATABLE "true")
set(CPACK_PACKAGE_VENDOR "Hogeschool van Arnhem en Nijmegen, ir drs E.J Boks")
set(CPACK_PACKAGE_VERSION "4.1")
set(CPACK_PACKAGE_VERSION_MAJOR "0")
set(CPACK_PACKAGE_VERSION_MINOR "1")
set(CPACK_PACKAGE_VERSION_PATCH "1")
set(CPACK_RESOURCE_FILE_LICENSE "C:/Users/niels/Documents/GitHub/DSP/software/opdracht3/../DSB/licentie.txt")
set(CPACK_RESOURCE_FILE_README "C:/Users/niels/Documents/GitHub/DSP/software/opdracht3/../DSB/beschrijving.txt")
set(CPACK_RESOURCE_FILE_WELCOME "C:/Users/niels/Documents/GitHub/DSP/software/opdracht3/../DSB/welkom.txt")
set(CPACK_SET_DESTDIR "OFF")
set(CPACK_SOURCE_7Z "ON")
set(CPACK_SOURCE_GENERATOR "7Z;ZIP")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "C:/Users/niels/Documents/GitHub/DSP/software/opdracht3/VisualStudio_x64/CPackSourceConfig.cmake")
set(CPACK_SOURCE_ZIP "ON")
set(CPACK_SYSTEM_NAME "win64")
set(CPACK_THREADS "1")
set(CPACK_TOPLEVEL_TAG "win64")
set(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "C:/Users/niels/Documents/GitHub/DSP/software/opdracht3/VisualStudio_x64/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
