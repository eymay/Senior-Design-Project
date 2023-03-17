; ModuleID = 's-box-reg.c'
source_filename = "s-box-reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ascon_state_t = type { [5 x i64] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sbox(ptr noalias sret(%struct.ascon_state_t) align 8 %agg.result, i64 noundef %x0, i64 noundef %x1, i64 noundef %x2, i64 noundef %x3, i64 noundef %x4) #0 {
entry:
  %x0.addr = alloca i64, align 8
  %x1.addr = alloca i64, align 8
  %x2.addr = alloca i64, align 8
  %x3.addr = alloca i64, align 8
  %x4.addr = alloca i64, align 8
  %t0 = alloca i64, align 8
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  %t3 = alloca i64, align 8
  %t4 = alloca i64, align 8
  store i64 %x0, ptr %x0.addr, align 8
  store i64 %x1, ptr %x1.addr, align 8
  store i64 %x2, ptr %x2.addr, align 8
  store i64 %x3, ptr %x3.addr, align 8
  store i64 %x4, ptr %x4.addr, align 8
  %0 = load i64, ptr %x4.addr, align 8
  %1 = load i64, ptr %x0.addr, align 8
  %xor = xor i64 %1, %0
  store i64 %xor, ptr %x0.addr, align 8
  %2 = load i64, ptr %x3.addr, align 8
  %3 = load i64, ptr %x4.addr, align 8
  %xor1 = xor i64 %3, %2
  store i64 %xor1, ptr %x4.addr, align 8
  %4 = load i64, ptr %x1.addr, align 8
  %5 = load i64, ptr %x2.addr, align 8
  %xor2 = xor i64 %5, %4
  store i64 %xor2, ptr %x2.addr, align 8
  %6 = load i64, ptr %x0.addr, align 8
  store i64 %6, ptr %t0, align 8
  %7 = load i64, ptr %x1.addr, align 8
  store i64 %7, ptr %t1, align 8
  %8 = load i64, ptr %x2.addr, align 8
  store i64 %8, ptr %t2, align 8
  %9 = load i64, ptr %x3.addr, align 8
  store i64 %9, ptr %t3, align 8
  %10 = load i64, ptr %x4.addr, align 8
  store i64 %10, ptr %t4, align 8
  %11 = load i64, ptr %t0, align 8
  %not = xor i64 %11, -1
  store i64 %not, ptr %t0, align 8
  %12 = load i64, ptr %t1, align 8
  %not3 = xor i64 %12, -1
  store i64 %not3, ptr %t1, align 8
  %13 = load i64, ptr %t2, align 8
  %not4 = xor i64 %13, -1
  store i64 %not4, ptr %t2, align 8
  %14 = load i64, ptr %t3, align 8
  %not5 = xor i64 %14, -1
  store i64 %not5, ptr %t3, align 8
  %15 = load i64, ptr %t4, align 8
  %not6 = xor i64 %15, -1
  store i64 %not6, ptr %t4, align 8
  %16 = load i64, ptr %x1.addr, align 8
  %17 = load i64, ptr %t0, align 8
  %and = and i64 %17, %16
  store i64 %and, ptr %t0, align 8
  %18 = load i64, ptr %x2.addr, align 8
  %19 = load i64, ptr %t1, align 8
  %and7 = and i64 %19, %18
  store i64 %and7, ptr %t1, align 8
  %20 = load i64, ptr %x3.addr, align 8
  %21 = load i64, ptr %t2, align 8
  %and8 = and i64 %21, %20
  store i64 %and8, ptr %t2, align 8
  %22 = load i64, ptr %x4.addr, align 8
  %23 = load i64, ptr %t3, align 8
  %and9 = and i64 %23, %22
  store i64 %and9, ptr %t3, align 8
  %24 = load i64, ptr %x0.addr, align 8
  %25 = load i64, ptr %t4, align 8
  %and10 = and i64 %25, %24
  store i64 %and10, ptr %t4, align 8
  %26 = load i64, ptr %t1, align 8
  %27 = load i64, ptr %x0.addr, align 8
  %xor11 = xor i64 %27, %26
  store i64 %xor11, ptr %x0.addr, align 8
  %28 = load i64, ptr %t2, align 8
  %29 = load i64, ptr %x1.addr, align 8
  %xor12 = xor i64 %29, %28
  store i64 %xor12, ptr %x1.addr, align 8
  %30 = load i64, ptr %t3, align 8
  %31 = load i64, ptr %x2.addr, align 8
  %xor13 = xor i64 %31, %30
  store i64 %xor13, ptr %x2.addr, align 8
  %32 = load i64, ptr %t4, align 8
  %33 = load i64, ptr %x3.addr, align 8
  %xor14 = xor i64 %33, %32
  store i64 %xor14, ptr %x3.addr, align 8
  %34 = load i64, ptr %t0, align 8
  %35 = load i64, ptr %x4.addr, align 8
  %xor15 = xor i64 %35, %34
  store i64 %xor15, ptr %x4.addr, align 8
  %36 = load i64, ptr %x0.addr, align 8
  %37 = load i64, ptr %x1.addr, align 8
  %xor16 = xor i64 %37, %36
  store i64 %xor16, ptr %x1.addr, align 8
  %38 = load i64, ptr %x4.addr, align 8
  %39 = load i64, ptr %x0.addr, align 8
  %xor17 = xor i64 %39, %38
  store i64 %xor17, ptr %x0.addr, align 8
  %40 = load i64, ptr %x2.addr, align 8
  %41 = load i64, ptr %x3.addr, align 8
  %xor18 = xor i64 %41, %40
  store i64 %xor18, ptr %x3.addr, align 8
  %42 = load i64, ptr %x2.addr, align 8
  %not19 = xor i64 %42, -1
  store i64 %not19, ptr %x2.addr, align 8
  %43 = load i64, ptr %x0.addr, align 8
  %x = getelementptr inbounds %struct.ascon_state_t, ptr %agg.result, i32 0, i32 0
  %arrayidx = getelementptr inbounds [5 x i64], ptr %x, i64 0, i64 0
  store i64 %43, ptr %arrayidx, align 8
  %44 = load i64, ptr %x1.addr, align 8
  %x20 = getelementptr inbounds %struct.ascon_state_t, ptr %agg.result, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [5 x i64], ptr %x20, i64 0, i64 1
  store i64 %44, ptr %arrayidx21, align 8
  %45 = load i64, ptr %x2.addr, align 8
  %x22 = getelementptr inbounds %struct.ascon_state_t, ptr %agg.result, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [5 x i64], ptr %x22, i64 0, i64 2
  store i64 %45, ptr %arrayidx23, align 8
  %46 = load i64, ptr %x3.addr, align 8
  %x24 = getelementptr inbounds %struct.ascon_state_t, ptr %agg.result, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [5 x i64], ptr %x24, i64 0, i64 3
  store i64 %46, ptr %arrayidx25, align 8
  %47 = load i64, ptr %x4.addr, align 8
  %x26 = getelementptr inbounds %struct.ascon_state_t, ptr %agg.result, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [5 x i64], ptr %x26, i64 0, i64 4
  store i64 %47, ptr %arrayidx27, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 16.0.0 (git@github.com:Eymay/CustomInstrLLVM.git d10adf3e6d56af987e993c658a78caeb675f2292)"}
