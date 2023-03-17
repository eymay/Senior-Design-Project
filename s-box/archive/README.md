### LLC Debugging

Use debug-type from the file (e.g. riscv-isel, isel) and give it as argument to `-debug-only`.

You can add `-view-isel-dags` to output an image with the DAG.
```shell
LLVMBIN=path-to-your-llvm/llvm-project/build/bin
$LLVMBIN/llc -debug-only=legalize,isel -mtriple=riscv32 s-box-regPtrO3.ll 2>&1| tee $(date +"%d/%m/%I:%M:%S").txt
```
