cmake_minimum_required(VERSION 3.6)
project(test)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES main.cpp)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=C++11  -I./ -I/usr/include/boost -lboost_system -lboost_chrono")
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -luWS -luv -lz -lssl")
add_executable(testapp ${SOURCE_FILES})