# Generate MLIR C dialect in .cir file

From lit tests:
```shell
clang_cc1 -triple x86_64-unknown-linux-gnu -std=c++17 -fclangir-enable -Wno-unused-value -emit-cir %s -o %t.cir
```

Adaptation to our use case:
```shell
clang_cc1 -O3 -target riscv32-linux-gnu -fclangir-enable 
```
