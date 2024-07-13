cmake_minimum_required(VERSION 3.1)
project(hello_world)

set(CMake_CXX_STANDARD 17)

find_package(Boost REQUIRED COMPONENTS system thread)

add_executable(hello_world hello_world.cpp)

target_link_libraries(hello_world Boost::thread Boost::system)
