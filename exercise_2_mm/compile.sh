#!/bin/bash

hcl-opt vanilla.mlir --lower-to-llvm | \
    mlir-translate -mlir-to-llvmir | \
    opt -S | \
    llc -filetype=obj -o vanilla.o
gcc vanilla.o -o vanilla

hcl-opt scalar-vector.mlir --opt > scalar-vector-opt.mlir
hcl-opt scalar-vector-opt.mlir --lower-to-llvm | \
    mlir-translate -mlir-to-llvmir | \
    opt -S | \
    llc -filetype=obj -o scalar-vector-opt.o

gcc scalar-vector-opt.o -o scalar-vector-opt