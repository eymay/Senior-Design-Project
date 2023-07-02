define void @sbox(ptr  %0)  {
  %2 = getelementptr inbounds [5 x i32], ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2
  %4 = load i32, ptr %0
  %5 = xor i32 %4, %3
  %6 = getelementptr inbounds [5 x i32], ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6
  %8 = xor i32 %7, %3
  %9 = getelementptr inbounds [5 x i32], ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9
  %11 = getelementptr inbounds [5 x i32], ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11
  %13 = xor i32 %12, %10
  %14 = xor i32 %5, -1
  %15 = xor i32 %10, -1
  %16 = xor i32 %13, -1
  %17 = xor i32 %7, -1
  %18 = xor i32 %8, -1
  %19 = and i32 %10, %14
  %20 = and i32 %12, %15
  %21 = and i32 %7, %16
  %22 = and i32 %3, %17
  %23 = and i32 %5, %18
  %24 = xor i32 %20, %5
  %25 = xor i32 %21, %10
  %26 = xor i32 %13, %22
  %27 = xor i32 %23, %7
  %28 = xor i32 %19, %8
  store i32 %28, ptr %2
  %29 = xor i32 %25, %24
  store i32 %29, ptr %9
  %30 = xor i32 %24, %28
  store i32 %30, ptr %0
  %31 = xor i32 %26, %27
  store i32 %31, ptr %6
  %32 = xor i32 %26, -1
  store i32 %32, ptr %11
  ret void
}
