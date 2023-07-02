; Function Attrs: nounwind uwtable
define dso_local void @sbox(ptr noundef %state) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [5 x i32], ptr %state, i32 0, i32 4
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !7
  %1 = load i32, ptr %state, align 4, !tbaa !7
  %xor = xor i32 %1, %0
  store i32 %xor, ptr %state, align 4, !tbaa !7
  %arrayidx4 = getelementptr inbounds [5 x i32], ptr %state, i32 0, i32 3
  %2 = load i32, ptr %arrayidx4, align 4, !tbaa !7
  %xor7 = xor i32 %0, %2
  store i32 %xor7, ptr %arrayidx, align 4, !tbaa !7
  %arrayidx9 = getelementptr inbounds [5 x i32], ptr %state, i32 0, i32 1
  %3 = load i32, ptr %arrayidx9, align 4, !tbaa !7
  %arrayidx11 = getelementptr inbounds [5 x i32], ptr %state, i32 0, i32 2
  %4 = load i32, ptr %arrayidx11, align 4, !tbaa !7
  %xor12 = xor i32 %4, %3
  store i32 %xor12, ptr %arrayidx11, align 4, !tbaa !7
  %not = xor i32 %xor, -1
  %not23 = xor i32 %3, -1
  %not24 = xor i32 %xor12, -1
  %not25 = xor i32 %2, -1
  %not26 = xor i32 %xor7, -1
  %and = and i32 %3, %not
  %and31 = and i32 %4, %not23
  %and34 = and i32 %2, %not24
  %and37 = and i32 %xor7, %not25
  %and40 = and i32 %xor, %not26
  %xor43 = xor i32 %xor, %and31
  store i32 %xor43, ptr %state, align 4, !tbaa !7
  %xor46 = xor i32 %3, %and34
  store i32 %xor46, ptr %arrayidx9, align 4, !tbaa !7
  %xor49 = xor i32 %xor12, %and37
  store i32 %xor49, ptr %arrayidx11, align 4, !tbaa !7
  %xor52 = xor i32 %2, %and40
  store i32 %xor52, ptr %arrayidx4, align 4, !tbaa !7
  %xor55 = xor i32 %xor7, %and
  store i32 %xor55, ptr %arrayidx, align 4, !tbaa !7
  %xor60 = xor i32 %xor46, %xor43
  store i32 %xor60, ptr %arrayidx9, align 4, !tbaa !7
  %xor65 = xor i32 %xor43, %xor55
  store i32 %xor65, ptr %state, align 4, !tbaa !7
  %xor70 = xor i32 %xor52, %xor49
  store i32 %xor70, ptr %arrayidx4, align 4, !tbaa !7
  %not73 = xor i32 %xor49, -1
  store i32 %not73, ptr %arrayidx11, align 4, !tbaa !7
  ret void
}
attributes #0 = { nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+a,+c,+d,+f,+m,+relax,-e,-experimental-zca,-experimental-zcb,-experimental-zcd,-experimental-zcf,-experimental-zfa,-experimental-zihintntl,-experimental-ztso,-experimental-zvfh,-h,-save-restore,-svinval,-svnapot,-svpbmt,-v,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zdinx,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zicbom,-zicbop,-zicboz,-zicsr,-zifencei,-zihintpause,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32d"}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 8, !"SmallDataLimit", i32 8}
!6 = !{!"clang version 17.0.0 (git@github.com:Eymay/llvm-project.git cf23cb0fcdfc70aa489332bb12056e53d1385ea4)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
