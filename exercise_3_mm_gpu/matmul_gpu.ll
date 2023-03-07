; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

%0 = type { ptr, ptr, i64, i64, i64, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, i64 }

@main_kernel_main_kernel_kernel_name = internal constant [12 x i8] c"main_kernel\00"
@main_kernel_gpubin_cst = internal constant [3584 x i8] c"\7FELF\02\01\013\07\00\00\00\00\00\00\00\02\00\BE\00u\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0B\00\00\00\00\00\00V\05F\00@\00\00\00\00\00@\00\0C\00\01\00\00.shstrtab\00.strtab\00.symtab\00.symtab_shndx\00.nv.info\00.text.main_kernel\00.nv.info.main_kernel\00.nv.shared.main_kernel\00.nv.constant0.main_kernel\00.rel.nv.constant0.main_kernel\00.debug_frame\00.rel.debug_frame\00.rela.debug_frame\00.nv.callgraph\00.nv.prototype\00.nv.rel.action\00\00.shstrtab\00.strtab\00.symtab\00.symtab_shndx\00.nv.info\00main_kernel\00.text.main_kernel\00.nv.info.main_kernel\00.nv.shared.main_kernel\00.rel.nv.constant0.main_kernel\00.nv.constant0.main_kernel\00_param\00.debug_frame\00.rel.debug_frame\00.rela.debug_frame\00.nv.callgraph\00.nv.prototype\00.nv.rel.action\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00>\00\00\00\03\00\0B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\9A\00\00\00\03\00\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\BB\00\00\00\03\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\EB\00\00\00\03\00\07\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\07\01\00\00\03\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\002\00\00\00\12\10\0B\00\00\00\00\00\00\00\00\00\00\03\00\00\00\00\00\00\FF\FF\FF\FF(\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\03\00\04|\FF\FF\FF\FF\0F\0C\81\80\80(\00\08\FF\81\80(\08\81\80\80(\00\00\00\00\00\00\00\FF\FF\FF\FF0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\F0\02\00\00\00\00\00\00\04\04\00\00\00\04\98\00\00\00\0C\81\80\80(\00\04\FC\FF\FF?\00\00\00\04\11\08\00\06\00\00\00\00\00\00\00\04/\08\00\06\00\00\00\16\00\00\00\04\12\08\00\06\00\00\00\00\00\00\00\04\1C\04\00`\02\00\00\03\1B\FF\00\01+\00\00\04\17\0C\00\00\00\00\00\00\00\00\00\00\F0!\00\04\17\0C\00\00\00\00\00\01\00\08\00\00\F0!\00\04\17\0C\00\00\00\00\00\02\00\10\00\00\F0!\00\04\17\0C\00\00\00\00\00\03\00\18\00\00\F0!\00\04\17\0C\00\00\00\00\00\04\00 \00\00\F0!\00\04\17\0C\00\00\00\00\00\05\00(\00\00\F0!\00\04\17\0C\00\00\00\00\00\06\000\00\00\F0!\00\04\17\0C\00\00\00\00\00\07\008\00\00\F0!\00\04\17\0C\00\00\00\00\00\08\00@\00\00\F0!\00\04\17\0C\00\00\00\00\00\09\00H\00\00\F0!\00\04\17\0C\00\00\00\00\00\0A\00P\00\00\F0!\00\04\17\0C\00\00\00\00\00\0B\00X\00\00\F0!\00\04\17\0C\00\00\00\00\00\0C\00`\00\00\F0!\00\04\17\0C\00\00\00\00\00\0D\00h\00\00\F0!\00\04\17\0C\00\00\00\00\00\0E\00p\00\00\F0!\00\03\19x\00\04\0A\08\00\02\00\00\00`\01x\00\015\00\00\047\04\00u\00\00\00\00\00\00\00\FF\FF\FF\FF\00\00\00\00\FE\FF\FF\FF\00\00\00\00\FD\FF\FF\FFK\00\00\00\00\00\00\00\00\02\02\08\10\0A/\22\00\00\00\08\00\00\00\00\00\00\08\08\00\00\00\00\00\00\10\08\00\00\00\00\00\00\18\08\00\00\00\00\00\00 \08\00\00\00\00\00\00(\08\00\00\00\00\00\000\08\00\00\00\00\00\008\08\00\00\00\00\01\00\00\08\00\00\00\00\01\00\08\08\00\00\00\00\01\00\10\08\00\00\00\00\01\00\18\08\00\00\00\00\01\00 \08\00\00\00\00\01\00(\08\00\00\00\00\01\000\08\00\00\00\00\01\008\08\00\00\00\00\02\00\00\08\00\00\00\00\02\00\08\08\00\00\00\00\02\00\10\08\00\00\00\00\02\00\18\08\00\00\00\00\02\00 \08\00\00\00\00\02\00(\08\00\00\00\00\02\000\08\00\00\00\00\02\008\08\00\00\00\00\00\00\00\14,\00\00\00\09\00\00\0C\00\00\00\00H\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02z\01\00\00\0A\00\00\00\0F\00\00\00\C4\0F\00\19y\05\00\00\00\00\00\00\00\00\00\00\22\0E\00\B9z\04\00\00f\00\00\00\0A\00\00\00\E2\0F\00$r\03\FF\FF\00\00\00\FF\00\8E\07\00\E2\0F\00\91r\06\04\04\00\00\00? \80\0F\00\E4\0F\00\B9z\08\00\00F\00\00\00\0A\00\00\00\E4\0F\00\91r\07\04\05\00\00\00\05$\0F\08\00\C6\0F\00\B9z\04\00\00Z\00\00\00\0A\00\00\00\E4\0F\00\91r\04\06\04\00\00\00?\08\80\0F\00\C8\0F\00\91r\05\06\05\00\00\00\07\0C\0F\08\00\E2\0F\00\12x\02\05\03\00\00\00\FF\C0\8E\07\00\E4\1F\00\19x\05\FF\02\00\00\00\05\16\01\00\00\CA\0F\00%x\02\05\08\00\00\00\02\00\8E\07\00\CA\0F\00\11|\08\02\04\00\00\00\FF\10\80\0F\00\C8\0F\00\11|\09\02\05\00\00\00\03\14\0F\08\00\E2\0F\00\B9z\04\00\00j\00\00\00\0A\00\00\00\C8\0F\00\80y\04\08\08\00\00\00\00\19\10\0C\00\A8\0E\00\80y\05\08\08\00\01\00\00\19\10\0C\00\E8\0E\00\80y\06\08\08\10\00\00\00\19\10\0C\00(\0F\00\80y\07\08\08\10\01\00\00\19\10\0C\00\22\09\00\91r\04\06\04\00\00\00?\10\80\0F\00\C8\0F\00\91r\05\06\05\00\00\00\07\14\0F\08\00\E4\0F\00\11|\0A\02\04\00\00\00\FF\18\80\0F\00\C8\0F\00\11|\0B\02\05\00\00\00\03\1C\0F\08\00\CA\0F\00\80y\0C\0A\08\00\00\00\00\1B\10\0C\00(\0F\00\80y\0E\0A\08\00\02\00\00\1B\10\0C\00(\0F\00\80y\10\0A\08 \00\00\00\1B\10\0C\00(\0F\00\80y\12\0A\08 \02\00\00\1B\10\0C\00(\0F\00:r\02\04\00\00\00\00\00\00\00\00\00\E8O\00:r\03\05\00\00\00\00\00\00\00\00\00(\8E\00:r\08\06\00\00\00\00\00\00\00\00\00\E8\0F\01:r\09\07\00\00\00\00\00\00\00\00\00b\0E\00<r\0C\04\02\00\00\00\0C\18\00\00\00p\1F\04<r\10\04\08\00\00\00\10\18\00\00\00^/\00\85y\00\0A\0C\00\00\00\08\1B\10\0C\00\E8\0F\02\85y\00\0A\0E\00\02\00\08\1B\10\0C\00\E8\0F\00\85y\00\0A\10 \00\00\08\1B\10\0C\00\E8\0F\00\85y\00\0A\12 \02\00\08\1B\10\0C\00\E2\0F\00My\00\00\00\00\00\00\00\00\80\03\00\EA\0F\00Gy\00\00\F0\FF\FF\FF\FF\FF\83\03\00\C0\0F\00\18y\00\00\00\00\00\00\00\00\00\00\00\C0\0F\00\18y\00\00\00\00\00\00\00\00\00\00\00\C0\0F\00\18y\00\00\00\00\00\00\00\00\00\00\00\C0\0F\00\18y\00\00\00\00\00\00\00\00\00\00\00\C0\0F\00\18y\00\00\00\00\00\00\00\00\00\00\00\C0\0F\00\18y\00\00\00\00\00\00\00\00\00\00\00\C0\0F\00\18y\00\00\00\00\00\00\00\00\00\00\00\C0\0F\00\18y\00\00\00\00\00\00\00\00\00\00\00\C0\0F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00@\00\00\00\00\00\00\00\03\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0B\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00C\01\00\00\00\00\00\00\16\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\13\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00`\02\00\00\00\00\00\00\A8\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00\08\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\A8\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\03\00\00\00\00\00\00p\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00)\00\00\00\00\00\00p\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00x\03\00\00\00\00\00\00$\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00D\00\00\00\00\00\00p\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\9C\03\00\00\00\00\00\00\1C\01\00\00\00\00\00\00\03\00\00\00\0B\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\D8\00\00\00\01\00\00p\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\B8\04\00\00\00\00\00\00\18\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\F4\00\00\00\0B\00\00p\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\D0\04\00\00\00\00\00\00\E0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\B5\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\B0\05\00\00\00\00\00\00\10\00\00\00\00\00\00\00\03\00\00\00\04\00\00\00\08\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00p\00\00\00\01\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\C0\05\00\00\00\00\00\00\D8\01\00\00\00\00\00\00\00\00\00\00\0B\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\002\00\00\00\01\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\03\00\00\00\00\00\00\03\00\00\00\06\00\00\16\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"

declare ptr @malloc(i64)

declare void @free(ptr)

define void @main() !dbg !3 {
  %1 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (half, ptr null, i64 256) to i64)), !dbg !7
  %2 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %1, 0, !dbg !9
  %3 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %2, ptr %1, 1, !dbg !10
  %4 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %3, i64 0, 2, !dbg !11
  %5 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %4, i64 16, 3, 0, !dbg !12
  %6 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, i64 16, 3, 1, !dbg !13
  %7 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %6, i64 16, 4, 0, !dbg !14
  %8 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %7, i64 1, 4, 1, !dbg !15
  %9 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i64 256) to i64)), !dbg !16
  %10 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %9, 0, !dbg !17
  %11 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %10, ptr %9, 1, !dbg !18
  %12 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %11, i64 0, 2, !dbg !19
  %13 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %12, i64 16, 3, 0, !dbg !20
  %14 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, i64 16, 3, 1, !dbg !21
  %15 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %14, i64 16, 4, 0, !dbg !22
  %16 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %15, i64 1, 4, 1, !dbg !23
  %17 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i64 256) to i64)), !dbg !24
  %18 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %17, 0, !dbg !25
  %19 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %18, ptr %17, 1, !dbg !26
  %20 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %19, i64 0, 2, !dbg !27
  %21 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %20, i64 16, 3, 0, !dbg !28
  %22 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, i64 16, 3, 1, !dbg !29
  %23 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, i64 16, 4, 0, !dbg !30
  %24 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %23, i64 1, 4, 1, !dbg !31
  br label %25, !dbg !32

25:                                               ; preds = %38, %0
  %26 = phi i64 [ %39, %38 ], [ 0, %0 ]
  %27 = icmp slt i64 %26, 16, !dbg !33
  br i1 %27, label %28, label %40, !dbg !34

28:                                               ; preds = %25
  br label %29, !dbg !35

29:                                               ; preds = %32, %28
  %30 = phi i64 [ %37, %32 ], [ 0, %28 ]
  %31 = icmp slt i64 %30, 16, !dbg !36
  br i1 %31, label %32, label %38, !dbg !37

32:                                               ; preds = %29
  %33 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %8, 1, !dbg !38
  %34 = mul i64 %26, 16, !dbg !39
  %35 = add i64 %34, %30, !dbg !40
  %36 = getelementptr half, ptr %33, i64 %35, !dbg !41
  store half 0xH3C00, ptr %36, align 2, !dbg !42
  %37 = add i64 %30, 1, !dbg !43
  br label %29, !dbg !44

38:                                               ; preds = %29
  %39 = add i64 %26, 1, !dbg !45
  br label %25, !dbg !46

40:                                               ; preds = %25
  br label %41, !dbg !47

41:                                               ; preds = %54, %40
  %42 = phi i64 [ %55, %54 ], [ 0, %40 ]
  %43 = icmp slt i64 %42, 16, !dbg !48
  br i1 %43, label %44, label %56, !dbg !49

44:                                               ; preds = %41
  br label %45, !dbg !50

45:                                               ; preds = %48, %44
  %46 = phi i64 [ %53, %48 ], [ 0, %44 ]
  %47 = icmp slt i64 %46, 16, !dbg !51
  br i1 %47, label %48, label %54, !dbg !52

48:                                               ; preds = %45
  %49 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %16, 1, !dbg !53
  %50 = mul i64 %42, 16, !dbg !54
  %51 = add i64 %50, %46, !dbg !55
  %52 = getelementptr float, ptr %49, i64 %51, !dbg !56
  store float 0.000000e+00, ptr %52, align 4, !dbg !57
  %53 = add i64 %46, 1, !dbg !58
  br label %45, !dbg !59

54:                                               ; preds = %45
  %55 = add i64 %42, 1, !dbg !60
  br label %41, !dbg !61

56:                                               ; preds = %41
  %57 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8, !dbg !62
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %8, ptr %57, align 8, !dbg !63
  %58 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %57, 1, !dbg !64
  %59 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8, !dbg !65
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %16, ptr %59, align 8, !dbg !66
  %60 = insertvalue { i64, ptr } { i64 2, ptr undef }, ptr %59, 1, !dbg !67
  %61 = extractvalue { i64, ptr } %58, 0, !dbg !68
  %62 = extractvalue { i64, ptr } %58, 1, !dbg !69
  call void @mgpuMemHostRegisterMemRef(i64 %61, ptr %62, i64 ptrtoint (ptr getelementptr (half, ptr null, i64 1) to i64)), !dbg !70
  %63 = extractvalue { i64, ptr } %60, 0, !dbg !71
  %64 = extractvalue { i64, ptr } %60, 1, !dbg !72
  call void @mgpuMemHostRegisterMemRef(i64 %63, ptr %64, i64 ptrtoint (ptr getelementptr (float, ptr null, i64 1) to i64)), !dbg !73
  %65 = call ptr @mgpuModuleLoad(ptr @main_kernel_gpubin_cst), !dbg !74
  %66 = call ptr @mgpuModuleGetFunction(ptr %65, ptr @main_kernel_main_kernel_kernel_name), !dbg !75
  %67 = call ptr @mgpuStreamCreate(), !dbg !76
  %68 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %8, 0, !dbg !77
  %69 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %8, 1, !dbg !78
  %70 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %8, 2, !dbg !79
  %71 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %8, 3, 0, !dbg !80
  %72 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %8, 3, 1, !dbg !81
  %73 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %8, 4, 0, !dbg !82
  %74 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %8, 4, 1, !dbg !83
  %75 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %16, 0, !dbg !84
  %76 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %16, 1, !dbg !85
  %77 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %16, 2, !dbg !86
  %78 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %16, 3, 0, !dbg !87
  %79 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %16, 3, 1, !dbg !88
  %80 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %16, 4, 0, !dbg !89
  %81 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %16, 4, 1, !dbg !90
  %82 = alloca %0, align 8, !dbg !91
  %83 = alloca ptr, i32 15, align 8, !dbg !92
  %84 = getelementptr %0, ptr %82, i32 0, i32 0, !dbg !93
  store ptr %68, ptr %84, align 8, !dbg !94
  %85 = getelementptr ptr, ptr %83, i32 0, !dbg !95
  store ptr %84, ptr %85, align 8, !dbg !96
  %86 = getelementptr %0, ptr %82, i32 0, i32 1, !dbg !97
  store ptr %69, ptr %86, align 8, !dbg !98
  %87 = getelementptr ptr, ptr %83, i32 1, !dbg !99
  store ptr %86, ptr %87, align 8, !dbg !100
  %88 = getelementptr %0, ptr %82, i32 0, i32 2, !dbg !101
  store i64 %70, ptr %88, align 4, !dbg !102
  %89 = getelementptr ptr, ptr %83, i32 2, !dbg !103
  store ptr %88, ptr %89, align 8, !dbg !104
  %90 = getelementptr %0, ptr %82, i32 0, i32 3, !dbg !105
  store i64 %71, ptr %90, align 4, !dbg !106
  %91 = getelementptr ptr, ptr %83, i32 3, !dbg !107
  store ptr %90, ptr %91, align 8, !dbg !108
  %92 = getelementptr %0, ptr %82, i32 0, i32 4, !dbg !109
  store i64 %72, ptr %92, align 4, !dbg !110
  %93 = getelementptr ptr, ptr %83, i32 4, !dbg !111
  store ptr %92, ptr %93, align 8, !dbg !112
  %94 = getelementptr %0, ptr %82, i32 0, i32 5, !dbg !113
  store i64 %73, ptr %94, align 4, !dbg !114
  %95 = getelementptr ptr, ptr %83, i32 5, !dbg !115
  store ptr %94, ptr %95, align 8, !dbg !116
  %96 = getelementptr %0, ptr %82, i32 0, i32 6, !dbg !117
  store i64 %74, ptr %96, align 4, !dbg !118
  %97 = getelementptr ptr, ptr %83, i32 6, !dbg !119
  store ptr %96, ptr %97, align 8, !dbg !120
  %98 = getelementptr %0, ptr %82, i32 0, i32 7, !dbg !121
  store i64 0, ptr %98, align 4, !dbg !122
  %99 = getelementptr ptr, ptr %83, i32 7, !dbg !123
  store ptr %98, ptr %99, align 8, !dbg !124
  %100 = getelementptr %0, ptr %82, i32 0, i32 8, !dbg !125
  store ptr %75, ptr %100, align 8, !dbg !126
  %101 = getelementptr ptr, ptr %83, i32 8, !dbg !127
  store ptr %100, ptr %101, align 8, !dbg !128
  %102 = getelementptr %0, ptr %82, i32 0, i32 9, !dbg !129
  store ptr %76, ptr %102, align 8, !dbg !130
  %103 = getelementptr ptr, ptr %83, i32 9, !dbg !131
  store ptr %102, ptr %103, align 8, !dbg !132
  %104 = getelementptr %0, ptr %82, i32 0, i32 10, !dbg !133
  store i64 %77, ptr %104, align 4, !dbg !134
  %105 = getelementptr ptr, ptr %83, i32 10, !dbg !135
  store ptr %104, ptr %105, align 8, !dbg !136
  %106 = getelementptr %0, ptr %82, i32 0, i32 11, !dbg !137
  store i64 %78, ptr %106, align 4, !dbg !138
  %107 = getelementptr ptr, ptr %83, i32 11, !dbg !139
  store ptr %106, ptr %107, align 8, !dbg !140
  %108 = getelementptr %0, ptr %82, i32 0, i32 12, !dbg !141
  store i64 %79, ptr %108, align 4, !dbg !142
  %109 = getelementptr ptr, ptr %83, i32 12, !dbg !143
  store ptr %108, ptr %109, align 8, !dbg !144
  %110 = getelementptr %0, ptr %82, i32 0, i32 13, !dbg !145
  store i64 %80, ptr %110, align 4, !dbg !146
  %111 = getelementptr ptr, ptr %83, i32 13, !dbg !147
  store ptr %110, ptr %111, align 8, !dbg !148
  %112 = getelementptr %0, ptr %82, i32 0, i32 14, !dbg !149
  store i64 %81, ptr %112, align 4, !dbg !150
  %113 = getelementptr ptr, ptr %83, i32 14, !dbg !151
  store ptr %112, ptr %113, align 8, !dbg !152
  call void @mgpuLaunchKernel(ptr %66, i64 1, i64 1, i64 1, i64 32, i64 1, i64 1, i32 0, ptr %67, ptr %83, ptr null), !dbg !153
  call void @mgpuStreamSynchronize(ptr %67), !dbg !154
  call void @mgpuStreamDestroy(ptr %67), !dbg !155
  call void @mgpuModuleUnload(ptr %65), !dbg !156
  %114 = extractvalue { i64, ptr } %60, 0, !dbg !157
  %115 = extractvalue { i64, ptr } %60, 1, !dbg !158
  call void @printMemrefF32(i64 %114, ptr %115), !dbg !159
  ret void, !dbg !160
}

declare void @printMemrefF32(i64, ptr)

declare void @mgpuMemHostRegisterMemRef(i64, ptr, i64)

declare ptr @mgpuModuleLoad(ptr)

declare ptr @mgpuModuleGetFunction(ptr, ptr)

declare ptr @mgpuStreamCreate()

declare void @mgpuLaunchKernel(ptr, i64, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr)

declare void @mgpuStreamSynchronize(ptr)

declare void @mgpuStreamDestroy(ptr)

declare void @mgpuModuleUnload(ptr)

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "matmul_gpu_llvm.mlir", directory: "/work/shared/users/phd/jl3952/tutorials/mlir-tutorial/exercise_2_spmm_gpu")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 13, column: 10, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 16, column: 11, scope: !8)
!10 = !DILocation(line: 17, column: 11, scope: !8)
!11 = !DILocation(line: 19, column: 11, scope: !8)
!12 = !DILocation(line: 20, column: 11, scope: !8)
!13 = !DILocation(line: 21, column: 11, scope: !8)
!14 = !DILocation(line: 22, column: 11, scope: !8)
!15 = !DILocation(line: 23, column: 11, scope: !8)
!16 = !DILocation(line: 31, column: 11, scope: !8)
!17 = !DILocation(line: 34, column: 11, scope: !8)
!18 = !DILocation(line: 35, column: 11, scope: !8)
!19 = !DILocation(line: 37, column: 11, scope: !8)
!20 = !DILocation(line: 38, column: 11, scope: !8)
!21 = !DILocation(line: 39, column: 11, scope: !8)
!22 = !DILocation(line: 40, column: 11, scope: !8)
!23 = !DILocation(line: 41, column: 11, scope: !8)
!24 = !DILocation(line: 49, column: 11, scope: !8)
!25 = !DILocation(line: 52, column: 11, scope: !8)
!26 = !DILocation(line: 53, column: 11, scope: !8)
!27 = !DILocation(line: 55, column: 11, scope: !8)
!28 = !DILocation(line: 56, column: 11, scope: !8)
!29 = !DILocation(line: 57, column: 11, scope: !8)
!30 = !DILocation(line: 58, column: 11, scope: !8)
!31 = !DILocation(line: 59, column: 11, scope: !8)
!32 = !DILocation(line: 66, column: 5, scope: !8)
!33 = !DILocation(line: 68, column: 11, scope: !8)
!34 = !DILocation(line: 69, column: 5, scope: !8)
!35 = !DILocation(line: 71, column: 5, scope: !8)
!36 = !DILocation(line: 73, column: 11, scope: !8)
!37 = !DILocation(line: 74, column: 5, scope: !8)
!38 = !DILocation(line: 76, column: 11, scope: !8)
!39 = !DILocation(line: 78, column: 11, scope: !8)
!40 = !DILocation(line: 79, column: 11, scope: !8)
!41 = !DILocation(line: 80, column: 11, scope: !8)
!42 = !DILocation(line: 81, column: 5, scope: !8)
!43 = !DILocation(line: 82, column: 11, scope: !8)
!44 = !DILocation(line: 83, column: 5, scope: !8)
!45 = !DILocation(line: 85, column: 11, scope: !8)
!46 = !DILocation(line: 86, column: 5, scope: !8)
!47 = !DILocation(line: 88, column: 5, scope: !8)
!48 = !DILocation(line: 90, column: 11, scope: !8)
!49 = !DILocation(line: 91, column: 5, scope: !8)
!50 = !DILocation(line: 93, column: 5, scope: !8)
!51 = !DILocation(line: 95, column: 11, scope: !8)
!52 = !DILocation(line: 96, column: 5, scope: !8)
!53 = !DILocation(line: 98, column: 11, scope: !8)
!54 = !DILocation(line: 100, column: 11, scope: !8)
!55 = !DILocation(line: 101, column: 11, scope: !8)
!56 = !DILocation(line: 102, column: 11, scope: !8)
!57 = !DILocation(line: 103, column: 5, scope: !8)
!58 = !DILocation(line: 104, column: 11, scope: !8)
!59 = !DILocation(line: 105, column: 5, scope: !8)
!60 = !DILocation(line: 107, column: 11, scope: !8)
!61 = !DILocation(line: 108, column: 5, scope: !8)
!62 = !DILocation(line: 111, column: 11, scope: !8)
!63 = !DILocation(line: 112, column: 5, scope: !8)
!64 = !DILocation(line: 117, column: 11, scope: !8)
!65 = !DILocation(line: 119, column: 11, scope: !8)
!66 = !DILocation(line: 120, column: 5, scope: !8)
!67 = !DILocation(line: 125, column: 11, scope: !8)
!68 = !DILocation(line: 130, column: 12, scope: !8)
!69 = !DILocation(line: 131, column: 12, scope: !8)
!70 = !DILocation(line: 132, column: 5, scope: !8)
!71 = !DILocation(line: 137, column: 12, scope: !8)
!72 = !DILocation(line: 138, column: 12, scope: !8)
!73 = !DILocation(line: 139, column: 5, scope: !8)
!74 = !DILocation(line: 143, column: 12, scope: !8)
!75 = !DILocation(line: 147, column: 12, scope: !8)
!76 = !DILocation(line: 149, column: 12, scope: !8)
!77 = !DILocation(line: 150, column: 12, scope: !8)
!78 = !DILocation(line: 151, column: 12, scope: !8)
!79 = !DILocation(line: 152, column: 12, scope: !8)
!80 = !DILocation(line: 153, column: 12, scope: !8)
!81 = !DILocation(line: 154, column: 12, scope: !8)
!82 = !DILocation(line: 155, column: 12, scope: !8)
!83 = !DILocation(line: 156, column: 12, scope: !8)
!84 = !DILocation(line: 157, column: 12, scope: !8)
!85 = !DILocation(line: 158, column: 12, scope: !8)
!86 = !DILocation(line: 159, column: 12, scope: !8)
!87 = !DILocation(line: 160, column: 12, scope: !8)
!88 = !DILocation(line: 161, column: 12, scope: !8)
!89 = !DILocation(line: 162, column: 12, scope: !8)
!90 = !DILocation(line: 163, column: 12, scope: !8)
!91 = !DILocation(line: 165, column: 12, scope: !8)
!92 = !DILocation(line: 167, column: 12, scope: !8)
!93 = !DILocation(line: 170, column: 12, scope: !8)
!94 = !DILocation(line: 171, column: 5, scope: !8)
!95 = !DILocation(line: 172, column: 12, scope: !8)
!96 = !DILocation(line: 174, column: 5, scope: !8)
!97 = !DILocation(line: 176, column: 12, scope: !8)
!98 = !DILocation(line: 177, column: 5, scope: !8)
!99 = !DILocation(line: 178, column: 12, scope: !8)
!100 = !DILocation(line: 180, column: 5, scope: !8)
!101 = !DILocation(line: 182, column: 12, scope: !8)
!102 = !DILocation(line: 183, column: 5, scope: !8)
!103 = !DILocation(line: 184, column: 12, scope: !8)
!104 = !DILocation(line: 186, column: 5, scope: !8)
!105 = !DILocation(line: 188, column: 12, scope: !8)
!106 = !DILocation(line: 189, column: 5, scope: !8)
!107 = !DILocation(line: 190, column: 12, scope: !8)
!108 = !DILocation(line: 192, column: 5, scope: !8)
!109 = !DILocation(line: 194, column: 12, scope: !8)
!110 = !DILocation(line: 195, column: 5, scope: !8)
!111 = !DILocation(line: 196, column: 12, scope: !8)
!112 = !DILocation(line: 198, column: 5, scope: !8)
!113 = !DILocation(line: 200, column: 12, scope: !8)
!114 = !DILocation(line: 201, column: 5, scope: !8)
!115 = !DILocation(line: 202, column: 12, scope: !8)
!116 = !DILocation(line: 204, column: 5, scope: !8)
!117 = !DILocation(line: 206, column: 12, scope: !8)
!118 = !DILocation(line: 207, column: 5, scope: !8)
!119 = !DILocation(line: 208, column: 12, scope: !8)
!120 = !DILocation(line: 210, column: 5, scope: !8)
!121 = !DILocation(line: 212, column: 12, scope: !8)
!122 = !DILocation(line: 213, column: 5, scope: !8)
!123 = !DILocation(line: 214, column: 12, scope: !8)
!124 = !DILocation(line: 216, column: 5, scope: !8)
!125 = !DILocation(line: 218, column: 12, scope: !8)
!126 = !DILocation(line: 219, column: 5, scope: !8)
!127 = !DILocation(line: 220, column: 12, scope: !8)
!128 = !DILocation(line: 222, column: 5, scope: !8)
!129 = !DILocation(line: 224, column: 12, scope: !8)
!130 = !DILocation(line: 225, column: 5, scope: !8)
!131 = !DILocation(line: 226, column: 12, scope: !8)
!132 = !DILocation(line: 228, column: 5, scope: !8)
!133 = !DILocation(line: 230, column: 12, scope: !8)
!134 = !DILocation(line: 231, column: 5, scope: !8)
!135 = !DILocation(line: 232, column: 12, scope: !8)
!136 = !DILocation(line: 234, column: 5, scope: !8)
!137 = !DILocation(line: 236, column: 12, scope: !8)
!138 = !DILocation(line: 237, column: 5, scope: !8)
!139 = !DILocation(line: 238, column: 12, scope: !8)
!140 = !DILocation(line: 240, column: 5, scope: !8)
!141 = !DILocation(line: 242, column: 12, scope: !8)
!142 = !DILocation(line: 243, column: 5, scope: !8)
!143 = !DILocation(line: 244, column: 12, scope: !8)
!144 = !DILocation(line: 246, column: 5, scope: !8)
!145 = !DILocation(line: 248, column: 12, scope: !8)
!146 = !DILocation(line: 249, column: 5, scope: !8)
!147 = !DILocation(line: 250, column: 12, scope: !8)
!148 = !DILocation(line: 252, column: 5, scope: !8)
!149 = !DILocation(line: 254, column: 12, scope: !8)
!150 = !DILocation(line: 255, column: 5, scope: !8)
!151 = !DILocation(line: 256, column: 12, scope: !8)
!152 = !DILocation(line: 258, column: 5, scope: !8)
!153 = !DILocation(line: 260, column: 5, scope: !8)
!154 = !DILocation(line: 261, column: 5, scope: !8)
!155 = !DILocation(line: 262, column: 5, scope: !8)
!156 = !DILocation(line: 263, column: 5, scope: !8)
!157 = !DILocation(line: 264, column: 12, scope: !8)
!158 = !DILocation(line: 265, column: 12, scope: !8)
!159 = !DILocation(line: 266, column: 5, scope: !8)
!160 = !DILocation(line: 267, column: 5, scope: !8)
