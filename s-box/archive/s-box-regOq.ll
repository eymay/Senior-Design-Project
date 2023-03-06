; ModuleID = 's-box-reg.c'
source_filename = "s-box-reg.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-linux-gnu"

%struct.ascon_state_t = type { [5 x i32] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local void @sbox(ptr noalias nocapture writeonly sret(%struct.ascon_state_t) align 4 %agg.result, i32 noundef %x0, i32 noundef %x1, i32 noundef %x2, i32 noundef %x3, i32 noundef %x4) local_unnamed_addr #0 {
entry:
  %xor = xor i32 %x4, %x0
  %xor1 = xor i32 %x4, %x3
  %xor2 = xor i32 %x2, %x1
  %not = xor i32 %xor, -1
  %not3 = xor i32 %x1, -1
  %not4 = xor i32 %xor2, -1
  %not5 = xor i32 %x3, -1
  %not6 = xor i32 %xor1, -1
  %and = and i32 %not, %x1
  %and7 = and i32 %not3, %x2
  %and8 = and i32 %not4, %x3
  %and9 = and i32 %not5, %x4
  %and10 = and i32 %xor, %not6
  %xor11 = xor i32 %xor, %and7
  %xor12 = xor i32 %and8, %x1
  %xor13 = xor i32 %and9, %xor2
  %xor14 = xor i32 %and10, %x3
  %xor15 = xor i32 %and, %xor1
  %xor16 = xor i32 %xor12, %xor11
  %xor17 = xor i32 %xor15, %xor11
  %xor18 = xor i32 %xor14, %xor13
  %not19 = xor i32 %xor13, -1
  store i32 %xor17, ptr %agg.result, align 4, !tbaa !6
  %arrayidx21 = getelementptr inbounds [5 x i32], ptr %agg.result, i32 0, i32 1
  store i32 %xor16, ptr %arrayidx21, align 4, !tbaa !6
  %arrayidx23 = getelementptr inbounds [5 x i32], ptr %agg.result, i32 0, i32 2
  store i32 %not19, ptr %arrayidx23, align 4, !tbaa !6
  %arrayidx25 = getelementptr inbounds [5 x i32], ptr %agg.result, i32 0, i32 3
  store i32 %xor18, ptr %arrayidx25, align 4, !tbaa !6
  %arrayidx27 = getelementptr inbounds [5 x i32], ptr %agg.result, i32 0, i32 4
  store i32 %xor15, ptr %arrayidx27, align 4, !tbaa !6
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+a,+c,+d,+f,+m,+relax,-save-restore" }

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
