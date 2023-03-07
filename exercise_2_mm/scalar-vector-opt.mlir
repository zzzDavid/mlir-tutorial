module {
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main() {
    %0 = llvm.mlir.constant(4096 : index) : i64
    %1 = llvm.mlir.constant(4096 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(16777216 : index) : i64
    %4 = llvm.mlir.null : !llvm.ptr<f32>
    %5 = llvm.getelementptr %4[%3] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %6 = llvm.ptrtoint %5 : !llvm.ptr<f32> to i64
    %7 = llvm.call @malloc(%6) : (i64) -> !llvm.ptr<i8>
    %8 = llvm.bitcast %7 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %9 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %10 = llvm.insertvalue %8, %9[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %11 = llvm.insertvalue %8, %10[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %12 = llvm.mlir.constant(0 : index) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %14 = llvm.insertvalue %0, %13[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %15 = llvm.insertvalue %1, %14[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %16 = llvm.insertvalue %1, %15[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %17 = llvm.insertvalue %2, %16[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %18 = llvm.mlir.constant(4096 : index) : i64
    %19 = llvm.mlir.constant(64 : index) : i64
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.mlir.constant(262144 : index) : i64
    %22 = llvm.mlir.null : !llvm.ptr<f32>
    %23 = llvm.getelementptr %22[%21] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %24 = llvm.ptrtoint %23 : !llvm.ptr<f32> to i64
    %25 = llvm.call @malloc(%24) : (i64) -> !llvm.ptr<i8>
    %26 = llvm.bitcast %25 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %28 = llvm.insertvalue %26, %27[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %29 = llvm.insertvalue %26, %28[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.insertvalue %30, %29[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %32 = llvm.insertvalue %18, %31[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %33 = llvm.insertvalue %19, %32[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %34 = llvm.insertvalue %19, %33[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %35 = llvm.insertvalue %20, %34[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %36 = llvm.mlir.constant(4096 : index) : i64
    %37 = llvm.mlir.constant(64 : index) : i64
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.mlir.constant(262144 : index) : i64
    %40 = llvm.mlir.null : !llvm.ptr<f32>
    %41 = llvm.getelementptr %40[%39] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %42 = llvm.ptrtoint %41 : !llvm.ptr<f32> to i64
    %43 = llvm.call @malloc(%42) : (i64) -> !llvm.ptr<i8>
    %44 = llvm.bitcast %43 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %45 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %46 = llvm.insertvalue %44, %45[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %47 = llvm.insertvalue %44, %46[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %48 = llvm.mlir.constant(0 : index) : i64
    %49 = llvm.insertvalue %48, %47[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %50 = llvm.insertvalue %36, %49[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %51 = llvm.insertvalue %37, %50[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %52 = llvm.insertvalue %37, %51[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %53 = llvm.insertvalue %38, %52[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %54 = llvm.mlir.constant(0 : index) : i64
    %55 = llvm.mlir.constant(4096 : index) : i64
    %56 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%54 : i64)
  ^bb1(%57: i64):  // 2 preds: ^bb0, ^bb14
    %58 = llvm.icmp "slt" %57, %55 : i64
    llvm.cond_br %58, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %59 = llvm.mlir.constant(64 : index) : i64
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.mlir.null : !llvm.ptr<f32>
    %62 = llvm.getelementptr %61[%59] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %63 = llvm.ptrtoint %62 : !llvm.ptr<f32> to i64
    %64 = llvm.call @malloc(%63) : (i64) -> !llvm.ptr<i8>
    %65 = llvm.bitcast %64 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %66 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %67 = llvm.insertvalue %65, %66[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %68 = llvm.insertvalue %65, %67[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %69 = llvm.mlir.constant(0 : index) : i64
    %70 = llvm.insertvalue %69, %68[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %71 = llvm.insertvalue %59, %70[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %72 = llvm.insertvalue %60, %71[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %73 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %74 = llvm.mlir.constant(0 : index) : i64
    %75 = llvm.mlir.constant(64 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%74 : i64)
  ^bb3(%77: i64):  // 2 preds: ^bb2, ^bb4
    %78 = llvm.icmp "slt" %77, %75 : i64
    llvm.cond_br %78, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %79 = llvm.extractvalue %72[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %80 = llvm.getelementptr %79[%77] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %73, %80 : !llvm.ptr<f32>
    %81 = llvm.add %77, %76  : i64
    llvm.br ^bb3(%81 : i64)
  ^bb5:  // pred: ^bb3
    %82 = llvm.mlir.constant(0 : index) : i64
    %83 = llvm.mlir.constant(4096 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb6(%82 : i64)
  ^bb6(%85: i64):  // 2 preds: ^bb5, ^bb10
    %86 = llvm.icmp "slt" %85, %83 : i64
    llvm.cond_br %86, ^bb7, ^bb11
  ^bb7:  // pred: ^bb6
    %87 = llvm.mlir.constant(0 : index) : i64
    %88 = llvm.mlir.constant(64 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb8(%87 : i64)
  ^bb8(%90: i64):  // 2 preds: ^bb7, ^bb9
    %91 = llvm.icmp "slt" %90, %88 : i64
    llvm.cond_br %91, ^bb9, ^bb10
  ^bb9:  // pred: ^bb8
    %92 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %93 = llvm.mlir.constant(4096 : index) : i64
    %94 = llvm.mul %57, %93  : i64
    %95 = llvm.add %94, %85  : i64
    %96 = llvm.getelementptr %92[%95] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %97 = llvm.load %96 : !llvm.ptr<f32>
    %98 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %99 = llvm.mlir.constant(64 : index) : i64
    %100 = llvm.mul %85, %99  : i64
    %101 = llvm.add %100, %90  : i64
    %102 = llvm.getelementptr %98[%101] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %103 = llvm.load %102 : !llvm.ptr<f32>
    %104 = llvm.extractvalue %72[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %105 = llvm.getelementptr %104[%90] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %106 = llvm.load %105 : !llvm.ptr<f32>
    %107 = llvm.fmul %97, %103  : f32
    %108 = llvm.fadd %107, %106  : f32
    %109 = llvm.extractvalue %72[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %110 = llvm.getelementptr %109[%90] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %108, %110 : !llvm.ptr<f32>
    %111 = llvm.add %90, %89  : i64
    llvm.br ^bb8(%111 : i64)
  ^bb10:  // pred: ^bb8
    %112 = llvm.add %85, %84  : i64
    llvm.br ^bb6(%112 : i64)
  ^bb11:  // pred: ^bb6
    %113 = llvm.mlir.constant(0 : index) : i64
    %114 = llvm.mlir.constant(64 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%113 : i64)
  ^bb12(%116: i64):  // 2 preds: ^bb11, ^bb13
    %117 = llvm.icmp "slt" %116, %114 : i64
    llvm.cond_br %117, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    %118 = llvm.extractvalue %72[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %119 = llvm.getelementptr %118[%116] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %120 = llvm.load %119 : !llvm.ptr<f32>
    %121 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %122 = llvm.mlir.constant(64 : index) : i64
    %123 = llvm.mul %57, %122  : i64
    %124 = llvm.add %123, %116  : i64
    %125 = llvm.getelementptr %121[%124] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %120, %125 : !llvm.ptr<f32>
    %126 = llvm.add %116, %115  : i64
    llvm.br ^bb12(%126 : i64)
  ^bb14:  // pred: ^bb12
    %127 = llvm.add %57, %56  : i64
    llvm.br ^bb1(%127 : i64)
  ^bb15:  // pred: ^bb1
    llvm.return
  }
}

