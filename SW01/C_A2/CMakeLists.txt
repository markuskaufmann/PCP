cmake_minimum_required(VERSION 3.12)
project(C_A2 C)

set(CMAKE_C_STANDARD 11)

set(Sources stack.c)
set(Headers stack.h)
add_executable(C_A2 main.c ${Headers} ${Sources})