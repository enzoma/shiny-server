# Install script for directory: /Users/e/Documents/shiny-server

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/shiny-server" TYPE DIRECTORY FILES
    "/Users/e/Documents/shiny-server/assets"
    "/Users/e/Documents/shiny-server/samples"
    "/Users/e/Documents/shiny-server/build"
    "/Users/e/Documents/shiny-server/config"
    "/Users/e/Documents/shiny-server/ext"
    "/Users/e/Documents/shiny-server/lib"
    "/Users/e/Documents/shiny-server/manual.test"
    "/Users/e/Documents/shiny-server/node_modules"
    "/Users/e/Documents/shiny-server/R"
    "/Users/e/Documents/shiny-server/templates"
    "/Users/e/Documents/shiny-server/test"
    "/Users/e/Documents/shiny-server/tools"
    USE_SOURCE_PERMISSIONS)
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/shiny-server/bin" TYPE PROGRAM FILES
    "/Users/e/Documents/shiny-server/bin/node"
    "/Users/e/Documents/shiny-server/bin/npm"
    "/Users/e/Documents/shiny-server/bin/shiny-server"
    "/Users/e/Documents/shiny-server/tmp/bin/deploy-example"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/shiny-server" TYPE FILE FILES
    "/Users/e/Documents/shiny-server/binding.gyp"
    "/Users/e/Documents/shiny-server/config.html"
    "/Users/e/Documents/shiny-server/COPYING"
    "/Users/e/Documents/shiny-server/NEWS"
    "/Users/e/Documents/shiny-server/package.json"
    "/Users/e/Documents/shiny-server/README.md"
    "/Users/e/Documents/shiny-server/tmp/NOTICE"
    "/Users/e/Documents/shiny-server/tmp/VERSION"
    "/Users/e/Documents/shiny-server/tmp/GIT_VERSION"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/Users/e/Documents/shiny-server/tmp/src/cmake_install.cmake")
  INCLUDE("/Users/e/Documents/shiny-server/tmp/external/node/cmake_install.cmake")
  INCLUDE("/Users/e/Documents/shiny-server/tmp/external/pandoc/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/Users/e/Documents/shiny-server/tmp/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/Users/e/Documents/shiny-server/tmp/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
