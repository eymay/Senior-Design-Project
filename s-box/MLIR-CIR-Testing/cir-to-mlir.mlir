s-box.c:7:1: error: failed to legalize operation 'cir.func' that was explicitly marked illegal
void sbox(ascon_state_t state) {
^
s-box.c:7:1: note: see current operation: 
"cir.func"() ({
^bb0(%arg0: !cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>):
  %0 = "cir.alloca"() {alignment = 4 : i64, allocaType = !cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>, init, name = "state"} : () -> !cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>
  %1 = "cir.alloca"() {alignment = 4 : i64, allocaType = i32, name = "t0"} : () -> !cir.ptr<i32>
  %2 = "cir.alloca"() {alignment = 4 : i64, allocaType = i32, name = "t1"} : () -> !cir.ptr<i32>
  %3 = "cir.alloca"() {alignment = 4 : i64, allocaType = i32, name = "t2"} : () -> !cir.ptr<i32>
  %4 = "cir.alloca"() {alignment = 4 : i64, allocaType = i32, name = "t3"} : () -> !cir.ptr<i32>
  %5 = "cir.alloca"() {alignment = 4 : i64, allocaType = i32, name = "t4"} : () -> !cir.ptr<i32>
  "cir.store"(%arg0, %0) : (!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>, !cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> ()
  %6 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %7 = "cir.const"() {value = 4 : i32} : () -> i32
  %8 = "cir.cast"(%6) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %9 = "cir.ptr_stride"(%8, %7) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  %10 = "cir.load"(%9) : (!cir.ptr<i32>) -> i32
  %11 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %12 = "cir.const"() {value = 0 : i32} : () -> i32
  %13 = "cir.cast"(%11) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %14 = "cir.ptr_stride"(%13, %12) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  %15 = "cir.load"(%14) : (!cir.ptr<i32>) -> i32
  %16 = "cir.binop"(%15, %10) {kind = 9 : i32} : (i32, i32) -> i32
  "cir.store"(%16, %14) : (i32, !cir.ptr<i32>) -> ()
  %17 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %18 = "cir.const"() {value = 3 : i32} : () -> i32
  %19 = "cir.cast"(%17) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %20 = "cir.ptr_stride"(%19, %18) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  %21 = "cir.load"(%20) : (!cir.ptr<i32>) -> i32
  %22 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %23 = "cir.const"() {value = 4 : i32} : () -> i32
  %24 = "cir.cast"(%22) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %25 = "cir.ptr_stride"(%24, %23) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  %26 = "cir.load"(%25) : (!cir.ptr<i32>) -> i32
  %27 = "cir.binop"(%26, %21) {kind = 9 : i32} : (i32, i32) -> i32
  "cir.store"(%27, %25) : (i32, !cir.ptr<i32>) -> ()
  %28 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %29 = "cir.const"() {value = 1 : i32} : () -> i32
  %30 = "cir.cast"(%28) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %31 = "cir.ptr_stride"(%30, %29) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  %32 = "cir.load"(%31) : (!cir.ptr<i32>) -> i32
  %33 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %34 = "cir.const"() {value = 2 : i32} : () -> i32
  %35 = "cir.cast"(%33) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %36 = "cir.ptr_stride"(%35, %34) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  %37 = "cir.load"(%36) : (!cir.ptr<i32>) -> i32
  %38 = "cir.binop"(%37, %32) {kind = 9 : i32} : (i32, i32) -> i32
  "cir.store"(%38, %36) : (i32, !cir.ptr<i32>) -> ()
  %39 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %40 = "cir.const"() {value = 0 : i32} : () -> i32
  %41 = "cir.cast"(%39) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %42 = "cir.ptr_stride"(%41, %40) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  %43 = "cir.load"(%42) : (!cir.ptr<i32>) -> i32
  "cir.store"(%43, %1) : (i32, !cir.ptr<i32>) -> ()
  %44 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %45 = "cir.const"() {value = 1 : i32} : () -> i32
  %46 = "cir.cast"(%44) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %47 = "cir.ptr_stride"(%46, %45) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  %48 = "cir.load"(%47) : (!cir.ptr<i32>) -> i32
  "cir.store"(%48, %2) : (i32, !cir.ptr<i32>) -> ()
  %49 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %50 = "cir.const"() {value = 2 : i32} : () -> i32
  %51 = "cir.cast"(%49) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %52 = "cir.ptr_stride"(%51, %50) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  %53 = "cir.load"(%52) : (!cir.ptr<i32>) -> i32
  "cir.store"(%53, %3) : (i32, !cir.ptr<i32>) -> ()
  %54 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %55 = "cir.const"() {value = 3 : i32} : () -> i32
  %56 = "cir.cast"(%54) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %57 = "cir.ptr_stride"(%56, %55) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  %58 = "cir.load"(%57) : (!cir.ptr<i32>) -> i32
  "cir.store"(%58, %4) : (i32, !cir.ptr<i32>) -> ()
  %59 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %60 = "cir.const"() {value = 4 : i32} : () -> i32
  %61 = "cir.cast"(%59) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %62 = "cir.ptr_stride"(%61, %60) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  %63 = "cir.load"(%62) : (!cir.ptr<i32>) -> i32
  "cir.store"(%63, %5) : (i32, !cir.ptr<i32>) -> ()
  %64 = "cir.load"(%1) : (!cir.ptr<i32>) -> i32
  %65 = "cir.unary"(%64) {kind = 5 : i32} : (i32) -> i32
  "cir.store"(%65, %1) : (i32, !cir.ptr<i32>) -> ()
  %66 = "cir.load"(%2) : (!cir.ptr<i32>) -> i32
  %67 = "cir.unary"(%66) {kind = 5 : i32} : (i32) -> i32
  "cir.store"(%67, %2) : (i32, !cir.ptr<i32>) -> ()
  %68 = "cir.load"(%3) : (!cir.ptr<i32>) -> i32
  %69 = "cir.unary"(%68) {kind = 5 : i32} : (i32) -> i32
  "cir.store"(%69, %3) : (i32, !cir.ptr<i32>) -> ()
  %70 = "cir.load"(%4) : (!cir.ptr<i32>) -> i32
  %71 = "cir.unary"(%70) {kind = 5 : i32} : (i32) -> i32
  "cir.store"(%71, %4) : (i32, !cir.ptr<i32>) -> ()
  %72 = "cir.load"(%5) : (!cir.ptr<i32>) -> i32
  %73 = "cir.unary"(%72) {kind = 5 : i32} : (i32) -> i32
  "cir.store"(%73, %5) : (i32, !cir.ptr<i32>) -> ()
  %74 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %75 = "cir.const"() {value = 1 : i32} : () -> i32
  %76 = "cir.cast"(%74) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %77 = "cir.ptr_stride"(%76, %75) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  %78 = "cir.load"(%77) : (!cir.ptr<i32>) -> i32
  %79 = "cir.load"(%1) : (!cir.ptr<i32>) -> i32
  %80 = "cir.binop"(%79, %78) {kind = 8 : i32} : (i32, i32) -> i32
  "cir.store"(%80, %1) : (i32, !cir.ptr<i32>) -> ()
  %81 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %82 = "cir.const"() {value = 2 : i32} : () -> i32
  %83 = "cir.cast"(%81) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %84 = "cir.ptr_stride"(%83, %82) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  %85 = "cir.load"(%84) : (!cir.ptr<i32>) -> i32
  %86 = "cir.load"(%2) : (!cir.ptr<i32>) -> i32
  %87 = "cir.binop"(%86, %85) {kind = 8 : i32} : (i32, i32) -> i32
  "cir.store"(%87, %2) : (i32, !cir.ptr<i32>) -> ()
  %88 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %89 = "cir.const"() {value = 3 : i32} : () -> i32
  %90 = "cir.cast"(%88) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %91 = "cir.ptr_stride"(%90, %89) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  %92 = "cir.load"(%91) : (!cir.ptr<i32>) -> i32
  %93 = "cir.load"(%3) : (!cir.ptr<i32>) -> i32
  %94 = "cir.binop"(%93, %92) {kind = 8 : i32} : (i32, i32) -> i32
  "cir.store"(%94, %3) : (i32, !cir.ptr<i32>) -> ()
  %95 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %96 = "cir.const"() {value = 4 : i32} : () -> i32
  %97 = "cir.cast"(%95) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %98 = "cir.ptr_stride"(%97, %96) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  %99 = "cir.load"(%98) : (!cir.ptr<i32>) -> i32
  %100 = "cir.load"(%4) : (!cir.ptr<i32>) -> i32
  %101 = "cir.binop"(%100, %99) {kind = 8 : i32} : (i32, i32) -> i32
  "cir.store"(%101, %4) : (i32, !cir.ptr<i32>) -> ()
  %102 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %103 = "cir.const"() {value = 0 : i32} : () -> i32
  %104 = "cir.cast"(%102) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %105 = "cir.ptr_stride"(%104, %103) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  %106 = "cir.load"(%105) : (!cir.ptr<i32>) -> i32
  %107 = "cir.load"(%5) : (!cir.ptr<i32>) -> i32
  %108 = "cir.binop"(%107, %106) {kind = 8 : i32} : (i32, i32) -> i32
  "cir.store"(%108, %5) : (i32, !cir.ptr<i32>) -> ()
  %109 = "cir.load"(%2) : (!cir.ptr<i32>) -> i32
  %110 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %111 = "cir.const"() {value = 0 : i32} : () -> i32
  %112 = "cir.cast"(%110) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %113 = "cir.ptr_stride"(%112, %111) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  %114 = "cir.load"(%113) : (!cir.ptr<i32>) -> i32
  %115 = "cir.binop"(%114, %109) {kind = 9 : i32} : (i32, i32) -> i32
  "cir.store"(%115, %113) : (i32, !cir.ptr<i32>) -> ()
  %116 = "cir.load"(%3) : (!cir.ptr<i32>) -> i32
  %117 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %118 = "cir.const"() {value = 1 : i32} : () -> i32
  %119 = "cir.cast"(%117) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %120 = "cir.ptr_stride"(%119, %118) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  %121 = "cir.load"(%120) : (!cir.ptr<i32>) -> i32
  %122 = "cir.binop"(%121, %116) {kind = 9 : i32} : (i32, i32) -> i32
  "cir.store"(%122, %120) : (i32, !cir.ptr<i32>) -> ()
  %123 = "cir.load"(%4) : (!cir.ptr<i32>) -> i32
  %124 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %125 = "cir.const"() {value = 2 : i32} : () -> i32
  %126 = "cir.cast"(%124) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %127 = "cir.ptr_stride"(%126, %125) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  %128 = "cir.load"(%127) : (!cir.ptr<i32>) -> i32
  %129 = "cir.binop"(%128, %123) {kind = 9 : i32} : (i32, i32) -> i32
  "cir.store"(%129, %127) : (i32, !cir.ptr<i32>) -> ()
  %130 = "cir.load"(%5) : (!cir.ptr<i32>) -> i32
  %131 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %132 = "cir.const"() {value = 3 : i32} : () -> i32
  %133 = "cir.cast"(%131) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %134 = "cir.ptr_stride"(%133, %132) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  %135 = "cir.load"(%134) : (!cir.ptr<i32>) -> i32
  %136 = "cir.binop"(%135, %130) {kind = 9 : i32} : (i32, i32) -> i32
  "cir.store"(%136, %134) : (i32, !cir.ptr<i32>) -> ()
  %137 = "cir.load"(%1) : (!cir.ptr<i32>) -> i32
  %138 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %139 = "cir.const"() {value = 4 : i32} : () -> i32
  %140 = "cir.cast"(%138) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %141 = "cir.ptr_stride"(%140, %139) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  %142 = "cir.load"(%141) : (!cir.ptr<i32>) -> i32
  %143 = "cir.binop"(%142, %137) {kind = 9 : i32} : (i32, i32) -> i32
  "cir.store"(%143, %141) : (i32, !cir.ptr<i32>) -> ()
  %144 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %145 = "cir.const"() {value = 0 : i32} : () -> i32
  %146 = "cir.cast"(%144) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %147 = "cir.ptr_stride"(%146, %145) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  %148 = "cir.load"(%147) : (!cir.ptr<i32>) -> i32
  %149 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %150 = "cir.const"() {value = 1 : i32} : () -> i32
  %151 = "cir.cast"(%149) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %152 = "cir.ptr_stride"(%151, %150) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  %153 = "cir.load"(%152) : (!cir.ptr<i32>) -> i32
  %154 = "cir.binop"(%153, %148) {kind = 9 : i32} : (i32, i32) -> i32
  "cir.store"(%154, %152) : (i32, !cir.ptr<i32>) -> ()
  %155 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %156 = "cir.const"() {value = 4 : i32} : () -> i32
  %157 = "cir.cast"(%155) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %158 = "cir.ptr_stride"(%157, %156) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  %159 = "cir.load"(%158) : (!cir.ptr<i32>) -> i32
  %160 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %161 = "cir.const"() {value = 0 : i32} : () -> i32
  %162 = "cir.cast"(%160) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %163 = "cir.ptr_stride"(%162, %161) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  %164 = "cir.load"(%163) : (!cir.ptr<i32>) -> i32
  %165 = "cir.binop"(%164, %159) {kind = 9 : i32} : (i32, i32) -> i32
  "cir.store"(%165, %163) : (i32, !cir.ptr<i32>) -> ()
  %166 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %167 = "cir.const"() {value = 2 : i32} : () -> i32
  %168 = "cir.cast"(%166) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %169 = "cir.ptr_stride"(%168, %167) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  %170 = "cir.load"(%169) : (!cir.ptr<i32>) -> i32
  %171 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %172 = "cir.const"() {value = 3 : i32} : () -> i32
  %173 = "cir.cast"(%171) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %174 = "cir.ptr_stride"(%173, %172) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  %175 = "cir.load"(%174) : (!cir.ptr<i32>) -> i32
  %176 = "cir.binop"(%175, %170) {kind = 9 : i32} : (i32, i32) -> i32
  "cir.store"(%176, %174) : (i32, !cir.ptr<i32>) -> ()
  %177 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %178 = "cir.const"() {value = 2 : i32} : () -> i32
  %179 = "cir.cast"(%177) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %180 = "cir.ptr_stride"(%179, %178) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  %181 = "cir.load"(%180) : (!cir.ptr<i32>) -> i32
  %182 = "cir.unary"(%181) {kind = 5 : i32} : (i32) -> i32
  %183 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>>) -> !cir.ptr<!cir.array<i32 x 5>>
  %184 = "cir.const"() {value = 2 : i32} : () -> i32
  %185 = "cir.cast"(%183) {kind = 2 : i32} : (!cir.ptr<!cir.array<i32 x 5>>) -> !cir.ptr<i32>
  %186 = "cir.ptr_stride"(%185, %184) : (!cir.ptr<i32>, i32) -> !cir.ptr<i32>
  "cir.store"(%182, %186) : (i32, !cir.ptr<i32>) -> ()
  "cir.return"() : () -> ()
}) {function_type = (!cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>) -> (), linkage = 0 : i32, sym_name = "sbox"} : () -> ()
