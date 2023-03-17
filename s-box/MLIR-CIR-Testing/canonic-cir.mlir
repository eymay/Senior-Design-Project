!ty_22struct2Eascon_state_t22 = !cir.struct<"struct.ascon_state_t", !cir.array<i32 x 5>>
module attributes {cir.sob = #cir.signed_overflow_behavior<undefined>, dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"} {
  cir.func @sbox(%arg0: !ty_22struct2Eascon_state_t22) {
    %0 = cir.const(2 : i32) : i32
    %1 = cir.const(1 : i32) : i32
    %2 = cir.const(3 : i32) : i32
    %3 = cir.const(0 : i32) : i32
    %4 = cir.const(4 : i32) : i32
    %5 = cir.alloca !ty_22struct2Eascon_state_t22, cir.ptr <!ty_22struct2Eascon_state_t22>, ["state", init] {alignment = 4 : i64}
    %6 = cir.alloca i32, cir.ptr <i32>, ["t0"] {alignment = 4 : i64}
    %7 = cir.alloca i32, cir.ptr <i32>, ["t1"] {alignment = 4 : i64}
    %8 = cir.alloca i32, cir.ptr <i32>, ["t2"] {alignment = 4 : i64}
    %9 = cir.alloca i32, cir.ptr <i32>, ["t3"] {alignment = 4 : i64}
    %10 = cir.alloca i32, cir.ptr <i32>, ["t4"] {alignment = 4 : i64}
    cir.store %arg0, %5 : !ty_22struct2Eascon_state_t22, cir.ptr <!ty_22struct2Eascon_state_t22>
    %11 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %12 = cir.cast(array_to_ptrdecay, %11 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %13 = cir.ptr_stride(%12 : !cir.ptr<i32>, %4 : i32), !cir.ptr<i32>
    %14 = cir.load %13 : cir.ptr <i32>, i32
    %15 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %16 = cir.cast(array_to_ptrdecay, %15 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %17 = cir.ptr_stride(%16 : !cir.ptr<i32>, %3 : i32), !cir.ptr<i32>
    %18 = cir.load %17 : cir.ptr <i32>, i32
    %19 = cir.binop(xor, %18, %14) : i32
    cir.store %19, %17 : i32, cir.ptr <i32>
    %20 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %21 = cir.cast(array_to_ptrdecay, %20 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %22 = cir.ptr_stride(%21 : !cir.ptr<i32>, %2 : i32), !cir.ptr<i32>
    %23 = cir.load %22 : cir.ptr <i32>, i32
    %24 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %25 = cir.cast(array_to_ptrdecay, %24 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %26 = cir.ptr_stride(%25 : !cir.ptr<i32>, %4 : i32), !cir.ptr<i32>
    %27 = cir.load %26 : cir.ptr <i32>, i32
    %28 = cir.binop(xor, %27, %23) : i32
    cir.store %28, %26 : i32, cir.ptr <i32>
    %29 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %30 = cir.cast(array_to_ptrdecay, %29 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %31 = cir.ptr_stride(%30 : !cir.ptr<i32>, %1 : i32), !cir.ptr<i32>
    %32 = cir.load %31 : cir.ptr <i32>, i32
    %33 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %34 = cir.cast(array_to_ptrdecay, %33 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %35 = cir.ptr_stride(%34 : !cir.ptr<i32>, %0 : i32), !cir.ptr<i32>
    %36 = cir.load %35 : cir.ptr <i32>, i32
    %37 = cir.binop(xor, %36, %32) : i32
    cir.store %37, %35 : i32, cir.ptr <i32>
    %38 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %39 = cir.cast(array_to_ptrdecay, %38 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %40 = cir.ptr_stride(%39 : !cir.ptr<i32>, %3 : i32), !cir.ptr<i32>
    %41 = cir.load %40 : cir.ptr <i32>, i32
    cir.store %41, %6 : i32, cir.ptr <i32>
    %42 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %43 = cir.cast(array_to_ptrdecay, %42 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %44 = cir.ptr_stride(%43 : !cir.ptr<i32>, %1 : i32), !cir.ptr<i32>
    %45 = cir.load %44 : cir.ptr <i32>, i32
    cir.store %45, %7 : i32, cir.ptr <i32>
    %46 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %47 = cir.cast(array_to_ptrdecay, %46 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %48 = cir.ptr_stride(%47 : !cir.ptr<i32>, %0 : i32), !cir.ptr<i32>
    %49 = cir.load %48 : cir.ptr <i32>, i32
    cir.store %49, %8 : i32, cir.ptr <i32>
    %50 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %51 = cir.cast(array_to_ptrdecay, %50 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %52 = cir.ptr_stride(%51 : !cir.ptr<i32>, %2 : i32), !cir.ptr<i32>
    %53 = cir.load %52 : cir.ptr <i32>, i32
    cir.store %53, %9 : i32, cir.ptr <i32>
    %54 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %55 = cir.cast(array_to_ptrdecay, %54 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %56 = cir.ptr_stride(%55 : !cir.ptr<i32>, %4 : i32), !cir.ptr<i32>
    %57 = cir.load %56 : cir.ptr <i32>, i32
    cir.store %57, %10 : i32, cir.ptr <i32>
    %58 = cir.load %6 : cir.ptr <i32>, i32
    %59 = cir.unary(not, %58) : i32, i32
    cir.store %59, %6 : i32, cir.ptr <i32>
    %60 = cir.load %7 : cir.ptr <i32>, i32
    %61 = cir.unary(not, %60) : i32, i32
    cir.store %61, %7 : i32, cir.ptr <i32>
    %62 = cir.load %8 : cir.ptr <i32>, i32
    %63 = cir.unary(not, %62) : i32, i32
    cir.store %63, %8 : i32, cir.ptr <i32>
    %64 = cir.load %9 : cir.ptr <i32>, i32
    %65 = cir.unary(not, %64) : i32, i32
    cir.store %65, %9 : i32, cir.ptr <i32>
    %66 = cir.load %10 : cir.ptr <i32>, i32
    %67 = cir.unary(not, %66) : i32, i32
    cir.store %67, %10 : i32, cir.ptr <i32>
    %68 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %69 = cir.cast(array_to_ptrdecay, %68 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %70 = cir.ptr_stride(%69 : !cir.ptr<i32>, %1 : i32), !cir.ptr<i32>
    %71 = cir.load %70 : cir.ptr <i32>, i32
    %72 = cir.load %6 : cir.ptr <i32>, i32
    %73 = cir.binop(and, %72, %71) : i32
    cir.store %73, %6 : i32, cir.ptr <i32>
    %74 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %75 = cir.cast(array_to_ptrdecay, %74 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %76 = cir.ptr_stride(%75 : !cir.ptr<i32>, %0 : i32), !cir.ptr<i32>
    %77 = cir.load %76 : cir.ptr <i32>, i32
    %78 = cir.load %7 : cir.ptr <i32>, i32
    %79 = cir.binop(and, %78, %77) : i32
    cir.store %79, %7 : i32, cir.ptr <i32>
    %80 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %81 = cir.cast(array_to_ptrdecay, %80 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %82 = cir.ptr_stride(%81 : !cir.ptr<i32>, %2 : i32), !cir.ptr<i32>
    %83 = cir.load %82 : cir.ptr <i32>, i32
    %84 = cir.load %8 : cir.ptr <i32>, i32
    %85 = cir.binop(and, %84, %83) : i32
    cir.store %85, %8 : i32, cir.ptr <i32>
    %86 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %87 = cir.cast(array_to_ptrdecay, %86 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %88 = cir.ptr_stride(%87 : !cir.ptr<i32>, %4 : i32), !cir.ptr<i32>
    %89 = cir.load %88 : cir.ptr <i32>, i32
    %90 = cir.load %9 : cir.ptr <i32>, i32
    %91 = cir.binop(and, %90, %89) : i32
    cir.store %91, %9 : i32, cir.ptr <i32>
    %92 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %93 = cir.cast(array_to_ptrdecay, %92 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %94 = cir.ptr_stride(%93 : !cir.ptr<i32>, %3 : i32), !cir.ptr<i32>
    %95 = cir.load %94 : cir.ptr <i32>, i32
    %96 = cir.load %10 : cir.ptr <i32>, i32
    %97 = cir.binop(and, %96, %95) : i32
    cir.store %97, %10 : i32, cir.ptr <i32>
    %98 = cir.load %7 : cir.ptr <i32>, i32
    %99 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %100 = cir.cast(array_to_ptrdecay, %99 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %101 = cir.ptr_stride(%100 : !cir.ptr<i32>, %3 : i32), !cir.ptr<i32>
    %102 = cir.load %101 : cir.ptr <i32>, i32
    %103 = cir.binop(xor, %102, %98) : i32
    cir.store %103, %101 : i32, cir.ptr <i32>
    %104 = cir.load %8 : cir.ptr <i32>, i32
    %105 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %106 = cir.cast(array_to_ptrdecay, %105 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %107 = cir.ptr_stride(%106 : !cir.ptr<i32>, %1 : i32), !cir.ptr<i32>
    %108 = cir.load %107 : cir.ptr <i32>, i32
    %109 = cir.binop(xor, %108, %104) : i32
    cir.store %109, %107 : i32, cir.ptr <i32>
    %110 = cir.load %9 : cir.ptr <i32>, i32
    %111 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %112 = cir.cast(array_to_ptrdecay, %111 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %113 = cir.ptr_stride(%112 : !cir.ptr<i32>, %0 : i32), !cir.ptr<i32>
    %114 = cir.load %113 : cir.ptr <i32>, i32
    %115 = cir.binop(xor, %114, %110) : i32
    cir.store %115, %113 : i32, cir.ptr <i32>
    %116 = cir.load %10 : cir.ptr <i32>, i32
    %117 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %118 = cir.cast(array_to_ptrdecay, %117 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %119 = cir.ptr_stride(%118 : !cir.ptr<i32>, %2 : i32), !cir.ptr<i32>
    %120 = cir.load %119 : cir.ptr <i32>, i32
    %121 = cir.binop(xor, %120, %116) : i32
    cir.store %121, %119 : i32, cir.ptr <i32>
    %122 = cir.load %6 : cir.ptr <i32>, i32
    %123 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %124 = cir.cast(array_to_ptrdecay, %123 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %125 = cir.ptr_stride(%124 : !cir.ptr<i32>, %4 : i32), !cir.ptr<i32>
    %126 = cir.load %125 : cir.ptr <i32>, i32
    %127 = cir.binop(xor, %126, %122) : i32
    cir.store %127, %125 : i32, cir.ptr <i32>
    %128 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %129 = cir.cast(array_to_ptrdecay, %128 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %130 = cir.ptr_stride(%129 : !cir.ptr<i32>, %3 : i32), !cir.ptr<i32>
    %131 = cir.load %130 : cir.ptr <i32>, i32
    %132 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %133 = cir.cast(array_to_ptrdecay, %132 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %134 = cir.ptr_stride(%133 : !cir.ptr<i32>, %1 : i32), !cir.ptr<i32>
    %135 = cir.load %134 : cir.ptr <i32>, i32
    %136 = cir.binop(xor, %135, %131) : i32
    cir.store %136, %134 : i32, cir.ptr <i32>
    %137 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %138 = cir.cast(array_to_ptrdecay, %137 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %139 = cir.ptr_stride(%138 : !cir.ptr<i32>, %4 : i32), !cir.ptr<i32>
    %140 = cir.load %139 : cir.ptr <i32>, i32
    %141 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %142 = cir.cast(array_to_ptrdecay, %141 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %143 = cir.ptr_stride(%142 : !cir.ptr<i32>, %3 : i32), !cir.ptr<i32>
    %144 = cir.load %143 : cir.ptr <i32>, i32
    %145 = cir.binop(xor, %144, %140) : i32
    cir.store %145, %143 : i32, cir.ptr <i32>
    %146 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %147 = cir.cast(array_to_ptrdecay, %146 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %148 = cir.ptr_stride(%147 : !cir.ptr<i32>, %0 : i32), !cir.ptr<i32>
    %149 = cir.load %148 : cir.ptr <i32>, i32
    %150 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %151 = cir.cast(array_to_ptrdecay, %150 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %152 = cir.ptr_stride(%151 : !cir.ptr<i32>, %2 : i32), !cir.ptr<i32>
    %153 = cir.load %152 : cir.ptr <i32>, i32
    %154 = cir.binop(xor, %153, %149) : i32
    cir.store %154, %152 : i32, cir.ptr <i32>
    %155 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %156 = cir.cast(array_to_ptrdecay, %155 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %157 = cir.ptr_stride(%156 : !cir.ptr<i32>, %0 : i32), !cir.ptr<i32>
    %158 = cir.load %157 : cir.ptr <i32>, i32
    %159 = cir.unary(not, %158) : i32, i32
    %160 = "cir.struct_element_addr"(%5) {member_name = "x"} : (!cir.ptr<!ty_22struct2Eascon_state_t22>) -> !cir.ptr<!cir.array<i32 x 5>>
    %161 = cir.cast(array_to_ptrdecay, %160 : !cir.ptr<!cir.array<i32 x 5>>), !cir.ptr<i32>
    %162 = cir.ptr_stride(%161 : !cir.ptr<i32>, %0 : i32), !cir.ptr<i32>
    cir.store %159, %162 : i32, cir.ptr <i32>
    cir.return
  }
}

