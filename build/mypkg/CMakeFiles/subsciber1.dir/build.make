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
CMAKE_SOURCE_DIR = /home/linuxsystem/myws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/linuxsystem/myws/build

# Include any dependencies generated for this target.
include mypkg/CMakeFiles/subsciber1.dir/depend.make

# Include the progress variables for this target.
include mypkg/CMakeFiles/subsciber1.dir/progress.make

# Include the compile flags for this target's objects.
include mypkg/CMakeFiles/subsciber1.dir/flags.make

mypkg/CMakeFiles/subsciber1.dir/src/s1.cpp.o: mypkg/CMakeFiles/subsciber1.dir/flags.make
mypkg/CMakeFiles/subsciber1.dir/src/s1.cpp.o: /home/linuxsystem/myws/src/mypkg/src/s1.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linuxsystem/myws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object mypkg/CMakeFiles/subsciber1.dir/src/s1.cpp.o"
	cd /home/linuxsystem/myws/build/mypkg && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/subsciber1.dir/src/s1.cpp.o -c /home/linuxsystem/myws/src/mypkg/src/s1.cpp

mypkg/CMakeFiles/subsciber1.dir/src/s1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/subsciber1.dir/src/s1.cpp.i"
	cd /home/linuxsystem/myws/build/mypkg && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linuxsystem/myws/src/mypkg/src/s1.cpp > CMakeFiles/subsciber1.dir/src/s1.cpp.i

mypkg/CMakeFiles/subsciber1.dir/src/s1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/subsciber1.dir/src/s1.cpp.s"
	cd /home/linuxsystem/myws/build/mypkg && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linuxsystem/myws/src/mypkg/src/s1.cpp -o CMakeFiles/subsciber1.dir/src/s1.cpp.s

# Object files for target subsciber1
subsciber1_OBJECTS = \
"CMakeFiles/subsciber1.dir/src/s1.cpp.o"

# External object files for target subsciber1
subsciber1_EXTERNAL_OBJECTS =

/home/linuxsystem/myws/devel/lib/mypkg/subsciber1: mypkg/CMakeFiles/subsciber1.dir/src/s1.cpp.o
/home/linuxsystem/myws/devel/lib/mypkg/subsciber1: mypkg/CMakeFiles/subsciber1.dir/build.make
/home/linuxsystem/myws/devel/lib/mypkg/subsciber1: /opt/ros/noetic/lib/libroscpp.so
/home/linuxsystem/myws/devel/lib/mypkg/subsciber1: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/linuxsystem/myws/devel/lib/mypkg/subsciber1: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/linuxsystem/myws/devel/lib/mypkg/subsciber1: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/linuxsystem/myws/devel/lib/mypkg/subsciber1: /opt/ros/noetic/lib/librosconsole.so
/home/linuxsystem/myws/devel/lib/mypkg/subsciber1: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/linuxsystem/myws/devel/lib/mypkg/subsciber1: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/linuxsystem/myws/devel/lib/mypkg/subsciber1: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/linuxsystem/myws/devel/lib/mypkg/subsciber1: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/linuxsystem/myws/devel/lib/mypkg/subsciber1: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/linuxsystem/myws/devel/lib/mypkg/subsciber1: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/linuxsystem/myws/devel/lib/mypkg/subsciber1: /opt/ros/noetic/lib/librostime.so
/home/linuxsystem/myws/devel/lib/mypkg/subsciber1: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/linuxsystem/myws/devel/lib/mypkg/subsciber1: /opt/ros/noetic/lib/libcpp_common.so
/home/linuxsystem/myws/devel/lib/mypkg/subsciber1: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/linuxsystem/myws/devel/lib/mypkg/subsciber1: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/linuxsystem/myws/devel/lib/mypkg/subsciber1: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/linuxsystem/myws/devel/lib/mypkg/subsciber1: mypkg/CMakeFiles/subsciber1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/linuxsystem/myws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/linuxsystem/myws/devel/lib/mypkg/subsciber1"
	cd /home/linuxsystem/myws/build/mypkg && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/subsciber1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
mypkg/CMakeFiles/subsciber1.dir/build: /home/linuxsystem/myws/devel/lib/mypkg/subsciber1

.PHONY : mypkg/CMakeFiles/subsciber1.dir/build

mypkg/CMakeFiles/subsciber1.dir/clean:
	cd /home/linuxsystem/myws/build/mypkg && $(CMAKE_COMMAND) -P CMakeFiles/subsciber1.dir/cmake_clean.cmake
.PHONY : mypkg/CMakeFiles/subsciber1.dir/clean

mypkg/CMakeFiles/subsciber1.dir/depend:
	cd /home/linuxsystem/myws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/linuxsystem/myws/src /home/linuxsystem/myws/src/mypkg /home/linuxsystem/myws/build /home/linuxsystem/myws/build/mypkg /home/linuxsystem/myws/build/mypkg/CMakeFiles/subsciber1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : mypkg/CMakeFiles/subsciber1.dir/depend

