cmake_minimum_required (VERSION 3.5)

project(calculator)
set(SOURCE calculator.cpp oleh_super_calculator.cpp)
set(HEADER calculator.h)
set(SOURCE_EXE main.cpp)
set(SOURCE_LIB oleh_super_calculator.cpp)
add_library(olehsupercal STATIC ${SOURCE_LIB})
add_executable(calculator ${SOURCE_EXE} ${SOURCE} ${HEADER})
