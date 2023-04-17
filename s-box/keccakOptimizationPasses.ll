*** IR Dump At Start ***
; ModuleID = 'keccakSbox.c'
source_filename = "keccakSbox.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-linux-gnu"

%struct.ascon_state_t = type { [5 x i64] }

; Function Attrs: nounwind uwtable
define dso_local void @keccakSbox(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 4
  %t = alloca %struct.ascon_state_t, align 8
  store ptr %s, ptr %s.addr, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 40, ptr %t) #3
  %0 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x = getelementptr inbounds %struct.ascon_state_t, ptr %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [5 x i64], ptr %x, i32 0, i32 4
  %1 = load i64, ptr %arrayidx, align 8, !tbaa !11
  %2 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x1 = getelementptr inbounds %struct.ascon_state_t, ptr %2, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [5 x i64], ptr %x1, i32 0, i32 0
  %3 = load i64, ptr %arrayidx2, align 8, !tbaa !11
  %xor = xor i64 %3, %1
  store i64 %xor, ptr %arrayidx2, align 8, !tbaa !11
  %4 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x3 = getelementptr inbounds %struct.ascon_state_t, ptr %4, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [5 x i64], ptr %x3, i32 0, i32 3
  %5 = load i64, ptr %arrayidx4, align 8, !tbaa !11
  %6 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x5 = getelementptr inbounds %struct.ascon_state_t, ptr %6, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [5 x i64], ptr %x5, i32 0, i32 4
  %7 = load i64, ptr %arrayidx6, align 8, !tbaa !11
  %xor7 = xor i64 %7, %5
  store i64 %xor7, ptr %arrayidx6, align 8, !tbaa !11
  %8 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x8 = getelementptr inbounds %struct.ascon_state_t, ptr %8, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [5 x i64], ptr %x8, i32 0, i32 1
  %9 = load i64, ptr %arrayidx9, align 8, !tbaa !11
  %10 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x10 = getelementptr inbounds %struct.ascon_state_t, ptr %10, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [5 x i64], ptr %x10, i32 0, i32 2
  %11 = load i64, ptr %arrayidx11, align 8, !tbaa !11
  %xor12 = xor i64 %11, %9
  store i64 %xor12, ptr %arrayidx11, align 8, !tbaa !11
  %12 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x13 = getelementptr inbounds %struct.ascon_state_t, ptr %12, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [5 x i64], ptr %x13, i32 0, i32 0
  %13 = load i64, ptr %arrayidx14, align 8, !tbaa !11
  %14 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x15 = getelementptr inbounds %struct.ascon_state_t, ptr %14, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [5 x i64], ptr %x15, i32 0, i32 1
  %15 = load i64, ptr %arrayidx16, align 8, !tbaa !11
  %not = xor i64 %15, -1
  %16 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x17 = getelementptr inbounds %struct.ascon_state_t, ptr %16, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [5 x i64], ptr %x17, i32 0, i32 2
  %17 = load i64, ptr %arrayidx18, align 8, !tbaa !11
  %and = and i64 %not, %17
  %xor19 = xor i64 %13, %and
  %x20 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [5 x i64], ptr %x20, i32 0, i32 0
  store i64 %xor19, ptr %arrayidx21, align 8, !tbaa !11
  %18 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x22 = getelementptr inbounds %struct.ascon_state_t, ptr %18, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [5 x i64], ptr %x22, i32 0, i32 1
  %19 = load i64, ptr %arrayidx23, align 8, !tbaa !11
  %20 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x24 = getelementptr inbounds %struct.ascon_state_t, ptr %20, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [5 x i64], ptr %x24, i32 0, i32 2
  %21 = load i64, ptr %arrayidx25, align 8, !tbaa !11
  %not26 = xor i64 %21, -1
  %22 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x27 = getelementptr inbounds %struct.ascon_state_t, ptr %22, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [5 x i64], ptr %x27, i32 0, i32 3
  %23 = load i64, ptr %arrayidx28, align 8, !tbaa !11
  %and29 = and i64 %not26, %23
  %xor30 = xor i64 %19, %and29
  %x31 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [5 x i64], ptr %x31, i32 0, i32 1
  store i64 %xor30, ptr %arrayidx32, align 8, !tbaa !11
  %24 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x33 = getelementptr inbounds %struct.ascon_state_t, ptr %24, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [5 x i64], ptr %x33, i32 0, i32 2
  %25 = load i64, ptr %arrayidx34, align 8, !tbaa !11
  %26 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x35 = getelementptr inbounds %struct.ascon_state_t, ptr %26, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [5 x i64], ptr %x35, i32 0, i32 3
  %27 = load i64, ptr %arrayidx36, align 8, !tbaa !11
  %not37 = xor i64 %27, -1
  %28 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x38 = getelementptr inbounds %struct.ascon_state_t, ptr %28, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [5 x i64], ptr %x38, i32 0, i32 4
  %29 = load i64, ptr %arrayidx39, align 8, !tbaa !11
  %and40 = and i64 %not37, %29
  %xor41 = xor i64 %25, %and40
  %x42 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [5 x i64], ptr %x42, i32 0, i32 2
  store i64 %xor41, ptr %arrayidx43, align 8, !tbaa !11
  %30 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x44 = getelementptr inbounds %struct.ascon_state_t, ptr %30, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [5 x i64], ptr %x44, i32 0, i32 3
  %31 = load i64, ptr %arrayidx45, align 8, !tbaa !11
  %32 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x46 = getelementptr inbounds %struct.ascon_state_t, ptr %32, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [5 x i64], ptr %x46, i32 0, i32 4
  %33 = load i64, ptr %arrayidx47, align 8, !tbaa !11
  %not48 = xor i64 %33, -1
  %34 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x49 = getelementptr inbounds %struct.ascon_state_t, ptr %34, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [5 x i64], ptr %x49, i32 0, i32 0
  %35 = load i64, ptr %arrayidx50, align 8, !tbaa !11
  %and51 = and i64 %not48, %35
  %xor52 = xor i64 %31, %and51
  %x53 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [5 x i64], ptr %x53, i32 0, i32 3
  store i64 %xor52, ptr %arrayidx54, align 8, !tbaa !11
  %36 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x55 = getelementptr inbounds %struct.ascon_state_t, ptr %36, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [5 x i64], ptr %x55, i32 0, i32 4
  %37 = load i64, ptr %arrayidx56, align 8, !tbaa !11
  %38 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x57 = getelementptr inbounds %struct.ascon_state_t, ptr %38, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [5 x i64], ptr %x57, i32 0, i32 0
  %39 = load i64, ptr %arrayidx58, align 8, !tbaa !11
  %not59 = xor i64 %39, -1
  %40 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x60 = getelementptr inbounds %struct.ascon_state_t, ptr %40, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [5 x i64], ptr %x60, i32 0, i32 1
  %41 = load i64, ptr %arrayidx61, align 8, !tbaa !11
  %and62 = and i64 %not59, %41
  %xor63 = xor i64 %37, %and62
  %x64 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx65 = getelementptr inbounds [5 x i64], ptr %x64, i32 0, i32 4
  store i64 %xor63, ptr %arrayidx65, align 8, !tbaa !11
  %x66 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [5 x i64], ptr %x66, i32 0, i32 0
  %42 = load i64, ptr %arrayidx67, align 8, !tbaa !11
  %x68 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [5 x i64], ptr %x68, i32 0, i32 1
  %43 = load i64, ptr %arrayidx69, align 8, !tbaa !11
  %xor70 = xor i64 %43, %42
  store i64 %xor70, ptr %arrayidx69, align 8, !tbaa !11
  %x71 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [5 x i64], ptr %x71, i32 0, i32 4
  %44 = load i64, ptr %arrayidx72, align 8, !tbaa !11
  %x73 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [5 x i64], ptr %x73, i32 0, i32 0
  %45 = load i64, ptr %arrayidx74, align 8, !tbaa !11
  %xor75 = xor i64 %45, %44
  store i64 %xor75, ptr %arrayidx74, align 8, !tbaa !11
  %x76 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [5 x i64], ptr %x76, i32 0, i32 2
  %46 = load i64, ptr %arrayidx77, align 8, !tbaa !11
  %x78 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [5 x i64], ptr %x78, i32 0, i32 3
  %47 = load i64, ptr %arrayidx79, align 8, !tbaa !11
  %xor80 = xor i64 %47, %46
  store i64 %xor80, ptr %arrayidx79, align 8, !tbaa !11
  %x81 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [5 x i64], ptr %x81, i32 0, i32 2
  %48 = load i64, ptr %arrayidx82, align 8, !tbaa !11
  %not83 = xor i64 %48, -1
  %x84 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx85 = getelementptr inbounds [5 x i64], ptr %x84, i32 0, i32 2
  store i64 %not83, ptr %arrayidx85, align 8, !tbaa !11
  %x86 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [5 x i64], ptr %x86, i32 0, i32 0
  %49 = load i64, ptr %arrayidx87, align 8, !tbaa !11
  %x88 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx89 = getelementptr inbounds [5 x i64], ptr %x88, i32 0, i32 0
  %50 = load i64, ptr %arrayidx89, align 8, !tbaa !11
  %call = call i64 @ROR(i64 noundef %50, i32 noundef 19)
  %xor90 = xor i64 %49, %call
  %x91 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [5 x i64], ptr %x91, i32 0, i32 0
  %51 = load i64, ptr %arrayidx92, align 8, !tbaa !11
  %call93 = call i64 @ROR(i64 noundef %51, i32 noundef 28)
  %xor94 = xor i64 %xor90, %call93
  %52 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x95 = getelementptr inbounds %struct.ascon_state_t, ptr %52, i32 0, i32 0
  %arrayidx96 = getelementptr inbounds [5 x i64], ptr %x95, i32 0, i32 0
  store i64 %xor94, ptr %arrayidx96, align 8, !tbaa !11
  %x97 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx98 = getelementptr inbounds [5 x i64], ptr %x97, i32 0, i32 1
  %53 = load i64, ptr %arrayidx98, align 8, !tbaa !11
  %x99 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx100 = getelementptr inbounds [5 x i64], ptr %x99, i32 0, i32 1
  %54 = load i64, ptr %arrayidx100, align 8, !tbaa !11
  %call101 = call i64 @ROR(i64 noundef %54, i32 noundef 61)
  %xor102 = xor i64 %53, %call101
  %x103 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx104 = getelementptr inbounds [5 x i64], ptr %x103, i32 0, i32 1
  %55 = load i64, ptr %arrayidx104, align 8, !tbaa !11
  %call105 = call i64 @ROR(i64 noundef %55, i32 noundef 39)
  %xor106 = xor i64 %xor102, %call105
  %56 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x107 = getelementptr inbounds %struct.ascon_state_t, ptr %56, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [5 x i64], ptr %x107, i32 0, i32 1
  store i64 %xor106, ptr %arrayidx108, align 8, !tbaa !11
  %x109 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx110 = getelementptr inbounds [5 x i64], ptr %x109, i32 0, i32 2
  %57 = load i64, ptr %arrayidx110, align 8, !tbaa !11
  %x111 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [5 x i64], ptr %x111, i32 0, i32 2
  %58 = load i64, ptr %arrayidx112, align 8, !tbaa !11
  %call113 = call i64 @ROR(i64 noundef %58, i32 noundef 1)
  %xor114 = xor i64 %57, %call113
  %x115 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx116 = getelementptr inbounds [5 x i64], ptr %x115, i32 0, i32 2
  %59 = load i64, ptr %arrayidx116, align 8, !tbaa !11
  %call117 = call i64 @ROR(i64 noundef %59, i32 noundef 6)
  %xor118 = xor i64 %xor114, %call117
  %60 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x119 = getelementptr inbounds %struct.ascon_state_t, ptr %60, i32 0, i32 0
  %arrayidx120 = getelementptr inbounds [5 x i64], ptr %x119, i32 0, i32 2
  store i64 %xor118, ptr %arrayidx120, align 8, !tbaa !11
  %x121 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx122 = getelementptr inbounds [5 x i64], ptr %x121, i32 0, i32 3
  %61 = load i64, ptr %arrayidx122, align 8, !tbaa !11
  %x123 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx124 = getelementptr inbounds [5 x i64], ptr %x123, i32 0, i32 3
  %62 = load i64, ptr %arrayidx124, align 8, !tbaa !11
  %call125 = call i64 @ROR(i64 noundef %62, i32 noundef 10)
  %xor126 = xor i64 %61, %call125
  %x127 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx128 = getelementptr inbounds [5 x i64], ptr %x127, i32 0, i32 3
  %63 = load i64, ptr %arrayidx128, align 8, !tbaa !11
  %call129 = call i64 @ROR(i64 noundef %63, i32 noundef 17)
  %xor130 = xor i64 %xor126, %call129
  %64 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x131 = getelementptr inbounds %struct.ascon_state_t, ptr %64, i32 0, i32 0
  %arrayidx132 = getelementptr inbounds [5 x i64], ptr %x131, i32 0, i32 3
  store i64 %xor130, ptr %arrayidx132, align 8, !tbaa !11
  %x133 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [5 x i64], ptr %x133, i32 0, i32 4
  %65 = load i64, ptr %arrayidx134, align 8, !tbaa !11
  %x135 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx136 = getelementptr inbounds [5 x i64], ptr %x135, i32 0, i32 4
  %66 = load i64, ptr %arrayidx136, align 8, !tbaa !11
  %call137 = call i64 @ROR(i64 noundef %66, i32 noundef 7)
  %xor138 = xor i64 %65, %call137
  %x139 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx140 = getelementptr inbounds [5 x i64], ptr %x139, i32 0, i32 4
  %67 = load i64, ptr %arrayidx140, align 8, !tbaa !11
  %call141 = call i64 @ROR(i64 noundef %67, i32 noundef 41)
  %xor142 = xor i64 %xor138, %call141
  %68 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x143 = getelementptr inbounds %struct.ascon_state_t, ptr %68, i32 0, i32 0
  %arrayidx144 = getelementptr inbounds [5 x i64], ptr %x143, i32 0, i32 4
  store i64 %xor142, ptr %arrayidx144, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 40, ptr %t) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @ROR(i64 noundef %x, i32 noundef %n) #2 {
entry:
  %x.addr = alloca i64, align 8
  %n.addr = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8, !tbaa !11
  store i32 %n, ptr %n.addr, align 4, !tbaa !13
  %0 = load i64, ptr %x.addr, align 8, !tbaa !11
  %1 = load i32, ptr %n.addr, align 4, !tbaa !13
  %sh_prom = zext i32 %1 to i64
  %shr = lshr i64 %0, %sh_prom
  %2 = load i64, ptr %x.addr, align 8, !tbaa !11
  %3 = load i32, ptr %n.addr, align 4, !tbaa !13
  %sub = sub nsw i32 0, %3
  %and = and i32 %sub, 63
  %sh_prom1 = zext i32 %and to i64
  %shl = shl i64 %2, %sh_prom1
  %or = or i64 %shr, %shl
  ret i64 %or
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+a,+c,+m,+relax,+zbb,-d,-e,-experimental-zca,-experimental-zcb,-experimental-zcd,-experimental-zcf,-experimental-zfa,-experimental-zihintntl,-experimental-ztso,-experimental-zvfh,-f,-h,-save-restore,-svinval,-svnapot,-svpbmt,-v,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-zawrs,-zba,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zdinx,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zicbom,-zicbop,-zicboz,-zicsr,-zifencei,-zihintpause,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+a,+c,+m,+relax,+zbb,-d,-e,-experimental-zca,-experimental-zcb,-experimental-zcd,-experimental-zcf,-experimental-zfa,-experimental-zihintntl,-experimental-ztso,-experimental-zvfh,-f,-h,-save-restore,-svinval,-svnapot,-svpbmt,-v,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-zawrs,-zba,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zdinx,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zicbom,-zicbop,-zicboz,-zicsr,-zifencei,-zihintpause,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nounwind }

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
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"long long", !9, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !9, i64 0}
*** IR Dump After Annotation2MetadataPass on [module] omitted because no change ***
*** IR Dump After ForceFunctionAttrsPass on [module] omitted because no change ***
*** IR Dump After InferFunctionAttrsPass on [module] ***
; ModuleID = 'keccakSbox.c'
source_filename = "keccakSbox.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-linux-gnu"

%struct.ascon_state_t = type { [5 x i64] }

; Function Attrs: nounwind uwtable
define dso_local void @keccakSbox(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 4
  %t = alloca %struct.ascon_state_t, align 8
  store ptr %s, ptr %s.addr, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 40, ptr %t) #3
  %0 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x = getelementptr inbounds %struct.ascon_state_t, ptr %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [5 x i64], ptr %x, i32 0, i32 4
  %1 = load i64, ptr %arrayidx, align 8, !tbaa !11
  %2 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x1 = getelementptr inbounds %struct.ascon_state_t, ptr %2, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [5 x i64], ptr %x1, i32 0, i32 0
  %3 = load i64, ptr %arrayidx2, align 8, !tbaa !11
  %xor = xor i64 %3, %1
  store i64 %xor, ptr %arrayidx2, align 8, !tbaa !11
  %4 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x3 = getelementptr inbounds %struct.ascon_state_t, ptr %4, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [5 x i64], ptr %x3, i32 0, i32 3
  %5 = load i64, ptr %arrayidx4, align 8, !tbaa !11
  %6 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x5 = getelementptr inbounds %struct.ascon_state_t, ptr %6, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [5 x i64], ptr %x5, i32 0, i32 4
  %7 = load i64, ptr %arrayidx6, align 8, !tbaa !11
  %xor7 = xor i64 %7, %5
  store i64 %xor7, ptr %arrayidx6, align 8, !tbaa !11
  %8 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x8 = getelementptr inbounds %struct.ascon_state_t, ptr %8, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [5 x i64], ptr %x8, i32 0, i32 1
  %9 = load i64, ptr %arrayidx9, align 8, !tbaa !11
  %10 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x10 = getelementptr inbounds %struct.ascon_state_t, ptr %10, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [5 x i64], ptr %x10, i32 0, i32 2
  %11 = load i64, ptr %arrayidx11, align 8, !tbaa !11
  %xor12 = xor i64 %11, %9
  store i64 %xor12, ptr %arrayidx11, align 8, !tbaa !11
  %12 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x13 = getelementptr inbounds %struct.ascon_state_t, ptr %12, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [5 x i64], ptr %x13, i32 0, i32 0
  %13 = load i64, ptr %arrayidx14, align 8, !tbaa !11
  %14 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x15 = getelementptr inbounds %struct.ascon_state_t, ptr %14, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [5 x i64], ptr %x15, i32 0, i32 1
  %15 = load i64, ptr %arrayidx16, align 8, !tbaa !11
  %not = xor i64 %15, -1
  %16 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x17 = getelementptr inbounds %struct.ascon_state_t, ptr %16, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [5 x i64], ptr %x17, i32 0, i32 2
  %17 = load i64, ptr %arrayidx18, align 8, !tbaa !11
  %and = and i64 %not, %17
  %xor19 = xor i64 %13, %and
  %x20 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [5 x i64], ptr %x20, i32 0, i32 0
  store i64 %xor19, ptr %arrayidx21, align 8, !tbaa !11
  %18 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x22 = getelementptr inbounds %struct.ascon_state_t, ptr %18, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [5 x i64], ptr %x22, i32 0, i32 1
  %19 = load i64, ptr %arrayidx23, align 8, !tbaa !11
  %20 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x24 = getelementptr inbounds %struct.ascon_state_t, ptr %20, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [5 x i64], ptr %x24, i32 0, i32 2
  %21 = load i64, ptr %arrayidx25, align 8, !tbaa !11
  %not26 = xor i64 %21, -1
  %22 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x27 = getelementptr inbounds %struct.ascon_state_t, ptr %22, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [5 x i64], ptr %x27, i32 0, i32 3
  %23 = load i64, ptr %arrayidx28, align 8, !tbaa !11
  %and29 = and i64 %not26, %23
  %xor30 = xor i64 %19, %and29
  %x31 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [5 x i64], ptr %x31, i32 0, i32 1
  store i64 %xor30, ptr %arrayidx32, align 8, !tbaa !11
  %24 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x33 = getelementptr inbounds %struct.ascon_state_t, ptr %24, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [5 x i64], ptr %x33, i32 0, i32 2
  %25 = load i64, ptr %arrayidx34, align 8, !tbaa !11
  %26 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x35 = getelementptr inbounds %struct.ascon_state_t, ptr %26, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [5 x i64], ptr %x35, i32 0, i32 3
  %27 = load i64, ptr %arrayidx36, align 8, !tbaa !11
  %not37 = xor i64 %27, -1
  %28 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x38 = getelementptr inbounds %struct.ascon_state_t, ptr %28, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [5 x i64], ptr %x38, i32 0, i32 4
  %29 = load i64, ptr %arrayidx39, align 8, !tbaa !11
  %and40 = and i64 %not37, %29
  %xor41 = xor i64 %25, %and40
  %x42 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [5 x i64], ptr %x42, i32 0, i32 2
  store i64 %xor41, ptr %arrayidx43, align 8, !tbaa !11
  %30 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x44 = getelementptr inbounds %struct.ascon_state_t, ptr %30, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [5 x i64], ptr %x44, i32 0, i32 3
  %31 = load i64, ptr %arrayidx45, align 8, !tbaa !11
  %32 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x46 = getelementptr inbounds %struct.ascon_state_t, ptr %32, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [5 x i64], ptr %x46, i32 0, i32 4
  %33 = load i64, ptr %arrayidx47, align 8, !tbaa !11
  %not48 = xor i64 %33, -1
  %34 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x49 = getelementptr inbounds %struct.ascon_state_t, ptr %34, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [5 x i64], ptr %x49, i32 0, i32 0
  %35 = load i64, ptr %arrayidx50, align 8, !tbaa !11
  %and51 = and i64 %not48, %35
  %xor52 = xor i64 %31, %and51
  %x53 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [5 x i64], ptr %x53, i32 0, i32 3
  store i64 %xor52, ptr %arrayidx54, align 8, !tbaa !11
  %36 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x55 = getelementptr inbounds %struct.ascon_state_t, ptr %36, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [5 x i64], ptr %x55, i32 0, i32 4
  %37 = load i64, ptr %arrayidx56, align 8, !tbaa !11
  %38 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x57 = getelementptr inbounds %struct.ascon_state_t, ptr %38, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [5 x i64], ptr %x57, i32 0, i32 0
  %39 = load i64, ptr %arrayidx58, align 8, !tbaa !11
  %not59 = xor i64 %39, -1
  %40 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x60 = getelementptr inbounds %struct.ascon_state_t, ptr %40, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [5 x i64], ptr %x60, i32 0, i32 1
  %41 = load i64, ptr %arrayidx61, align 8, !tbaa !11
  %and62 = and i64 %not59, %41
  %xor63 = xor i64 %37, %and62
  %x64 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx65 = getelementptr inbounds [5 x i64], ptr %x64, i32 0, i32 4
  store i64 %xor63, ptr %arrayidx65, align 8, !tbaa !11
  %x66 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [5 x i64], ptr %x66, i32 0, i32 0
  %42 = load i64, ptr %arrayidx67, align 8, !tbaa !11
  %x68 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [5 x i64], ptr %x68, i32 0, i32 1
  %43 = load i64, ptr %arrayidx69, align 8, !tbaa !11
  %xor70 = xor i64 %43, %42
  store i64 %xor70, ptr %arrayidx69, align 8, !tbaa !11
  %x71 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [5 x i64], ptr %x71, i32 0, i32 4
  %44 = load i64, ptr %arrayidx72, align 8, !tbaa !11
  %x73 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [5 x i64], ptr %x73, i32 0, i32 0
  %45 = load i64, ptr %arrayidx74, align 8, !tbaa !11
  %xor75 = xor i64 %45, %44
  store i64 %xor75, ptr %arrayidx74, align 8, !tbaa !11
  %x76 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [5 x i64], ptr %x76, i32 0, i32 2
  %46 = load i64, ptr %arrayidx77, align 8, !tbaa !11
  %x78 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [5 x i64], ptr %x78, i32 0, i32 3
  %47 = load i64, ptr %arrayidx79, align 8, !tbaa !11
  %xor80 = xor i64 %47, %46
  store i64 %xor80, ptr %arrayidx79, align 8, !tbaa !11
  %x81 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [5 x i64], ptr %x81, i32 0, i32 2
  %48 = load i64, ptr %arrayidx82, align 8, !tbaa !11
  %not83 = xor i64 %48, -1
  %x84 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx85 = getelementptr inbounds [5 x i64], ptr %x84, i32 0, i32 2
  store i64 %not83, ptr %arrayidx85, align 8, !tbaa !11
  %x86 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [5 x i64], ptr %x86, i32 0, i32 0
  %49 = load i64, ptr %arrayidx87, align 8, !tbaa !11
  %x88 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx89 = getelementptr inbounds [5 x i64], ptr %x88, i32 0, i32 0
  %50 = load i64, ptr %arrayidx89, align 8, !tbaa !11
  %call = call i64 @ROR(i64 noundef %50, i32 noundef 19)
  %xor90 = xor i64 %49, %call
  %x91 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [5 x i64], ptr %x91, i32 0, i32 0
  %51 = load i64, ptr %arrayidx92, align 8, !tbaa !11
  %call93 = call i64 @ROR(i64 noundef %51, i32 noundef 28)
  %xor94 = xor i64 %xor90, %call93
  %52 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x95 = getelementptr inbounds %struct.ascon_state_t, ptr %52, i32 0, i32 0
  %arrayidx96 = getelementptr inbounds [5 x i64], ptr %x95, i32 0, i32 0
  store i64 %xor94, ptr %arrayidx96, align 8, !tbaa !11
  %x97 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx98 = getelementptr inbounds [5 x i64], ptr %x97, i32 0, i32 1
  %53 = load i64, ptr %arrayidx98, align 8, !tbaa !11
  %x99 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx100 = getelementptr inbounds [5 x i64], ptr %x99, i32 0, i32 1
  %54 = load i64, ptr %arrayidx100, align 8, !tbaa !11
  %call101 = call i64 @ROR(i64 noundef %54, i32 noundef 61)
  %xor102 = xor i64 %53, %call101
  %x103 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx104 = getelementptr inbounds [5 x i64], ptr %x103, i32 0, i32 1
  %55 = load i64, ptr %arrayidx104, align 8, !tbaa !11
  %call105 = call i64 @ROR(i64 noundef %55, i32 noundef 39)
  %xor106 = xor i64 %xor102, %call105
  %56 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x107 = getelementptr inbounds %struct.ascon_state_t, ptr %56, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [5 x i64], ptr %x107, i32 0, i32 1
  store i64 %xor106, ptr %arrayidx108, align 8, !tbaa !11
  %x109 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx110 = getelementptr inbounds [5 x i64], ptr %x109, i32 0, i32 2
  %57 = load i64, ptr %arrayidx110, align 8, !tbaa !11
  %x111 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [5 x i64], ptr %x111, i32 0, i32 2
  %58 = load i64, ptr %arrayidx112, align 8, !tbaa !11
  %call113 = call i64 @ROR(i64 noundef %58, i32 noundef 1)
  %xor114 = xor i64 %57, %call113
  %x115 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx116 = getelementptr inbounds [5 x i64], ptr %x115, i32 0, i32 2
  %59 = load i64, ptr %arrayidx116, align 8, !tbaa !11
  %call117 = call i64 @ROR(i64 noundef %59, i32 noundef 6)
  %xor118 = xor i64 %xor114, %call117
  %60 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x119 = getelementptr inbounds %struct.ascon_state_t, ptr %60, i32 0, i32 0
  %arrayidx120 = getelementptr inbounds [5 x i64], ptr %x119, i32 0, i32 2
  store i64 %xor118, ptr %arrayidx120, align 8, !tbaa !11
  %x121 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx122 = getelementptr inbounds [5 x i64], ptr %x121, i32 0, i32 3
  %61 = load i64, ptr %arrayidx122, align 8, !tbaa !11
  %x123 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx124 = getelementptr inbounds [5 x i64], ptr %x123, i32 0, i32 3
  %62 = load i64, ptr %arrayidx124, align 8, !tbaa !11
  %call125 = call i64 @ROR(i64 noundef %62, i32 noundef 10)
  %xor126 = xor i64 %61, %call125
  %x127 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx128 = getelementptr inbounds [5 x i64], ptr %x127, i32 0, i32 3
  %63 = load i64, ptr %arrayidx128, align 8, !tbaa !11
  %call129 = call i64 @ROR(i64 noundef %63, i32 noundef 17)
  %xor130 = xor i64 %xor126, %call129
  %64 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x131 = getelementptr inbounds %struct.ascon_state_t, ptr %64, i32 0, i32 0
  %arrayidx132 = getelementptr inbounds [5 x i64], ptr %x131, i32 0, i32 3
  store i64 %xor130, ptr %arrayidx132, align 8, !tbaa !11
  %x133 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [5 x i64], ptr %x133, i32 0, i32 4
  %65 = load i64, ptr %arrayidx134, align 8, !tbaa !11
  %x135 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx136 = getelementptr inbounds [5 x i64], ptr %x135, i32 0, i32 4
  %66 = load i64, ptr %arrayidx136, align 8, !tbaa !11
  %call137 = call i64 @ROR(i64 noundef %66, i32 noundef 7)
  %xor138 = xor i64 %65, %call137
  %x139 = getelementptr inbounds %struct.ascon_state_t, ptr %t, i32 0, i32 0
  %arrayidx140 = getelementptr inbounds [5 x i64], ptr %x139, i32 0, i32 4
  %67 = load i64, ptr %arrayidx140, align 8, !tbaa !11
  %call141 = call i64 @ROR(i64 noundef %67, i32 noundef 41)
  %xor142 = xor i64 %xor138, %call141
  %68 = load ptr, ptr %s.addr, align 4, !tbaa !7
  %x143 = getelementptr inbounds %struct.ascon_state_t, ptr %68, i32 0, i32 0
  %arrayidx144 = getelementptr inbounds [5 x i64], ptr %x143, i32 0, i32 4
  store i64 %xor142, ptr %arrayidx144, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 40, ptr %t) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @ROR(i64 noundef %x, i32 noundef %n) #2 {
entry:
  %x.addr = alloca i64, align 8
  %n.addr = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8, !tbaa !11
  store i32 %n, ptr %n.addr, align 4, !tbaa !13
  %0 = load i64, ptr %x.addr, align 8, !tbaa !11
  %1 = load i32, ptr %n.addr, align 4, !tbaa !13
  %sh_prom = zext i32 %1 to i64
  %shr = lshr i64 %0, %sh_prom
  %2 = load i64, ptr %x.addr, align 8, !tbaa !11
  %3 = load i32, ptr %n.addr, align 4, !tbaa !13
  %sub = sub nsw i32 0, %3
  %and = and i32 %sub, 63
  %sh_prom1 = zext i32 %and to i64
  %shl = shl i64 %2, %sh_prom1
  %or = or i64 %shr, %shl
  ret i64 %or
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+a,+c,+m,+relax,+zbb,-d,-e,-experimental-zca,-experimental-zcb,-experimental-zcd,-experimental-zcf,-experimental-zfa,-experimental-zihintntl,-experimental-ztso,-experimental-zvfh,-f,-h,-save-restore,-svinval,-svnapot,-svpbmt,-v,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-zawrs,-zba,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zdinx,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zicbom,-zicbop,-zicboz,-zicsr,-zifencei,-zihintpause,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+a,+c,+m,+relax,+zbb,-d,-e,-experimental-zca,-experimental-zcb,-experimental-zcd,-experimental-zcf,-experimental-zfa,-experimental-zihintntl,-experimental-ztso,-experimental-zvfh,-f,-h,-save-restore,-svinval,-svnapot,-svpbmt,-v,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-zawrs,-zba,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zdinx,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zicbom,-zicbop,-zicboz,-zicsr,-zifencei,-zihintpause,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nounwind }

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
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"long long", !9, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !9, i64 0}
*** IR Dump After CoroEarlyPass on [module] omitted because no change ***
*** IR Dump After LowerExpectIntrinsicPass on keccakSbox omitted because no change ***
*** IR Dump After SimplifyCFGPass on keccakSbox omitted because no change ***
*** IR Dump After SROAPass on keccakSbox ***
; Function Attrs: nounwind uwtable
define dso_local void @keccakSbox(ptr noundef %s) #0 {
entry:
  %x = getelementptr inbounds %struct.ascon_state_t, ptr %s, i32 0, i32 0
  %arrayidx = getelementptr inbounds [5 x i64], ptr %x, i32 0, i32 4
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !7
  %x1 = getelementptr inbounds %struct.ascon_state_t, ptr %s, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [5 x i64], ptr %x1, i32 0, i32 0
  %1 = load i64, ptr %arrayidx2, align 8, !tbaa !7
  %xor = xor i64 %1, %0
  store i64 %xor, ptr %arrayidx2, align 8, !tbaa !7
  %x3 = getelementptr inbounds %struct.ascon_state_t, ptr %s, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [5 x i64], ptr %x3, i32 0, i32 3
  %2 = load i64, ptr %arrayidx4, align 8, !tbaa !7
  %x5 = getelementptr inbounds %struct.ascon_state_t, ptr %s, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [5 x i64], ptr %x5, i32 0, i32 4
  %3 = load i64, ptr %arrayidx6, align 8, !tbaa !7
  %xor7 = xor i64 %3, %2
  store i64 %xor7, ptr %arrayidx6, align 8, !tbaa !7
  %x8 = getelementptr inbounds %struct.ascon_state_t, ptr %s, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [5 x i64], ptr %x8, i32 0, i32 1
  %4 = load i64, ptr %arrayidx9, align 8, !tbaa !7
  %x10 = getelementptr inbounds %struct.ascon_state_t, ptr %s, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [5 x i64], ptr %x10, i32 0, i32 2
  %5 = load i64, ptr %arrayidx11, align 8, !tbaa !7
  %xor12 = xor i64 %5, %4
  store i64 %xor12, ptr %arrayidx11, align 8, !tbaa !7
  %x13 = getelementptr inbounds %struct.ascon_state_t, ptr %s, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [5 x i64], ptr %x13, i32 0, i32 0
  %6 = load i64, ptr %arrayidx14, align 8, !tbaa !7
  %x15 = getelementptr inbounds %struct.ascon_state_t, ptr %s, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [5 x i64], ptr %x15, i32 0, i32 1
  %7 = load i64, ptr %arrayidx16, align 8, !tbaa !7
  %not = xor i64 %7, -1
  %x17 = getelementptr inbounds %struct.ascon_state_t, ptr %s, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [5 x i64], ptr %x17, i32 0, i32 2
  %8 = load i64, ptr %arrayidx18, align 8, !tbaa !7
  %and = and i64 %not, %8
  %xor19 = xor i64 %6, %and
  %x22 = getelementptr inbounds %struct.ascon_state_t, ptr %s, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [5 x i64], ptr %x22, i32 0, i32 1
  %9 = load i64, ptr %arrayidx23, align 8, !tbaa !7
  %x24 = getelementptr inbounds %struct.ascon_state_t, ptr %s, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [5 x i64], ptr %x24, i32 0, i32 2
  %10 = load i64, ptr %arrayidx25, align 8, !tbaa !7
  %not26 = xor i64 %10, -1
  %x27 = getelementptr inbounds %struct.ascon_state_t, ptr %s, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [5 x i64], ptr %x27, i32 0, i32 3
  %11 = load i64, ptr %arrayidx28, align 8, !tbaa !7
  %and29 = and i64 %not26, %11
  %xor30 = xor i64 %9, %and29
  %x33 = getelementptr inbounds %struct.ascon_state_t, ptr %s, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [5 x i64], ptr %x33, i32 0, i32 2
  %12 = load i64, ptr %arrayidx34, align 8, !tbaa !7
  %x35 = getelementptr inbounds %struct.ascon_state_t, ptr %s, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [5 x i64], ptr %x35, i32 0, i32 3
  %13 = load i64, ptr %arrayidx36, align 8, !tbaa !7
  %not37 = xor i64 %13, -1
  %x38 = getelementptr inbounds %struct.ascon_state_t, ptr %s, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [5 x i64], ptr %x38, i32 0, i32 4
  %14 = load i64, ptr %arrayidx39, align 8, !tbaa !7
  %and40 = and i64 %not37, %14
  %xor41 = xor i64 %12, %and40
  %x44 = getelementptr inbounds %struct.ascon_state_t, ptr %s, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [5 x i64], ptr %x44, i32 0, i32 3
  %15 = load i64, ptr %arrayidx45, align 8, !tbaa !7
  %x46 = getelementptr inbounds %struct.ascon_state_t, ptr %s, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [5 x i64], ptr %x46, i32 0, i32 4
  %16 = load i64, ptr %arrayidx47, align 8, !tbaa !7
  %not48 = xor i64 %16, -1
  %x49 = getelementptr inbounds %struct.ascon_state_t, ptr %s, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [5 x i64], ptr %x49, i32 0, i32 0
  %17 = load i64, ptr %arrayidx50, align 8, !tbaa !7
  %and51 = and i64 %not48, %17
  %xor52 = xor i64 %15, %and51
  %x55 = getelementptr inbounds %struct.ascon_state_t, ptr %s, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [5 x i64], ptr %x55, i32 0, i32 4
  %18 = load i64, ptr %arrayidx56, align 8, !tbaa !7
  %x57 = getelementptr inbounds %struct.ascon_state_t, ptr %s, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [5 x i64], ptr %x57, i32 0, i32 0
  %19 = load i64, ptr %arrayidx58, align 8, !tbaa !7
  %not59 = xor i64 %19, -1
  %x60 = getelementptr inbounds %struct.ascon_state_t, ptr %s, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [5 x i64], ptr %x60, i32 0, i32 1
  %20 = load i64, ptr %arrayidx61, align 8, !tbaa !7
  %and62 = and i64 %not59, %20
  %xor63 = xor i64 %18, %and62
  %xor70 = xor i64 %xor30, %xor19
  %xor75 = xor i64 %xor19, %xor63
  %xor80 = xor i64 %xor52, %xor41
  %not83 = xor i64 %xor41, -1
  %call = call i64 @ROR(i64 noundef %xor75, i32 noundef 19)
  %xor90 = xor i64 %xor75, %call
  %call93 = call i64 @ROR(i64 noundef %xor75, i32 noundef 28)
  %xor94 = xor i64 %xor90, %call93
  %x95 = getelementptr inbounds %struct.ascon_state_t, ptr %s, i32 0, i32 0
  %arrayidx96 = getelementptr inbounds [5 x i64], ptr %x95, i32 0, i32 0
  store i64 %xor94, ptr %arrayidx96, align 8, !tbaa !7
  %call101 = call i64 @ROR(i64 noundef %xor70, i32 noundef 61)
  %xor102 = xor i64 %xor70, %call101
  %call105 = call i64 @ROR(i64 noundef %xor70, i32 noundef 39)
  %xor106 = xor i64 %xor102, %call105
  %x107 = getelementptr inbounds %struct.ascon_state_t, ptr %s, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [5 x i64], ptr %x107, i32 0, i32 1
  store i64 %xor106, ptr %arrayidx108, align 8, !tbaa !7
  %call113 = call i64 @ROR(i64 noundef %not83, i32 noundef 1)
  %xor114 = xor i64 %not83, %call113
  %call117 = call i64 @ROR(i64 noundef %not83, i32 noundef 6)
  %xor118 = xor i64 %xor114, %call117
  %x119 = getelementptr inbounds %struct.ascon_state_t, ptr %s, i32 0, i32 0
  %arrayidx120 = getelementptr inbounds [5 x i64], ptr %x119, i32 0, i32 2
  store i64 %xor118, ptr %arrayidx120, align 8, !tbaa !7
  %call125 = call i64 @ROR(i64 noundef %xor80, i32 noundef 10)
  %xor126 = xor i64 %xor80, %call125
  %call129 = call i64 @ROR(i64 noundef %xor80, i32 noundef 17)
  %xor130 = xor i64 %xor126, %call129
  %x131 = getelementptr inbounds %struct.ascon_state_t, ptr %s, i32 0, i32 0
  %arrayidx132 = getelementptr inbounds [5 x i64], ptr %x131, i32 0, i32 3
  store i64 %xor130, ptr %arrayidx132, align 8, !tbaa !7
  %call137 = call i64 @ROR(i64 noundef %xor63, i32 noundef 7)
  %xor138 = xor i64 %xor63, %call137
  %call141 = call i64 @ROR(i64 noundef %xor63, i32 noundef 41)
  %xor142 = xor i64 %xor138, %call141
  %x143 = getelementptr inbounds %struct.ascon_state_t, ptr %s, i32 0, i32 0
  %arrayidx144 = getelementptr inbounds [5 x i64], ptr %x143, i32 0, i32 4
  store i64 %xor142, ptr %arrayidx144, align 8, !tbaa !7
  ret void
}
*** IR Dump After EarlyCSEPass on keccakSbox ***
; Function Attrs: nounwind uwtable
define dso_local void @keccakSbox(ptr noundef %s) #0 {
entry:
  %arrayidx = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 4
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !7
  %1 = load i64, ptr %s, align 8, !tbaa !7
  %xor = xor i64 %1, %0
  store i64 %xor, ptr %s, align 8, !tbaa !7
  %arrayidx4 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 3
  %2 = load i64, ptr %arrayidx4, align 8, !tbaa !7
  %3 = load i64, ptr %arrayidx, align 8, !tbaa !7
  %xor7 = xor i64 %3, %2
  store i64 %xor7, ptr %arrayidx, align 8, !tbaa !7
  %arrayidx9 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 1
  %4 = load i64, ptr %arrayidx9, align 8, !tbaa !7
  %arrayidx11 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 2
  %5 = load i64, ptr %arrayidx11, align 8, !tbaa !7
  %xor12 = xor i64 %5, %4
  store i64 %xor12, ptr %arrayidx11, align 8, !tbaa !7
  %6 = load i64, ptr %s, align 8, !tbaa !7
  %7 = load i64, ptr %arrayidx9, align 8, !tbaa !7
  %not = xor i64 %7, -1
  %and = and i64 %not, %xor12
  %xor19 = xor i64 %6, %and
  %not26 = xor i64 %xor12, -1
  %8 = load i64, ptr %arrayidx4, align 8, !tbaa !7
  %and29 = and i64 %not26, %8
  %xor30 = xor i64 %7, %and29
  %not37 = xor i64 %8, -1
  %9 = load i64, ptr %arrayidx, align 8, !tbaa !7
  %and40 = and i64 %not37, %9
  %xor41 = xor i64 %xor12, %and40
  %not48 = xor i64 %9, -1
  %and51 = and i64 %not48, %6
  %xor52 = xor i64 %8, %and51
  %not59 = xor i64 %6, -1
  %and62 = and i64 %not59, %7
  %xor63 = xor i64 %9, %and62
  %xor70 = xor i64 %xor30, %xor19
  %xor75 = xor i64 %xor19, %xor63
  %xor80 = xor i64 %xor52, %xor41
  %not83 = xor i64 %xor41, -1
  %call = call i64 @ROR(i64 noundef %xor75, i32 noundef 19)
  %xor90 = xor i64 %xor75, %call
  %call93 = call i64 @ROR(i64 noundef %xor75, i32 noundef 28)
  %xor94 = xor i64 %xor90, %call93
  store i64 %xor94, ptr %s, align 8, !tbaa !7
  %call101 = call i64 @ROR(i64 noundef %xor70, i32 noundef 61)
  %xor102 = xor i64 %xor70, %call101
  %call105 = call i64 @ROR(i64 noundef %xor70, i32 noundef 39)
  %xor106 = xor i64 %xor102, %call105
  store i64 %xor106, ptr %arrayidx9, align 8, !tbaa !7
  %call113 = call i64 @ROR(i64 noundef %not83, i32 noundef 1)
  %xor114 = xor i64 %not83, %call113
  %call117 = call i64 @ROR(i64 noundef %not83, i32 noundef 6)
  %xor118 = xor i64 %xor114, %call117
  store i64 %xor118, ptr %arrayidx11, align 8, !tbaa !7
  %call125 = call i64 @ROR(i64 noundef %xor80, i32 noundef 10)
  %xor126 = xor i64 %xor80, %call125
  %call129 = call i64 @ROR(i64 noundef %xor80, i32 noundef 17)
  %xor130 = xor i64 %xor126, %call129
  store i64 %xor130, ptr %arrayidx4, align 8, !tbaa !7
  %call137 = call i64 @ROR(i64 noundef %xor63, i32 noundef 7)
  %xor138 = xor i64 %xor63, %call137
  %call141 = call i64 @ROR(i64 noundef %xor63, i32 noundef 41)
  %xor142 = xor i64 %xor138, %call141
  store i64 %xor142, ptr %arrayidx, align 8, !tbaa !7
  ret void
}
*** IR Dump After CallSiteSplittingPass on keccakSbox omitted because no change ***
*** IR Pass PassManager<llvm::Function> on keccakSbox ignored ***
*** IR Dump After LowerExpectIntrinsicPass on ROR omitted because no change ***
*** IR Dump After SimplifyCFGPass on ROR omitted because no change ***
*** IR Dump After SROAPass on ROR ***
; Function Attrs: inlinehint nounwind uwtable
define internal i64 @ROR(i64 noundef %x, i32 noundef %n) #2 {
entry:
  %sh_prom = zext i32 %n to i64
  %shr = lshr i64 %x, %sh_prom
  %sub = sub nsw i32 0, %n
  %and = and i32 %sub, 63
  %sh_prom1 = zext i32 %and to i64
  %shl = shl i64 %x, %sh_prom1
  %or = or i64 %shr, %shl
  ret i64 %or
}
*** IR Dump After EarlyCSEPass on ROR omitted because no change ***
*** IR Dump After CallSiteSplittingPass on ROR omitted because no change ***
*** IR Pass PassManager<llvm::Function> on ROR ignored ***
*** IR Pass ModuleToFunctionPassAdaptor on [module] ignored ***
*** IR Dump After OpenMPOptPass on [module] omitted because no change ***
*** IR Dump After IPSCCPPass on [module] omitted because no change ***
*** IR Dump After CalledValuePropagationPass on [module] omitted because no change ***
*** IR Dump After GlobalOptPass on [module] ***
; ModuleID = 'keccakSbox.c'
source_filename = "keccakSbox.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @keccakSbox(ptr noundef %s) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 4
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !7
  %1 = load i64, ptr %s, align 8, !tbaa !7
  %xor = xor i64 %1, %0
  store i64 %xor, ptr %s, align 8, !tbaa !7
  %arrayidx4 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 3
  %2 = load i64, ptr %arrayidx4, align 8, !tbaa !7
  %3 = load i64, ptr %arrayidx, align 8, !tbaa !7
  %xor7 = xor i64 %3, %2
  store i64 %xor7, ptr %arrayidx, align 8, !tbaa !7
  %arrayidx9 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 1
  %4 = load i64, ptr %arrayidx9, align 8, !tbaa !7
  %arrayidx11 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 2
  %5 = load i64, ptr %arrayidx11, align 8, !tbaa !7
  %xor12 = xor i64 %5, %4
  store i64 %xor12, ptr %arrayidx11, align 8, !tbaa !7
  %6 = load i64, ptr %s, align 8, !tbaa !7
  %7 = load i64, ptr %arrayidx9, align 8, !tbaa !7
  %not = xor i64 %7, -1
  %and = and i64 %not, %xor12
  %xor19 = xor i64 %6, %and
  %not26 = xor i64 %xor12, -1
  %8 = load i64, ptr %arrayidx4, align 8, !tbaa !7
  %and29 = and i64 %not26, %8
  %xor30 = xor i64 %7, %and29
  %not37 = xor i64 %8, -1
  %9 = load i64, ptr %arrayidx, align 8, !tbaa !7
  %and40 = and i64 %not37, %9
  %xor41 = xor i64 %xor12, %and40
  %not48 = xor i64 %9, -1
  %and51 = and i64 %not48, %6
  %xor52 = xor i64 %8, %and51
  %not59 = xor i64 %6, -1
  %and62 = and i64 %not59, %7
  %xor63 = xor i64 %9, %and62
  %xor70 = xor i64 %xor30, %xor19
  %xor75 = xor i64 %xor19, %xor63
  %xor80 = xor i64 %xor52, %xor41
  %not83 = xor i64 %xor41, -1
  %call = call fastcc i64 @ROR(i64 noundef %xor75, i32 noundef 19)
  %xor90 = xor i64 %xor75, %call
  %call93 = call fastcc i64 @ROR(i64 noundef %xor75, i32 noundef 28)
  %xor94 = xor i64 %xor90, %call93
  store i64 %xor94, ptr %s, align 8, !tbaa !7
  %call101 = call fastcc i64 @ROR(i64 noundef %xor70, i32 noundef 61)
  %xor102 = xor i64 %xor70, %call101
  %call105 = call fastcc i64 @ROR(i64 noundef %xor70, i32 noundef 39)
  %xor106 = xor i64 %xor102, %call105
  store i64 %xor106, ptr %arrayidx9, align 8, !tbaa !7
  %call113 = call fastcc i64 @ROR(i64 noundef %not83, i32 noundef 1)
  %xor114 = xor i64 %not83, %call113
  %call117 = call fastcc i64 @ROR(i64 noundef %not83, i32 noundef 6)
  %xor118 = xor i64 %xor114, %call117
  store i64 %xor118, ptr %arrayidx11, align 8, !tbaa !7
  %call125 = call fastcc i64 @ROR(i64 noundef %xor80, i32 noundef 10)
  %xor126 = xor i64 %xor80, %call125
  %call129 = call fastcc i64 @ROR(i64 noundef %xor80, i32 noundef 17)
  %xor130 = xor i64 %xor126, %call129
  store i64 %xor130, ptr %arrayidx4, align 8, !tbaa !7
  %call137 = call fastcc i64 @ROR(i64 noundef %xor63, i32 noundef 7)
  %xor138 = xor i64 %xor63, %call137
  %call141 = call fastcc i64 @ROR(i64 noundef %xor63, i32 noundef 41)
  %xor142 = xor i64 %xor138, %call141
  store i64 %xor142, ptr %arrayidx, align 8, !tbaa !7
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @ROR(i64 noundef %x, i32 noundef %n) unnamed_addr #1 {
entry:
  %sh_prom = zext i32 %n to i64
  %shr = lshr i64 %x, %sh_prom
  %sub = sub nsw i32 0, %n
  %and = and i32 %sub, 63
  %sh_prom1 = zext i32 %and to i64
  %shl = shl i64 %x, %sh_prom1
  %or = or i64 %shr, %shl
  ret i64 %or
}

attributes #0 = { nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+a,+c,+m,+relax,+zbb,-d,-e,-experimental-zca,-experimental-zcb,-experimental-zcd,-experimental-zcf,-experimental-zfa,-experimental-zihintntl,-experimental-ztso,-experimental-zvfh,-f,-h,-save-restore,-svinval,-svnapot,-svpbmt,-v,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-zawrs,-zba,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zdinx,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zicbom,-zicbop,-zicboz,-zicsr,-zifencei,-zihintpause,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { inlinehint nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+a,+c,+m,+relax,+zbb,-d,-e,-experimental-zca,-experimental-zcb,-experimental-zcd,-experimental-zcf,-experimental-zfa,-experimental-zihintntl,-experimental-ztso,-experimental-zvfh,-f,-h,-save-restore,-svinval,-svnapot,-svpbmt,-v,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-zawrs,-zba,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zdinx,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zicbom,-zicbop,-zicboz,-zicsr,-zifencei,-zihintpause,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }

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
*** IR Dump After PromotePass on keccakSbox omitted because no change ***
*** IR Dump After InstCombinePass on keccakSbox ***
; Function Attrs: nounwind uwtable
define dso_local void @keccakSbox(ptr noundef %s) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 4
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !7
  %1 = load i64, ptr %s, align 8, !tbaa !7
  %xor = xor i64 %1, %0
  store i64 %xor, ptr %s, align 8, !tbaa !7
  %arrayidx4 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 3
  %2 = load i64, ptr %arrayidx4, align 8, !tbaa !7
  %xor7 = xor i64 %0, %2
  store i64 %xor7, ptr %arrayidx, align 8, !tbaa !7
  %arrayidx9 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 1
  %3 = load i64, ptr %arrayidx9, align 8, !tbaa !7
  %arrayidx11 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 2
  %4 = load i64, ptr %arrayidx11, align 8, !tbaa !7
  %xor12 = xor i64 %4, %3
  store i64 %xor12, ptr %arrayidx11, align 8, !tbaa !7
  %5 = load i64, ptr %s, align 8, !tbaa !7
  %not = xor i64 %3, -1
  %and = and i64 %4, %not
  %xor19 = xor i64 %5, %and
  %not26 = xor i64 %xor12, -1
  %6 = load i64, ptr %arrayidx4, align 8, !tbaa !7
  %and29 = and i64 %6, %not26
  %xor30 = xor i64 %3, %and29
  %not37 = xor i64 %6, -1
  %7 = load i64, ptr %arrayidx, align 8, !tbaa !7
  %and40 = and i64 %7, %not37
  %xor41 = xor i64 %xor12, %and40
  %not48 = xor i64 %7, -1
  %and51 = and i64 %5, %not48
  %xor52 = xor i64 %6, %and51
  %not59 = xor i64 %5, -1
  %and62 = and i64 %3, %not59
  %xor63 = xor i64 %7, %and62
  %xor70 = xor i64 %xor30, %xor19
  %xor75 = xor i64 %xor19, %xor63
  %xor80 = xor i64 %xor52, %xor41
  %not83 = xor i64 %xor41, -1
  %call = call fastcc i64 @ROR(i64 noundef %xor75, i32 noundef 19)
  %call93 = call fastcc i64 @ROR(i64 noundef %xor75, i32 noundef 28)
  %8 = xor i64 %call, %call93
  %xor94 = xor i64 %8, %xor75
  store i64 %xor94, ptr %s, align 8, !tbaa !7
  %call101 = call fastcc i64 @ROR(i64 noundef %xor70, i32 noundef 61)
  %call105 = call fastcc i64 @ROR(i64 noundef %xor70, i32 noundef 39)
  %9 = xor i64 %call101, %call105
  %xor106 = xor i64 %9, %xor70
  store i64 %xor106, ptr %arrayidx9, align 8, !tbaa !7
  %call113 = call fastcc i64 @ROR(i64 noundef %not83, i32 noundef 1)
  %call117 = call fastcc i64 @ROR(i64 noundef %not83, i32 noundef 6)
  %10 = xor i64 %call113, %call117
  %xor118 = xor i64 %10, %not83
  store i64 %xor118, ptr %arrayidx11, align 8, !tbaa !7
  %call125 = call fastcc i64 @ROR(i64 noundef %xor80, i32 noundef 10)
  %call129 = call fastcc i64 @ROR(i64 noundef %xor80, i32 noundef 17)
  %11 = xor i64 %call125, %call129
  %xor130 = xor i64 %11, %xor80
  store i64 %xor130, ptr %arrayidx4, align 8, !tbaa !7
  %call137 = call fastcc i64 @ROR(i64 noundef %xor63, i32 noundef 7)
  %call141 = call fastcc i64 @ROR(i64 noundef %xor63, i32 noundef 41)
  %12 = xor i64 %call137, %call141
  %xor142 = xor i64 %12, %xor63
  store i64 %xor142, ptr %arrayidx, align 8, !tbaa !7
  ret void
}
*** IR Dump After SimplifyCFGPass on keccakSbox omitted because no change ***
*** IR Pass PassManager<llvm::Function> on keccakSbox ignored ***
*** IR Dump After PromotePass on ROR omitted because no change ***
*** IR Dump After InstCombinePass on ROR omitted because no change ***
*** IR Dump After SimplifyCFGPass on ROR omitted because no change ***
*** IR Pass PassManager<llvm::Function> on ROR ignored ***
*** IR Pass ModuleToFunctionPassAdaptor on [module] ignored ***
*** IR Dump After RequireAnalysisPass<llvm::GlobalsAA, llvm::Module> on [module] omitted because no change ***
*** IR Dump After InvalidateAnalysisPass<llvm::AAManager> on keccakSbox omitted because no change ***
*** IR Dump After InvalidateAnalysisPass<llvm::AAManager> on ROR omitted because no change ***
*** IR Pass ModuleToFunctionPassAdaptor on [module] ignored ***
*** IR Dump After RequireAnalysisPass<llvm::ProfileSummaryAnalysis, llvm::Module> on [module] omitted because no change ***
*** IR Dump After InlinerPass on (ROR) omitted because no change ***
*** IR Dump After InlinerPass on (ROR) omitted because no change ***
*** IR Dump After PostOrderFunctionAttrsPass on (ROR) omitted because no change ***
*** IR Dump After ArgumentPromotionPass on (ROR) omitted because no change ***
*** IR Dump After OpenMPOptCGSCCPass on (ROR) omitted because no change ***
*** IR Dump After SROAPass on ROR omitted because no change ***
*** IR Dump After EarlyCSEPass on ROR omitted because no change ***
*** IR Dump After SpeculativeExecutionPass on ROR omitted because no change ***
*** IR Dump After JumpThreadingPass on ROR omitted because no change ***
*** IR Dump After CorrelatedValuePropagationPass on ROR omitted because no change ***
*** IR Dump After SimplifyCFGPass on ROR omitted because no change ***
*** IR Dump After InstCombinePass on ROR omitted because no change ***
*** IR Dump After AggressiveInstCombinePass on ROR omitted because no change ***
*** IR Dump After ConstraintEliminationPass on ROR omitted because no change ***
*** IR Dump After LibCallsShrinkWrapPass on ROR omitted because no change ***
*** IR Dump After TailCallElimPass on ROR omitted because no change ***
*** IR Dump After SimplifyCFGPass on ROR omitted because no change ***
*** IR Dump After ReassociatePass on ROR ***
; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @ROR(i64 noundef %x, i32 noundef %n) unnamed_addr #1 {
entry:
  %sh_prom = zext i32 %n to i64
  %shr = lshr i64 %x, %sh_prom
  %sub = sub nsw i32 0, %n
  %and = and i32 %sub, 63
  %sh_prom1 = zext i32 %and to i64
  %shl = shl i64 %x, %sh_prom1
  %or = or i64 %shl, %shr
  ret i64 %or
}
*** IR Dump After RequireAnalysisPass<llvm::OptimizationRemarkEmitterAnalysis, llvm::Function> on ROR omitted because no change ***
*** IR Dump After LoopSimplifyPass on ROR omitted because no change ***
*** IR Dump After LCSSAPass on ROR omitted because no change ***
*** IR Pass PassManager<llvm::Function> on ROR ignored ***
*** IR Pass FunctionToLoopPassAdaptor on ROR ignored ***
*** IR Dump After SimplifyCFGPass on ROR omitted because no change ***
*** IR Dump After InstCombinePass on ROR omitted because no change ***
*** IR Dump After LoopSimplifyPass on ROR omitted because no change ***
*** IR Dump After LCSSAPass on ROR omitted because no change ***
*** IR Pass PassManager<llvm::Function> on ROR ignored ***
*** IR Pass FunctionToLoopPassAdaptor on ROR ignored ***
*** IR Dump After SROAPass on ROR omitted because no change ***
*** IR Dump After VectorCombinePass on ROR omitted because no change ***
*** IR Dump After MergedLoadStoreMotionPass on ROR omitted because no change ***
*** IR Dump After GVNPass on ROR omitted because no change ***
*** IR Dump After SCCPPass on ROR omitted because no change ***
*** IR Dump After BDCEPass on ROR omitted because no change ***
*** IR Dump After InstCombinePass on ROR omitted because no change ***
*** IR Dump After JumpThreadingPass on ROR omitted because no change ***
*** IR Dump After CorrelatedValuePropagationPass on ROR omitted because no change ***
*** IR Dump After ADCEPass on ROR omitted because no change ***
*** IR Dump After MemCpyOptPass on ROR omitted because no change ***
*** IR Dump After DSEPass on ROR omitted because no change ***
*** IR Dump After LoopSimplifyPass on ROR omitted because no change ***
*** IR Dump After LCSSAPass on ROR omitted because no change ***
*** IR Pass PassManager<llvm::Function> on ROR ignored ***
*** IR Pass FunctionToLoopPassAdaptor on ROR ignored ***
*** IR Dump After CoroElidePass on ROR omitted because no change ***
*** IR Dump After SimplifyCFGPass on ROR omitted because no change ***
*** IR Dump After InstCombinePass on ROR omitted because no change ***
*** IR Pass PassManager<llvm::Function> on ROR ignored ***
*** IR Pass CGSCCToFunctionPassAdaptor on (ROR) ignored ***
*** IR Dump After PostOrderFunctionAttrsPass on (ROR) ***
; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc i64 @ROR(i64 noundef %x, i32 noundef %n) unnamed_addr #1 {
entry:
  %sh_prom = zext i32 %n to i64
  %shr = lshr i64 %x, %sh_prom
  %sub = sub nsw i32 0, %n
  %and = and i32 %sub, 63
  %sh_prom1 = zext i32 %and to i64
  %shl = shl i64 %x, %sh_prom1
  %or = or i64 %shl, %shr
  ret i64 %or
}
*** IR Dump After RequireAnalysisPass<llvm::ShouldNotRunFunctionPassesAnalysis, llvm::Function> on ROR omitted because no change ***
*** IR Pass CGSCCToFunctionPassAdaptor on (ROR) ignored ***
*** IR Dump After CoroSplitPass on (ROR) omitted because no change ***
*** IR Pass PassManager<LazyCallGraph::SCC, llvm::CGSCCAnalysisManager, llvm::LazyCallGraph &, llvm::CGSCCUpdateResult &> on (ROR) ignored ***
*** IR Pass DevirtSCCRepeatedPass on (ROR) ignored ***
*** IR Dump After InlinerPass on (keccakSbox) omitted because no change ***
*** IR Dump After InlinerPass on (keccakSbox) ***
; Function Attrs: nounwind uwtable
define dso_local void @keccakSbox(ptr noundef %s) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 4
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !7
  %1 = load i64, ptr %s, align 8, !tbaa !7
  %xor = xor i64 %1, %0
  store i64 %xor, ptr %s, align 8, !tbaa !7
  %arrayidx4 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 3
  %2 = load i64, ptr %arrayidx4, align 8, !tbaa !7
  %xor7 = xor i64 %0, %2
  store i64 %xor7, ptr %arrayidx, align 8, !tbaa !7
  %arrayidx9 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 1
  %3 = load i64, ptr %arrayidx9, align 8, !tbaa !7
  %arrayidx11 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 2
  %4 = load i64, ptr %arrayidx11, align 8, !tbaa !7
  %xor12 = xor i64 %4, %3
  store i64 %xor12, ptr %arrayidx11, align 8, !tbaa !7
  %5 = load i64, ptr %s, align 8, !tbaa !7
  %not = xor i64 %3, -1
  %and = and i64 %4, %not
  %xor19 = xor i64 %5, %and
  %not26 = xor i64 %xor12, -1
  %6 = load i64, ptr %arrayidx4, align 8, !tbaa !7
  %and29 = and i64 %6, %not26
  %xor30 = xor i64 %3, %and29
  %not37 = xor i64 %6, -1
  %7 = load i64, ptr %arrayidx, align 8, !tbaa !7
  %and40 = and i64 %7, %not37
  %xor41 = xor i64 %xor12, %and40
  %not48 = xor i64 %7, -1
  %and51 = and i64 %5, %not48
  %xor52 = xor i64 %6, %and51
  %not59 = xor i64 %5, -1
  %and62 = and i64 %3, %not59
  %xor63 = xor i64 %7, %and62
  %xor70 = xor i64 %xor30, %xor19
  %xor75 = xor i64 %xor19, %xor63
  %xor80 = xor i64 %xor52, %xor41
  %not83 = xor i64 %xor41, -1
  %shr.i = lshr i64 %xor75, 19
  %shl.i = shl i64 %xor75, 45
  %or.i = or i64 %shl.i, %shr.i
  %shr.i187 = lshr i64 %xor75, 28
  %shl.i188 = shl i64 %xor75, 36
  %or.i189 = or i64 %shl.i188, %shr.i187
  %8 = xor i64 %or.i, %or.i189
  %xor94 = xor i64 %8, %xor75
  store i64 %xor94, ptr %s, align 8, !tbaa !7
  %shr.i190 = lshr i64 %xor70, 61
  %shl.i191 = shl i64 %xor70, 3
  %or.i192 = or i64 %shl.i191, %shr.i190
  %shr.i193 = lshr i64 %xor70, 39
  %shl.i194 = shl i64 %xor70, 25
  %or.i195 = or i64 %shl.i194, %shr.i193
  %9 = xor i64 %or.i192, %or.i195
  %xor106 = xor i64 %9, %xor70
  store i64 %xor106, ptr %arrayidx9, align 8, !tbaa !7
  %shr.i196 = lshr i64 %not83, 1
  %shl.i197 = shl i64 %not83, 63
  %or.i198 = or i64 %shl.i197, %shr.i196
  %shr.i199 = lshr i64 %not83, 6
  %shl.i200 = shl i64 %not83, 58
  %or.i201 = or i64 %shl.i200, %shr.i199
  %10 = xor i64 %or.i198, %or.i201
  %xor118 = xor i64 %10, %not83
  store i64 %xor118, ptr %arrayidx11, align 8, !tbaa !7
  %shr.i202 = lshr i64 %xor80, 10
  %shl.i203 = shl i64 %xor80, 54
  %or.i204 = or i64 %shl.i203, %shr.i202
  %shr.i205 = lshr i64 %xor80, 17
  %shl.i206 = shl i64 %xor80, 47
  %or.i207 = or i64 %shl.i206, %shr.i205
  %11 = xor i64 %or.i204, %or.i207
  %xor130 = xor i64 %11, %xor80
  store i64 %xor130, ptr %arrayidx4, align 8, !tbaa !7
  %shr.i208 = lshr i64 %xor63, 7
  %shl.i209 = shl i64 %xor63, 57
  %or.i210 = or i64 %shl.i209, %shr.i208
  %shr.i211 = lshr i64 %xor63, 41
  %shl.i212 = shl i64 %xor63, 23
  %or.i213 = or i64 %shl.i212, %shr.i211
  %12 = xor i64 %or.i210, %or.i213
  %xor142 = xor i64 %12, %xor63
  store i64 %xor142, ptr %arrayidx, align 8, !tbaa !7
  ret void
}
*** IR Dump After PostOrderFunctionAttrsPass on (keccakSbox) omitted because no change ***
*** IR Dump After ArgumentPromotionPass on (keccakSbox) omitted because no change ***
*** IR Dump After OpenMPOptCGSCCPass on (keccakSbox) omitted because no change ***
*** IR Dump After SROAPass on keccakSbox omitted because no change ***
*** IR Dump After EarlyCSEPass on keccakSbox ***
; Function Attrs: nounwind uwtable
define dso_local void @keccakSbox(ptr noundef %s) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 4
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !7
  %1 = load i64, ptr %s, align 8, !tbaa !7
  %xor = xor i64 %1, %0
  store i64 %xor, ptr %s, align 8, !tbaa !7
  %arrayidx4 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 3
  %2 = load i64, ptr %arrayidx4, align 8, !tbaa !7
  %xor7 = xor i64 %0, %2
  store i64 %xor7, ptr %arrayidx, align 8, !tbaa !7
  %arrayidx9 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 1
  %3 = load i64, ptr %arrayidx9, align 8, !tbaa !7
  %arrayidx11 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 2
  %4 = load i64, ptr %arrayidx11, align 8, !tbaa !7
  %xor12 = xor i64 %4, %3
  store i64 %xor12, ptr %arrayidx11, align 8, !tbaa !7
  %not = xor i64 %3, -1
  %and = and i64 %4, %not
  %xor19 = xor i64 %xor, %and
  %not26 = xor i64 %xor12, -1
  %and29 = and i64 %2, %not26
  %xor30 = xor i64 %3, %and29
  %not37 = xor i64 %2, -1
  %and40 = and i64 %xor7, %not37
  %xor41 = xor i64 %xor12, %and40
  %not48 = xor i64 %xor7, -1
  %and51 = and i64 %xor, %not48
  %xor52 = xor i64 %2, %and51
  %not59 = xor i64 %xor, -1
  %and62 = and i64 %3, %not59
  %xor63 = xor i64 %xor7, %and62
  %xor70 = xor i64 %xor30, %xor19
  %xor75 = xor i64 %xor19, %xor63
  %xor80 = xor i64 %xor52, %xor41
  %not83 = xor i64 %xor41, -1
  %shr.i = lshr i64 %xor75, 19
  %shl.i = shl i64 %xor75, 45
  %or.i = or i64 %shl.i, %shr.i
  %shr.i187 = lshr i64 %xor75, 28
  %shl.i188 = shl i64 %xor75, 36
  %or.i189 = or i64 %shl.i188, %shr.i187
  %5 = xor i64 %or.i, %or.i189
  %xor94 = xor i64 %5, %xor75
  store i64 %xor94, ptr %s, align 8, !tbaa !7
  %shr.i190 = lshr i64 %xor70, 61
  %shl.i191 = shl i64 %xor70, 3
  %or.i192 = or i64 %shl.i191, %shr.i190
  %shr.i193 = lshr i64 %xor70, 39
  %shl.i194 = shl i64 %xor70, 25
  %or.i195 = or i64 %shl.i194, %shr.i193
  %6 = xor i64 %or.i192, %or.i195
  %xor106 = xor i64 %6, %xor70
  store i64 %xor106, ptr %arrayidx9, align 8, !tbaa !7
  %shr.i196 = lshr i64 %not83, 1
  %shl.i197 = shl i64 %not83, 63
  %or.i198 = or i64 %shl.i197, %shr.i196
  %shr.i199 = lshr i64 %not83, 6
  %shl.i200 = shl i64 %not83, 58
  %or.i201 = or i64 %shl.i200, %shr.i199
  %7 = xor i64 %or.i198, %or.i201
  %xor118 = xor i64 %7, %not83
  store i64 %xor118, ptr %arrayidx11, align 8, !tbaa !7
  %shr.i202 = lshr i64 %xor80, 10
  %shl.i203 = shl i64 %xor80, 54
  %or.i204 = or i64 %shl.i203, %shr.i202
  %shr.i205 = lshr i64 %xor80, 17
  %shl.i206 = shl i64 %xor80, 47
  %or.i207 = or i64 %shl.i206, %shr.i205
  %8 = xor i64 %or.i204, %or.i207
  %xor130 = xor i64 %8, %xor80
  store i64 %xor130, ptr %arrayidx4, align 8, !tbaa !7
  %shr.i208 = lshr i64 %xor63, 7
  %shl.i209 = shl i64 %xor63, 57
  %or.i210 = or i64 %shl.i209, %shr.i208
  %shr.i211 = lshr i64 %xor63, 41
  %shl.i212 = shl i64 %xor63, 23
  %or.i213 = or i64 %shl.i212, %shr.i211
  %9 = xor i64 %or.i210, %or.i213
  %xor142 = xor i64 %9, %xor63
  store i64 %xor142, ptr %arrayidx, align 8, !tbaa !7
  ret void
}
*** IR Dump After SpeculativeExecutionPass on keccakSbox omitted because no change ***
*** IR Dump After JumpThreadingPass on keccakSbox omitted because no change ***
*** IR Dump After CorrelatedValuePropagationPass on keccakSbox omitted because no change ***
*** IR Dump After SimplifyCFGPass on keccakSbox omitted because no change ***
*** IR Dump After InstCombinePass on keccakSbox ***
; Function Attrs: nounwind uwtable
define dso_local void @keccakSbox(ptr noundef %s) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 4
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !7
  %1 = load i64, ptr %s, align 8, !tbaa !7
  %xor = xor i64 %1, %0
  store i64 %xor, ptr %s, align 8, !tbaa !7
  %arrayidx4 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 3
  %2 = load i64, ptr %arrayidx4, align 8, !tbaa !7
  %xor7 = xor i64 %0, %2
  store i64 %xor7, ptr %arrayidx, align 8, !tbaa !7
  %arrayidx9 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 1
  %3 = load i64, ptr %arrayidx9, align 8, !tbaa !7
  %arrayidx11 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 2
  %4 = load i64, ptr %arrayidx11, align 8, !tbaa !7
  %xor12 = xor i64 %4, %3
  store i64 %xor12, ptr %arrayidx11, align 8, !tbaa !7
  %not = xor i64 %3, -1
  %and = and i64 %4, %not
  %xor19 = xor i64 %xor, %and
  %not26 = xor i64 %xor12, -1
  %and29 = and i64 %2, %not26
  %xor30 = xor i64 %3, %and29
  %not37 = xor i64 %2, -1
  %and40 = and i64 %0, %not37
  %xor41 = xor i64 %xor12, %and40
  %not48 = xor i64 %xor7, -1
  %and51 = and i64 %xor, %not48
  %xor52 = xor i64 %2, %and51
  %not59 = xor i64 %xor, -1
  %and62 = and i64 %3, %not59
  %xor63 = xor i64 %xor7, %and62
  %xor70 = xor i64 %xor30, %xor19
  %xor75 = xor i64 %xor19, %xor63
  %xor80 = xor i64 %xor52, %xor41
  %not83 = xor i64 %xor41, -1
  %or.i = call i64 @llvm.fshl.i64(i64 %xor75, i64 %xor75, i64 45)
  %or.i189 = call i64 @llvm.fshl.i64(i64 %xor75, i64 %xor75, i64 36)
  %5 = xor i64 %or.i, %or.i189
  %xor94 = xor i64 %5, %xor75
  store i64 %xor94, ptr %s, align 8, !tbaa !7
  %or.i192 = call i64 @llvm.fshl.i64(i64 %xor70, i64 %xor70, i64 3)
  %or.i195 = call i64 @llvm.fshl.i64(i64 %xor70, i64 %xor70, i64 25)
  %6 = xor i64 %or.i192, %or.i195
  %xor106 = xor i64 %6, %xor70
  store i64 %xor106, ptr %arrayidx9, align 8, !tbaa !7
  %or.i198 = call i64 @llvm.fshl.i64(i64 %not83, i64 %not83, i64 63)
  %or.i201 = call i64 @llvm.fshl.i64(i64 %not83, i64 %not83, i64 58)
  %7 = xor i64 %or.i198, %or.i201
  %xor118 = xor i64 %7, %not83
  store i64 %xor118, ptr %arrayidx11, align 8, !tbaa !7
  %or.i204 = call i64 @llvm.fshl.i64(i64 %xor80, i64 %xor80, i64 54)
  %or.i207 = call i64 @llvm.fshl.i64(i64 %xor80, i64 %xor80, i64 47)
  %8 = xor i64 %or.i204, %or.i207
  %xor130 = xor i64 %8, %xor80
  store i64 %xor130, ptr %arrayidx4, align 8, !tbaa !7
  %or.i210 = call i64 @llvm.fshl.i64(i64 %xor63, i64 %xor63, i64 57)
  %or.i213 = call i64 @llvm.fshl.i64(i64 %xor63, i64 %xor63, i64 23)
  %9 = xor i64 %or.i210, %or.i213
  %xor142 = xor i64 %9, %xor63
  store i64 %xor142, ptr %arrayidx, align 8, !tbaa !7
  ret void
}
*** IR Dump After AggressiveInstCombinePass on keccakSbox omitted because no change ***
*** IR Dump After ConstraintEliminationPass on keccakSbox omitted because no change ***
*** IR Dump After LibCallsShrinkWrapPass on keccakSbox omitted because no change ***
*** IR Dump After TailCallElimPass on keccakSbox ***
; Function Attrs: nounwind uwtable
define dso_local void @keccakSbox(ptr noundef %s) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 4
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !7
  %1 = load i64, ptr %s, align 8, !tbaa !7
  %xor = xor i64 %1, %0
  store i64 %xor, ptr %s, align 8, !tbaa !7
  %arrayidx4 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 3
  %2 = load i64, ptr %arrayidx4, align 8, !tbaa !7
  %xor7 = xor i64 %0, %2
  store i64 %xor7, ptr %arrayidx, align 8, !tbaa !7
  %arrayidx9 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 1
  %3 = load i64, ptr %arrayidx9, align 8, !tbaa !7
  %arrayidx11 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 2
  %4 = load i64, ptr %arrayidx11, align 8, !tbaa !7
  %xor12 = xor i64 %4, %3
  store i64 %xor12, ptr %arrayidx11, align 8, !tbaa !7
  %not = xor i64 %3, -1
  %and = and i64 %4, %not
  %xor19 = xor i64 %xor, %and
  %not26 = xor i64 %xor12, -1
  %and29 = and i64 %2, %not26
  %xor30 = xor i64 %3, %and29
  %not37 = xor i64 %2, -1
  %and40 = and i64 %0, %not37
  %xor41 = xor i64 %xor12, %and40
  %not48 = xor i64 %xor7, -1
  %and51 = and i64 %xor, %not48
  %xor52 = xor i64 %2, %and51
  %not59 = xor i64 %xor, -1
  %and62 = and i64 %3, %not59
  %xor63 = xor i64 %xor7, %and62
  %xor70 = xor i64 %xor30, %xor19
  %xor75 = xor i64 %xor19, %xor63
  %xor80 = xor i64 %xor52, %xor41
  %not83 = xor i64 %xor41, -1
  %or.i = tail call i64 @llvm.fshl.i64(i64 %xor75, i64 %xor75, i64 45)
  %or.i189 = tail call i64 @llvm.fshl.i64(i64 %xor75, i64 %xor75, i64 36)
  %5 = xor i64 %or.i, %or.i189
  %xor94 = xor i64 %5, %xor75
  store i64 %xor94, ptr %s, align 8, !tbaa !7
  %or.i192 = tail call i64 @llvm.fshl.i64(i64 %xor70, i64 %xor70, i64 3)
  %or.i195 = tail call i64 @llvm.fshl.i64(i64 %xor70, i64 %xor70, i64 25)
  %6 = xor i64 %or.i192, %or.i195
  %xor106 = xor i64 %6, %xor70
  store i64 %xor106, ptr %arrayidx9, align 8, !tbaa !7
  %or.i198 = tail call i64 @llvm.fshl.i64(i64 %not83, i64 %not83, i64 63)
  %or.i201 = tail call i64 @llvm.fshl.i64(i64 %not83, i64 %not83, i64 58)
  %7 = xor i64 %or.i198, %or.i201
  %xor118 = xor i64 %7, %not83
  store i64 %xor118, ptr %arrayidx11, align 8, !tbaa !7
  %or.i204 = tail call i64 @llvm.fshl.i64(i64 %xor80, i64 %xor80, i64 54)
  %or.i207 = tail call i64 @llvm.fshl.i64(i64 %xor80, i64 %xor80, i64 47)
  %8 = xor i64 %or.i204, %or.i207
  %xor130 = xor i64 %8, %xor80
  store i64 %xor130, ptr %arrayidx4, align 8, !tbaa !7
  %or.i210 = tail call i64 @llvm.fshl.i64(i64 %xor63, i64 %xor63, i64 57)
  %or.i213 = tail call i64 @llvm.fshl.i64(i64 %xor63, i64 %xor63, i64 23)
  %9 = xor i64 %or.i210, %or.i213
  %xor142 = xor i64 %9, %xor63
  store i64 %xor142, ptr %arrayidx, align 8, !tbaa !7
  ret void
}
*** IR Dump After SimplifyCFGPass on keccakSbox omitted because no change ***
*** IR Dump After ReassociatePass on keccakSbox ***
; Function Attrs: nounwind uwtable
define dso_local void @keccakSbox(ptr noundef %s) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 4
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !7
  %1 = load i64, ptr %s, align 8, !tbaa !7
  %xor = xor i64 %1, %0
  store i64 %xor, ptr %s, align 8, !tbaa !7
  %arrayidx4 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 3
  %2 = load i64, ptr %arrayidx4, align 8, !tbaa !7
  %xor7 = xor i64 %2, %0
  store i64 %xor7, ptr %arrayidx, align 8, !tbaa !7
  %arrayidx9 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 1
  %3 = load i64, ptr %arrayidx9, align 8, !tbaa !7
  %arrayidx11 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 2
  %4 = load i64, ptr %arrayidx11, align 8, !tbaa !7
  %xor12 = xor i64 %4, %3
  store i64 %xor12, ptr %arrayidx11, align 8, !tbaa !7
  %not = xor i64 %3, -1
  %and = and i64 %4, %not
  %xor19 = xor i64 %and, %xor
  %not26 = xor i64 %xor12, -1
  %and29 = and i64 %not26, %2
  %xor30 = xor i64 %and29, %3
  %not37 = xor i64 %2, -1
  %and40 = and i64 %not37, %0
  %xor41 = xor i64 %xor12, %and40
  %not48 = xor i64 %xor7, -1
  %and51 = and i64 %not48, %xor
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
  %5 = xor i64 %or.i189, %xor75
  %xor94 = xor i64 %5, %or.i
  store i64 %xor94, ptr %s, align 8, !tbaa !7
  %or.i192 = tail call i64 @llvm.fshl.i64(i64 %xor70, i64 %xor70, i64 3)
  %or.i195 = tail call i64 @llvm.fshl.i64(i64 %xor70, i64 %xor70, i64 25)
  %6 = xor i64 %or.i195, %xor70
  %xor106 = xor i64 %6, %or.i192
  store i64 %xor106, ptr %arrayidx9, align 8, !tbaa !7
  %or.i198 = tail call i64 @llvm.fshl.i64(i64 %not83, i64 %not83, i64 63)
  %or.i201 = tail call i64 @llvm.fshl.i64(i64 %not83, i64 %not83, i64 58)
  %7 = xor i64 %or.i201, %not83
  %xor118 = xor i64 %7, %or.i198
  store i64 %xor118, ptr %arrayidx11, align 8, !tbaa !7
  %or.i204 = tail call i64 @llvm.fshl.i64(i64 %xor80, i64 %xor80, i64 54)
  %or.i207 = tail call i64 @llvm.fshl.i64(i64 %xor80, i64 %xor80, i64 47)
  %8 = xor i64 %or.i207, %xor80
  %xor130 = xor i64 %8, %or.i204
  store i64 %xor130, ptr %arrayidx4, align 8, !tbaa !7
  %or.i210 = tail call i64 @llvm.fshl.i64(i64 %xor63, i64 %xor63, i64 57)
  %or.i213 = tail call i64 @llvm.fshl.i64(i64 %xor63, i64 %xor63, i64 23)
  %9 = xor i64 %or.i213, %xor63
  %xor142 = xor i64 %9, %or.i210
  store i64 %xor142, ptr %arrayidx, align 8, !tbaa !7
  ret void
}
*** IR Dump After RequireAnalysisPass<llvm::OptimizationRemarkEmitterAnalysis, llvm::Function> on keccakSbox omitted because no change ***
*** IR Dump After LoopSimplifyPass on keccakSbox omitted because no change ***
*** IR Dump After LCSSAPass on keccakSbox omitted because no change ***
*** IR Pass PassManager<llvm::Function> on keccakSbox ignored ***
*** IR Pass FunctionToLoopPassAdaptor on keccakSbox ignored ***
*** IR Dump After SimplifyCFGPass on keccakSbox omitted because no change ***
*** IR Dump After InstCombinePass on keccakSbox ***
; Function Attrs: nounwind uwtable
define dso_local void @keccakSbox(ptr noundef %s) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 4
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !7
  %1 = load i64, ptr %s, align 8, !tbaa !7
  %xor = xor i64 %1, %0
  store i64 %xor, ptr %s, align 8, !tbaa !7
  %arrayidx4 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 3
  %2 = load i64, ptr %arrayidx4, align 8, !tbaa !7
  %xor7 = xor i64 %2, %0
  store i64 %xor7, ptr %arrayidx, align 8, !tbaa !7
  %arrayidx9 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 1
  %3 = load i64, ptr %arrayidx9, align 8, !tbaa !7
  %arrayidx11 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 2
  %4 = load i64, ptr %arrayidx11, align 8, !tbaa !7
  %xor12 = xor i64 %4, %3
  store i64 %xor12, ptr %arrayidx11, align 8, !tbaa !7
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
*** IR Dump After LoopSimplifyPass on keccakSbox omitted because no change ***
*** IR Dump After LCSSAPass on keccakSbox omitted because no change ***
*** IR Pass PassManager<llvm::Function> on keccakSbox ignored ***
*** IR Pass FunctionToLoopPassAdaptor on keccakSbox ignored ***
*** IR Dump After SROAPass on keccakSbox omitted because no change ***
*** IR Dump After VectorCombinePass on keccakSbox omitted because no change ***
*** IR Dump After MergedLoadStoreMotionPass on keccakSbox omitted because no change ***
*** IR Dump After GVNPass on keccakSbox omitted because no change ***
*** IR Dump After SCCPPass on keccakSbox omitted because no change ***
*** IR Dump After BDCEPass on keccakSbox omitted because no change ***
*** IR Dump After InstCombinePass on keccakSbox omitted because no change ***
*** IR Dump After JumpThreadingPass on keccakSbox omitted because no change ***
*** IR Dump After CorrelatedValuePropagationPass on keccakSbox omitted because no change ***
*** IR Dump After ADCEPass on keccakSbox omitted because no change ***
*** IR Dump After MemCpyOptPass on keccakSbox omitted because no change ***
*** IR Dump After DSEPass on keccakSbox ***
; Function Attrs: nounwind uwtable
define dso_local void @keccakSbox(ptr noundef %s) local_unnamed_addr #0 {
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
*** IR Dump After LoopSimplifyPass on keccakSbox omitted because no change ***
*** IR Dump After LCSSAPass on keccakSbox omitted because no change ***
*** IR Pass PassManager<llvm::Function> on keccakSbox ignored ***
*** IR Pass FunctionToLoopPassAdaptor on keccakSbox ignored ***
*** IR Dump After CoroElidePass on keccakSbox omitted because no change ***
*** IR Dump After SimplifyCFGPass on keccakSbox omitted because no change ***
*** IR Dump After InstCombinePass on keccakSbox omitted because no change ***
*** IR Pass PassManager<llvm::Function> on keccakSbox ignored ***
*** IR Pass CGSCCToFunctionPassAdaptor on (keccakSbox) ignored ***
*** IR Dump After PostOrderFunctionAttrsPass on (keccakSbox) ***
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
*** IR Dump After RequireAnalysisPass<llvm::ShouldNotRunFunctionPassesAnalysis, llvm::Function> on keccakSbox omitted because no change ***
*** IR Pass CGSCCToFunctionPassAdaptor on (keccakSbox) ignored ***
*** IR Dump After CoroSplitPass on (keccakSbox) omitted because no change ***
*** IR Pass PassManager<LazyCallGraph::SCC, llvm::CGSCCAnalysisManager, llvm::LazyCallGraph &, llvm::CGSCCUpdateResult &> on (keccakSbox) ignored ***
*** IR Pass DevirtSCCRepeatedPass on (keccakSbox) ignored ***
*** IR Pass ModuleToPostOrderCGSCCPassAdaptor on [module] ignored ***
*** IR Dump After InvalidateAnalysisPass<llvm::ShouldNotRunFunctionPassesAnalysis> on keccakSbox omitted because no change ***
*** IR Pass ModuleToFunctionPassAdaptor on [module] ignored ***
*** IR Pass ModuleInlinerWrapperPass on [module] ignored ***
*** IR Dump After DeadArgumentEliminationPass on [module] omitted because no change ***
*** IR Dump After CoroCleanupPass on [module] omitted because no change ***
*** IR Dump After GlobalOptPass on [module] omitted because no change ***
*** IR Dump After GlobalDCEPass on [module] omitted because no change ***
*** IR Dump After EliminateAvailableExternallyPass on [module] omitted because no change ***
*** IR Dump After ReversePostOrderFunctionAttrsPass on [module] omitted because no change ***
*** IR Dump After RecomputeGlobalsAAPass on [module] omitted because no change ***
*** IR Dump After Float2IntPass on keccakSbox omitted because no change ***
*** IR Dump After LowerConstantIntrinsicsPass on keccakSbox omitted because no change ***
*** IR Dump After ControlHeightReductionPass on keccakSbox omitted because no change ***
*** IR Dump After LoopSimplifyPass on keccakSbox omitted because no change ***
*** IR Dump After LCSSAPass on keccakSbox omitted because no change ***
*** IR Pass PassManager<llvm::Function> on keccakSbox ignored ***
*** IR Pass FunctionToLoopPassAdaptor on keccakSbox ignored ***
*** IR Dump After LoopDistributePass on keccakSbox omitted because no change ***
*** IR Dump After InjectTLIMappings on keccakSbox omitted because no change ***
*** IR Dump After LoopVectorizePass on keccakSbox omitted because no change ***
*** IR Dump After LoopLoadEliminationPass on keccakSbox omitted because no change ***
*** IR Dump After InstCombinePass on keccakSbox omitted because no change ***
*** IR Dump After SimplifyCFGPass on keccakSbox omitted because no change ***
*** IR Dump After SLPVectorizerPass on keccakSbox omitted because no change ***
*** IR Dump After VectorCombinePass on keccakSbox omitted because no change ***
*** IR Dump After InstCombinePass on keccakSbox omitted because no change ***
*** IR Dump After LoopUnrollPass on keccakSbox omitted because no change ***
*** IR Dump After WarnMissedTransformationsPass on keccakSbox omitted because no change ***
*** IR Dump After SROAPass on keccakSbox omitted because no change ***
*** IR Dump After InstCombinePass on keccakSbox omitted because no change ***
*** IR Dump After RequireAnalysisPass<llvm::OptimizationRemarkEmitterAnalysis, llvm::Function> on keccakSbox omitted because no change ***
*** IR Dump After LoopSimplifyPass on keccakSbox omitted because no change ***
*** IR Dump After LCSSAPass on keccakSbox omitted because no change ***
*** IR Pass PassManager<llvm::Function> on keccakSbox ignored ***
*** IR Pass FunctionToLoopPassAdaptor on keccakSbox ignored ***
*** IR Dump After AlignmentFromAssumptionsPass on keccakSbox omitted because no change ***
*** IR Dump After LoopSinkPass on keccakSbox omitted because no change ***
*** IR Dump After InstSimplifyPass on keccakSbox omitted because no change ***
*** IR Dump After DivRemPairsPass on keccakSbox omitted because no change ***
*** IR Dump After TailCallElimPass on keccakSbox omitted because no change ***
*** IR Dump After SimplifyCFGPass on keccakSbox omitted because no change ***
*** IR Pass PassManager<llvm::Function> on keccakSbox ignored ***
*** IR Pass ModuleToFunctionPassAdaptor on [module] ignored ***
*** IR Dump After GlobalDCEPass on [module] omitted because no change ***
*** IR Dump After ConstantMergePass on [module] omitted because no change ***
*** IR Dump After CGProfilePass on [module] omitted because no change ***
*** IR Dump After RelLookupTableConverterPass on [module] omitted because no change ***
*** IR Dump After AnnotationRemarksPass on keccakSbox omitted because no change ***
*** IR Pass ModuleToFunctionPassAdaptor on [module] ignored ***
*** IR Dump After VerifierPass on [module] omitted because no change ***
*** IR Dump After PrintModulePass on [module] omitted because no change ***
