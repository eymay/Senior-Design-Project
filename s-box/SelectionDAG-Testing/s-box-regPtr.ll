; ModuleID = 's-box-reg.c'
source_filename = "s-box-reg.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-linux-gnu"

%struct.ascon_state_t = type { [5 x i32] }

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite)
define dso_local void @sbox(ptr noalias nocapture writeonly sret(%struct.ascon_state_t) align 4 %agg.result, ptr nocapture noundef %state) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [5 x i32], ptr %state, i32 0, i32 4
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !6
  %1 = load i32, ptr %state, align 4, !tbaa !6
  %xor = xor i32 %1, %0
  store i32 %xor, ptr %state, align 4, !tbaa !6
  %arrayidx4 = getelementptr inbounds [5 x i32], ptr %state, i32 0, i32 3
  %2 = load i32, ptr %arrayidx4, align 4, !tbaa !6
  %xor7 = xor i32 %2, %0
  store i32 %xor7, ptr %arrayidx, align 4, !tbaa !6
  %arrayidx9 = getelementptr inbounds [5 x i32], ptr %state, i32 0, i32 1
  %3 = load i32, ptr %arrayidx9, align 4, !tbaa !6
  %arrayidx11 = getelementptr inbounds [5 x i32], ptr %state, i32 0, i32 2
  %4 = load i32, ptr %arrayidx11, align 4, !tbaa !6
  %xor12 = xor i32 %4, %3
  store i32 %xor12, ptr %arrayidx11, align 4, !tbaa !6
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
  store i32 %xor43, ptr %state, align 4, !tbaa !6
  %xor46 = xor i32 %and34, %3
  store i32 %xor46, ptr %arrayidx9, align 4, !tbaa !6
  %xor49 = xor i32 %xor12, %and37
  store i32 %xor49, ptr %arrayidx11, align 4, !tbaa !6
  %xor52 = xor i32 %and40, %2
  store i32 %xor52, ptr %arrayidx4, align 4, !tbaa !6
  %xor55 = xor i32 %and, %xor7
  store i32 %xor55, ptr %arrayidx, align 4, !tbaa !6
  %xor60 = xor i32 %xor46, %xor43
  store i32 %xor60, ptr %arrayidx9, align 4, !tbaa !6
  %xor65 = xor i32 %xor43, %xor55
  store i32 %xor65, ptr %state, align 4, !tbaa !6
  %xor70 = xor i32 %xor49, %xor52
  store i32 %xor70, ptr %arrayidx4, align 4, !tbaa !6
  %not73 = xor i32 %xor49, -1
  store i32 %not73, ptr %arrayidx11, align 4, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %agg.result, ptr noundef nonnull align 4 dereferenceable(20) %state, i32 20, i1 false), !tbaa.struct !10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+a,+c,+d,+f,+m,+relax,-save-restore" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32d"}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 1, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 16.0.0 (git@github.com:Eymay/CustomInstrLLVM.git d10adf3e6d56af987e993c658a78caeb675f2292)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{i64 0, i64 20, !11}
!11 = !{!8, !8, i64 0}
