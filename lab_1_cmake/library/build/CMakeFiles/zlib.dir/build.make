# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/fenix/pr/subj/POK/lab_1_cmake/library

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fenix/pr/subj/POK/lab_1_cmake/library/build

# Include any dependencies generated for this target.
include CMakeFiles/zlib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/zlib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/zlib.dir/flags.make

CMakeFiles/zlib.dir/adler32.c.o: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/adler32.c.o: ../adler32.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fenix/pr/subj/POK/lab_1_cmake/library/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/zlib.dir/adler32.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlib.dir/adler32.c.o   -c /home/fenix/pr/subj/POK/lab_1_cmake/library/adler32.c

CMakeFiles/zlib.dir/adler32.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/adler32.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fenix/pr/subj/POK/lab_1_cmake/library/adler32.c > CMakeFiles/zlib.dir/adler32.c.i

CMakeFiles/zlib.dir/adler32.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/adler32.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fenix/pr/subj/POK/lab_1_cmake/library/adler32.c -o CMakeFiles/zlib.dir/adler32.c.s

CMakeFiles/zlib.dir/compress.c.o: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/compress.c.o: ../compress.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fenix/pr/subj/POK/lab_1_cmake/library/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/zlib.dir/compress.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlib.dir/compress.c.o   -c /home/fenix/pr/subj/POK/lab_1_cmake/library/compress.c

CMakeFiles/zlib.dir/compress.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/compress.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fenix/pr/subj/POK/lab_1_cmake/library/compress.c > CMakeFiles/zlib.dir/compress.c.i

CMakeFiles/zlib.dir/compress.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/compress.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fenix/pr/subj/POK/lab_1_cmake/library/compress.c -o CMakeFiles/zlib.dir/compress.c.s

CMakeFiles/zlib.dir/crc32.c.o: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/crc32.c.o: ../crc32.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fenix/pr/subj/POK/lab_1_cmake/library/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/zlib.dir/crc32.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlib.dir/crc32.c.o   -c /home/fenix/pr/subj/POK/lab_1_cmake/library/crc32.c

CMakeFiles/zlib.dir/crc32.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/crc32.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fenix/pr/subj/POK/lab_1_cmake/library/crc32.c > CMakeFiles/zlib.dir/crc32.c.i

CMakeFiles/zlib.dir/crc32.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/crc32.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fenix/pr/subj/POK/lab_1_cmake/library/crc32.c -o CMakeFiles/zlib.dir/crc32.c.s

CMakeFiles/zlib.dir/deflate.c.o: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/deflate.c.o: ../deflate.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fenix/pr/subj/POK/lab_1_cmake/library/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/zlib.dir/deflate.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlib.dir/deflate.c.o   -c /home/fenix/pr/subj/POK/lab_1_cmake/library/deflate.c

CMakeFiles/zlib.dir/deflate.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/deflate.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fenix/pr/subj/POK/lab_1_cmake/library/deflate.c > CMakeFiles/zlib.dir/deflate.c.i

CMakeFiles/zlib.dir/deflate.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/deflate.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fenix/pr/subj/POK/lab_1_cmake/library/deflate.c -o CMakeFiles/zlib.dir/deflate.c.s

CMakeFiles/zlib.dir/gzclose.c.o: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/gzclose.c.o: ../gzclose.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fenix/pr/subj/POK/lab_1_cmake/library/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/zlib.dir/gzclose.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlib.dir/gzclose.c.o   -c /home/fenix/pr/subj/POK/lab_1_cmake/library/gzclose.c

CMakeFiles/zlib.dir/gzclose.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/gzclose.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fenix/pr/subj/POK/lab_1_cmake/library/gzclose.c > CMakeFiles/zlib.dir/gzclose.c.i

CMakeFiles/zlib.dir/gzclose.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/gzclose.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fenix/pr/subj/POK/lab_1_cmake/library/gzclose.c -o CMakeFiles/zlib.dir/gzclose.c.s

CMakeFiles/zlib.dir/gzlib.c.o: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/gzlib.c.o: ../gzlib.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fenix/pr/subj/POK/lab_1_cmake/library/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/zlib.dir/gzlib.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlib.dir/gzlib.c.o   -c /home/fenix/pr/subj/POK/lab_1_cmake/library/gzlib.c

CMakeFiles/zlib.dir/gzlib.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/gzlib.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fenix/pr/subj/POK/lab_1_cmake/library/gzlib.c > CMakeFiles/zlib.dir/gzlib.c.i

CMakeFiles/zlib.dir/gzlib.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/gzlib.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fenix/pr/subj/POK/lab_1_cmake/library/gzlib.c -o CMakeFiles/zlib.dir/gzlib.c.s

CMakeFiles/zlib.dir/gzread.c.o: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/gzread.c.o: ../gzread.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fenix/pr/subj/POK/lab_1_cmake/library/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/zlib.dir/gzread.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlib.dir/gzread.c.o   -c /home/fenix/pr/subj/POK/lab_1_cmake/library/gzread.c

CMakeFiles/zlib.dir/gzread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/gzread.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fenix/pr/subj/POK/lab_1_cmake/library/gzread.c > CMakeFiles/zlib.dir/gzread.c.i

CMakeFiles/zlib.dir/gzread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/gzread.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fenix/pr/subj/POK/lab_1_cmake/library/gzread.c -o CMakeFiles/zlib.dir/gzread.c.s

CMakeFiles/zlib.dir/gzwrite.c.o: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/gzwrite.c.o: ../gzwrite.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fenix/pr/subj/POK/lab_1_cmake/library/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/zlib.dir/gzwrite.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlib.dir/gzwrite.c.o   -c /home/fenix/pr/subj/POK/lab_1_cmake/library/gzwrite.c

CMakeFiles/zlib.dir/gzwrite.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/gzwrite.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fenix/pr/subj/POK/lab_1_cmake/library/gzwrite.c > CMakeFiles/zlib.dir/gzwrite.c.i

CMakeFiles/zlib.dir/gzwrite.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/gzwrite.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fenix/pr/subj/POK/lab_1_cmake/library/gzwrite.c -o CMakeFiles/zlib.dir/gzwrite.c.s

CMakeFiles/zlib.dir/infback.c.o: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/infback.c.o: ../infback.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fenix/pr/subj/POK/lab_1_cmake/library/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/zlib.dir/infback.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlib.dir/infback.c.o   -c /home/fenix/pr/subj/POK/lab_1_cmake/library/infback.c

CMakeFiles/zlib.dir/infback.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/infback.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fenix/pr/subj/POK/lab_1_cmake/library/infback.c > CMakeFiles/zlib.dir/infback.c.i

CMakeFiles/zlib.dir/infback.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/infback.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fenix/pr/subj/POK/lab_1_cmake/library/infback.c -o CMakeFiles/zlib.dir/infback.c.s

CMakeFiles/zlib.dir/inffast.c.o: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/inffast.c.o: ../inffast.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fenix/pr/subj/POK/lab_1_cmake/library/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/zlib.dir/inffast.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlib.dir/inffast.c.o   -c /home/fenix/pr/subj/POK/lab_1_cmake/library/inffast.c

CMakeFiles/zlib.dir/inffast.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/inffast.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fenix/pr/subj/POK/lab_1_cmake/library/inffast.c > CMakeFiles/zlib.dir/inffast.c.i

CMakeFiles/zlib.dir/inffast.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/inffast.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fenix/pr/subj/POK/lab_1_cmake/library/inffast.c -o CMakeFiles/zlib.dir/inffast.c.s

CMakeFiles/zlib.dir/inflate.c.o: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/inflate.c.o: ../inflate.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fenix/pr/subj/POK/lab_1_cmake/library/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/zlib.dir/inflate.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlib.dir/inflate.c.o   -c /home/fenix/pr/subj/POK/lab_1_cmake/library/inflate.c

CMakeFiles/zlib.dir/inflate.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/inflate.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fenix/pr/subj/POK/lab_1_cmake/library/inflate.c > CMakeFiles/zlib.dir/inflate.c.i

CMakeFiles/zlib.dir/inflate.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/inflate.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fenix/pr/subj/POK/lab_1_cmake/library/inflate.c -o CMakeFiles/zlib.dir/inflate.c.s

CMakeFiles/zlib.dir/inftrees.c.o: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/inftrees.c.o: ../inftrees.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fenix/pr/subj/POK/lab_1_cmake/library/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/zlib.dir/inftrees.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlib.dir/inftrees.c.o   -c /home/fenix/pr/subj/POK/lab_1_cmake/library/inftrees.c

CMakeFiles/zlib.dir/inftrees.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/inftrees.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fenix/pr/subj/POK/lab_1_cmake/library/inftrees.c > CMakeFiles/zlib.dir/inftrees.c.i

CMakeFiles/zlib.dir/inftrees.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/inftrees.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fenix/pr/subj/POK/lab_1_cmake/library/inftrees.c -o CMakeFiles/zlib.dir/inftrees.c.s

CMakeFiles/zlib.dir/trees.c.o: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/trees.c.o: ../trees.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fenix/pr/subj/POK/lab_1_cmake/library/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/zlib.dir/trees.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlib.dir/trees.c.o   -c /home/fenix/pr/subj/POK/lab_1_cmake/library/trees.c

CMakeFiles/zlib.dir/trees.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/trees.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fenix/pr/subj/POK/lab_1_cmake/library/trees.c > CMakeFiles/zlib.dir/trees.c.i

CMakeFiles/zlib.dir/trees.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/trees.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fenix/pr/subj/POK/lab_1_cmake/library/trees.c -o CMakeFiles/zlib.dir/trees.c.s

CMakeFiles/zlib.dir/uncompr.c.o: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/uncompr.c.o: ../uncompr.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fenix/pr/subj/POK/lab_1_cmake/library/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object CMakeFiles/zlib.dir/uncompr.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlib.dir/uncompr.c.o   -c /home/fenix/pr/subj/POK/lab_1_cmake/library/uncompr.c

CMakeFiles/zlib.dir/uncompr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/uncompr.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fenix/pr/subj/POK/lab_1_cmake/library/uncompr.c > CMakeFiles/zlib.dir/uncompr.c.i

CMakeFiles/zlib.dir/uncompr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/uncompr.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fenix/pr/subj/POK/lab_1_cmake/library/uncompr.c -o CMakeFiles/zlib.dir/uncompr.c.s

CMakeFiles/zlib.dir/zutil.c.o: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/zutil.c.o: ../zutil.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fenix/pr/subj/POK/lab_1_cmake/library/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object CMakeFiles/zlib.dir/zutil.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlib.dir/zutil.c.o   -c /home/fenix/pr/subj/POK/lab_1_cmake/library/zutil.c

CMakeFiles/zlib.dir/zutil.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/zutil.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fenix/pr/subj/POK/lab_1_cmake/library/zutil.c > CMakeFiles/zlib.dir/zutil.c.i

CMakeFiles/zlib.dir/zutil.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/zutil.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fenix/pr/subj/POK/lab_1_cmake/library/zutil.c -o CMakeFiles/zlib.dir/zutil.c.s

# Object files for target zlib
zlib_OBJECTS = \
"CMakeFiles/zlib.dir/adler32.c.o" \
"CMakeFiles/zlib.dir/compress.c.o" \
"CMakeFiles/zlib.dir/crc32.c.o" \
"CMakeFiles/zlib.dir/deflate.c.o" \
"CMakeFiles/zlib.dir/gzclose.c.o" \
"CMakeFiles/zlib.dir/gzlib.c.o" \
"CMakeFiles/zlib.dir/gzread.c.o" \
"CMakeFiles/zlib.dir/gzwrite.c.o" \
"CMakeFiles/zlib.dir/infback.c.o" \
"CMakeFiles/zlib.dir/inffast.c.o" \
"CMakeFiles/zlib.dir/inflate.c.o" \
"CMakeFiles/zlib.dir/inftrees.c.o" \
"CMakeFiles/zlib.dir/trees.c.o" \
"CMakeFiles/zlib.dir/uncompr.c.o" \
"CMakeFiles/zlib.dir/zutil.c.o"

# External object files for target zlib
zlib_EXTERNAL_OBJECTS =

libzlib.a: CMakeFiles/zlib.dir/adler32.c.o
libzlib.a: CMakeFiles/zlib.dir/compress.c.o
libzlib.a: CMakeFiles/zlib.dir/crc32.c.o
libzlib.a: CMakeFiles/zlib.dir/deflate.c.o
libzlib.a: CMakeFiles/zlib.dir/gzclose.c.o
libzlib.a: CMakeFiles/zlib.dir/gzlib.c.o
libzlib.a: CMakeFiles/zlib.dir/gzread.c.o
libzlib.a: CMakeFiles/zlib.dir/gzwrite.c.o
libzlib.a: CMakeFiles/zlib.dir/infback.c.o
libzlib.a: CMakeFiles/zlib.dir/inffast.c.o
libzlib.a: CMakeFiles/zlib.dir/inflate.c.o
libzlib.a: CMakeFiles/zlib.dir/inftrees.c.o
libzlib.a: CMakeFiles/zlib.dir/trees.c.o
libzlib.a: CMakeFiles/zlib.dir/uncompr.c.o
libzlib.a: CMakeFiles/zlib.dir/zutil.c.o
libzlib.a: CMakeFiles/zlib.dir/build.make
libzlib.a: CMakeFiles/zlib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/fenix/pr/subj/POK/lab_1_cmake/library/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Linking C static library libzlib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/zlib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/zlib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/zlib.dir/build: libzlib.a

.PHONY : CMakeFiles/zlib.dir/build

CMakeFiles/zlib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/zlib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/zlib.dir/clean

CMakeFiles/zlib.dir/depend:
	cd /home/fenix/pr/subj/POK/lab_1_cmake/library/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fenix/pr/subj/POK/lab_1_cmake/library /home/fenix/pr/subj/POK/lab_1_cmake/library /home/fenix/pr/subj/POK/lab_1_cmake/library/build /home/fenix/pr/subj/POK/lab_1_cmake/library/build /home/fenix/pr/subj/POK/lab_1_cmake/library/build/CMakeFiles/zlib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/zlib.dir/depend

