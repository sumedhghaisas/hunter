# Copyright (c) 2015, Damien Buhl 
# All rights reserved.

if(DEFINED HUNTER_CMAKE_PROJECTS_TESSERACT_HUNTER_CMAKE)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_TESSERACT_HUNTER_CMAKE 1)
endif()

include(hunter_add_version)
include(hunter_cmake_args)
include(hunter_pick_scheme)
include(hunter_download)

hunter_add_version(
    PACKAGE_NAME
    tesseract
    VERSION
    "for_node_opencv"
    URL
    "https://github.com/sumedhghaisas/tesseract/archive/for_node_opencv.tar.gz"
    SHA1
    c5cc137afccc67b4656cd2d81a2a49b129d67936
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_download(PACKAGE_NAME tesseract)
