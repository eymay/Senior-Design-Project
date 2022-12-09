; ModuleID = 'madd.c'
source_filename = "madd.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-linux-gnu"

@a = dso_local global i32 0, align 4, !dbg !0
@b = dso_local global i32 0, align 4, !dbg !5
@c = dso_local global i32 0, align 4, !dbg !8

; Function Attrs: noinline nounwind optnone
define dso_local void @maddFunc() #0 !dbg !19 {
  store i32 3, i32* @a, align 4, !dbg !23
  store i32 103, i32* @b, align 4, !dbg !24
  store i32 127, i32* @c, align 4, !dbg !25
  %1 = load i32, i32* @a, align 4, !dbg !26
  %2 = load i32, i32* @b, align 4, !dbg !27
  %3 = mul nsw i32 %1, %2, !dbg !28
  %4 = load i32, i32* @c, align 4, !dbg !29
  %5 = add nsw i32 %3, %4, !dbg !30
  store i32 %5, i32* @a, align 4, !dbg !31
  ret void, !dbg !32
}

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+d,+f,+m" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 1, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "madd.c", directory: "/home/eymen/Documents/Compiler", checksumkind: CSK_MD5, checksum: "0596fceeadb006c94707d69003756efa")
!4 = !{!0, !5, !8}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 1, type: !7, isLocal: false, isDefinition: true)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 1, type: !7, isLocal: false, isDefinition: true)
!10 = !{i32 7, !"Dwarf Version", i32 5}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 1, !"target-abi", !"ilp32d"}
!14 = !{i32 7, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{i32 1, !"SmallDataLimit", i32 8}
!18 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!19 = distinct !DISubprogram(name: "maddFunc", scope: !3, file: !3, line: 3, type: !20, scopeLine: 3, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !22)
!20 = !DISubroutineType(types: !21)
!21 = !{null}
!22 = !{}
!23 = !DILocation(line: 4, column: 4, scope: !19)
!24 = !DILocation(line: 5, column: 4, scope: !19)
!25 = !DILocation(line: 7, column: 4, scope: !19)
!26 = !DILocation(line: 8, column: 6, scope: !19)
!27 = !DILocation(line: 8, column: 10, scope: !19)
!28 = !DILocation(line: 8, column: 8, scope: !19)
!29 = !DILocation(line: 8, column: 13, scope: !19)
!30 = !DILocation(line: 8, column: 12, scope: !19)
!31 = !DILocation(line: 8, column: 4, scope: !19)
!32 = !DILocation(line: 9, column: 1, scope: !19)
