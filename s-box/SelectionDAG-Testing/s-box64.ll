; ModuleID = '../s-box64.c'
source_filename = "../s-box64.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @sbox(ptr nocapture noundef %state) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [5 x i64], ptr %state, i32 0, i32 4
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !7
  %1 = load i64, ptr %state, align 8, !tbaa !7
  %xor = xor i64 %1, %0
  %arrayidx4 = getelementptr inbounds [5 x i64], ptr %state, i32 0, i32 3
  %2 = load i64, ptr %arrayidx4, align 8, !tbaa !7
  %xor7 = xor i64 %2, %0
  %arrayidx9 = getelementptr inbounds [5 x i64], ptr %state, i32 0, i32 1
  %3 = load i64, ptr %arrayidx9, align 8, !tbaa !7
  %arrayidx11 = getelementptr inbounds [5 x i64], ptr %state, i32 0, i32 2
  %4 = load i64, ptr %arrayidx11, align 8, !tbaa !7
  %xor12 = xor i64 %4, %3
  %not = xor i64 %xor, -1
  %not23 = xor i64 %3, -1
  %not24 = xor i64 %xor12, -1
  %not25 = xor i64 %2, -1
  %not26 = xor i64 %xor7, -1
  %and = and i64 %3, %not
  %and31 = and i64 %4, %not23
  %and34 = and i64 %2, %not24
  %and37 = and i64 %0, %not25
  %and40 = and i64 %xor, %not26
  %xor43 = xor i64 %and31, %xor
  %xor46 = xor i64 %and34, %3
  %xor49 = xor i64 %xor12, %and37
  %xor52 = xor i64 %and40, %2
  %xor55 = xor i64 %and, %xor7
  store i64 %xor55, ptr %arrayidx, align 8, !tbaa !7
  %xor60 = xor i64 %xor46, %xor43
  store i64 %xor60, ptr %arrayidx9, align 8, !tbaa !7
  %xor65 = xor i64 %xor43, %xor55
  store i64 %xor65, ptr %state, align 8, !tbaa !7
  %xor70 = xor i64 %xor49, %xor52
  store i64 %xor70, ptr %arrayidx4, align 8, !tbaa !7
  %not73 = xor i64 %xor49, -1
  store i64 %not73, ptr %arrayidx11, align 8, !tbaa !7
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+a,+c,+m,+relax,+zbb,-d,-e,-experimental-zca,-experimental-zcb,-experimental-zcd,-experimental-zcf,-experimental-zfa,-experimental-zihintntl,-experimental-ztso,-experimental-zvfh,-f,-h,-save-restore,-svinval,-svnapot,-svpbmt,-v,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-zawrs,-zba,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zdinx,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zicbom,-zicbop,-zicboz,-zicsr,-zifencei,-zihintpause,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32"}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 8, !"SmallDataLimit", i32 8}
!6 = !{!"clang version 17.0.0 (git@github.com:Eymay/llvm-project.git 603d9e3632b3f31d0c6e0825b2e75f057347a015)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
