!ty_22struct2Eascon_state_t22 = !cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>
#loc3 = loc("s-box.c":7:11)
#loc4 = loc("s-box.c":7:25)
#loc166 = loc(fused[#loc3, #loc4])
module attributes {cir.sob = #cir.signed_overflow_behavior<undefined>, dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"} {
  cir.func @sbox(%arg0: !ty_22struct2Eascon_state_t22 loc(fused[#loc3, #loc4])) {
    %0 = cir.alloca !ty_22struct2Eascon_state_t22, cir.ptr <!ty_22struct2Eascon_state_t22>, ["state", init] {alignment = 4 : i64} loc(#loc166)
    %1 = cir.alloca i32, cir.ptr <i32>, ["t0"] {alignment = 4 : i64} loc(#loc167)
    %2 = cir.alloca i32, cir.ptr <i32>, ["t1"] {alignment = 4 : i64} loc(#loc168)
    %3 = cir.alloca i32, cir.ptr <i32>, ["t2"] {alignment = 4 : i64} loc(#loc169)
    %4 = cir.alloca i32, cir.ptr <i32>, ["t3"] {alignment = 4 : i64} loc(#loc170)
    %5 = cir.alloca i32, cir.ptr <i32>, ["t4"] {alignment = 4 : i64} loc(#loc171)
    cir.store %arg0, %0 : !ty_22struct2Eascon_state_t22, cir.ptr <!ty_22struct2Eascon_state_t22> loc(#loc11)
    %6 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %7 = cir.const(4 : i32) : i32 loc(#loc13)
    %8 = cir.cast(array_to_ptrdecay, %6 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc14)
    %9 = cir.ptr_stride(%8 : !cir.ptr<i32>, %7 : i32), !cir.ptr<i32> loc(#loc15)
    %10 = cir.load %9 : cir.ptr <i32>, i32 loc(#loc14)
    %11 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %12 = cir.const(0 : i32) : i32 loc(#loc16)
    %13 = cir.cast(array_to_ptrdecay, %11 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc17)
    %14 = cir.ptr_stride(%13 : !cir.ptr<i32>, %12 : i32), !cir.ptr<i32> loc(#loc18)
    %15 = cir.load %14 : cir.ptr <i32>, i32 loc(#loc19)
    %16 = cir.binop(xor, %15, %10) : i32 loc(#loc172)
    cir.store %16, %14 : i32, cir.ptr <i32> loc(#loc172)
    %17 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %18 = cir.const(3 : i32) : i32 loc(#loc21)
    %19 = cir.cast(array_to_ptrdecay, %17 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc22)
    %20 = cir.ptr_stride(%19 : !cir.ptr<i32>, %18 : i32), !cir.ptr<i32> loc(#loc23)
    %21 = cir.load %20 : cir.ptr <i32>, i32 loc(#loc22)
    %22 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %23 = cir.const(4 : i32) : i32 loc(#loc24)
    %24 = cir.cast(array_to_ptrdecay, %22 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc25)
    %25 = cir.ptr_stride(%24 : !cir.ptr<i32>, %23 : i32), !cir.ptr<i32> loc(#loc26)
    %26 = cir.load %25 : cir.ptr <i32>, i32 loc(#loc27)
    %27 = cir.binop(xor, %26, %21) : i32 loc(#loc173)
    cir.store %27, %25 : i32, cir.ptr <i32> loc(#loc173)
    %28 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %29 = cir.const(1 : i32) : i32 loc(#loc29)
    %30 = cir.cast(array_to_ptrdecay, %28 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc30)
    %31 = cir.ptr_stride(%30 : !cir.ptr<i32>, %29 : i32), !cir.ptr<i32> loc(#loc31)
    %32 = cir.load %31 : cir.ptr <i32>, i32 loc(#loc30)
    %33 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %34 = cir.const(2 : i32) : i32 loc(#loc32)
    %35 = cir.cast(array_to_ptrdecay, %33 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc33)
    %36 = cir.ptr_stride(%35 : !cir.ptr<i32>, %34 : i32), !cir.ptr<i32> loc(#loc34)
    %37 = cir.load %36 : cir.ptr <i32>, i32 loc(#loc35)
    %38 = cir.binop(xor, %37, %32) : i32 loc(#loc174)
    cir.store %38, %36 : i32, cir.ptr <i32> loc(#loc174)
    %39 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %40 = cir.const(0 : i32) : i32 loc(#loc37)
    %41 = cir.cast(array_to_ptrdecay, %39 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc38)
    %42 = cir.ptr_stride(%41 : !cir.ptr<i32>, %40 : i32), !cir.ptr<i32> loc(#loc39)
    %43 = cir.load %42 : cir.ptr <i32>, i32 loc(#loc38)
    cir.store %43, %1 : i32, cir.ptr <i32> loc(#loc175)
    %44 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %45 = cir.const(1 : i32) : i32 loc(#loc42)
    %46 = cir.cast(array_to_ptrdecay, %44 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc43)
    %47 = cir.ptr_stride(%46 : !cir.ptr<i32>, %45 : i32), !cir.ptr<i32> loc(#loc44)
    %48 = cir.load %47 : cir.ptr <i32>, i32 loc(#loc43)
    cir.store %48, %2 : i32, cir.ptr <i32> loc(#loc176)
    %49 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %50 = cir.const(2 : i32) : i32 loc(#loc47)
    %51 = cir.cast(array_to_ptrdecay, %49 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc48)
    %52 = cir.ptr_stride(%51 : !cir.ptr<i32>, %50 : i32), !cir.ptr<i32> loc(#loc49)
    %53 = cir.load %52 : cir.ptr <i32>, i32 loc(#loc48)
    cir.store %53, %3 : i32, cir.ptr <i32> loc(#loc177)
    %54 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %55 = cir.const(3 : i32) : i32 loc(#loc52)
    %56 = cir.cast(array_to_ptrdecay, %54 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc53)
    %57 = cir.ptr_stride(%56 : !cir.ptr<i32>, %55 : i32), !cir.ptr<i32> loc(#loc54)
    %58 = cir.load %57 : cir.ptr <i32>, i32 loc(#loc53)
    cir.store %58, %4 : i32, cir.ptr <i32> loc(#loc178)
    %59 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %60 = cir.const(4 : i32) : i32 loc(#loc57)
    %61 = cir.cast(array_to_ptrdecay, %59 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc58)
    %62 = cir.ptr_stride(%61 : !cir.ptr<i32>, %60 : i32), !cir.ptr<i32> loc(#loc59)
    %63 = cir.load %62 : cir.ptr <i32>, i32 loc(#loc58)
    cir.store %63, %5 : i32, cir.ptr <i32> loc(#loc179)
    %64 = cir.load %1 : cir.ptr <i32>, i32 loc(#loc62)
    %65 = cir.unary(not, %64) : i32, i32 loc(#loc63)
    cir.store %65, %1 : i32, cir.ptr <i32> loc(#loc180)
    %66 = cir.load %2 : cir.ptr <i32>, i32 loc(#loc65)
    %67 = cir.unary(not, %66) : i32, i32 loc(#loc66)
    cir.store %67, %2 : i32, cir.ptr <i32> loc(#loc181)
    %68 = cir.load %3 : cir.ptr <i32>, i32 loc(#loc68)
    %69 = cir.unary(not, %68) : i32, i32 loc(#loc69)
    cir.store %69, %3 : i32, cir.ptr <i32> loc(#loc182)
    %70 = cir.load %4 : cir.ptr <i32>, i32 loc(#loc71)
    %71 = cir.unary(not, %70) : i32, i32 loc(#loc72)
    cir.store %71, %4 : i32, cir.ptr <i32> loc(#loc183)
    %72 = cir.load %5 : cir.ptr <i32>, i32 loc(#loc74)
    %73 = cir.unary(not, %72) : i32, i32 loc(#loc75)
    cir.store %73, %5 : i32, cir.ptr <i32> loc(#loc184)
    %74 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %75 = cir.const(1 : i32) : i32 loc(#loc77)
    %76 = cir.cast(array_to_ptrdecay, %74 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc78)
    %77 = cir.ptr_stride(%76 : !cir.ptr<i32>, %75 : i32), !cir.ptr<i32> loc(#loc79)
    %78 = cir.load %77 : cir.ptr <i32>, i32 loc(#loc78)
    %79 = cir.load %1 : cir.ptr <i32>, i32 loc(#loc80)
    %80 = cir.binop(and, %79, %78) : i32 loc(#loc185)
    cir.store %80, %1 : i32, cir.ptr <i32> loc(#loc185)
    %81 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %82 = cir.const(2 : i32) : i32 loc(#loc83)
    %83 = cir.cast(array_to_ptrdecay, %81 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc84)
    %84 = cir.ptr_stride(%83 : !cir.ptr<i32>, %82 : i32), !cir.ptr<i32> loc(#loc85)
    %85 = cir.load %84 : cir.ptr <i32>, i32 loc(#loc84)
    %86 = cir.load %2 : cir.ptr <i32>, i32 loc(#loc86)
    %87 = cir.binop(and, %86, %85) : i32 loc(#loc186)
    cir.store %87, %2 : i32, cir.ptr <i32> loc(#loc186)
    %88 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %89 = cir.const(3 : i32) : i32 loc(#loc89)
    %90 = cir.cast(array_to_ptrdecay, %88 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc90)
    %91 = cir.ptr_stride(%90 : !cir.ptr<i32>, %89 : i32), !cir.ptr<i32> loc(#loc91)
    %92 = cir.load %91 : cir.ptr <i32>, i32 loc(#loc90)
    %93 = cir.load %3 : cir.ptr <i32>, i32 loc(#loc92)
    %94 = cir.binop(and, %93, %92) : i32 loc(#loc187)
    cir.store %94, %3 : i32, cir.ptr <i32> loc(#loc187)
    %95 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %96 = cir.const(4 : i32) : i32 loc(#loc95)
    %97 = cir.cast(array_to_ptrdecay, %95 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc96)
    %98 = cir.ptr_stride(%97 : !cir.ptr<i32>, %96 : i32), !cir.ptr<i32> loc(#loc97)
    %99 = cir.load %98 : cir.ptr <i32>, i32 loc(#loc96)
    %100 = cir.load %4 : cir.ptr <i32>, i32 loc(#loc98)
    %101 = cir.binop(and, %100, %99) : i32 loc(#loc188)
    cir.store %101, %4 : i32, cir.ptr <i32> loc(#loc188)
    %102 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %103 = cir.const(0 : i32) : i32 loc(#loc101)
    %104 = cir.cast(array_to_ptrdecay, %102 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc102)
    %105 = cir.ptr_stride(%104 : !cir.ptr<i32>, %103 : i32), !cir.ptr<i32> loc(#loc103)
    %106 = cir.load %105 : cir.ptr <i32>, i32 loc(#loc102)
    %107 = cir.load %5 : cir.ptr <i32>, i32 loc(#loc104)
    %108 = cir.binop(and, %107, %106) : i32 loc(#loc189)
    cir.store %108, %5 : i32, cir.ptr <i32> loc(#loc189)
    %109 = cir.load %2 : cir.ptr <i32>, i32 loc(#loc107)
    %110 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %111 = cir.const(0 : i32) : i32 loc(#loc108)
    %112 = cir.cast(array_to_ptrdecay, %110 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc109)
    %113 = cir.ptr_stride(%112 : !cir.ptr<i32>, %111 : i32), !cir.ptr<i32> loc(#loc110)
    %114 = cir.load %113 : cir.ptr <i32>, i32 loc(#loc111)
    %115 = cir.binop(xor, %114, %109) : i32 loc(#loc190)
    cir.store %115, %113 : i32, cir.ptr <i32> loc(#loc190)
    %116 = cir.load %3 : cir.ptr <i32>, i32 loc(#loc112)
    %117 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %118 = cir.const(1 : i32) : i32 loc(#loc113)
    %119 = cir.cast(array_to_ptrdecay, %117 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc114)
    %120 = cir.ptr_stride(%119 : !cir.ptr<i32>, %118 : i32), !cir.ptr<i32> loc(#loc115)
    %121 = cir.load %120 : cir.ptr <i32>, i32 loc(#loc116)
    %122 = cir.binop(xor, %121, %116) : i32 loc(#loc191)
    cir.store %122, %120 : i32, cir.ptr <i32> loc(#loc191)
    %123 = cir.load %4 : cir.ptr <i32>, i32 loc(#loc117)
    %124 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %125 = cir.const(2 : i32) : i32 loc(#loc118)
    %126 = cir.cast(array_to_ptrdecay, %124 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc119)
    %127 = cir.ptr_stride(%126 : !cir.ptr<i32>, %125 : i32), !cir.ptr<i32> loc(#loc120)
    %128 = cir.load %127 : cir.ptr <i32>, i32 loc(#loc121)
    %129 = cir.binop(xor, %128, %123) : i32 loc(#loc192)
    cir.store %129, %127 : i32, cir.ptr <i32> loc(#loc192)
    %130 = cir.load %5 : cir.ptr <i32>, i32 loc(#loc122)
    %131 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %132 = cir.const(3 : i32) : i32 loc(#loc123)
    %133 = cir.cast(array_to_ptrdecay, %131 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc124)
    %134 = cir.ptr_stride(%133 : !cir.ptr<i32>, %132 : i32), !cir.ptr<i32> loc(#loc125)
    %135 = cir.load %134 : cir.ptr <i32>, i32 loc(#loc126)
    %136 = cir.binop(xor, %135, %130) : i32 loc(#loc193)
    cir.store %136, %134 : i32, cir.ptr <i32> loc(#loc193)
    %137 = cir.load %1 : cir.ptr <i32>, i32 loc(#loc127)
    %138 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %139 = cir.const(4 : i32) : i32 loc(#loc128)
    %140 = cir.cast(array_to_ptrdecay, %138 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc129)
    %141 = cir.ptr_stride(%140 : !cir.ptr<i32>, %139 : i32), !cir.ptr<i32> loc(#loc130)
    %142 = cir.load %141 : cir.ptr <i32>, i32 loc(#loc131)
    %143 = cir.binop(xor, %142, %137) : i32 loc(#loc194)
    cir.store %143, %141 : i32, cir.ptr <i32> loc(#loc194)
    %144 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %145 = cir.const(0 : i32) : i32 loc(#loc132)
    %146 = cir.cast(array_to_ptrdecay, %144 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc133)
    %147 = cir.ptr_stride(%146 : !cir.ptr<i32>, %145 : i32), !cir.ptr<i32> loc(#loc134)
    %148 = cir.load %147 : cir.ptr <i32>, i32 loc(#loc133)
    %149 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %150 = cir.const(1 : i32) : i32 loc(#loc135)
    %151 = cir.cast(array_to_ptrdecay, %149 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc136)
    %152 = cir.ptr_stride(%151 : !cir.ptr<i32>, %150 : i32), !cir.ptr<i32> loc(#loc137)
    %153 = cir.load %152 : cir.ptr <i32>, i32 loc(#loc138)
    %154 = cir.binop(xor, %153, %148) : i32 loc(#loc195)
    cir.store %154, %152 : i32, cir.ptr <i32> loc(#loc195)
    %155 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %156 = cir.const(4 : i32) : i32 loc(#loc140)
    %157 = cir.cast(array_to_ptrdecay, %155 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc141)
    %158 = cir.ptr_stride(%157 : !cir.ptr<i32>, %156 : i32), !cir.ptr<i32> loc(#loc142)
    %159 = cir.load %158 : cir.ptr <i32>, i32 loc(#loc141)
    %160 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %161 = cir.const(0 : i32) : i32 loc(#loc143)
    %162 = cir.cast(array_to_ptrdecay, %160 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc144)
    %163 = cir.ptr_stride(%162 : !cir.ptr<i32>, %161 : i32), !cir.ptr<i32> loc(#loc145)
    %164 = cir.load %163 : cir.ptr <i32>, i32 loc(#loc146)
    %165 = cir.binop(xor, %164, %159) : i32 loc(#loc196)
    cir.store %165, %163 : i32, cir.ptr <i32> loc(#loc196)
    %166 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %167 = cir.const(2 : i32) : i32 loc(#loc148)
    %168 = cir.cast(array_to_ptrdecay, %166 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc149)
    %169 = cir.ptr_stride(%168 : !cir.ptr<i32>, %167 : i32), !cir.ptr<i32> loc(#loc150)
    %170 = cir.load %169 : cir.ptr <i32>, i32 loc(#loc149)
    %171 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %172 = cir.const(3 : i32) : i32 loc(#loc151)
    %173 = cir.cast(array_to_ptrdecay, %171 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc152)
    %174 = cir.ptr_stride(%173 : !cir.ptr<i32>, %172 : i32), !cir.ptr<i32> loc(#loc153)
    %175 = cir.load %174 : cir.ptr <i32>, i32 loc(#loc154)
    %176 = cir.binop(xor, %175, %170) : i32 loc(#loc197)
    cir.store %176, %174 : i32, cir.ptr <i32> loc(#loc197)
    %177 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %178 = cir.const(2 : i32) : i32 loc(#loc156)
    %179 = cir.cast(array_to_ptrdecay, %177 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc157)
    %180 = cir.ptr_stride(%179 : !cir.ptr<i32>, %178 : i32), !cir.ptr<i32> loc(#loc158)
    %181 = cir.load %180 : cir.ptr <i32>, i32 loc(#loc157)
    %182 = cir.unary(not, %181) : i32, i32 loc(#loc159)
    %183 = "cir.struct_element_addr"(%0) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>> loc(#loc12)
    %184 = cir.const(2 : i32) : i32 loc(#loc160)
    %185 = cir.cast(array_to_ptrdecay, %183 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32> loc(#loc161)
    %186 = cir.ptr_stride(%185 : !cir.ptr<i32>, %184 : i32), !cir.ptr<i32> loc(#loc162)
    cir.store %182, %186 : i32, cir.ptr <i32> loc(#loc198)
    cir.return loc(#loc164)
  } loc(#loc165)
} loc(#loc)
#loc = loc(unknown)
#loc1 = loc("s-box.c":7:1)
#loc2 = loc("s-box.c":17:1)
#loc5 = loc("s-box.c":8:6)
#loc6 = loc("s-box.c":8:10)
#loc7 = loc("s-box.c":8:14)
#loc8 = loc("s-box.c":8:18)
#loc9 = loc("s-box.c":8:22)
#loc10 = loc("s-box.c":8:26)
#loc11 = loc("s-box.c":7:32)
#loc12 = loc("s-box.c":2:7)
#loc13 = loc("s-box.c":9:23)
#loc14 = loc("s-box.c":9:15)
#loc15 = loc("s-box.c":9:21)
#loc16 = loc("s-box.c":9:9)
#loc17 = loc("s-box.c":9:1)
#loc18 = loc("s-box.c":9:7)
#loc19 = loc("s-box.c":9:12)
#loc20 = loc("s-box.c":9:24)
#loc21 = loc("s-box.c":9:52)
#loc22 = loc("s-box.c":9:44)
#loc23 = loc("s-box.c":9:50)
#loc24 = loc("s-box.c":9:38)
#loc25 = loc("s-box.c":9:30)
#loc26 = loc("s-box.c":9:36)
#loc27 = loc("s-box.c":9:41)
#loc28 = loc("s-box.c":9:53)
#loc29 = loc("s-box.c":9:81)
#loc30 = loc("s-box.c":9:73)
#loc31 = loc("s-box.c":9:79)
#loc32 = loc("s-box.c":9:67)
#loc33 = loc("s-box.c":9:59)
#loc34 = loc("s-box.c":9:65)
#loc35 = loc("s-box.c":9:70)
#loc36 = loc("s-box.c":9:82)
#loc37 = loc("s-box.c":10:15)
#loc38 = loc("s-box.c":10:7)
#loc39 = loc("s-box.c":10:13)
#loc40 = loc("s-box.c":10:1)
#loc41 = loc("s-box.c":10:16)
#loc42 = loc("s-box.c":10:36)
#loc43 = loc("s-box.c":10:28)
#loc44 = loc("s-box.c":10:34)
#loc45 = loc("s-box.c":10:22)
#loc46 = loc("s-box.c":10:37)
#loc47 = loc("s-box.c":10:57)
#loc48 = loc("s-box.c":10:49)
#loc49 = loc("s-box.c":10:55)
#loc50 = loc("s-box.c":10:43)
#loc51 = loc("s-box.c":10:58)
#loc52 = loc("s-box.c":10:78)
#loc53 = loc("s-box.c":10:70)
#loc54 = loc("s-box.c":10:76)
#loc55 = loc("s-box.c":10:64)
#loc56 = loc("s-box.c":10:79)
#loc57 = loc("s-box.c":10:99)
#loc58 = loc("s-box.c":10:91)
#loc59 = loc("s-box.c":10:97)
#loc60 = loc("s-box.c":10:85)
#loc61 = loc("s-box.c":10:100)
#loc62 = loc("s-box.c":11:7)
#loc63 = loc("s-box.c":11:5)
#loc64 = loc("s-box.c":11:1)
#loc65 = loc("s-box.c":11:20)
#loc66 = loc("s-box.c":11:18)
#loc67 = loc("s-box.c":11:14)
#loc68 = loc("s-box.c":11:33)
#loc69 = loc("s-box.c":11:31)
#loc70 = loc("s-box.c":11:27)
#loc71 = loc("s-box.c":11:46)
#loc72 = loc("s-box.c":11:44)
#loc73 = loc("s-box.c":11:40)
#loc74 = loc("s-box.c":11:59)
#loc75 = loc("s-box.c":11:57)
#loc76 = loc("s-box.c":11:53)
#loc77 = loc("s-box.c":12:15)
#loc78 = loc("s-box.c":12:7)
#loc79 = loc("s-box.c":12:13)
#loc80 = loc("s-box.c":12:4)
#loc81 = loc("s-box.c":12:1)
#loc82 = loc("s-box.c":12:16)
#loc83 = loc("s-box.c":12:36)
#loc84 = loc("s-box.c":12:28)
#loc85 = loc("s-box.c":12:34)
#loc86 = loc("s-box.c":12:25)
#loc87 = loc("s-box.c":12:22)
#loc88 = loc("s-box.c":12:37)
#loc89 = loc("s-box.c":12:57)
#loc90 = loc("s-box.c":12:49)
#loc91 = loc("s-box.c":12:55)
#loc92 = loc("s-box.c":12:46)
#loc93 = loc("s-box.c":12:43)
#loc94 = loc("s-box.c":12:58)
#loc95 = loc("s-box.c":12:78)
#loc96 = loc("s-box.c":12:70)
#loc97 = loc("s-box.c":12:76)
#loc98 = loc("s-box.c":12:67)
#loc99 = loc("s-box.c":12:64)
#loc100 = loc("s-box.c":12:79)
#loc101 = loc("s-box.c":12:99)
#loc102 = loc("s-box.c":12:91)
#loc103 = loc("s-box.c":12:97)
#loc104 = loc("s-box.c":12:88)
#loc105 = loc("s-box.c":12:85)
#loc106 = loc("s-box.c":12:100)
#loc107 = loc("s-box.c":13:15)
#loc108 = loc("s-box.c":13:9)
#loc109 = loc("s-box.c":13:1)
#loc110 = loc("s-box.c":13:7)
#loc111 = loc("s-box.c":13:12)
#loc112 = loc("s-box.c":13:36)
#loc113 = loc("s-box.c":13:30)
#loc114 = loc("s-box.c":13:22)
#loc115 = loc("s-box.c":13:28)
#loc116 = loc("s-box.c":13:33)
#loc117 = loc("s-box.c":13:57)
#loc118 = loc("s-box.c":13:51)
#loc119 = loc("s-box.c":13:43)
#loc120 = loc("s-box.c":13:49)
#loc121 = loc("s-box.c":13:54)
#loc122 = loc("s-box.c":13:78)
#loc123 = loc("s-box.c":13:72)
#loc124 = loc("s-box.c":13:64)
#loc125 = loc("s-box.c":13:70)
#loc126 = loc("s-box.c":13:75)
#loc127 = loc("s-box.c":13:99)
#loc128 = loc("s-box.c":13:93)
#loc129 = loc("s-box.c":13:85)
#loc130 = loc("s-box.c":13:91)
#loc131 = loc("s-box.c":13:96)
#loc132 = loc("s-box.c":14:23)
#loc133 = loc("s-box.c":14:15)
#loc134 = loc("s-box.c":14:21)
#loc135 = loc("s-box.c":14:9)
#loc136 = loc("s-box.c":14:1)
#loc137 = loc("s-box.c":14:7)
#loc138 = loc("s-box.c":14:12)
#loc139 = loc("s-box.c":14:24)
#loc140 = loc("s-box.c":14:52)
#loc141 = loc("s-box.c":14:44)
#loc142 = loc("s-box.c":14:50)
#loc143 = loc("s-box.c":14:38)
#loc144 = loc("s-box.c":14:30)
#loc145 = loc("s-box.c":14:36)
#loc146 = loc("s-box.c":14:41)
#loc147 = loc("s-box.c":14:53)
#loc148 = loc("s-box.c":14:81)
#loc149 = loc("s-box.c":14:73)
#loc150 = loc("s-box.c":14:79)
#loc151 = loc("s-box.c":14:67)
#loc152 = loc("s-box.c":14:59)
#loc153 = loc("s-box.c":14:65)
#loc154 = loc("s-box.c":14:70)
#loc155 = loc("s-box.c":14:82)
#loc156 = loc("s-box.c":14:110)
#loc157 = loc("s-box.c":14:102)
#loc158 = loc("s-box.c":14:108)
#loc159 = loc("s-box.c":14:100)
#loc160 = loc("s-box.c":14:96)
#loc161 = loc("s-box.c":14:88)
#loc162 = loc("s-box.c":14:94)
#loc163 = loc("s-box.c":14:111)
#loc164 = loc("s-box.c":16:1)
#loc165 = loc(fused[#loc1, #loc2])
#loc167 = loc(fused[#loc5, #loc6])
#loc168 = loc(fused[#loc5, #loc7])
#loc169 = loc(fused[#loc5, #loc8])
#loc170 = loc(fused[#loc5, #loc9])
#loc171 = loc(fused[#loc5, #loc10])
#loc172 = loc(fused[#loc17, #loc20])
#loc173 = loc(fused[#loc25, #loc28])
#loc174 = loc(fused[#loc33, #loc36])
#loc175 = loc(fused[#loc40, #loc41])
#loc176 = loc(fused[#loc45, #loc46])
#loc177 = loc(fused[#loc50, #loc51])
#loc178 = loc(fused[#loc55, #loc56])
#loc179 = loc(fused[#loc60, #loc61])
#loc180 = loc(fused[#loc64, #loc62])
#loc181 = loc(fused[#loc67, #loc65])
#loc182 = loc(fused[#loc70, #loc68])
#loc183 = loc(fused[#loc73, #loc71])
#loc184 = loc(fused[#loc76, #loc74])
#loc185 = loc(fused[#loc81, #loc82])
#loc186 = loc(fused[#loc87, #loc88])
#loc187 = loc(fused[#loc93, #loc94])
#loc188 = loc(fused[#loc99, #loc100])
#loc189 = loc(fused[#loc105, #loc106])
#loc190 = loc(fused[#loc109, #loc107])
#loc191 = loc(fused[#loc114, #loc112])
#loc192 = loc(fused[#loc119, #loc117])
#loc193 = loc(fused[#loc124, #loc122])
#loc194 = loc(fused[#loc129, #loc127])
#loc195 = loc(fused[#loc136, #loc139])
#loc196 = loc(fused[#loc144, #loc147])
#loc197 = loc(fused[#loc152, #loc155])
#loc198 = loc(fused[#loc161, #loc163])
