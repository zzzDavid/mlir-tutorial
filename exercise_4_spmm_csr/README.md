# Sparse Matrix Multiply on GPU

## Files and what they do
- `compile.sh`: a script that compiles MLIR IR to binary executable
- `spmm_csr.mlir`: matrix multiply program on GPU

## Compilation results
- `spmm`: the executable
- `spmm_llvm.mlir`: the program in LLVM dialect after lowering
- `spmm.o`: object file

## Run the experiments
Step 1: compile

```sh
./compile.sh
```


Step 2: run exec
```sh
./spmm
```

## Explanations

This MLIR code defines an implementation of the sparse matrix multiplication algorithm for compressed sparse row (CSR) format. It includes the following:

- Definition of the COO and CSR sparse matrix formats.
- Definition of an index map for three operands: A (CSR matrix), B (dense matrix), and X (output matrix).
- A kernel function kernel_csr_spmm that takes the operands, performs sparse matrix multiplication, and returns the result as a dense matrix.

In the main function, it loads a CSR matrix from a file, creates a dense matrix for operand B, initializes the output matrix, calls the kernel_csr_spmm function, and prints the execution time and the result. Finally, it deallocates the resources.
It uses various MLIR dialects such as sparlay, linalg, arith, vector, and scf.