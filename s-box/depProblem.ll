define void @depProblem(ptr %s){
  %array1 = getelementptr inbounds [2 x i64], ptr %s, i32 0, i32 1
  %a = load i32, ptr %s
  %b = load i32, ptr %array1
  %commonXor = xor i32 %a, %b
  %store1 = xor i32 %commonXor, -1
  %store2 = and i32 %commonXor, %a
  store i32 %store1, ptr %s
  store i32 %store2, ptr %array1
  ret void
}
