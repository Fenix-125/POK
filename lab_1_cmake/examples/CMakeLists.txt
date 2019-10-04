# Створення бібліотеки і виконавчого файлу в одному проекті
CMAKE_MINIMUM_REQUIRED(VERSION 3.8)

PROJECT(lab_1_cmake C)

set(CMAKE_DISABLE_IN_SOURCE_BUILD ON)
set(CMAKE_DISABLE_SOURCE_CHANGES  ON)
# SET(CMAKE_VERBOSE_MAKEFILE ON)

set(CMAKE_C_STANDARD 99)
set(CMAKE_C_EXTENSIONS FALSE)


file(GLOB SOURCES *.c *.h)
SET(LIB_NAME libzlib)

set (CMAKE_LIBRARY_PATH "../library/build")
set(CMAKE_C_FLAGS  "${CMAKE_CXX_FLAGS} -w")

find_library(PATH_LIB NAMES libzlib.so)
ADD_EXECUTABLE(example  example.c)
TARGET_LINK_LIBRARIES( example ${PATH_LIB} )


ADD_EXECUTABLE(minigzip  minigzip.c)
TARGET_LINK_LIBRARIES( minigzip ${PATH_LIB} )
