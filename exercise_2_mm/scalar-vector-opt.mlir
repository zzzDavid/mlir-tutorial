module {
  func.func @main() {
    %0 = memref.alloc() : memref<4096x4096xf32>
    %1 = memref.alloc() : memref<4096x64xf32>
    %2 = memref.alloc() : memref<4096x64xf32>
    affine.for %arg0 = 0 to 4096 {
      %3 = memref.alloc() : memref<64xf32>
      %cst = arith.constant 0.000000e+00 : f32
      affine.for %arg1 = 0 to 64 {
        affine.store %cst, %3[%arg1] : memref<64xf32>
      } {buffer, loop_name = "j_init", pipeline_ii = 1 : i32}
      affine.for %arg1 = 0 to 4096 {
        affine.for %arg2 = 0 to 64 {
          %4 = affine.load %0[%arg0, %arg1] : memref<4096x4096xf32>
          %5 = affine.load %1[%arg1, %arg2] : memref<4096x64xf32>
          %6 = affine.load %3[%arg2] : memref<64xf32>
          %7 = arith.mulf %4, %5 : f32
          %8 = arith.addf %7, %6 : f32
          affine.store %8, %3[%arg2] : memref<64xf32>
        } {loop_name = "j"}
      } {loop_name = "k", reduction = 1 : i32}
      affine.for %arg1 = 0 to 64 {
        %4 = affine.load %3[%arg1] : memref<64xf32>
        affine.store %4, %2[%arg0, %arg1] : memref<4096x64xf32>
      } {buffer, loop_name = "j_back", pipeline_ii = 1 : i32}
    } {loop_name = "i", op_name = "s"}
    return
  }
}

