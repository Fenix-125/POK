cmake_minimum_required(VERSION 3.15)
project(midle C)
# function 13
# 13. Отримує два масиви одного розміру та їх розмір, повертає вказівник на динамічно виділений масив із їх часткою.
set(CMAKE_C_STANDARD 99)


# PVS Studio
#include(PVS-Studio.cmake)
#SET(CMAKE_EXPORT_COMPILE_COMMANDS ON)


SET(EXEC_NAME main)


set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ../bin)


set(CMAKE_DISABLE_IN_SOURCE_BUILD ON)
set(CMAKE_DISABLE_SOURCE_CHANGES  ON)
#set(CMAKE_VERBOSE_MAKEFILE ON) ## comment

## compilation mode: release OR debug
set(CMAKE_BUILD_TYPE Release)
#set(CMAKE_BUILD_TYPE Debug)    ## comment


if ( CMAKE_COMPILER_IS_GNUCC )
    set(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} -Wall -Wextra")
endif()


add_executable(${EXEC_NAME} main.c arr_diff.c)


#####################################
## create own target for library
#pvs_studio_add_target(TARGET ${PROJECT_NAME}.analyze ALL
#        ANALYZE ${EXEC_NAME}
#        OUTPUT FORMAT errorfile
#        MODE GA:1,2,3 OP:1,2,3 GA:1,2,3 OP:1,2,3 64:1,2,3 CS:1,2,3 MISRA:1,2,3
#        LOG target_${PROJECT_NAME}.err)

#####################################
