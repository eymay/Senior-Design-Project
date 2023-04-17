; ModuleID = 'keccakSbox.c'
source_filename = "keccakSbox.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-linux-gnu"

%struct.ascon_state_t = type { [5 x i32] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @keccakSbox(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 4
  %t = alloca %struct.ascon_state_t, align 4
  store ptr %s, ptr %s.addr, align 4
  %0 = load ptr, ptr %s.addr, align 4
  %x = getelementptr inbounds %struct.ascon_state_t, ptr %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [5 x i32], ptr %x, i32 0, i32 4
  %1 = load i32, ptr %arrayidx, align 4
  %2 = load ptr, ptr %s.addr, align 4
  %x1 = getelementptr inbounds %struct.ascon_state_t, ptr %2, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [5 x i32], ptr %x1, i32 0, i32 0
  %3 = load i32, ptr %arrayidx2, align 4
  %xor = xor i32 %3, %1
  store i32 %xor, ptr %arrayidx2, align 4
  %4 = load ptr, ptr %s.addr, align 4
  %x3 = getelementptr inbounds %struct.ascon_state_t, ptr %4, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [5 x i32], ptr %x3, i32 0, i32 3
  %5 = load i32, ptr %arrayidx4, align 4
  %6 = load ptr, ptr %s.addr, align 4
  %x5 = getelementptr inbounds %struct.ascon_state_t, ptr %6, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [5 x i32], ptr %x5, i32 0, i32 4
  %7 = load i32, ptr %arrayidx6, align 4
  %xor7 = xor i32 %7, %5
  store i32 %xor7, ptr %arrayidx6, align 4
  %8 = load ptr, ptr %s.addr, align 4
  %x8 = getelementptr inbounds %struct.ascon_state_t, ptr %8, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [5 x i32], ptr %x8, i32 0, i32 1
  %9 = load i32, ptr %arrayidx9, align 4
  %10 = load ptr, ptr %s.addr, align 4
  %x10 = getelementptr inbounds %struct.ascon_state_t, ptr %10, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [5 x i32], ptr %x10, i32 0, i32 2
  %11 = load i32, ptr %arrayidx11, align 4
  %xor12 = xor i32 %11, %9
  store i32 %xor12, ptr %arrayidx11, align 4
  %12 = load ptr, ptr %s.addr, align 4
  %x13 = getelementptr inbounds %struct.ascon_state_t, ptr %12, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [5 x i32], ptr %x13, i32 0, i32 0
  %13 = load i32, ptr %arrayidx14, align 4
  %14 = load ptr, ptr %s.addr, align 4
  %x15 = getelementptr inbounds %struct.ascon_state_t, ptr %14, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [5 x i32], ptr %x15, i32 0, i32 1
  %15 = load i32, ptr %arrayidx16, align 4
  %not = xor i32 %15, -1
  %16 = load ptr, ptr %s.addr, align 4
  %x17 = getelementptr inbounds %struct.ascon_state_t, ptr %16, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [5 x i32], ptr %x17, i32 0, i32 2
  %17 = load i32, ptr %arrayidx18, align 4
  %and = and i32 %not, %17
  %xor19 = xor i32 %13, %and
  %x20 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [5 x i32], ptr %x20, i32 0, i32 0
  store i32 %xor19, ptr %arrayidx21, align 4
  %18 = load ptr, ptr %s.addr, align 4
  %x22 = getelementptr inbounds %struct.ascon_state_t, ptr %18, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [5 x i32], ptr %x22, i32 0, i32 1
  %19 = load i32, ptr %arrayidx23, align 4
  %20 = load ptr, ptr %s.addr, align 4
  %x24 = getelementptr inbounds %struct.ascon_state_t, ptr %20, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [5 x i32], ptr %x24, i32 0, i32 2
  %21 = load i32, ptr %arrayidx25, align 4
  %not26 = xor i32 %21, -1
  %22 = load ptr, ptr %s.addr, align 4
  %x27 = getelementptr inbounds %struct.ascon_state_t, ptr %22, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [5 x i32], ptr %x27, i32 0, i32 3
  %23 = load i32, ptr %arrayidx28, align 4
  %and29 = and i32 %not26, %23
  %xor30 = xor i32 %19, %and29
  %x31 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [5 x i32], ptr %x31, i32 0, i32 1
  store i32 %xor30, ptr %arrayidx32, align 4
  %24 = load ptr, ptr %s.addr, align 4
  %x33 = getelementptr inbounds %struct.ascon_state_t, ptr %24, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [5 x i32], ptr %x33, i32 0, i32 2
  %25 = load i32, ptr %arrayidx34, align 4
  %26 = load ptr, ptr %s.addr, align 4
  %x35 = getelementptr inbounds %struct.ascon_state_t, ptr %26, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [5 x i32], ptr %x35, i32 0, i32 3
  %27 = load i32, ptr %arrayidx36, align 4
  %not37 = xor i32 %27, -1
  %28 = load ptr, ptr %s.addr, align 4
  %x38 = getelementptr inbounds %struct.ascon_state_t, ptr %28, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [5 x i32], ptr %x38, i32 0, i32 4
  %29 = load i32, ptr %arrayidx39, align 4
  %and40 = and i32 %not37, %29
  %xor41 = xor i32 %25, %and40
  %x42 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [5 x i32], ptr %x42, i32 0, i32 2
  store i32 %xor41, ptr %arrayidx43, align 4
  %30 = load ptr, ptr %s.addr, align 4
  %x44 = getelementptr inbounds %struct.ascon_state_t, ptr %30, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [5 x i32], ptr %x44, i32 0, i32 3
  %31 = load i32, ptr %arrayidx45, align 4
  %32 = load ptr, ptr %s.addr, align 4
  %x46 = getelementptr inbounds %struct.ascon_state_t, ptr %32, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [5 x i32], ptr %x46, i32 0, i32 4
  %33 = load i32, ptr %arrayidx47, align 4
  %not48 = xor i32 %33, -1
  %34 = load ptr, ptr %s.addr, align 4
  %x49 = getelementptr inbounds %struct.ascon_state_t, ptr %34, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [5 x i32], ptr %x49, i32 0, i32 0
  %35 = load i32, ptr %arrayidx50, align 4
  %and51 = and i32 %not48, %35
  %xor52 = xor i32 %31, %and51
  %x53 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [5 x i32], ptr %x53, i32 0, i32 3
  store i32 %xor52, ptr %arrayidx54, align 4
  %36 = load ptr, ptr %s.addr, align 4
  %x55 = getelementptr inbounds %struct.ascon_state_t, ptr %36, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [5 x i32], ptr %x55, i32 0, i32 4
  %37 = load i32, ptr %arrayidx56, align 4
  %38 = load ptr, ptr %s.addr, align 4
  %x57 = getelementptr inbounds %struct.ascon_state_t, ptr %38, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [5 x i32], ptr %x57, i32 0, i32 0
  %39 = load i32, ptr %arrayidx58, align 4
  %not59 = xor i32 %39, -1
  %40 = load ptr, ptr %s.addr, align 4
  %x60 = getelementptr inbounds %struct.ascon_state_t, ptr %40, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [5 x i32], ptr %x60, i32 0, i32 1
  %41 = load i32, ptr %arrayidx61, align 4
  %and62 = and i32 %not59, %41
  %xor63 = xor i32 %37, %and62
  %x64 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx65 = getelementptr inbounds [5 x i32], ptr %x64, i32 0, i32 4
  store i32 %xor63, ptr %arrayidx65, align 4
  %x66 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [5 x i32], ptr %x66, i32 0, i32 0
  %42 = load i32, ptr %arrayidx67, align 4
  %x68 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [5 x i32], ptr %x68, i32 0, i32 1
  %43 = load i32, ptr %arrayidx69, align 4
  %xor70 = xor i32 %43, %42
  store i32 %xor70, ptr %arrayidx69, align 4
  %x71 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [5 x i32], ptr %x71, i32 0, i32 4
  %44 = load i32, ptr %arrayidx72, align 4
  %x73 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [5 x i32], ptr %x73, i32 0, i32 0
  %45 = load i32, ptr %arrayidx74, align 4
  %xor75 = xor i32 %45, %44
  store i32 %xor75, ptr %arrayidx74, align 4
  %x76 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [5 x i32], ptr %x76, i32 0, i32 2
  %46 = load i32, ptr %arrayidx77, align 4
  %x78 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [5 x i32], ptr %x78, i32 0, i32 3
  %47 = load i32, ptr %arrayidx79, align 4
  %xor80 = xor i32 %47, %46
  store i32 %xor80, ptr %arrayidx79, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+a,+c,+m,+relax,+zbb,-d,-e,-experimental-zca,-experimental-zcb,-experimental-zcd,-experimental-zcf,-experimental-zfa,-experimental-zihintntl,-experimental-ztso,-experimental-zvfh,-f,-h,-save-restore,-svinval,-svnapot,-svpbmt,-v,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-zawrs,-zba,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zdinx,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zicbom,-zicbop,-zicboz,-zicsr,-zifencei,-zihintpause,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32"}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 8, !"SmallDataLimit", i32 8}
!7 = !{!"clang version 17.0.0 (git@github.com:Eymay/llvm-project.git 988fc65a2c68e73f871ac55958d286a4e12dabdf)"}
