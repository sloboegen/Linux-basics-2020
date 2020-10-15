cmake_minimum_required(VERSION 3.16)
project(Proj)

set(CMAKE_CXX_STANDARD 17)
set(SRC main.cpp)
set(RUN main)
add_executable(${RUN} ${SRC})
