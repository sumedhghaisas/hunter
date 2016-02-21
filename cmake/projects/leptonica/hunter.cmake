# Copyright (c) 2015, Damien Buhl 
# All rights reserved.

if(DEFINED HUNTER_CMAKE_PROJECTS_LEPTONICA_HUNTER_CMAKE)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_LEPTONICA_HUNTER_CMAKE 1)
endif()

include(hunter_add_version)
include(hunter_cmake_args)
include(hunter_pick_scheme)
include(hunter_download)

hunter_add_version(
    PACKAGE_NAME
    leptonica
    VERSION
    "1.73"
    URL
    "https://github.com/DanBloomberg/leptonica/archive/v1.73.tar.gz"
    SHA1
    890df98d9450b83a7f01f347e4445e0508b8d5fa
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_download(PACKAGE_NAME leptonica)
