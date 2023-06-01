define void @maddFunc() {
  store i32 3, i32* @a
  store i32 103, i32* @b
  store i32 127, i32* @c
  %1 = load i32, i32* @a
  %2 = load i32, i32* @b
  %5 = mul nsw i32 %1, %2
  %4 = load i32, i32* @c
  %5 = add nsw i32 %3, %4
  store i32 %5, i32* @a
  ret void
}
