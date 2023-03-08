# MLIR Tutorial

This tutorial covers four exercises with MLIR:
1. Traversing MLIR IR operations
2. Optimize matrix multiply for better cache locality with HCL dialect
3. Matrix multiply on GPU
4. Sparse matrix multiply with Sparlay dialect

## Set up the environment

Step 1: log in to zhang-capra-xcel

Step 2: copy the project from common directory to a place you like the most
```sh
cp -r /work/shared/common/mlir-tutorial ./
```

Step 3: go to the tutorial directory, source a script
```sh
cd mlir-tutorial
source config.sh
```
