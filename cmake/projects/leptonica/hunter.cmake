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
    "1.73-p1"
    URL
    "https://github.com/sumedhghaisas/leptonica/archive/v1.73-p1.tar.gz"
    SHA1
    dbab5f114a78f9d184cb29399e0a44d1ba072811
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_download(PACKAGE_NAME leptonica)
