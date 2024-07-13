cmake_minimum_required(VERSION 3.1) # CMake version check
project(hello_world)                # Create project "hello_world"

set(CMake_CXX_STANDARD 17)          # Enable c++17 standard

# Define sources and executable as variables
set(HelloWorldSources   src/hello_world.cpp)
set(HelloWorldHeaders   include/hello_world.h)

set(MyLibraySources     src/MyLibrary.cpp)
set(MyLibrayHeaders     include/MyLibrary.h)

find_package(Boost REQUIRED COMPONENTS system thread)               # Find the Boost library

add_library(mylibrary SHARED ${MyLibraySources} ${MyLibrayHeaders}) # Define mylibrary target (shared library)

target_include_directories(mylibrary PUBLIC include)                # Add include/ to the path for mylibrary

add_executable(hello_world ${HelloWorldSources})                    # Define hello_world target

target_link_libraries(hello_world   PRIVATE Boost::thread Boost::system
                                    PRIVATE mylibrary)              # Use the Boost and mylibrary when linking hello_world
