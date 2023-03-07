
## Steps
$ ssh netID@zhang-capra-xcel.ece.cornell.edu

$ source config.sh

$ sparlay-opt ./spmm_csr.mlir -sparlay-codegen -lower-format-conversion -lower-struct -dce | mlir-opt -one-shot-bufferize="bufferize-function-boundaries=1 allow-return-allocs unknown-type-conversion=identity-layout-map function-boundary-type-conversion=identity-layout-map" -finalizing-bufferize -convert-linalg-to-loops -convert-vector-to-scf -convert-scf-to-cf -lower-affine -convert-vector-to-llvm -convert-memref-to-llvm -convert-complex-to-standard -convert-math-to-llvm -convert-math-to-libm -convert-complex-to-libm -convert-complex-to-llvm -convert-func-to-llvm -reconcile-unrealized-casts  | mlir-translate -mlir-to-llvmir | opt -O3 -S | llc -O3 -relocation-model=pic -filetype=obj -o spmm.o

$ clang++ spmm.o -L$SPLHOME/build/lib -lmlir_sparlay_runner_utils -L$LLVMHOME/build/lib -lmlir_runner_utils -lmlir_c_runner_utils -o spmm

$ ./spmm
