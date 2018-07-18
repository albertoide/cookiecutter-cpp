#!/bin/bash

mkdir .conan && cd .conan
conan install .. --build missing -s compiler=gcc -s compiler.version=7.3 -s compiler.libcxx=libstdc++11
