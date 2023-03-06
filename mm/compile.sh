#!/bin/bash

hcl-opt vanilla.mlir --lower-to-llvm | \
    mlir-translate -mlir-to-llvmir | \
    opt -S | \
    llc -filetype=obj -o vanilla.o

# gcc vanilla.o \
#     -L/work/shared/users/phd/nz264/llvm-project/build/lib/ \
#     -lmlir_c_runner_utils \
#     -lmlir_runner_utils \
#     -o vanilla

gcc vanilla.o -o vanilla


hcl-opt scalar-vector.mlir --opt --lower-to-llvm > scalar-vector-opt.mlir
hcl-opt scalar-vector-opt.mlir --lower-to-llvm | \
    mlir-translate -mlir-to-llvmir | \
    opt -S | \
    llc -filetype=obj -o scalar-vector-opt.o

gcc scalar-vector-opt.o -o scalar-vector-opt