# Matrix Multiply on GPU

## Files and what they do
- `compile.sh`: a script that compiles MLIR IR to binary executable
- `matmul_gpu.mlir`: matrix multiply program on GPU

## Compilation results
- `exec`: the executable
- `matmul_gpu.ll`: the program in LLVM IR after mlir translation
- `matmul_gpu.o`: object file compiled from LLVM IR

## Run the experiments
Step 1: compile

```sh
./compile.sh
```


Step 2: run exec
```sh
./exec
```

## Explanations

The code consists of two memref.cast operations that cast memref<16x16xf16> and memref<16x16xf32> to memref<*xf16>, as well as two gpu.host_register operations that register the newly casted memrefs with the host.

After the casting and registration, there is a gpu.launch operation that launches a GPU kernel. The kernel contains several gpu.subgroup_mma_... operations that perform matrix multiplication using the subgroup matrix-multiply-add instruction on the GPU. The inputs to the matrix multiplication operations are memref objects that are loaded from the input memrefs using the subgroup_mma_load_matrix operation. The results of the matrix multiplication operations are stored back into a memref using the subgroup_mma_store_matrix operation.

After the matrix multiplication, there is a loop that iterates over the elements of the result memref and converts them from f16 to f32 using the arith.extf operation. The converted values are then stored back into a memref.

Overall, the code demonstrates how to use MLIR to generate code for performing matrix multiplication on a GPU. It also shows how to use memrefs to represent data in MLIR, and how to perform casting and register the memrefs with the host.
