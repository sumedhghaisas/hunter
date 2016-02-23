# Copyright (c) 2015, Ruslan Baratov
# All rights reserved.

if(DEFINED HUNTER_CMAKE_PROJECTS_OPENCV_EXTRA_HUNTER_CMAKE_)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_OPENCV_EXTRA_HUNTER_CMAKE_ 1)
endif()

include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    OpenCV-Extra
    VERSION
    "for_node_opencv"
    URL
    "https://github.com/sumedhghaisas/opencv_contrib/archive/for_node_opencv.tar.gz"
    SHA1
    6f0c738f71c9e2da4cef33d400ac885649d84eb3
)

hunter_pick_scheme(DEFAULT url_sha1_unpack)
hunter_download(PACKAGE_NAME OpenCV-Extra)
