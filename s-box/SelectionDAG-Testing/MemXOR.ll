define void @foo(ptr %p1, ptr %p2) {
  %a = load i32, ptr %p1
  %b = load i32, ptr %p2
  %res = xor i32 %a, %b
  %res2 = xor i32 %res, -1
  store i32 %res, ptr %p1
  store i32 %res2, ptr %p2
  ret void
}
