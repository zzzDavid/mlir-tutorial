// RUN: mlir-opt %s -gpu-kernel-outlining --convert-scf-to-cf 
// RUN: -pass-pipeline='gpu.module(strip-debuginfo,convert-gpu-to-nvvm,gpu-to-cubin{chip=sm_70})' -gpu-to-llvm 
// RUN: | mlir-translate -mlir-to-llvmir 
// RUN: | opt -O3 -S | llc -O3 -relocation-model=pic -filetype=obj -o matmul_gpu.o
// RUN: clang++ matmul_gpu.o -L/work/shared/common/llvm-project-15.0.0/build/lib -o exec -lcuda |
// RUN: -lmlir_cuda_runtime -lmlir_runner_utils -lmlir_c_runner_utils --rtlib=compiler-rt

// RUN: mlir-opt %s -gpu-kernel-outlining --convert-scf-to-cf 
// RUN: -pass-pipeline='gpu.module(strip-debuginfo,convert-gpu-to-nvvm,gpu-to-cubin{chip=sm_70})' -gpu-to-llvm 
// RUN: | mlir-cpu-runner \
// RUN:   --shared-libs=%linalg_test_lib_dir/libmlir_cuda_runtime%shlibext \
// RUN:   --shared-libs=%linalg_test_lib_dir/libmlir_runner_utils%shlibext \
// RUN:   --entry-point-result=void \
// RUN: | FileCheck %s

func.func @main() {
  %0 = memref.alloc() : memref<16x16xf16>
  %22 = memref.alloc() : memref<16x16xf16>
  %1 = memref.alloc() : memref<16x16xf32>

  %f1 = arith.constant 1.0e+00 : f16
  %f0 = arith.constant 0.0e+00 : f16
  %c0 = arith.constant 0 : index
  %c16 = arith.constant 16 : index
  %c32 = arith.constant 32 : index
  %c1 = arith.constant 1 : index

  // Intialize the Input matrix with ones.
  scf.for %arg0 = %c0 to %c16 step %c1 {
    scf.for %arg1 = %c0 to %c16 step %c1 {
      memref.store %f1, %0[%arg0, %arg1] : memref<16x16xf16>
    }
  }
  // Intialize the accumulator matrix with zeros.
  scf.for %arg0 = %c0 to %c16 step %c1 {
    scf.for %arg1 = %c0 to %c16 step %c1 {
      memref.store %f0, %22[%arg0, %arg1] : memref<16x16xf16>
    }
  }

  %2 = memref.cast %0 : memref<16x16xf16> to memref<*xf16>
  %33 = memref.cast %22 : memref<16x16xf16> to memref<*xf16>
  %3 = memref.cast %1 : memref<16x16xf32> to memref<*xf32>
  gpu.host_register %2 : memref<*xf16>
  gpu.host_register %33 : memref<*xf16>

  gpu.launch blocks(%bx, %by, %bz) in (%grid_x = %c1, %grid_y = %c1, %grid_z = %c1)
             threads(%tx, %ty, %tz) in (%block_x = %c32, %block_y = %c1, %block_z = %c1) {
    %A = gpu.subgroup_mma_load_matrix %0[%c0, %c0] {leadDimension = 16 : index} : memref<16x16xf16> -> !gpu.mma_matrix<16x16xf16, "AOp">
    %B = gpu.subgroup_mma_load_matrix %0[%c0, %c0] {leadDimension = 16 : index} : memref<16x16xf16> -> !gpu.mma_matrix<16x16xf16, "BOp">
    %C = gpu.subgroup_mma_load_matrix %22[%c0, %c0] {leadDimension = 16 : index} : memref<16x16xf16> -> !gpu.mma_matrix<16x16xf16, "COp">

    %R = gpu.subgroup_mma_compute %A, %B, %C : !gpu.mma_matrix<16x16xf16, "AOp">, !gpu.mma_matrix<16x16xf16, "BOp"> -> !gpu.mma_matrix<16x16xf16, "COp">

    gpu.subgroup_mma_store_matrix %R, %0[%c0, %c0] {leadDimension = 16 : index}: !gpu.mma_matrix<16x16xf16, "COp">, memref<16x16xf16>
    gpu.terminator
  }

  // Convert the results from f16 to f32 for printing.
  scf.for %arg0 = %c0 to %c16 step %c1 {
    scf.for %arg1 = %c0 to %c16 step %c1 {
      %6 = memref.load %0[%arg0, %arg1] : memref<16x16xf16>
      %7 = arith.extf %6 : f16 to f32
      memref.store %7, %1[%arg0, %arg1] : memref<16x16xf32>
    }
  }

  // Print the memref after computation.
  call @printMemrefF32(%3) : (memref<*xf32>) -> ()
  // CHECK: [16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16],
  // CHECK-NEXT: [16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16],
  // CHECK-NEXT: [16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16],
  // CHECK-NEXT: [16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16],
  // CHECK-NEXT: [16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16],
  // CHECK-NEXT: [16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16],
  // CHECK-NEXT: [16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16],
  // CHECK-NEXT: [16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16],
  // CHECK-NEXT: [16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16],
  // CHECK-NEXT: [16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16],
  // CHECK-NEXT: [16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16],
  // CHECK-NEXT: [16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16],
  // CHECK-NEXT: [16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16],
  // CHECK-NEXT: [16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16],
  // CHECK-NEXT: [16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16],
  // CHECK-NEXT: [16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,   16]
  return
}

func.func private @printMemrefF32(memref<*xf32>)
