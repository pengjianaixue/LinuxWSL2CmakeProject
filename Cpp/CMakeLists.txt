cmake_minimum_required(VERSION 3.0.0)
project(linux_cpp VERSION 0.1.0)
set_target_properties(${TARGET} PROPERTIES
COMPILE_FLAGS "-rdynamic"
LINK_FLAGS "-rdynamic")
AUX_SOURCE_DIRECTORY(. CURRENT_DIR_SRCS)
AUX_SOURCE_DIRECTORY(./Class CURRENT_DIR_SRCS)
add_executable(linux_cpp main.cc ${CURRENT_DIR_SRCS})
TARGET_LINK_LIBRARIES(linux_cpp dl)
add_library(dylibTest SHARED ${CURRENT_DIR_SRCS})