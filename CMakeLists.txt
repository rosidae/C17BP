cmake_minimum_required(VERSION 3.20)
project(project)
set(CMAKE_C_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED ON)

add_executable(project)
target_include_directories(project PUBLIC src)
# add_library(project STATIC)

function(add_subdirectories)
  foreach(dir ${ARGN})
    add_subdirectory(${dir})
  endforeach()
endfunction()

add_subdirectory(src)

install(TARGETS project DESTINATION /usr/local/bin)
# install(TARGETS project DESTINATION /usr/local/lib)
