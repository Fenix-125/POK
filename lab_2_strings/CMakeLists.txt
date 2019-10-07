cmake_minimum_required(VERSION 3.15)
project(lab_2_strings C)
SET(LIB_NAME my_str)


set(CMAKE_C_STANDARD 99)
set (CMAKE_RUNTIME_OUTPUT_DIRECTORY ../bin)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ../bin/lib)


set(CMAKE_DISABLE_IN_SOURCE_BUILD ON)
set(CMAKE_DISABLE_SOURCE_CHANGES  ON)
set(CMAKE_VERBOSE_MAKEFILE ON)

#set(CMAKE_C_EXTENSIONS FALSE) # ???
#file(GLOB SOURCES src/*.c include/*.h)

## compilation mode: release OR debug
#set(CMAKE_BUILD_TYPE Release)
set(CMAKE_BUILD_TYPE Debug)


if ( CMAKE_COMPILER_IS_GNUCC )
    set(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} -Wall -Wextra")
endif()
if ( MSVC )
    set(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} /W4")
endif()


add_library(${LIB_NAME} STATIC src/my_str.c)
target_link_directories(${LIB_NAME} PUBLIC include)

add_executable(test test/tests.c)
target_link_libraries(test my_str)
