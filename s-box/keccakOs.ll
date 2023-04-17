; ModuleID = 'keccakSbox.c'
source_filename = "keccakSbox.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @keccakSbox(ptr nocapture noundef %s) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [5 x i32], ptr %s, i32 0, i32 4
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !7
  %1 = load i32, ptr %s, align 4, !tbaa !7
  %xor = xor i32 %1, %0
  store i32 %xor, ptr %s, align 4, !tbaa !7
  %arrayidx4 = getelementptr inbounds [5 x i32], ptr %s, i32 0, i32 3
  %2 = load i32, ptr %arrayidx4, align 4, !tbaa !7
  %xor7 = xor i32 %2, %0
  store i32 %xor7, ptr %arrayidx, align 4, !tbaa !7
  %arrayidx9 = getelementptr inbounds [5 x i32], ptr %s, i32 0, i32 1
  %3 = load i32, ptr %arrayidx9, align 4, !tbaa !7
  %arrayidx11 = getelementptr inbounds [5 x i32], ptr %s, i32 0, i32 2
  %4 = load i32, ptr %arrayidx11, align 4, !tbaa !7
  %xor12 = xor i32 %4, %3
  store i32 %xor12, ptr %arrayidx11, align 4, !tbaa !7
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+a,+c,+m,+relax,+zbb,-d,-e,-experimental-zca,-experimental-zcb,-experimental-zcd,-experimental-zcf,-experimental-zfa,-experimental-zihintntl,-experimental-ztso,-experimental-zvfh,-f,-h,-save-restore,-svinval,-svnapot,-svpbmt,-v,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-zawrs,-zba,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zdinx,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zicbom,-zicbop,-zicboz,-zicsr,-zifencei,-zihintpause,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32"}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 8, !"SmallDataLimit", i32 8}
!6 = !{!"clang version 17.0.0 (git@github.com:Eymay/llvm-project.git 988fc65a2c68e73f871ac55958d286a4e12dabdf)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
