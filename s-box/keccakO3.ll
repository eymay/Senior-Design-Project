; ModuleID = 'keccakSbox.c'
source_filename = "keccakSbox.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-linux-gnu"

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @keccakSbox(ptr nocapture noundef %s) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 4
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !7
  %1 = load i64, ptr %s, align 8, !tbaa !7
  %xor = xor i64 %1, %0
  %arrayidx4 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 3
  %2 = load i64, ptr %arrayidx4, align 8, !tbaa !7
  %xor7 = xor i64 %2, %0
  %arrayidx9 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 1
  %3 = load i64, ptr %arrayidx9, align 8, !tbaa !7
  %arrayidx11 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 2
  %4 = load i64, ptr %arrayidx11, align 8, !tbaa !7
  %xor12 = xor i64 %4, %3
  %not = xor i64 %3, -1
  %and = and i64 %4, %not
  %xor19 = xor i64 %and, %xor
  %not26 = xor i64 %xor12, -1
  %and29 = and i64 %2, %not26
  %xor30 = xor i64 %and29, %3
  %not37 = xor i64 %2, -1
  %and40 = and i64 %0, %not37
  %xor41 = xor i64 %xor12, %and40
  %not48 = xor i64 %xor7, -1
  %and51 = and i64 %xor, %not48
  %xor52 = xor i64 %and51, %2
  %not59 = xor i64 %xor, -1
  %and62 = and i64 %3, %not59
  %xor63 = xor i64 %and62, %xor7
  %xor70 = xor i64 %xor30, %xor19
  %xor75 = xor i64 %xor19, %xor63
  %xor80 = xor i64 %xor52, %xor41
  %not83 = xor i64 %xor41, -1
  %or.i = tail call i64 @llvm.fshl.i64(i64 %xor75, i64 %xor75, i64 45)
  %or.i189 = tail call i64 @llvm.fshl.i64(i64 %xor75, i64 %xor75, i64 36)
  %5 = xor i64 %or.i189, %or.i
  %xor94 = xor i64 %5, %xor75
  store i64 %xor94, ptr %s, align 8, !tbaa !7
  %or.i192 = tail call i64 @llvm.fshl.i64(i64 %xor70, i64 %xor70, i64 3)
  %or.i195 = tail call i64 @llvm.fshl.i64(i64 %xor70, i64 %xor70, i64 25)
  %6 = xor i64 %or.i195, %or.i192
  %xor106 = xor i64 %6, %xor70
  store i64 %xor106, ptr %arrayidx9, align 8, !tbaa !7
  %or.i198 = tail call i64 @llvm.fshl.i64(i64 %not83, i64 %not83, i64 63)
  %or.i201 = tail call i64 @llvm.fshl.i64(i64 %not83, i64 %not83, i64 58)
  %7 = xor i64 %or.i201, %or.i198
  %xor118 = xor i64 %7, %not83
  store i64 %xor118, ptr %arrayidx11, align 8, !tbaa !7
  %or.i204 = tail call i64 @llvm.fshl.i64(i64 %xor80, i64 %xor80, i64 54)
  %or.i207 = tail call i64 @llvm.fshl.i64(i64 %xor80, i64 %xor80, i64 47)
  %8 = xor i64 %or.i207, %or.i204
  %xor130 = xor i64 %8, %xor80
  store i64 %xor130, ptr %arrayidx4, align 8, !tbaa !7
  %or.i210 = tail call i64 @llvm.fshl.i64(i64 %xor63, i64 %xor63, i64 57)
  %or.i213 = tail call i64 @llvm.fshl.i64(i64 %xor63, i64 %xor63, i64 23)
  %9 = xor i64 %or.i213, %or.i210
  %xor142 = xor i64 %9, %xor63
  store i64 %xor142, ptr %arrayidx, align 8, !tbaa !7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+a,+c,+m,+relax,+zbb,-d,-e,-experimental-zca,-experimental-zcb,-experimental-zcd,-experimental-zcf,-experimental-zfa,-experimental-zihintntl,-experimental-ztso,-experimental-zvfh,-f,-h,-save-restore,-svinval,-svnapot,-svpbmt,-v,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-zawrs,-zba,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zdinx,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zicbom,-zicbop,-zicboz,-zicsr,-zifencei,-zihintpause,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!8 = !{!"long long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
