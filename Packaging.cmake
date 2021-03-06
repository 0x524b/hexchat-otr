SET(CPACK_PACKAGE_CONTACT "Ulim <a.sporto+bee@gmail.com>")
SET(CPACK_PACKAGE_VENDOR ${CPACK_PACKAGE_CONTACT})

SET(CPACK_RESOURCE_FILE_LICENSE ${PROJECT_SOURCE_DIR}/LICENSE)
SET(CPACK_RESOURCE_FILE_README ${PROJECT_SOURCE_DIR}/README)

SET(CPACK_PACKAGE_DESCRIPTION_SUMMARY 
  "Off-The-Record Messaging (OTR) for irssi")

SET(CPACK_PACKAGE_FILE_NAME
  ${CMAKE_PROJECT_NAME}-${IRSSIOTR_VERSION})

SET(CPACK_GENERATOR TGZ)

SET(CPACK_PACKAGE_VERSION ${IRSSIOTR_VERSION})

IF(CMAKE_INSTALL_TYPE STREQUAL "package-rpm")
  CMAKE_MINIMUM_REQUIRED(VERSION 2.6)
  INCLUDE(Packaging-RPM.cmake)
ELSEIF(CMAKE_INSTALL_TYPE STREQUAL "package-deb")
  CMAKE_MINIMUM_REQUIRED(VERSION 2.6)
  INCLUDE(Packaging-DEB.cmake)
ELSEIF(CMAKE_INSTALL_TYPE STREQUAL "package-tgz")
  INSTALL(TARGETS irssiotr DESTINATION irssi/lib/modules)
  INSTALL(FILES README LICENSE DESTINATION ${DOCDIR})
ELSE(CMAKE_INSTALL_TYPE STREQUAL "package-rpm")
  MESSAGE(FATAL_ERROR "Unknown build type '${CMAKE_INSTALL_TYPE}'")
ENDIF(CMAKE_INSTALL_TYPE STREQUAL "package-rpm")



#ENDIF(CMAKE_INSTALL_TYPE STREQUAL "package-tgz")
#ENDIF(CMAKE_INSTALL_TYPE STREQUAL "package-deb")

#SET(CPACK_PACKAGE_DESCRIPTION_FILE ${PROJECT_SOURCE_DIR}/README)
#SET(CPACK_PACKAGE_VERSION_MAJOR "0")
#SET(CPACK_PACKAGE_VERSION_MINOR "1")
#SET(CPACK_PACKAGE_VERSION_PATCH "0")
#SET(CPACK_PACKAGE_FILE_NAME
#  ${CMAKE_PROJECT_NAME}-${CPACK_PACKAGE_VERSION_MAJOR}.${CPACK_PACKAGE_VERSION_MINOR})

INCLUDE(CPack)
