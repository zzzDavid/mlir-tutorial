module {
    func.func @main() -> ()
    {
        %A = memref.alloc() : memref<4096x4096xf32>
        %B = memref.alloc() : memref<4096x64xf32>
        %C = memref.alloc() : memref<4096x64xf32>
        affine.for %i = 0 to 4096 {
            affine.for %j = 0 to 64 {
                affine.for %k = 0 to 4096 {
                    %a = affine.load %A[%i, %k] : memref<4096x4096xf32>
                    %b = affine.load %B[%k, %j] : memref<4096x64xf32>
                    %c = affine.load %C[%i, %j] : memref<4096x64xf32>
                    %prod = arith.mulf %a, %b : f32
                    %sum = arith.addf %prod, %c: f32
                    affine.store %sum, %C[%i, %j] : memref<4096x64xf32>
                } { loop_name = "k", reduction = 1 : i32}
            } { loop_name = "j" }
        } { loop_name = "i", op_name = "s" }
        return
    }
}