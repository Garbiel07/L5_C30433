cmake_minimum_required(VERSION 3.10)
project(proyecto C)

set(CMAKE_C_STANDARD 11)
find_package(cJSON REQUIRED)

add_executable(mi_programa
    src/main.c  
    src/json.c 
)

target_link_libraries(mi_programa PRIVATE cJSON)
