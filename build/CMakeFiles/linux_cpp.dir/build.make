# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/jianpeng/workspace/Cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jianpeng/workspace/build

# Include any dependencies generated for this target.
include CMakeFiles/linux_cpp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/linux_cpp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/linux_cpp.dir/flags.make

CMakeFiles/linux_cpp.dir/main.cc.o: CMakeFiles/linux_cpp.dir/flags.make
CMakeFiles/linux_cpp.dir/main.cc.o: /home/jianpeng/workspace/Cpp/main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jianpeng/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/linux_cpp.dir/main.cc.o"
	/bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/linux_cpp.dir/main.cc.o -c /home/jianpeng/workspace/Cpp/main.cc

CMakeFiles/linux_cpp.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/linux_cpp.dir/main.cc.i"
	/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jianpeng/workspace/Cpp/main.cc > CMakeFiles/linux_cpp.dir/main.cc.i

CMakeFiles/linux_cpp.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/linux_cpp.dir/main.cc.s"
	/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jianpeng/workspace/Cpp/main.cc -o CMakeFiles/linux_cpp.dir/main.cc.s

CMakeFiles/linux_cpp.dir/Class/CallTest.cc.o: CMakeFiles/linux_cpp.dir/flags.make
CMakeFiles/linux_cpp.dir/Class/CallTest.cc.o: /home/jianpeng/workspace/Cpp/Class/CallTest.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jianpeng/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/linux_cpp.dir/Class/CallTest.cc.o"
	/bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/linux_cpp.dir/Class/CallTest.cc.o -c /home/jianpeng/workspace/Cpp/Class/CallTest.cc

CMakeFiles/linux_cpp.dir/Class/CallTest.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/linux_cpp.dir/Class/CallTest.cc.i"
	/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jianpeng/workspace/Cpp/Class/CallTest.cc > CMakeFiles/linux_cpp.dir/Class/CallTest.cc.i

CMakeFiles/linux_cpp.dir/Class/CallTest.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/linux_cpp.dir/Class/CallTest.cc.s"
	/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jianpeng/workspace/Cpp/Class/CallTest.cc -o CMakeFiles/linux_cpp.dir/Class/CallTest.cc.s

CMakeFiles/linux_cpp.dir/Class/posixApiCall.cc.o: CMakeFiles/linux_cpp.dir/flags.make
CMakeFiles/linux_cpp.dir/Class/posixApiCall.cc.o: /home/jianpeng/workspace/Cpp/Class/posixApiCall.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jianpeng/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/linux_cpp.dir/Class/posixApiCall.cc.o"
	/bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/linux_cpp.dir/Class/posixApiCall.cc.o -c /home/jianpeng/workspace/Cpp/Class/posixApiCall.cc

CMakeFiles/linux_cpp.dir/Class/posixApiCall.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/linux_cpp.dir/Class/posixApiCall.cc.i"
	/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jianpeng/workspace/Cpp/Class/posixApiCall.cc > CMakeFiles/linux_cpp.dir/Class/posixApiCall.cc.i

CMakeFiles/linux_cpp.dir/Class/posixApiCall.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/linux_cpp.dir/Class/posixApiCall.cc.s"
	/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jianpeng/workspace/Cpp/Class/posixApiCall.cc -o CMakeFiles/linux_cpp.dir/Class/posixApiCall.cc.s

# Object files for target linux_cpp
linux_cpp_OBJECTS = \
"CMakeFiles/linux_cpp.dir/main.cc.o" \
"CMakeFiles/linux_cpp.dir/Class/CallTest.cc.o" \
"CMakeFiles/linux_cpp.dir/Class/posixApiCall.cc.o"

# External object files for target linux_cpp
linux_cpp_EXTERNAL_OBJECTS =

linux_cpp: CMakeFiles/linux_cpp.dir/main.cc.o
linux_cpp: CMakeFiles/linux_cpp.dir/Class/CallTest.cc.o
linux_cpp: CMakeFiles/linux_cpp.dir/Class/posixApiCall.cc.o
linux_cpp: CMakeFiles/linux_cpp.dir/build.make
linux_cpp: CMakeFiles/linux_cpp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jianpeng/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable linux_cpp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/linux_cpp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/linux_cpp.dir/build: linux_cpp

.PHONY : CMakeFiles/linux_cpp.dir/build

CMakeFiles/linux_cpp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/linux_cpp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/linux_cpp.dir/clean

CMakeFiles/linux_cpp.dir/depend:
	cd /home/jianpeng/workspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jianpeng/workspace/Cpp /home/jianpeng/workspace/Cpp /home/jianpeng/workspace/build /home/jianpeng/workspace/build /home/jianpeng/workspace/build/CMakeFiles/linux_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/linux_cpp.dir/depend
