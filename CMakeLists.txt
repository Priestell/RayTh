cmake_minimum_required(VERSION 3.20)
project(RayaT)

set(CMAKE_CXX_STANDARD 17)

set(EXECUTABLE_NAME "Compilation")
add_executable(${EXECUTABLE_NAME} main.cpp)

set(SFML_DIR "/home/ollguardner/Documents/SFML_Compiled")
set(CMAKE_MODULE_PATH "/home/ollguardner/Documents/CLion/RayaT/Cmake" ${CMAKE_MODULE_PATH})
find_package(SFML REQUIRED system window graphics network audio)
if(SFML_FOUND)
    include_directories(${SFML_INCLUDE_DIR})
    target_link_libraries(${EXECUTABLE_NAME} ${SFML_LIBRARIES})
endif()
