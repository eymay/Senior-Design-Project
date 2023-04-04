*** IR Dump At Start ***
; ModuleID = 'rori.c'
source_filename = "rori.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @rotimm(i32 noundef %rs1) #0 {
entry:
  %rs1.addr = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 %rs1, ptr %rs1.addr, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #2
  store i32 0, ptr %a, align 4, !tbaa !7
  %0 = load i32, ptr %rs1.addr, align 4, !tbaa !7
  %shr = lshr i32 %0, 2
  %1 = load i32, ptr %rs1.addr, align 4, !tbaa !7
  %shl = shl i32 %1, 30
  %or = or i32 %shr, %shl
  store i32 %or, ptr %a, align 4, !tbaa !7
  %2 = load i32, ptr %a, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #2
  ret i32 %2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+a,+c,+m,+relax,+zbb,-d,-e,-experimental-zca,-experimental-zcb,-experimental-zcd,-experimental-zcf,-experimental-zfa,-experimental-zihintntl,-experimental-ztso,-experimental-zvfh,-f,-h,-save-restore,-svinval,-svnapot,-svpbmt,-v,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-zawrs,-zba,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zdinx,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zicbom,-zicbop,-zicboz,-zicsr,-zifencei,-zihintpause,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

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
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
*** IR Dump After Annotation2MetadataPass on [module] omitted because no change ***
*** IR Dump After ForceFunctionAttrsPass on [module] omitted because no change ***
*** IR Dump After InferFunctionAttrsPass on [module] ***
; ModuleID = 'rori.c'
source_filename = "rori.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @rotimm(i32 noundef %rs1) #0 {
entry:
  %rs1.addr = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 %rs1, ptr %rs1.addr, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #2
  store i32 0, ptr %a, align 4, !tbaa !7
  %0 = load i32, ptr %rs1.addr, align 4, !tbaa !7
  %shr = lshr i32 %0, 2
  %1 = load i32, ptr %rs1.addr, align 4, !tbaa !7
  %shl = shl i32 %1, 30
  %or = or i32 %shr, %shl
  store i32 %or, ptr %a, align 4, !tbaa !7
  %2 = load i32, ptr %a, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #2
  ret i32 %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+a,+c,+m,+relax,+zbb,-d,-e,-experimental-zca,-experimental-zcb,-experimental-zcd,-experimental-zcf,-experimental-zfa,-experimental-zihintntl,-experimental-ztso,-experimental-zvfh,-f,-h,-save-restore,-svinval,-svnapot,-svpbmt,-v,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-zawrs,-zba,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zdinx,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zicbom,-zicbop,-zicboz,-zicsr,-zifencei,-zihintpause,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

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
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
*** IR Dump After CoroEarlyPass on [module] omitted because no change ***
*** IR Dump After LowerExpectIntrinsicPass on rotimm omitted because no change ***
*** IR Dump After SimplifyCFGPass on rotimm omitted because no change ***
*** IR Dump After SROAPass on rotimm ***
; Function Attrs: nounwind uwtable
define dso_local i32 @rotimm(i32 noundef %rs1) #0 {
entry:
  %shr = lshr i32 %rs1, 2
  %shl = shl i32 %rs1, 30
  %or = or i32 %shr, %shl
  ret i32 %or
}
*** IR Dump After EarlyCSEPass on rotimm omitted because no change ***
*** IR Dump After CallSiteSplittingPass on rotimm omitted because no change ***
*** IR Pass PassManager<llvm::Function> on rotimm ignored ***
*** IR Pass ModuleToFunctionPassAdaptor on [module] ignored ***
*** IR Dump After OpenMPOptPass on [module] omitted because no change ***
*** IR Dump After IPSCCPPass on [module] omitted because no change ***
*** IR Dump After CalledValuePropagationPass on [module] omitted because no change ***
*** IR Dump After GlobalOptPass on [module] ***
; ModuleID = 'rori.c'
source_filename = "rori.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @rotimm(i32 noundef %rs1) local_unnamed_addr #0 {
entry:
  %shr = lshr i32 %rs1, 2
  %shl = shl i32 %rs1, 30
  %or = or i32 %shr, %shl
  ret i32 %or
}

attributes #0 = { nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+a,+c,+m,+relax,+zbb,-d,-e,-experimental-zca,-experimental-zcb,-experimental-zcd,-experimental-zcf,-experimental-zfa,-experimental-zihintntl,-experimental-ztso,-experimental-zvfh,-f,-h,-save-restore,-svinval,-svnapot,-svpbmt,-v,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-zawrs,-zba,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zdinx,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zicbom,-zicbop,-zicboz,-zicsr,-zifencei,-zihintpause,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32"}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 8, !"SmallDataLimit", i32 8}
!6 = !{!"clang version 17.0.0 (git@github.com:Eymay/llvm-project.git 988fc65a2c68e73f871ac55958d286a4e12dabdf)"}
*** IR Dump After PromotePass on rotimm omitted because no change ***
*** IR Dump After InstCombinePass on rotimm ***
; Function Attrs: nounwind uwtable
define dso_local i32 @rotimm(i32 noundef %rs1) local_unnamed_addr #0 {
entry:
  %or = call i32 @llvm.fshl.i32(i32 %rs1, i32 %rs1, i32 30)
  ret i32 %or
}
*** IR Dump After SimplifyCFGPass on rotimm omitted because no change ***
*** IR Pass PassManager<llvm::Function> on rotimm ignored ***
*** IR Pass ModuleToFunctionPassAdaptor on [module] ignored ***
*** IR Dump After RequireAnalysisPass<llvm::GlobalsAA, llvm::Module> on [module] omitted because no change ***
*** IR Dump After InvalidateAnalysisPass<llvm::AAManager> on rotimm omitted because no change ***
*** IR Pass ModuleToFunctionPassAdaptor on [module] ignored ***
*** IR Dump After RequireAnalysisPass<llvm::ProfileSummaryAnalysis, llvm::Module> on [module] omitted because no change ***
*** IR Dump After InlinerPass on (rotimm) omitted because no change ***
*** IR Dump After InlinerPass on (rotimm) omitted because no change ***
*** IR Dump After PostOrderFunctionAttrsPass on (rotimm) omitted because no change ***
*** IR Dump After ArgumentPromotionPass on (rotimm) omitted because no change ***
*** IR Dump After OpenMPOptCGSCCPass on (rotimm) omitted because no change ***
*** IR Dump After SROAPass on rotimm omitted because no change ***
*** IR Dump After EarlyCSEPass on rotimm omitted because no change ***
*** IR Dump After SpeculativeExecutionPass on rotimm omitted because no change ***
*** IR Dump After JumpThreadingPass on rotimm omitted because no change ***
*** IR Dump After CorrelatedValuePropagationPass on rotimm omitted because no change ***
*** IR Dump After SimplifyCFGPass on rotimm omitted because no change ***
*** IR Dump After InstCombinePass on rotimm omitted because no change ***
*** IR Dump After AggressiveInstCombinePass on rotimm omitted because no change ***
*** IR Dump After ConstraintEliminationPass on rotimm omitted because no change ***
*** IR Dump After LibCallsShrinkWrapPass on rotimm omitted because no change ***
*** IR Dump After TailCallElimPass on rotimm ***
; Function Attrs: nounwind uwtable
define dso_local i32 @rotimm(i32 noundef %rs1) local_unnamed_addr #0 {
entry:
  %or = tail call i32 @llvm.fshl.i32(i32 %rs1, i32 %rs1, i32 30)
  ret i32 %or
}
*** IR Dump After SimplifyCFGPass on rotimm omitted because no change ***
*** IR Dump After ReassociatePass on rotimm omitted because no change ***
*** IR Dump After RequireAnalysisPass<llvm::OptimizationRemarkEmitterAnalysis, llvm::Function> on rotimm omitted because no change ***
*** IR Dump After LoopSimplifyPass on rotimm omitted because no change ***
*** IR Dump After LCSSAPass on rotimm omitted because no change ***
*** IR Pass PassManager<llvm::Function> on rotimm ignored ***
*** IR Pass FunctionToLoopPassAdaptor on rotimm ignored ***
*** IR Dump After SimplifyCFGPass on rotimm omitted because no change ***
*** IR Dump After InstCombinePass on rotimm omitted because no change ***
*** IR Dump After LoopSimplifyPass on rotimm omitted because no change ***
*** IR Dump After LCSSAPass on rotimm omitted because no change ***
*** IR Pass PassManager<llvm::Function> on rotimm ignored ***
*** IR Pass FunctionToLoopPassAdaptor on rotimm ignored ***
*** IR Dump After SROAPass on rotimm omitted because no change ***
*** IR Dump After VectorCombinePass on rotimm omitted because no change ***
*** IR Dump After MergedLoadStoreMotionPass on rotimm omitted because no change ***
*** IR Dump After GVNPass on rotimm omitted because no change ***
*** IR Dump After SCCPPass on rotimm omitted because no change ***
*** IR Dump After BDCEPass on rotimm omitted because no change ***
*** IR Dump After InstCombinePass on rotimm omitted because no change ***
*** IR Dump After JumpThreadingPass on rotimm omitted because no change ***
*** IR Dump After CorrelatedValuePropagationPass on rotimm omitted because no change ***
*** IR Dump After ADCEPass on rotimm omitted because no change ***
*** IR Dump After MemCpyOptPass on rotimm omitted because no change ***
*** IR Dump After DSEPass on rotimm omitted because no change ***
*** IR Dump After LoopSimplifyPass on rotimm omitted because no change ***
*** IR Dump After LCSSAPass on rotimm omitted because no change ***
*** IR Pass PassManager<llvm::Function> on rotimm ignored ***
*** IR Pass FunctionToLoopPassAdaptor on rotimm ignored ***
*** IR Dump After CoroElidePass on rotimm omitted because no change ***
*** IR Dump After SimplifyCFGPass on rotimm omitted because no change ***
*** IR Dump After InstCombinePass on rotimm omitted because no change ***
*** IR Pass PassManager<llvm::Function> on rotimm ignored ***
*** IR Pass CGSCCToFunctionPassAdaptor on (rotimm) ignored ***
*** IR Dump After PostOrderFunctionAttrsPass on (rotimm) ***
; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @rotimm(i32 noundef %rs1) local_unnamed_addr #0 {
entry:
  %or = tail call i32 @llvm.fshl.i32(i32 %rs1, i32 %rs1, i32 30)
  ret i32 %or
}
*** IR Dump After RequireAnalysisPass<llvm::ShouldNotRunFunctionPassesAnalysis, llvm::Function> on rotimm omitted because no change ***
*** IR Pass CGSCCToFunctionPassAdaptor on (rotimm) ignored ***
*** IR Dump After CoroSplitPass on (rotimm) omitted because no change ***
*** IR Pass PassManager<LazyCallGraph::SCC, llvm::CGSCCAnalysisManager, llvm::LazyCallGraph &, llvm::CGSCCUpdateResult &> on (rotimm) ignored ***
*** IR Pass DevirtSCCRepeatedPass on (rotimm) ignored ***
*** IR Pass ModuleToPostOrderCGSCCPassAdaptor on [module] ignored ***
*** IR Dump After InvalidateAnalysisPass<llvm::ShouldNotRunFunctionPassesAnalysis> on rotimm omitted because no change ***
*** IR Pass ModuleToFunctionPassAdaptor on [module] ignored ***
*** IR Pass ModuleInlinerWrapperPass on [module] ignored ***
*** IR Dump After DeadArgumentEliminationPass on [module] omitted because no change ***
*** IR Dump After CoroCleanupPass on [module] omitted because no change ***
*** IR Dump After GlobalOptPass on [module] omitted because no change ***
*** IR Dump After GlobalDCEPass on [module] omitted because no change ***
*** IR Dump After EliminateAvailableExternallyPass on [module] omitted because no change ***
*** IR Dump After ReversePostOrderFunctionAttrsPass on [module] omitted because no change ***
*** IR Dump After RecomputeGlobalsAAPass on [module] omitted because no change ***
*** IR Dump After Float2IntPass on rotimm omitted because no change ***
*** IR Dump After LowerConstantIntrinsicsPass on rotimm omitted because no change ***
*** IR Dump After ControlHeightReductionPass on rotimm omitted because no change ***
*** IR Dump After LoopSimplifyPass on rotimm omitted because no change ***
*** IR Dump After LCSSAPass on rotimm omitted because no change ***
*** IR Pass PassManager<llvm::Function> on rotimm ignored ***
*** IR Pass FunctionToLoopPassAdaptor on rotimm ignored ***
*** IR Dump After LoopDistributePass on rotimm omitted because no change ***
*** IR Dump After InjectTLIMappings on rotimm omitted because no change ***
*** IR Dump After LoopVectorizePass on rotimm omitted because no change ***
*** IR Dump After LoopLoadEliminationPass on rotimm omitted because no change ***
*** IR Dump After InstCombinePass on rotimm omitted because no change ***
*** IR Dump After SimplifyCFGPass on rotimm omitted because no change ***
*** IR Dump After SLPVectorizerPass on rotimm omitted because no change ***
*** IR Dump After VectorCombinePass on rotimm omitted because no change ***
*** IR Dump After InstCombinePass on rotimm omitted because no change ***
*** IR Dump After LoopUnrollPass on rotimm omitted because no change ***
*** IR Dump After WarnMissedTransformationsPass on rotimm omitted because no change ***
*** IR Dump After SROAPass on rotimm omitted because no change ***
*** IR Dump After InstCombinePass on rotimm omitted because no change ***
*** IR Dump After RequireAnalysisPass<llvm::OptimizationRemarkEmitterAnalysis, llvm::Function> on rotimm omitted because no change ***
*** IR Dump After LoopSimplifyPass on rotimm omitted because no change ***
*** IR Dump After LCSSAPass on rotimm omitted because no change ***
*** IR Pass PassManager<llvm::Function> on rotimm ignored ***
*** IR Pass FunctionToLoopPassAdaptor on rotimm ignored ***
*** IR Dump After AlignmentFromAssumptionsPass on rotimm omitted because no change ***
*** IR Dump After LoopSinkPass on rotimm omitted because no change ***
*** IR Dump After InstSimplifyPass on rotimm omitted because no change ***
*** IR Dump After DivRemPairsPass on rotimm omitted because no change ***
*** IR Dump After TailCallElimPass on rotimm omitted because no change ***
*** IR Dump After SimplifyCFGPass on rotimm omitted because no change ***
*** IR Pass PassManager<llvm::Function> on rotimm ignored ***
*** IR Pass ModuleToFunctionPassAdaptor on [module] ignored ***
*** IR Dump After GlobalDCEPass on [module] omitted because no change ***
*** IR Dump After ConstantMergePass on [module] omitted because no change ***
*** IR Dump After CGProfilePass on [module] omitted because no change ***
*** IR Dump After RelLookupTableConverterPass on [module] omitted because no change ***
*** IR Dump After AnnotationRemarksPass on rotimm omitted because no change ***
*** IR Pass ModuleToFunctionPassAdaptor on [module] ignored ***
*** IR Dump After VerifierPass on [module] omitted because no change ***
*** IR Dump After PrintModulePass on [module] omitted because no change ***
