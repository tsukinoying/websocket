# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /opt/cpp/test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /opt/cpp/test/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/testapp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/testapp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testapp.dir/flags.make

CMakeFiles/testapp.dir/main.cpp.o: CMakeFiles/testapp.dir/flags.make
CMakeFiles/testapp.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/opt/cpp/test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/testapp.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testapp.dir/main.cpp.o -c /opt/cpp/test/main.cpp

CMakeFiles/testapp.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testapp.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /opt/cpp/test/main.cpp > CMakeFiles/testapp.dir/main.cpp.i

CMakeFiles/testapp.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testapp.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /opt/cpp/test/main.cpp -o CMakeFiles/testapp.dir/main.cpp.s

CMakeFiles/testapp.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/testapp.dir/main.cpp.o.requires

CMakeFiles/testapp.dir/main.cpp.o.provides: CMakeFiles/testapp.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/testapp.dir/build.make CMakeFiles/testapp.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/testapp.dir/main.cpp.o.provides

CMakeFiles/testapp.dir/main.cpp.o.provides.build: CMakeFiles/testapp.dir/main.cpp.o


# Object files for target testapp
testapp_OBJECTS = \
"CMakeFiles/testapp.dir/main.cpp.o"

# External object files for target testapp
testapp_EXTERNAL_OBJECTS =

testapp: CMakeFiles/testapp.dir/main.cpp.o
testapp: CMakeFiles/testapp.dir/build.make
testapp: CMakeFiles/testapp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/opt/cpp/test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testapp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testapp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testapp.dir/build: testapp

.PHONY : CMakeFiles/testapp.dir/build

CMakeFiles/testapp.dir/requires: CMakeFiles/testapp.dir/main.cpp.o.requires

.PHONY : CMakeFiles/testapp.dir/requires

CMakeFiles/testapp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testapp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testapp.dir/clean

CMakeFiles/testapp.dir/depend:
	cd /opt/cpp/test/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /opt/cpp/test /opt/cpp/test /opt/cpp/test/cmake-build-debug /opt/cpp/test/cmake-build-debug /opt/cpp/test/cmake-build-debug/CMakeFiles/testapp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testapp.dir/depend
