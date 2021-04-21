#!/bin/bash

# Compiler path
CLANG_PATH=${HOME}/AndroidProject/clang-4639204/bin/clang
GCC_PATH=${HOME}/AndroidProject/gcc49-los18/bin/aarch64-linux-android-
CLANG_TRIPLE_PATH=aarch64-linux-gnu-

# Start
make clean && make mrproper

make bluefly_defconfig O=out
make O=out CC=${CLANG_PATH} CROSS_COMPILE=${GCC_PATH} CLANG_TRIPLE=${CLANG_TRIPLE_PATH} -j64
