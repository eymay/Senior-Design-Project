; ModuleID = 'shlxor.c'
source_filename = "shlxor.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 !dbg !11 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 10, i32* %2, align 4, !dbg !17
  call void @llvm.dbg.declare(metadata i32* %3, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 20, i32* %3, align 4, !dbg !19
  call void @llvm.dbg.declare(metadata i32* %4, metadata !20, metadata !DIExpression()), !dbg !21
  %5 = load i32, i32* %2, align 4, !dbg !22
  %6 = shl i32 %5, 1, !dbg !23
  %7 = load i32, i32* %3, align 4, !dbg !24
  %8 = xor i32 %6, %7, !dbg !25
  store i32 %8, i32* %4, align 4, !dbg !26
  ret i32 0, !dbg !27
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+d,+f,+m" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "shlxor.c", directory: "/home/eymen/Documents/Compiler", checksumkind: CSK_MD5, checksum: "09cf1fc3d4acb3eea2c799e6f32a539a")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 1, !"target-abi", !"ilp32d"}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{i32 1, !"SmallDataLimit", i32 8}
!10 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!11 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !12, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!12 = !DISubroutineType(types: !13)
!13 = !{!14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{}
!16 = !DILocalVariable(name: "a", scope: !11, file: !1, line: 3, type: !14)
!17 = !DILocation(line: 3, column: 5, scope: !11)
!18 = !DILocalVariable(name: "b", scope: !11, file: !1, line: 4, type: !14)
!19 = !DILocation(line: 4, column: 5, scope: !11)
!20 = !DILocalVariable(name: "c", scope: !11, file: !1, line: 5, type: !14)
!21 = !DILocation(line: 5, column: 5, scope: !11)
!22 = !DILocation(line: 7, column: 6, scope: !11)
!23 = !DILocation(line: 7, column: 8, scope: !11)
!24 = !DILocation(line: 7, column: 16, scope: !11)
!25 = !DILocation(line: 7, column: 14, scope: !11)
!26 = !DILocation(line: 7, column: 3, scope: !11)
!27 = !DILocation(line: 9, column: 1, scope: !11)
