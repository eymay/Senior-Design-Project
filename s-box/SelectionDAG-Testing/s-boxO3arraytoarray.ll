; ModuleID = 's-box.c'
source_filename = "s-box.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @sbox(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds [5 x i32], ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !7
  %4 = load i32, ptr %0, align 4, !tbaa !7
  %5 = xor i32 %4, %3
  %6 = getelementptr inbounds [5 x i32], ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !7
  %8 = xor i32 %7, %3
  %9 = getelementptr inbounds [5 x i32], ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !7
  %11 = getelementptr inbounds [5 x i32], ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !7
  %13 = xor i32 %12, %10
  %14 = xor i32 %5, -1
  %15 = xor i32 %10, -1
  %16 = xor i32 %13, -1
  %17 = xor i32 %7, -1
  %18 = xor i32 %8, -1
  %19 = and i32 %10, %14
  %20 = and i32 %12, %15
  %21 = and i32 %7, %16
  %22 = and i32 %3, %17
  %23 = and i32 %5, %18
  %24 = xor i32 %20, %5
  %25 = xor i32 %21, %10
  %26 = xor i32 %13, %22
  %27 = xor i32 %23, %7
  %28 = xor i32 %19, %8
  store i32 %28, ptr %2, align 4, !tbaa !7
  %29 = xor i32 %25, %24
  store i32 %29, ptr %9, align 4, !tbaa !7
  %30 = xor i32 %24, %28
  store i32 %30, ptr %0, align 4, !tbaa !7
  %31 = xor i32 %26, %27
  store i32 %31, ptr %6, align 4, !tbaa !7
  %32 = xor i32 %26, -1
  store i32 %32, ptr %11, align 4, !tbaa !7
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+a,+c,+d,+f,+m,+relax,-e,-experimental-zca,-experimental-zcb,-experimental-zcd,-experimental-zcf,-experimental-zfa,-experimental-zihintntl,-experimental-ztso,-experimental-zvfh,-h,-save-restore,-svinval,-svnapot,-svpbmt,-v,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zdinx,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zicbom,-zicbop,-zicboz,-zicsr,-zifencei,-zihintpause,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32d"}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 8, !"SmallDataLimit", i32 8}
!6 = !{!"clang version 17.0.0 (https://github.com/llvm/llvm-project.git e3dd9f7e66fec22986605da2dcd8120a7864455d)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
