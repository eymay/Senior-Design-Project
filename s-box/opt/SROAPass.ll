%struct.ascon_state_t = type { [5 x i32] }

; Function Attrs: nounwind uwtable
define dso_local void @sbox(ptr noundef %state) #0 {
entry:
  %x = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx = getelementptr inbounds [5 x i32], ptr %x, i32 0, i32 4
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !7
  %x1 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [5 x i32], ptr %x1, i32 0, i32 0
  %1 = load i32, ptr %arrayidx2, align 4, !tbaa !7
  %xor = xor i32 %1, %0
  store i32 %xor, ptr %arrayidx2, align 4, !tbaa !7
  %x3 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [5 x i32], ptr %x3, i32 0, i32 3
  %2 = load i32, ptr %arrayidx4, align 4, !tbaa !7
  %x5 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [5 x i32], ptr %x5, i32 0, i32 4
  %3 = load i32, ptr %arrayidx6, align 4, !tbaa !7
  %xor7 = xor i32 %3, %2
  store i32 %xor7, ptr %arrayidx6, align 4, !tbaa !7
  %x8 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [5 x i32], ptr %x8, i32 0, i32 1
  %4 = load i32, ptr %arrayidx9, align 4, !tbaa !7
  %x10 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [5 x i32], ptr %x10, i32 0, i32 2
  %5 = load i32, ptr %arrayidx11, align 4, !tbaa !7
  %xor12 = xor i32 %5, %4
  store i32 %xor12, ptr %arrayidx11, align 4, !tbaa !7
  %x13 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [5 x i32], ptr %x13, i32 0, i32 0
  %6 = load i32, ptr %arrayidx14, align 4, !tbaa !7
  %x15 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [5 x i32], ptr %x15, i32 0, i32 1
  %7 = load i32, ptr %arrayidx16, align 4, !tbaa !7
  %x17 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [5 x i32], ptr %x17, i32 0, i32 2
  %8 = load i32, ptr %arrayidx18, align 4, !tbaa !7
  %x19 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [5 x i32], ptr %x19, i32 0, i32 3
  %9 = load i32, ptr %arrayidx20, align 4, !tbaa !7
  %x21 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [5 x i32], ptr %x21, i32 0, i32 4
  %10 = load i32, ptr %arrayidx22, align 4, !tbaa !7
  %not = xor i32 %6, -1
  %not23 = xor i32 %7, -1
  %not24 = xor i32 %8, -1
  %not25 = xor i32 %9, -1
  %not26 = xor i32 %10, -1
  %x27 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [5 x i32], ptr %x27, i32 0, i32 1
  %11 = load i32, ptr %arrayidx28, align 4, !tbaa !7
  %and = and i32 %not, %11
  %x29 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [5 x i32], ptr %x29, i32 0, i32 2
  %12 = load i32, ptr %arrayidx30, align 4, !tbaa !7
  %and31 = and i32 %not23, %12
  %x32 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [5 x i32], ptr %x32, i32 0, i32 3
  %13 = load i32, ptr %arrayidx33, align 4, !tbaa !7
  %and34 = and i32 %not24, %13
  %x35 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [5 x i32], ptr %x35, i32 0, i32 4
  %14 = load i32, ptr %arrayidx36, align 4, !tbaa !7
  %and37 = and i32 %not25, %14
  %x38 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [5 x i32], ptr %x38, i32 0, i32 0
  %15 = load i32, ptr %arrayidx39, align 4, !tbaa !7
  %and40 = and i32 %not26, %15
  %x41 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [5 x i32], ptr %x41, i32 0, i32 0
  %16 = load i32, ptr %arrayidx42, align 4, !tbaa !7
  %xor43 = xor i32 %16, %and31
  store i32 %xor43, ptr %arrayidx42, align 4, !tbaa !7
  %x44 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [5 x i32], ptr %x44, i32 0, i32 1
  %17 = load i32, ptr %arrayidx45, align 4, !tbaa !7
  %xor46 = xor i32 %17, %and34
  store i32 %xor46, ptr %arrayidx45, align 4, !tbaa !7
  %x47 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [5 x i32], ptr %x47, i32 0, i32 2
  %18 = load i32, ptr %arrayidx48, align 4, !tbaa !7
  %xor49 = xor i32 %18, %and37
  store i32 %xor49, ptr %arrayidx48, align 4, !tbaa !7
  %x50 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [5 x i32], ptr %x50, i32 0, i32 3
  %19 = load i32, ptr %arrayidx51, align 4, !tbaa !7
  %xor52 = xor i32 %19, %and40
  store i32 %xor52, ptr %arrayidx51, align 4, !tbaa !7
  %x53 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [5 x i32], ptr %x53, i32 0, i32 4
  %20 = load i32, ptr %arrayidx54, align 4, !tbaa !7
  %xor55 = xor i32 %20, %and
  store i32 %xor55, ptr %arrayidx54, align 4, !tbaa !7
  %x56 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [5 x i32], ptr %x56, i32 0, i32 0
  %21 = load i32, ptr %arrayidx57, align 4, !tbaa !7
  %x58 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [5 x i32], ptr %x58, i32 0, i32 1
  %22 = load i32, ptr %arrayidx59, align 4, !tbaa !7
  %xor60 = xor i32 %22, %21
  store i32 %xor60, ptr %arrayidx59, align 4, !tbaa !7
  %x61 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [5 x i32], ptr %x61, i32 0, i32 4
  %23 = load i32, ptr %arrayidx62, align 4, !tbaa !7
  %x63 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [5 x i32], ptr %x63, i32 0, i32 0
  %24 = load i32, ptr %arrayidx64, align 4, !tbaa !7
  %xor65 = xor i32 %24, %23
  store i32 %xor65, ptr %arrayidx64, align 4, !tbaa !7
  %x66 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [5 x i32], ptr %x66, i32 0, i32 2
  %25 = load i32, ptr %arrayidx67, align 4, !tbaa !7
  %x68 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [5 x i32], ptr %x68, i32 0, i32 3
  %26 = load i32, ptr %arrayidx69, align 4, !tbaa !7
  %xor70 = xor i32 %26, %25
  store i32 %xor70, ptr %arrayidx69, align 4, !tbaa !7
  %x71 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [5 x i32], ptr %x71, i32 0, i32 2
  %27 = load i32, ptr %arrayidx72, align 4, !tbaa !7
  %not73 = xor i32 %27, -1
  %x74 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [5 x i32], ptr %x74, i32 0, i32 2
  store i32 %not73, ptr %arrayidx75, align 4, !tbaa !7
  ret void
}


attributes #0 = { nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+a,+c,+d,+f,+m,+relax,-e,-experimental-zca,-experimental-zcb,-experimental-zcd,-experimental-zcf,-experimental-zfa,-experimental-zihintntl,-experimental-ztso,-experimental-zvfh,-h,-save-restore,-svinval,-svnapot,-svpbmt,-v,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zdinx,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zicbom,-zicbop,-zicboz,-zicsr,-zifencei,-zihintpause,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

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
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !9, i64 0}
