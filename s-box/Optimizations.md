# Optimizations running on S-Box Function

1. InferFunctionAttrsPass
Used analysis passes:
- TargetLibraryInfo

FuncAttrsPass
Used analysis passes:
- AssumptionCache
- BasicAliasAnalysis
- CFG
- CGSCCPassManager
- CallGraph
- CallGraphSCCPass
- CaptureTracking
- LazyCallGraph
- MemoryLocation
- ValueTracking
2. SROAPass
Used analysis passes:
- AssumptionCache
- DomTreeUpdater
- GlobalsModRef
- Loads
- PtrUseVisitor
3. EarlyCSEPass
- Used analysis passes:
- AssumptionCache
- GlobalsModRef
- GuardUtils
- InstructionSimplify
- MemorySSA
- MemorySSAUpdater
- TargetLibraryInfo
- TargetTransformInfo
- ValueTracking
4. GlobalOptPass
Used analysis passes:
- BlockFrequencyInfo
- ConstantFolding
- MemoryBuiltins
- TargetLibraryInfo
- TargetTransformInfo
- ValueTracking
5. InstCombinePass
Used analysis passes:
- AliasAnalysis
- AssumptionCache
- BasicAliasAnalysis
- BlockFrequencyInfo
- CFG
- ConstantFolding
- GlobalsModRef
- InstructionSimplify
- LazyBlockFrequencyInfo
- LoopInfo
- MemoryBuiltins
- OptimizationRemarkEmitter
- ProfileSummaryInfo
- TargetFolder
- TargetLibraryInfo
- TargetTransformInfo
- Utils/Local
- ValueTracking
- VectorUtils
6. EarlyCSEPass
7. InstCombinePass
8. ReassociatePass
Used analysis passes:
- BasicAliasAnalysis
- ConstantFolding
- GlobalsModRef
- ValueTracking
9. InstCombinePass
10. DSEPass
Used analysis passes:
- AliasAnalysis
- AssumptionCache
- CaptureTracking
- CodeMetrics
- GlobalsModRef
- LoopInfo
- MemoryBuiltins
- MemoryLocation
- MemorySSA
- MemorySSAUpdater
- MustExecute
- PostDominators
- TargetLibraryInfo
- ValueTracking
11. PostOrderFunctionAttrsPass
Used analysis passes:

|Pass                  |Documented|
|----------------------|----------|
|AssumptionCache       | no |
|BasicAliasAnalysis    | yes |
|CFG                   | yes |
|CGSCCPassManager      | no |
