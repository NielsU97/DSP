#/************************************************************************
# CMake script voor het bouwen van wxWidgets CMake software
# Copyright 2004-2022 Hogeschool van Arnhem en Nijmegen
# Opleiding Embedded Systems Engineering
# $Id: CMakeLists.txt 327 2023-06-02 09:28:40Z ewout $
#************************************************************************/

include_directories(h)

add_compile_definitions(DitJaar=${DitJaar})

set(SRCS filterDesigner.cpp filterDesignerBasis.cpp)

set(TAALDIR ${PROJECT_SOURCE_DIR}/../talen)
include(${CMAKESCRIPTDIR}/ZetTalen.cmake)
InstalleerTalen("DSB" ${PROJEKTNAAM} ${TAALDIR})

list(SORT SRCS)

if(UNIX)
	if(APPLE)
		set(MACOSX_BUNDLE_INFO_STRING "HAN ESE DSB opdracht4")
		set(OSX_BUNDLE_ICON ${PROJECT_SOURCE_DIR}/platforms/apple/${PROJEKTNAAM}.icns)
		add_executable(${PROJEKTNAAM} MACOSX_BUNDLE ${SRCS} ${OSX_BUNDLE_ICON} ${TALEN})

		ConfigureMacOSXBundlePlist(${PROJEKTNAAM} ${StdCopyrightString} ${OSX_BUNDLE_ICON} ${VersieString})
		ConfigureMacOSXPack(${PROJEKTNAAM} ${OSX_BUNDLE_ICON} "10.9")

		install(TARGETS ${PROJEKTNAAM} RUNTIME DESTINATION bin BUNDLE DESTINATION .)
	else(APPLE)
		add_executable(${PROJEKTNAAM} ${SRCS})
		install(TARGETS ${PROJECTNAAM} RUNTIME DESTINATION bin)
	endif(APPLE)

elseif(WIN32)

	list(APPEND SRCS ${PROJECT_SOURCE_DIR}/platforms/windows/${PROJEKTNAAM}.rc)

	add_executable(${PROJEKTNAAM} WIN32 ${SRCS})
	install(TARGETS ${PROJECTNAAM} RUNTIME DESTINATION bin )
	file(GLOB MSRUNTIME ${GEMDIR}/win32/ms*)
	
	install(TARGETS ${PROJEKTNAAM} RUNTIME DESTINATION bin
	        PERMISSIONS
	        OWNER_WRITE OWNER_READ OWNER_EXECUTE
	        GROUP_READ GROUP_EXECUTE
	        WORLD_READ WORLD_EXECUTE)
endif(UNIX)

target_link_libraries(${PROJEKTNAAM} ApplikatieLib FirFilterLib wxBasis ${wxWidgets_LIBRARIES})

include(${CMAKESCRIPTDIR}/FixBundle.cmake)

PostBuildAktie(${PROJEKTNAAM})
