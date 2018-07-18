cmake_minimum_required(VERSION 3.10)
project({{ cookiecutter.project_name }})

set(CMAKE_CXX_STANDARD 11)

include(.conan/conanbuildinfo.cmake)

conan_basic_setup()

include_directories(src)

add_executable(
    {{ cookiecutter.executable_name }}
    src/main.cpp
)

add_executable(
    test_example
    test/test_example.cpp
)

target_link_libraries(
    test_example
    ${CONAN_LIBS}
)
