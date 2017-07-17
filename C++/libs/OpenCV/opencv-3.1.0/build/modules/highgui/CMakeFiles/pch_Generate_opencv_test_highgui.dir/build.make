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

# Utility rule file for pch_Generate_opencv_test_highgui.

# Include the progress variables for this target.
include modules/highgui/CMakeFiles/pch_Generate_opencv_test_highgui.dir/progress.make

modules/highgui/CMakeFiles/pch_Generate_opencv_test_highgui: modules/highgui/test_precomp.hpp.gch/opencv_test_highgui_RELEASE.gch


modules/highgui/test_precomp.hpp.gch/opencv_test_highgui_RELEASE.gch: ../modules/highgui/test/test_precomp.hpp
modules/highgui/test_precomp.hpp.gch/opencv_test_highgui_RELEASE.gch: modules/highgui/test_precomp.hpp
modules/highgui/test_precomp.hpp.gch/opencv_test_highgui_RELEASE.gch: lib/libopencv_test_highgui_pch_dephelp.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pi/opencv-3.1.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating test_precomp.hpp.gch/opencv_test_highgui_RELEASE.gch"
	cd /home/pi/opencv-3.1.0/build/modules/highgui && /usr/bin/cmake -E make_directory /home/pi/opencv-3.1.0/build/modules/highgui/test_precomp.hpp.gch
	cd /home/pi/opencv-3.1.0/build/modules/highgui && /usr/bin/c++ -O3 -DNDEBUG -DNDEBUG "-D__OPENCV_BUILD=1" "-DQT_NO_DEBUG" "-DQT_OPENGL_LIB" "-DQT_GUI_LIB" "-DQT_TEST_LIB" "-DQT_CORE_LIB" "-DHIGHGUI_EXPORTS" -isystem"/home/pi/opencv-3.1.0/build" -isystem"/usr/include/qt4" -isystem"/usr/include/qt4/QtOpenGL" -isystem"/usr/include/qt4/QtGui" -isystem"/usr/include/qt4/QtTest" -isystem"/usr/include/qt4/QtCore" -isystem"/home/pi/opencv-3.1.0/build" -isystem"/usr/include/qt4" -isystem"/usr/include/qt4/QtOpenGL" -isystem"/usr/include/qt4/QtGui" -isystem"/usr/include/qt4/QtTest" -isystem"/usr/include/qt4/QtCore" -I"/home/pi/opencv-3.1.0/modules/ts/include" -I"/home/pi/opencv-3.1.0/modules/highgui/include" -I"/home/pi/opencv-3.1.0/modules/imgcodecs/include" -I"/home/pi/opencv-3.1.0/modules/videoio/include" -I"/home/pi/opencv-3.1.0/modules/core/include" -I"/home/pi/opencv-3.1.0/modules/imgproc/include" -I"/home/pi/opencv-3.1.0/modules/imgcodecs/include" -I"/home/pi/opencv-3.1.0/modules/videoio/include" -I"/home/pi/opencv-3.1.0/modules/core/include" -I"/home/pi/opencv-3.1.0/modules/imgproc/include" -I"/home/pi/opencv-3.1.0/modules/imgcodecs/include" -I"/home/pi/opencv-3.1.0/modules/videoio/include" -I"/home/pi/opencv-3.1.0/modules/highgui/include" -I"/home/pi/opencv-3.1.0/modules/highgui/test" -fsigned-char -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wundef -Winit-self -Wpointer-arith -Wshadow -Wsign-promo -Wno-narrowing -Wno-delete-non-virtual-dtor -fdiagnostics-show-option -pthread -fomit-frame-pointer -ffunction-sections -fvisibility=hidden -fvisibility-inlines-hidden -Wno-deprecated-declarations -x c++-header -o /home/pi/opencv-3.1.0/build/modules/highgui/test_precomp.hpp.gch/opencv_test_highgui_RELEASE.gch /home/pi/opencv-3.1.0/build/modules/highgui/test_precomp.hpp

modules/highgui/test_precomp.hpp: ../modules/highgui/test/test_precomp.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pi/opencv-3.1.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating test_precomp.hpp"
	cd /home/pi/opencv-3.1.0/build/modules/highgui && /usr/bin/cmake -E copy_if_different /home/pi/opencv-3.1.0/modules/highgui/test/test_precomp.hpp /home/pi/opencv-3.1.0/build/modules/highgui/test_precomp.hpp

pch_Generate_opencv_test_highgui: modules/highgui/CMakeFiles/pch_Generate_opencv_test_highgui
pch_Generate_opencv_test_highgui: modules/highgui/test_precomp.hpp.gch/opencv_test_highgui_RELEASE.gch
pch_Generate_opencv_test_highgui: modules/highgui/test_precomp.hpp
pch_Generate_opencv_test_highgui: modules/highgui/CMakeFiles/pch_Generate_opencv_test_highgui.dir/build.make

.PHONY : pch_Generate_opencv_test_highgui

# Rule to build all files generated by this target.
modules/highgui/CMakeFiles/pch_Generate_opencv_test_highgui.dir/build: pch_Generate_opencv_test_highgui

.PHONY : modules/highgui/CMakeFiles/pch_Generate_opencv_test_highgui.dir/build

modules/highgui/CMakeFiles/pch_Generate_opencv_test_highgui.dir/clean:
	cd /home/pi/opencv-3.1.0/build/modules/highgui && $(CMAKE_COMMAND) -P CMakeFiles/pch_Generate_opencv_test_highgui.dir/cmake_clean.cmake
.PHONY : modules/highgui/CMakeFiles/pch_Generate_opencv_test_highgui.dir/clean

modules/highgui/CMakeFiles/pch_Generate_opencv_test_highgui.dir/depend:
	cd /home/pi/opencv-3.1.0/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/opencv-3.1.0 /home/pi/opencv-3.1.0/modules/highgui /home/pi/opencv-3.1.0/build /home/pi/opencv-3.1.0/build/modules/highgui /home/pi/opencv-3.1.0/build/modules/highgui/CMakeFiles/pch_Generate_opencv_test_highgui.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/highgui/CMakeFiles/pch_Generate_opencv_test_highgui.dir/depend

