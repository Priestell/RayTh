# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/clion/164/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/164/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ollguardner/Documents/CLion/RayaT

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ollguardner/Documents/CLion/RayaT/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Compilation.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/Compilation.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Compilation.dir/flags.make

CMakeFiles/Compilation.dir/main.cpp.o: CMakeFiles/Compilation.dir/flags.make
CMakeFiles/Compilation.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ollguardner/Documents/CLion/RayaT/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Compilation.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Compilation.dir/main.cpp.o -c /home/ollguardner/Documents/CLion/RayaT/main.cpp

CMakeFiles/Compilation.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Compilation.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ollguardner/Documents/CLion/RayaT/main.cpp > CMakeFiles/Compilation.dir/main.cpp.i

CMakeFiles/Compilation.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Compilation.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ollguardner/Documents/CLion/RayaT/main.cpp -o CMakeFiles/Compilation.dir/main.cpp.s

CMakeFiles/Compilation.dir/image.cpp.o: CMakeFiles/Compilation.dir/flags.make
CMakeFiles/Compilation.dir/image.cpp.o: ../image.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ollguardner/Documents/CLion/RayaT/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Compilation.dir/image.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Compilation.dir/image.cpp.o -c /home/ollguardner/Documents/CLion/RayaT/image.cpp

CMakeFiles/Compilation.dir/image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Compilation.dir/image.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ollguardner/Documents/CLion/RayaT/image.cpp > CMakeFiles/Compilation.dir/image.cpp.i

CMakeFiles/Compilation.dir/image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Compilation.dir/image.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ollguardner/Documents/CLion/RayaT/image.cpp -o CMakeFiles/Compilation.dir/image.cpp.s

# Object files for target Compilation
Compilation_OBJECTS = \
"CMakeFiles/Compilation.dir/main.cpp.o" \
"CMakeFiles/Compilation.dir/image.cpp.o"

# External object files for target Compilation
Compilation_EXTERNAL_OBJECTS =

Compilation: CMakeFiles/Compilation.dir/main.cpp.o
Compilation: CMakeFiles/Compilation.dir/image.cpp.o
Compilation: CMakeFiles/Compilation.dir/build.make
Compilation: /usr/lib/x86_64-linux-gnu/libsfml-system.so
Compilation: /usr/lib/x86_64-linux-gnu/libsfml-window.so
Compilation: /usr/lib/x86_64-linux-gnu/libsfml-graphics.so
Compilation: /usr/lib/x86_64-linux-gnu/libsfml-network.so
Compilation: /usr/lib/x86_64-linux-gnu/libsfml-audio.so
Compilation: CMakeFiles/Compilation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ollguardner/Documents/CLion/RayaT/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Compilation"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Compilation.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Compilation.dir/build: Compilation
.PHONY : CMakeFiles/Compilation.dir/build

CMakeFiles/Compilation.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Compilation.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Compilation.dir/clean

CMakeFiles/Compilation.dir/depend:
	cd /home/ollguardner/Documents/CLion/RayaT/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ollguardner/Documents/CLion/RayaT /home/ollguardner/Documents/CLion/RayaT /home/ollguardner/Documents/CLion/RayaT/cmake-build-debug /home/ollguardner/Documents/CLion/RayaT/cmake-build-debug /home/ollguardner/Documents/CLion/RayaT/cmake-build-debug/CMakeFiles/Compilation.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Compilation.dir/depend

