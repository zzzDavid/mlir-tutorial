# Scalar-Vector Matrix Multiply

## Files and what they do
- `compile.sh`: a script that compiles MLIR IR to binary executable
- `vanilla.mlir`: a vanilla implementation of matrix multiply (inner-product)
- `scalar-vector-opt.mlir`: vanilla matrix multiply + hcl operations to transform it into scalar-vector product

## Run the experiments
Step 1: compile

```sh
./compile.sh
```

You should see `vanilla` and `scalar-vector-opt`. These are two executables compiled from the MLIR source code.

Step 2: performance profiling
```sh
time ./vanilla
time ./scalar-vector-opt
```

The `scalar-vector-opt` version of MM is roughly 5 times faster than the `vanilla` version. This is because we traverse the RHS matrix in a cache-friendly way.