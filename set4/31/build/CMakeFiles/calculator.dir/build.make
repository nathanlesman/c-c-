# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/cassielu/documents/GitHub/c-cpp/set4/31

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/cassielu/documents/GitHub/c-cpp/set4/31/build

# Include any dependencies generated for this target.
include CMakeFiles/calculator.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/calculator.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/calculator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/calculator.dir/flags.make

CMakeFiles/calculator.dir/main.cpp.o: CMakeFiles/calculator.dir/flags.make
CMakeFiles/calculator.dir/main.cpp.o: /Users/cassielu/documents/GitHub/c-cpp/set4/31/main.cpp
CMakeFiles/calculator.dir/main.cpp.o: CMakeFiles/calculator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/cassielu/documents/GitHub/c-cpp/set4/31/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/calculator.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/calculator.dir/main.cpp.o -MF CMakeFiles/calculator.dir/main.cpp.o.d -o CMakeFiles/calculator.dir/main.cpp.o -c /Users/cassielu/documents/GitHub/c-cpp/set4/31/main.cpp

CMakeFiles/calculator.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/calculator.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/cassielu/documents/GitHub/c-cpp/set4/31/main.cpp > CMakeFiles/calculator.dir/main.cpp.i

CMakeFiles/calculator.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/calculator.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/cassielu/documents/GitHub/c-cpp/set4/31/main.cpp -o CMakeFiles/calculator.dir/main.cpp.s

CMakeFiles/calculator.dir/calculator/run.cpp.o: CMakeFiles/calculator.dir/flags.make
CMakeFiles/calculator.dir/calculator/run.cpp.o: /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/run.cpp
CMakeFiles/calculator.dir/calculator/run.cpp.o: CMakeFiles/calculator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/cassielu/documents/GitHub/c-cpp/set4/31/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/calculator.dir/calculator/run.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/calculator.dir/calculator/run.cpp.o -MF CMakeFiles/calculator.dir/calculator/run.cpp.o.d -o CMakeFiles/calculator.dir/calculator/run.cpp.o -c /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/run.cpp

CMakeFiles/calculator.dir/calculator/run.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/calculator.dir/calculator/run.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/run.cpp > CMakeFiles/calculator.dir/calculator/run.cpp.i

CMakeFiles/calculator.dir/calculator/run.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/calculator.dir/calculator/run.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/run.cpp -o CMakeFiles/calculator.dir/calculator/run.cpp.s

CMakeFiles/calculator.dir/calculator/expression.cpp.o: CMakeFiles/calculator.dir/flags.make
CMakeFiles/calculator.dir/calculator/expression.cpp.o: /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/expression.cpp
CMakeFiles/calculator.dir/calculator/expression.cpp.o: CMakeFiles/calculator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/cassielu/documents/GitHub/c-cpp/set4/31/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/calculator.dir/calculator/expression.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/calculator.dir/calculator/expression.cpp.o -MF CMakeFiles/calculator.dir/calculator/expression.cpp.o.d -o CMakeFiles/calculator.dir/calculator/expression.cpp.o -c /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/expression.cpp

CMakeFiles/calculator.dir/calculator/expression.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/calculator.dir/calculator/expression.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/expression.cpp > CMakeFiles/calculator.dir/calculator/expression.cpp.i

CMakeFiles/calculator.dir/calculator/expression.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/calculator.dir/calculator/expression.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/expression.cpp -o CMakeFiles/calculator.dir/calculator/expression.cpp.s

CMakeFiles/calculator.dir/calculator/number.cpp.o: CMakeFiles/calculator.dir/flags.make
CMakeFiles/calculator.dir/calculator/number.cpp.o: /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/number.cpp
CMakeFiles/calculator.dir/calculator/number.cpp.o: CMakeFiles/calculator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/cassielu/documents/GitHub/c-cpp/set4/31/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/calculator.dir/calculator/number.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/calculator.dir/calculator/number.cpp.o -MF CMakeFiles/calculator.dir/calculator/number.cpp.o.d -o CMakeFiles/calculator.dir/calculator/number.cpp.o -c /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/number.cpp

CMakeFiles/calculator.dir/calculator/number.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/calculator.dir/calculator/number.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/number.cpp > CMakeFiles/calculator.dir/calculator/number.cpp.i

CMakeFiles/calculator.dir/calculator/number.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/calculator.dir/calculator/number.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/number.cpp -o CMakeFiles/calculator.dir/calculator/number.cpp.s

CMakeFiles/calculator.dir/calculator/getOperator.cpp.o: CMakeFiles/calculator.dir/flags.make
CMakeFiles/calculator.dir/calculator/getOperator.cpp.o: /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/getOperator.cpp
CMakeFiles/calculator.dir/calculator/getOperator.cpp.o: CMakeFiles/calculator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/cassielu/documents/GitHub/c-cpp/set4/31/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/calculator.dir/calculator/getOperator.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/calculator.dir/calculator/getOperator.cpp.o -MF CMakeFiles/calculator.dir/calculator/getOperator.cpp.o.d -o CMakeFiles/calculator.dir/calculator/getOperator.cpp.o -c /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/getOperator.cpp

CMakeFiles/calculator.dir/calculator/getOperator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/calculator.dir/calculator/getOperator.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/getOperator.cpp > CMakeFiles/calculator.dir/calculator/getOperator.cpp.i

CMakeFiles/calculator.dir/calculator/getOperator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/calculator.dir/calculator/getOperator.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/getOperator.cpp -o CMakeFiles/calculator.dir/calculator/getOperator.cpp.s

CMakeFiles/calculator.dir/calculator/evaluate.cpp.o: CMakeFiles/calculator.dir/flags.make
CMakeFiles/calculator.dir/calculator/evaluate.cpp.o: /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/evaluate.cpp
CMakeFiles/calculator.dir/calculator/evaluate.cpp.o: CMakeFiles/calculator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/cassielu/documents/GitHub/c-cpp/set4/31/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/calculator.dir/calculator/evaluate.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/calculator.dir/calculator/evaluate.cpp.o -MF CMakeFiles/calculator.dir/calculator/evaluate.cpp.o.d -o CMakeFiles/calculator.dir/calculator/evaluate.cpp.o -c /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/evaluate.cpp

CMakeFiles/calculator.dir/calculator/evaluate.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/calculator.dir/calculator/evaluate.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/evaluate.cpp > CMakeFiles/calculator.dir/calculator/evaluate.cpp.i

CMakeFiles/calculator.dir/calculator/evaluate.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/calculator.dir/calculator/evaluate.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/evaluate.cpp -o CMakeFiles/calculator.dir/calculator/evaluate.cpp.s

CMakeFiles/calculator.dir/calculator/evaluate2.cpp.o: CMakeFiles/calculator.dir/flags.make
CMakeFiles/calculator.dir/calculator/evaluate2.cpp.o: /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/evaluate2.cpp
CMakeFiles/calculator.dir/calculator/evaluate2.cpp.o: CMakeFiles/calculator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/cassielu/documents/GitHub/c-cpp/set4/31/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/calculator.dir/calculator/evaluate2.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/calculator.dir/calculator/evaluate2.cpp.o -MF CMakeFiles/calculator.dir/calculator/evaluate2.cpp.o.d -o CMakeFiles/calculator.dir/calculator/evaluate2.cpp.o -c /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/evaluate2.cpp

CMakeFiles/calculator.dir/calculator/evaluate2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/calculator.dir/calculator/evaluate2.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/evaluate2.cpp > CMakeFiles/calculator.dir/calculator/evaluate2.cpp.i

CMakeFiles/calculator.dir/calculator/evaluate2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/calculator.dir/calculator/evaluate2.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/evaluate2.cpp -o CMakeFiles/calculator.dir/calculator/evaluate2.cpp.s

CMakeFiles/calculator.dir/calculator/evaluate3.cpp.o: CMakeFiles/calculator.dir/flags.make
CMakeFiles/calculator.dir/calculator/evaluate3.cpp.o: /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/evaluate3.cpp
CMakeFiles/calculator.dir/calculator/evaluate3.cpp.o: CMakeFiles/calculator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/cassielu/documents/GitHub/c-cpp/set4/31/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/calculator.dir/calculator/evaluate3.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/calculator.dir/calculator/evaluate3.cpp.o -MF CMakeFiles/calculator.dir/calculator/evaluate3.cpp.o.d -o CMakeFiles/calculator.dir/calculator/evaluate3.cpp.o -c /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/evaluate3.cpp

CMakeFiles/calculator.dir/calculator/evaluate3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/calculator.dir/calculator/evaluate3.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/evaluate3.cpp > CMakeFiles/calculator.dir/calculator/evaluate3.cpp.i

CMakeFiles/calculator.dir/calculator/evaluate3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/calculator.dir/calculator/evaluate3.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/evaluate3.cpp -o CMakeFiles/calculator.dir/calculator/evaluate3.cpp.s

CMakeFiles/calculator.dir/calculator/evaluate4.cpp.o: CMakeFiles/calculator.dir/flags.make
CMakeFiles/calculator.dir/calculator/evaluate4.cpp.o: /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/evaluate4.cpp
CMakeFiles/calculator.dir/calculator/evaluate4.cpp.o: CMakeFiles/calculator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/cassielu/documents/GitHub/c-cpp/set4/31/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/calculator.dir/calculator/evaluate4.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/calculator.dir/calculator/evaluate4.cpp.o -MF CMakeFiles/calculator.dir/calculator/evaluate4.cpp.o.d -o CMakeFiles/calculator.dir/calculator/evaluate4.cpp.o -c /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/evaluate4.cpp

CMakeFiles/calculator.dir/calculator/evaluate4.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/calculator.dir/calculator/evaluate4.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/evaluate4.cpp > CMakeFiles/calculator.dir/calculator/evaluate4.cpp.i

CMakeFiles/calculator.dir/calculator/evaluate4.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/calculator.dir/calculator/evaluate4.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/cassielu/documents/GitHub/c-cpp/set4/31/calculator/evaluate4.cpp -o CMakeFiles/calculator.dir/calculator/evaluate4.cpp.s

# Object files for target calculator
calculator_OBJECTS = \
"CMakeFiles/calculator.dir/main.cpp.o" \
"CMakeFiles/calculator.dir/calculator/run.cpp.o" \
"CMakeFiles/calculator.dir/calculator/expression.cpp.o" \
"CMakeFiles/calculator.dir/calculator/number.cpp.o" \
"CMakeFiles/calculator.dir/calculator/getOperator.cpp.o" \
"CMakeFiles/calculator.dir/calculator/evaluate.cpp.o" \
"CMakeFiles/calculator.dir/calculator/evaluate2.cpp.o" \
"CMakeFiles/calculator.dir/calculator/evaluate3.cpp.o" \
"CMakeFiles/calculator.dir/calculator/evaluate4.cpp.o"

# External object files for target calculator
calculator_EXTERNAL_OBJECTS =

calculator: CMakeFiles/calculator.dir/main.cpp.o
calculator: CMakeFiles/calculator.dir/calculator/run.cpp.o
calculator: CMakeFiles/calculator.dir/calculator/expression.cpp.o
calculator: CMakeFiles/calculator.dir/calculator/number.cpp.o
calculator: CMakeFiles/calculator.dir/calculator/getOperator.cpp.o
calculator: CMakeFiles/calculator.dir/calculator/evaluate.cpp.o
calculator: CMakeFiles/calculator.dir/calculator/evaluate2.cpp.o
calculator: CMakeFiles/calculator.dir/calculator/evaluate3.cpp.o
calculator: CMakeFiles/calculator.dir/calculator/evaluate4.cpp.o
calculator: CMakeFiles/calculator.dir/build.make
calculator: CMakeFiles/calculator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/cassielu/documents/GitHub/c-cpp/set4/31/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable calculator"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/calculator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/calculator.dir/build: calculator
.PHONY : CMakeFiles/calculator.dir/build

CMakeFiles/calculator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/calculator.dir/cmake_clean.cmake
.PHONY : CMakeFiles/calculator.dir/clean

CMakeFiles/calculator.dir/depend:
	cd /Users/cassielu/documents/GitHub/c-cpp/set4/31/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/cassielu/documents/GitHub/c-cpp/set4/31 /Users/cassielu/documents/GitHub/c-cpp/set4/31 /Users/cassielu/documents/GitHub/c-cpp/set4/31/build /Users/cassielu/documents/GitHub/c-cpp/set4/31/build /Users/cassielu/documents/GitHub/c-cpp/set4/31/build/CMakeFiles/calculator.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/calculator.dir/depend

