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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/opencv-3.1.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/opencv-3.1.0/build

# Include any dependencies generated for this target.
include modules/highgui/CMakeFiles/opencv_highgui_object.dir/depend.make

# Include the progress variables for this target.
include modules/highgui/CMakeFiles/opencv_highgui_object.dir/progress.make

# Include the compile flags for this target's objects.
include modules/highgui/CMakeFiles/opencv_highgui_object.dir/flags.make

modules/highgui/src/moc_window_QT.cxx: ../modules/highgui/src/window_QT.h
modules/highgui/src/moc_window_QT.cxx: modules/highgui/src/moc_window_QT.cxx_parameters
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pi/opencv-3.1.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating src/moc_window_QT.cxx"
	cd /home/pi/opencv-3.1.0/build/modules/highgui/src && /usr/lib/arm-linux-gnueabihf/qt4/bin/moc @/home/pi/opencv-3.1.0/build/modules/highgui/src/moc_window_QT.cxx_parameters

modules/highgui/qrc_window_QT.cxx: ../modules/highgui/src/files_Qt/Milky/48/28.png
modules/highgui/qrc_window_QT.cxx: ../modules/highgui/src/files_Qt/Milky/48/23.png
modules/highgui/qrc_window_QT.cxx: ../modules/highgui/src/files_Qt/Milky/48/19.png
modules/highgui/qrc_window_QT.cxx: ../modules/highgui/src/files_Qt/Milky/48/24.png
modules/highgui/qrc_window_QT.cxx: ../modules/highgui/src/files_Qt/Milky/48/27.png
modules/highgui/qrc_window_QT.cxx: ../modules/highgui/src/files_Qt/Milky/48/61.png
modules/highgui/qrc_window_QT.cxx: ../modules/highgui/src/files_Qt/Milky/48/106.png
modules/highgui/qrc_window_QT.cxx: ../modules/highgui/src/files_Qt/Milky/48/107.png
modules/highgui/qrc_window_QT.cxx: ../modules/highgui/src/files_Qt/Milky/48/7.png
modules/highgui/qrc_window_QT.cxx: ../modules/highgui/src/files_Qt/Milky/48/38.png
modules/highgui/qrc_window_QT.cxx: ../modules/highgui/src/files_Qt/stylesheet_trackbar.qss
modules/highgui/qrc_window_QT.cxx: modules/highgui/src/window_QT.qrc.depends
modules/highgui/qrc_window_QT.cxx: ../modules/highgui/src/window_QT.qrc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pi/opencv-3.1.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating qrc_window_QT.cxx"
	cd /home/pi/opencv-3.1.0/build/modules/highgui && /usr/lib/arm-linux-gnueabihf/qt4/bin/rcc -name window_QT -o /home/pi/opencv-3.1.0/build/modules/highgui/qrc_window_QT.cxx /home/pi/opencv-3.1.0/modules/highgui/src/window_QT.qrc

modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window.cpp.o: modules/highgui/CMakeFiles/opencv_highgui_object.dir/flags.make
modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window.cpp.o: ../modules/highgui/src/window.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/opencv-3.1.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window.cpp.o"
	cd /home/pi/opencv-3.1.0/build/modules/highgui && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -include "/home/pi/opencv-3.1.0/build/modules/highgui/precomp.hpp" -Winvalid-pch  -o CMakeFiles/opencv_highgui_object.dir/src/window.cpp.o -c /home/pi/opencv-3.1.0/modules/highgui/src/window.cpp

modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_highgui_object.dir/src/window.cpp.i"
	cd /home/pi/opencv-3.1.0/build/modules/highgui && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -include "/home/pi/opencv-3.1.0/build/modules/highgui/precomp.hpp" -Winvalid-pch  -E /home/pi/opencv-3.1.0/modules/highgui/src/window.cpp > CMakeFiles/opencv_highgui_object.dir/src/window.cpp.i

modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_highgui_object.dir/src/window.cpp.s"
	cd /home/pi/opencv-3.1.0/build/modules/highgui && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -include "/home/pi/opencv-3.1.0/build/modules/highgui/precomp.hpp" -Winvalid-pch  -S /home/pi/opencv-3.1.0/modules/highgui/src/window.cpp -o CMakeFiles/opencv_highgui_object.dir/src/window.cpp.s

modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window.cpp.o.requires:

.PHONY : modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window.cpp.o.requires

modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window.cpp.o.provides: modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window.cpp.o.requires
	$(MAKE) -f modules/highgui/CMakeFiles/opencv_highgui_object.dir/build.make modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window.cpp.o.provides.build
.PHONY : modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window.cpp.o.provides

modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window.cpp.o.provides.build: modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window.cpp.o


modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window_QT.cpp.o: modules/highgui/CMakeFiles/opencv_highgui_object.dir/flags.make
modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window_QT.cpp.o: ../modules/highgui/src/window_QT.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/opencv-3.1.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window_QT.cpp.o"
	cd /home/pi/opencv-3.1.0/build/modules/highgui && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -include "/home/pi/opencv-3.1.0/build/modules/highgui/precomp.hpp" -Winvalid-pch  -o CMakeFiles/opencv_highgui_object.dir/src/window_QT.cpp.o -c /home/pi/opencv-3.1.0/modules/highgui/src/window_QT.cpp

modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window_QT.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_highgui_object.dir/src/window_QT.cpp.i"
	cd /home/pi/opencv-3.1.0/build/modules/highgui && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -include "/home/pi/opencv-3.1.0/build/modules/highgui/precomp.hpp" -Winvalid-pch  -E /home/pi/opencv-3.1.0/modules/highgui/src/window_QT.cpp > CMakeFiles/opencv_highgui_object.dir/src/window_QT.cpp.i

modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window_QT.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_highgui_object.dir/src/window_QT.cpp.s"
	cd /home/pi/opencv-3.1.0/build/modules/highgui && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -include "/home/pi/opencv-3.1.0/build/modules/highgui/precomp.hpp" -Winvalid-pch  -S /home/pi/opencv-3.1.0/modules/highgui/src/window_QT.cpp -o CMakeFiles/opencv_highgui_object.dir/src/window_QT.cpp.s

modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window_QT.cpp.o.requires:

.PHONY : modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window_QT.cpp.o.requires

modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window_QT.cpp.o.provides: modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window_QT.cpp.o.requires
	$(MAKE) -f modules/highgui/CMakeFiles/opencv_highgui_object.dir/build.make modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window_QT.cpp.o.provides.build
.PHONY : modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window_QT.cpp.o.provides

modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window_QT.cpp.o.provides.build: modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window_QT.cpp.o


modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/moc_window_QT.cxx.o: modules/highgui/CMakeFiles/opencv_highgui_object.dir/flags.make
modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/moc_window_QT.cxx.o: modules/highgui/src/moc_window_QT.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/opencv-3.1.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/moc_window_QT.cxx.o"
	cd /home/pi/opencv-3.1.0/build/modules/highgui && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -include "/home/pi/opencv-3.1.0/build/modules/highgui/precomp.hpp" -Winvalid-pch  -o CMakeFiles/opencv_highgui_object.dir/src/moc_window_QT.cxx.o -c /home/pi/opencv-3.1.0/build/modules/highgui/src/moc_window_QT.cxx

modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/moc_window_QT.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_highgui_object.dir/src/moc_window_QT.cxx.i"
	cd /home/pi/opencv-3.1.0/build/modules/highgui && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -include "/home/pi/opencv-3.1.0/build/modules/highgui/precomp.hpp" -Winvalid-pch  -E /home/pi/opencv-3.1.0/build/modules/highgui/src/moc_window_QT.cxx > CMakeFiles/opencv_highgui_object.dir/src/moc_window_QT.cxx.i

modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/moc_window_QT.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_highgui_object.dir/src/moc_window_QT.cxx.s"
	cd /home/pi/opencv-3.1.0/build/modules/highgui && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -include "/home/pi/opencv-3.1.0/build/modules/highgui/precomp.hpp" -Winvalid-pch  -S /home/pi/opencv-3.1.0/build/modules/highgui/src/moc_window_QT.cxx -o CMakeFiles/opencv_highgui_object.dir/src/moc_window_QT.cxx.s

modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/moc_window_QT.cxx.o.requires:

.PHONY : modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/moc_window_QT.cxx.o.requires

modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/moc_window_QT.cxx.o.provides: modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/moc_window_QT.cxx.o.requires
	$(MAKE) -f modules/highgui/CMakeFiles/opencv_highgui_object.dir/build.make modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/moc_window_QT.cxx.o.provides.build
.PHONY : modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/moc_window_QT.cxx.o.provides

modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/moc_window_QT.cxx.o.provides.build: modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/moc_window_QT.cxx.o


modules/highgui/CMakeFiles/opencv_highgui_object.dir/qrc_window_QT.cxx.o: modules/highgui/CMakeFiles/opencv_highgui_object.dir/flags.make
modules/highgui/CMakeFiles/opencv_highgui_object.dir/qrc_window_QT.cxx.o: modules/highgui/qrc_window_QT.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/opencv-3.1.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object modules/highgui/CMakeFiles/opencv_highgui_object.dir/qrc_window_QT.cxx.o"
	cd /home/pi/opencv-3.1.0/build/modules/highgui && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wno-missing-declarations  -include "/home/pi/opencv-3.1.0/build/modules/highgui/precomp.hpp" -Winvalid-pch  -o CMakeFiles/opencv_highgui_object.dir/qrc_window_QT.cxx.o -c /home/pi/opencv-3.1.0/build/modules/highgui/qrc_window_QT.cxx

modules/highgui/CMakeFiles/opencv_highgui_object.dir/qrc_window_QT.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_highgui_object.dir/qrc_window_QT.cxx.i"
	cd /home/pi/opencv-3.1.0/build/modules/highgui && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wno-missing-declarations  -include "/home/pi/opencv-3.1.0/build/modules/highgui/precomp.hpp" -Winvalid-pch  -E /home/pi/opencv-3.1.0/build/modules/highgui/qrc_window_QT.cxx > CMakeFiles/opencv_highgui_object.dir/qrc_window_QT.cxx.i

modules/highgui/CMakeFiles/opencv_highgui_object.dir/qrc_window_QT.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_highgui_object.dir/qrc_window_QT.cxx.s"
	cd /home/pi/opencv-3.1.0/build/modules/highgui && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wno-missing-declarations  -include "/home/pi/opencv-3.1.0/build/modules/highgui/precomp.hpp" -Winvalid-pch  -S /home/pi/opencv-3.1.0/build/modules/highgui/qrc_window_QT.cxx -o CMakeFiles/opencv_highgui_object.dir/qrc_window_QT.cxx.s

modules/highgui/CMakeFiles/opencv_highgui_object.dir/qrc_window_QT.cxx.o.requires:

.PHONY : modules/highgui/CMakeFiles/opencv_highgui_object.dir/qrc_window_QT.cxx.o.requires

modules/highgui/CMakeFiles/opencv_highgui_object.dir/qrc_window_QT.cxx.o.provides: modules/highgui/CMakeFiles/opencv_highgui_object.dir/qrc_window_QT.cxx.o.requires
	$(MAKE) -f modules/highgui/CMakeFiles/opencv_highgui_object.dir/build.make modules/highgui/CMakeFiles/opencv_highgui_object.dir/qrc_window_QT.cxx.o.provides.build
.PHONY : modules/highgui/CMakeFiles/opencv_highgui_object.dir/qrc_window_QT.cxx.o.provides

modules/highgui/CMakeFiles/opencv_highgui_object.dir/qrc_window_QT.cxx.o.provides.build: modules/highgui/CMakeFiles/opencv_highgui_object.dir/qrc_window_QT.cxx.o


opencv_highgui_object: modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window.cpp.o
opencv_highgui_object: modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window_QT.cpp.o
opencv_highgui_object: modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/moc_window_QT.cxx.o
opencv_highgui_object: modules/highgui/CMakeFiles/opencv_highgui_object.dir/qrc_window_QT.cxx.o
opencv_highgui_object: modules/highgui/CMakeFiles/opencv_highgui_object.dir/build.make

.PHONY : opencv_highgui_object

# Rule to build all files generated by this target.
modules/highgui/CMakeFiles/opencv_highgui_object.dir/build: opencv_highgui_object

.PHONY : modules/highgui/CMakeFiles/opencv_highgui_object.dir/build

modules/highgui/CMakeFiles/opencv_highgui_object.dir/requires: modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window.cpp.o.requires
modules/highgui/CMakeFiles/opencv_highgui_object.dir/requires: modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/window_QT.cpp.o.requires
modules/highgui/CMakeFiles/opencv_highgui_object.dir/requires: modules/highgui/CMakeFiles/opencv_highgui_object.dir/src/moc_window_QT.cxx.o.requires
modules/highgui/CMakeFiles/opencv_highgui_object.dir/requires: modules/highgui/CMakeFiles/opencv_highgui_object.dir/qrc_window_QT.cxx.o.requires

.PHONY : modules/highgui/CMakeFiles/opencv_highgui_object.dir/requires

modules/highgui/CMakeFiles/opencv_highgui_object.dir/clean:
	cd /home/pi/opencv-3.1.0/build/modules/highgui && $(CMAKE_COMMAND) -P CMakeFiles/opencv_highgui_object.dir/cmake_clean.cmake
.PHONY : modules/highgui/CMakeFiles/opencv_highgui_object.dir/clean

modules/highgui/CMakeFiles/opencv_highgui_object.dir/depend: modules/highgui/src/moc_window_QT.cxx
modules/highgui/CMakeFiles/opencv_highgui_object.dir/depend: modules/highgui/qrc_window_QT.cxx
	cd /home/pi/opencv-3.1.0/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/opencv-3.1.0 /home/pi/opencv-3.1.0/modules/highgui /home/pi/opencv-3.1.0/build /home/pi/opencv-3.1.0/build/modules/highgui /home/pi/opencv-3.1.0/build/modules/highgui/CMakeFiles/opencv_highgui_object.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/highgui/CMakeFiles/opencv_highgui_object.dir/depend

