CMAKE_MINIMUM_REQUIRED(VERSION 3.8)

PROJECT(lab_1_cmake C CXX)

SET(hello1_FILES file1.cpp file2.cpp
        main_file.cpp file1.h file2.h)

ADD_EXECUTABLE(hello1  ${hello1_FILES})
