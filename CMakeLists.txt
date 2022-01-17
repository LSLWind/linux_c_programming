cmake_minimum_required(VERSION 3.0.0)
project(linux_c_programming VERSION 0.1.0)

include(CTest)
enable_testing()

set(SOURCES
main.cpp
src/2_who.cpp
src/2_cp.cpp
src/3_ls.cpp
)


add_executable(lsl ${SOURCES})

target_include_directories(lsl
PRIVATE
${PROJECT_SOURCE_DIR}/include)



set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
