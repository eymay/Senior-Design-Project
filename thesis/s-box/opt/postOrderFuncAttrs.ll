; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @sbox(ptr nocapture noundef %state) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [5 x i32], ptr %state, i32 0, i32 4
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !7
  %1 = load i32, ptr %state, align 4, !tbaa !7
  %xor = xor i32 %1, %0
  %arrayidx4 = getelementptr inbounds [5 x i32], ptr %state, i32 0, i32 3
  %2 = load i32, ptr %arrayidx4, align 4, !tbaa !7
  %xor7 = xor i32 %2, %0
  %arrayidx9 = getelementptr inbounds [5 x i32], ptr %state, i32 0, i32 1
  %3 = load i32, ptr %arrayidx9, align 4, !tbaa !7
  %arrayidx11 = getelementptr inbounds [5 x i32], ptr %state, i32 0, i32 2
  %4 = load i32, ptr %arrayidx11, align 4, !tbaa !7
  %xor12 = xor i32 %4, %3
  %not = xor i32 %xor, -1
  %not23 = xor i32 %3, -1
  %not24 = xor i32 %xor12, -1
  %not25 = xor i32 %2, -1
  %not26 = xor i32 %xor7, -1
  %and = and i32 %3, %not
  %and31 = and i32 %4, %not23
  %and34 = and i32 %2, %not24
  %and37 = and i32 %0, %not25
  %and40 = and i32 %xor, %not26
  %xor43 = xor i32 %and31, %xor
  %xor46 = xor i32 %and34, %3
  %xor49 = xor i32 %xor12, %and37
  %xor52 = xor i32 %and40, %2
  %xor55 = xor i32 %and, %xor7
  store i32 %xor55, ptr %arrayidx, align 4, !tbaa !7
  %xor60 = xor i32 %xor46, %xor43
  store i32 %xor60, ptr %arrayidx9, align 4, !tbaa !7
  %xor65 = xor i32 %xor43, %xor55
  store i32 %xor65, ptr %state, align 4, !tbaa !7
  %xor70 = xor i32 %xor49, %xor52
  store i32 %xor70, ptr %arrayidx4, align 4, !tbaa !7
  %not73 = xor i32 %xor49, -1
  store i32 %not73, ptr %arrayidx11, align 4, !tbaa !7
  ret void
}

