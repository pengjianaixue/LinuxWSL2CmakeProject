cmake_minimum_required(VERSION 3.0.0)
project(linux_cpp VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set_target_properties(${TARGET} PROPERTIES COMPILE_FLAGS "-rdynamic" LINK_FLAGS "-rdynamic")
#source 
aux_source_directory(. CURRENT_DIR_SRCS)
aux_source_directory(./Class/src CURRENT_DIR_SRCS)
aux_source_directory(./TestFunction CURRENT_DIR_SRCS)
#main program
add_executable(Linux_cpp main.cc ${CURRENT_DIR_SRCS})
# link dl lib
target_link_libraries(Linux_cpp dl)

add_library(dylibTest SHARED ${CURRENT_DIR_SRCS})