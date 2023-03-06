; ModuleID = 's-box-reg.c'
source_filename = "s-box-reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ascon_state_t = type { [5 x i64] }

; Function Attrs: minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @sbox(ptr noalias nocapture writeonly sret(%struct.ascon_state_t) align 8 %agg.result, i64 noundef %x0, i64 noundef %x1, i64 noundef %x2, i64 noundef %x3, i64 noundef %x4) local_unnamed_addr #0 {
entry:
  %xor = xor i64 %x4, %x0
  %xor1 = xor i64 %x4, %x3
  %xor2 = xor i64 %x2, %x1
  %not = xor i64 %xor, -1
  %not3 = xor i64 %x1, -1
  %not4 = xor i64 %xor2, -1
  %not5 = xor i64 %x3, -1
  %not6 = xor i64 %xor1, -1
  %and = and i64 %not, %x1
  %and7 = and i64 %not3, %x2
  %and8 = and i64 %not4, %x3
  %and9 = and i64 %not5, %x4
  %and10 = and i64 %xor, %not6
  %xor11 = xor i64 %xor, %and7
  %xor12 = xor i64 %and8, %x1
  %xor13 = xor i64 %and9, %xor2
  %xor14 = xor i64 %and10, %x3
  %xor15 = xor i64 %and, %xor1
  %xor16 = xor i64 %xor12, %xor11
  %xor17 = xor i64 %xor15, %xor11
  %xor18 = xor i64 %xor14, %xor13
  %not19 = xor i64 %xor13, -1
  store i64 %xor17, ptr %agg.result, align 8, !tbaa !5
  %arrayidx21 = getelementptr inbounds [5 x i64], ptr %agg.result, i64 0, i64 1
  store i64 %xor16, ptr %arrayidx21, align 8, !tbaa !5
  %arrayidx23 = getelementptr inbounds [5 x i64], ptr %agg.result, i64 0, i64 2
  store i64 %not19, ptr %arrayidx23, align 8, !tbaa !5
  %arrayidx25 = getelementptr inbounds [5 x i64], ptr %agg.result, i64 0, i64 3
  store i64 %xor18, ptr %arrayidx25, align 8, !tbaa !5
  %arrayidx27 = getelementptr inbounds [5 x i64], ptr %agg.result, i64 0, i64 4
  store i64 %xor15, ptr %arrayidx27, align 8, !tbaa !5
  ret void
}

attributes #0 = { minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 16.0.0 (git@github.com:Eymay/CustomInstrLLVM.git d10adf3e6d56af987e993c658a78caeb675f2292)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
