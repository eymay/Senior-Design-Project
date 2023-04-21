; Function Attrs: nounwind uwtable
define dso_local void @sbox(ptr noundef %state) #0 {
entry:
  %arrayidx = getelementptr inbounds [5 x i32], ptr %state, i32 0, i32 4
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !7
  %1 = load i32, ptr %state, align 4, !tbaa !7
  %xor = xor i32 %1, %0
  store i32 %xor, ptr %state, align 4, !tbaa !7
  %arrayidx4 = getelementptr inbounds [5 x i32], ptr %state, i32 0, i32 3
  %2 = load i32, ptr %arrayidx4, align 4, !tbaa !7
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !7
  %xor7 = xor i32 %3, %2
  store i32 %xor7, ptr %arrayidx, align 4, !tbaa !7
  %arrayidx9 = getelementptr inbounds [5 x i32], ptr %state, i32 0, i32 1
  %4 = load i32, ptr %arrayidx9, align 4, !tbaa !7
  %arrayidx11 = getelementptr inbounds [5 x i32], ptr %state, i32 0, i32 2
  %5 = load i32, ptr %arrayidx11, align 4, !tbaa !7
  %xor12 = xor i32 %5, %4
  store i32 %xor12, ptr %arrayidx11, align 4, !tbaa !7
  %6 = load i32, ptr %state, align 4, !tbaa !7
  %7 = load i32, ptr %arrayidx9, align 4, !tbaa !7
  %8 = load i32, ptr %arrayidx4, align 4, !tbaa !7
  %9 = load i32, ptr %arrayidx, align 4, !tbaa !7
  %not = xor i32 %6, -1
  %not23 = xor i32 %7, -1
  %not24 = xor i32 %xor12, -1
  %not25 = xor i32 %8, -1
  %not26 = xor i32 %9, -1
  %and = and i32 %not, %7
  %and31 = and i32 %not23, %xor12
  %and34 = and i32 %not24, %8
  %and37 = and i32 %not25, %9
  %and40 = and i32 %not26, %6
  %xor43 = xor i32 %6, %and31
  store i32 %xor43, ptr %state, align 4, !tbaa !7
  %10 = load i32, ptr %arrayidx9, align 4, !tbaa !7
  %xor46 = xor i32 %10, %and34
  store i32 %xor46, ptr %arrayidx9, align 4, !tbaa !7
  %11 = load i32, ptr %arrayidx11, align 4, !tbaa !7
  %xor49 = xor i32 %11, %and37
  store i32 %xor49, ptr %arrayidx11, align 4, !tbaa !7
  %12 = load i32, ptr %arrayidx4, align 4, !tbaa !7
  %xor52 = xor i32 %12, %and40
  store i32 %xor52, ptr %arrayidx4, align 4, !tbaa !7
  %13 = load i32, ptr %arrayidx, align 4, !tbaa !7
  %xor55 = xor i32 %13, %and
  store i32 %xor55, ptr %arrayidx, align 4, !tbaa !7
  %14 = load i32, ptr %state, align 4, !tbaa !7
  %15 = load i32, ptr %arrayidx9, align 4, !tbaa !7
  %xor60 = xor i32 %15, %14
  store i32 %xor60, ptr %arrayidx9, align 4, !tbaa !7
  %16 = load i32, ptr %arrayidx, align 4, !tbaa !7
  %17 = load i32, ptr %state, align 4, !tbaa !7
  %xor65 = xor i32 %17, %16
  store i32 %xor65, ptr %state, align 4, !tbaa !7
  %18 = load i32, ptr %arrayidx11, align 4, !tbaa !7
  %19 = load i32, ptr %arrayidx4, align 4, !tbaa !7
  %xor70 = xor i32 %19, %18
  store i32 %xor70, ptr %arrayidx4, align 4, !tbaa !7
  %20 = load i32, ptr %arrayidx11, align 4, !tbaa !7
  %not73 = xor i32 %20, -1
  store i32 %not73, ptr %arrayidx11, align 4, !tbaa !7
  ret void
}

