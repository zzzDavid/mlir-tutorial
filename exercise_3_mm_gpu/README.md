## Steps

$ ssh netID@zhang-capra-xcel.ece.cornell.edu

$ mlir-opt matmul_gpu.mlir -gpu-kernel-outlining --convert-scf-to-cf -pass-pipeline='gpu.module(strip-debuginfo,convert-gpu-to-nvvm,gpu-to-cubin{chip=sm_70})' -gpu-to-llvm -o matmul_gpu_llvm.mlir

$ mlir-translate matmul_gpu_llvm.mlir -mlir-to-llvmir -o matmul_gpu.ll

$ opt matmul_gpu.ll -O3 -S | llc -O3 -relocation-model=pic -filetype=obj -o matmul_gpu.o

$ clang++ matmul_gpu.o -L/work/shared/common/llvm-project-15.0.0/build/lib -o exec -lcuda -lmlir_cuda_runtime -lmlir_runner_utils -lmlir_c_runner_utils --rtlib=compiler-rt

$ ./exec
