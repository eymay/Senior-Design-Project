; ModuleID = 's-box.c'
source_filename = "s-box.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-linux-gnu"

%struct.ascon_state_t = type { [5 x i32] }

; Function Attrs: nounwind uwtable
define dso_local void @sbox(ptr noundef %state) #0 {
entry:
  %state.indirect_addr = alloca ptr, align 4
  %t0 = alloca i32, align 4
  %t1 = alloca i32, align 4
  %t2 = alloca i32, align 4
  %t3 = alloca i32, align 4
  %t4 = alloca i32, align 4
  store ptr %state, ptr %state.indirect_addr, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %t0) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %t1) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %t2) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %t3) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %t4) #2
  %x = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx = getelementptr inbounds [5 x i32], ptr %x, i32 0, i32 4
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !11
  %x1 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [5 x i32], ptr %x1, i32 0, i32 0
  %1 = load i32, ptr %arrayidx2, align 4, !tbaa !11
  %xor = xor i32 %1, %0
  store i32 %xor, ptr %arrayidx2, align 4, !tbaa !11
  %x3 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [5 x i32], ptr %x3, i32 0, i32 3
  %2 = load i32, ptr %arrayidx4, align 4, !tbaa !11
  %x5 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [5 x i32], ptr %x5, i32 0, i32 4
  %3 = load i32, ptr %arrayidx6, align 4, !tbaa !11
  %xor7 = xor i32 %3, %2
  store i32 %xor7, ptr %arrayidx6, align 4, !tbaa !11
  %x8 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [5 x i32], ptr %x8, i32 0, i32 1
  %4 = load i32, ptr %arrayidx9, align 4, !tbaa !11
  %x10 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [5 x i32], ptr %x10, i32 0, i32 2
  %5 = load i32, ptr %arrayidx11, align 4, !tbaa !11
  %xor12 = xor i32 %5, %4
  store i32 %xor12, ptr %arrayidx11, align 4, !tbaa !11
  %x13 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [5 x i32], ptr %x13, i32 0, i32 0
  %6 = load i32, ptr %arrayidx14, align 4, !tbaa !11
  store i32 %6, ptr %t0, align 4, !tbaa !11
  %x15 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [5 x i32], ptr %x15, i32 0, i32 1
  %7 = load i32, ptr %arrayidx16, align 4, !tbaa !11
  store i32 %7, ptr %t1, align 4, !tbaa !11
  %x17 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [5 x i32], ptr %x17, i32 0, i32 2
  %8 = load i32, ptr %arrayidx18, align 4, !tbaa !11
  store i32 %8, ptr %t2, align 4, !tbaa !11
  %x19 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [5 x i32], ptr %x19, i32 0, i32 3
  %9 = load i32, ptr %arrayidx20, align 4, !tbaa !11
  store i32 %9, ptr %t3, align 4, !tbaa !11
  %x21 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [5 x i32], ptr %x21, i32 0, i32 4
  %10 = load i32, ptr %arrayidx22, align 4, !tbaa !11
  store i32 %10, ptr %t4, align 4, !tbaa !11
  %11 = load i32, ptr %t0, align 4, !tbaa !11
  %not = xor i32 %11, -1
  store i32 %not, ptr %t0, align 4, !tbaa !11
  %12 = load i32, ptr %t1, align 4, !tbaa !11
  %not23 = xor i32 %12, -1
  store i32 %not23, ptr %t1, align 4, !tbaa !11
  %13 = load i32, ptr %t2, align 4, !tbaa !11
  %not24 = xor i32 %13, -1
  store i32 %not24, ptr %t2, align 4, !tbaa !11
  %14 = load i32, ptr %t3, align 4, !tbaa !11
  %not25 = xor i32 %14, -1
  store i32 %not25, ptr %t3, align 4, !tbaa !11
  %15 = load i32, ptr %t4, align 4, !tbaa !11
  %not26 = xor i32 %15, -1
  store i32 %not26, ptr %t4, align 4, !tbaa !11
  %x27 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [5 x i32], ptr %x27, i32 0, i32 1
  %16 = load i32, ptr %arrayidx28, align 4, !tbaa !11
  %17 = load i32, ptr %t0, align 4, !tbaa !11
  %and = and i32 %17, %16
  store i32 %and, ptr %t0, align 4, !tbaa !11
  %x29 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [5 x i32], ptr %x29, i32 0, i32 2
  %18 = load i32, ptr %arrayidx30, align 4, !tbaa !11
  %19 = load i32, ptr %t1, align 4, !tbaa !11
  %and31 = and i32 %19, %18
  store i32 %and31, ptr %t1, align 4, !tbaa !11
  %x32 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [5 x i32], ptr %x32, i32 0, i32 3
  %20 = load i32, ptr %arrayidx33, align 4, !tbaa !11
  %21 = load i32, ptr %t2, align 4, !tbaa !11
  %and34 = and i32 %21, %20
  store i32 %and34, ptr %t2, align 4, !tbaa !11
  %x35 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [5 x i32], ptr %x35, i32 0, i32 4
  %22 = load i32, ptr %arrayidx36, align 4, !tbaa !11
  %23 = load i32, ptr %t3, align 4, !tbaa !11
  %and37 = and i32 %23, %22
  store i32 %and37, ptr %t3, align 4, !tbaa !11
  %x38 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [5 x i32], ptr %x38, i32 0, i32 0
  %24 = load i32, ptr %arrayidx39, align 4, !tbaa !11
  %25 = load i32, ptr %t4, align 4, !tbaa !11
  %and40 = and i32 %25, %24
  store i32 %and40, ptr %t4, align 4, !tbaa !11
  %26 = load i32, ptr %t1, align 4, !tbaa !11
  %x41 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [5 x i32], ptr %x41, i32 0, i32 0
  %27 = load i32, ptr %arrayidx42, align 4, !tbaa !11
  %xor43 = xor i32 %27, %26
  store i32 %xor43, ptr %arrayidx42, align 4, !tbaa !11
  %28 = load i32, ptr %t2, align 4, !tbaa !11
  %x44 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [5 x i32], ptr %x44, i32 0, i32 1
  %29 = load i32, ptr %arrayidx45, align 4, !tbaa !11
  %xor46 = xor i32 %29, %28
  store i32 %xor46, ptr %arrayidx45, align 4, !tbaa !11
  %30 = load i32, ptr %t3, align 4, !tbaa !11
  %x47 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [5 x i32], ptr %x47, i32 0, i32 2
  %31 = load i32, ptr %arrayidx48, align 4, !tbaa !11
  %xor49 = xor i32 %31, %30
  store i32 %xor49, ptr %arrayidx48, align 4, !tbaa !11
  %32 = load i32, ptr %t4, align 4, !tbaa !11
  %x50 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [5 x i32], ptr %x50, i32 0, i32 3
  %33 = load i32, ptr %arrayidx51, align 4, !tbaa !11
  %xor52 = xor i32 %33, %32
  store i32 %xor52, ptr %arrayidx51, align 4, !tbaa !11
  %34 = load i32, ptr %t0, align 4, !tbaa !11
  %x53 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [5 x i32], ptr %x53, i32 0, i32 4
  %35 = load i32, ptr %arrayidx54, align 4, !tbaa !11
  %xor55 = xor i32 %35, %34
  store i32 %xor55, ptr %arrayidx54, align 4, !tbaa !11
  %x56 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [5 x i32], ptr %x56, i32 0, i32 0
  %36 = load i32, ptr %arrayidx57, align 4, !tbaa !11
  %x58 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [5 x i32], ptr %x58, i32 0, i32 1
  %37 = load i32, ptr %arrayidx59, align 4, !tbaa !11
  %xor60 = xor i32 %37, %36
  store i32 %xor60, ptr %arrayidx59, align 4, !tbaa !11
  %x61 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [5 x i32], ptr %x61, i32 0, i32 4
  %38 = load i32, ptr %arrayidx62, align 4, !tbaa !11
  %x63 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [5 x i32], ptr %x63, i32 0, i32 0
  %39 = load i32, ptr %arrayidx64, align 4, !tbaa !11
  %xor65 = xor i32 %39, %38
  store i32 %xor65, ptr %arrayidx64, align 4, !tbaa !11
  %x66 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [5 x i32], ptr %x66, i32 0, i32 2
  %40 = load i32, ptr %arrayidx67, align 4, !tbaa !11
  %x68 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [5 x i32], ptr %x68, i32 0, i32 3
  %41 = load i32, ptr %arrayidx69, align 4, !tbaa !11
  %xor70 = xor i32 %41, %40
  store i32 %xor70, ptr %arrayidx69, align 4, !tbaa !11
  %x71 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [5 x i32], ptr %x71, i32 0, i32 2
  %42 = load i32, ptr %arrayidx72, align 4, !tbaa !11
  %not73 = xor i32 %42, -1
  %x74 = getelementptr inbounds %struct.ascon_state_t, ptr %state, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [5 x i32], ptr %x74, i32 0, i32 2
  store i32 %not73, ptr %arrayidx75, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 4, ptr %t4) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %t3) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %t2) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %t1) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %t0) #2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

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
