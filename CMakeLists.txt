cmake_minimum_required(VERSION 3.0.0)
project(linux_c_programming VERSION 0.1.0)

include(CTest)
enable_testing()

add_executable(linux_c_programming main.cpp)
add_executable(2_who src/2_who.cpp)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
