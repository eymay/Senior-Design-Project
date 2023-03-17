


=== sbox
Initial selection DAG: %bb.0 'sbox:'
SelectionDAG has 48 nodes:
  t0: ch,glue = EntryToken
  t2: i32,ch = CopyFromReg t0, Register:i32 %0
  t4: i32 = add nuw t2, Constant:i32<16>
  t5: i32 = Constant<0>
  t7: i32,ch = load<(load (s32) from %ir.2, !tbaa !7)> t0, t4, undef:i32
  t8: i32,ch = load<(load (s32) from %ir.0, !tbaa !7)> t0, t2, undef:i32
  t9: i32 = xor t8, t7
  t11: i32 = add nuw t2, Constant:i32<12>
  t12: i32,ch = load<(load (s32) from %ir.6, !tbaa !7)> t0, t11, undef:i32
  t13: i32 = xor t12, t7
  t15: i32 = add nuw t2, Constant:i32<4>
  t16: i32,ch = load<(load (s32) from %ir.9, !tbaa !7)> t0, t15, undef:i32
  t18: i32 = add nuw t2, Constant:i32<8>
  t19: i32,ch = load<(load (s32) from %ir.11, !tbaa !7)> t0, t18, undef:i32
  t20: i32 = xor t19, t16
      t23: i32 = xor t16, Constant:i32<-1>
    t28: i32 = and t19, t23
  t32: i32 = xor t28, t9
      t25: i32 = xor t12, Constant:i32<-1>
    t30: i32 = and t7, t25
  t34: i32 = xor t20, t30
      t22: i32 = xor t9, Constant:i32<-1>
    t27: i32 = and t16, t22
  t36: i32 = xor t27, t13
              t37: ch = TokenFactor t7:1, t8:1, t12:1, t16:1, t19:1
            t38: ch = store<(store (s32) into %ir.2, !tbaa !7)> t37, t36, t4, undef:i32
                  t24: i32 = xor t20, Constant:i32<-1>
                t29: i32 = and t12, t24
              t33: i32 = xor t29, t16
            t39: i32 = xor t33, t32
          t40: ch = store<(store (s32) into %ir.9, !tbaa !7)> t38, t39, t15, undef:i32
          t41: i32 = xor t32, t36
        t42: ch = store<(store (s32) into %ir.0, !tbaa !7)> t40, t41, t2, undef:i32
              t26: i32 = xor t13, Constant:i32<-1>
            t31: i32 = and t9, t26
          t35: i32 = xor t31, t12
        t43: i32 = xor t34, t35
      t44: ch = store<(store (s32) into %ir.6, !tbaa !7)> t42, t43, t11, undef:i32
      t45: i32 = xor t34, Constant:i32<-1>
    t46: ch = store<(store (s32) into %ir.11, !tbaa !7)> t44, t45, t18, undef:i32
  t47: ch = RISCVISD::RET_FLAG t46


Optimized lowered selection DAG: %bb.0 'sbox:'
SelectionDAG has 47 nodes:
  t0: ch,glue = EntryToken
  t2: i32,ch = CopyFromReg t0, Register:i32 %0
  t4: i32 = add nuw t2, Constant:i32<16>
  t7: i32,ch = load<(load (s32) from %ir.2, !tbaa !7)> t0, t4, undef:i32
  t8: i32,ch = load<(load (s32) from %ir.0, !tbaa !7)> t0, t2, undef:i32
  t9: i32 = xor t8, t7
  t11: i32 = add nuw t2, Constant:i32<12>
  t12: i32,ch = load<(load (s32) from %ir.6, !tbaa !7)> t0, t11, undef:i32
  t13: i32 = xor t12, t7
  t15: i32 = add nuw t2, Constant:i32<4>
  t16: i32,ch = load<(load (s32) from %ir.9, !tbaa !7)> t0, t15, undef:i32
  t18: i32 = add nuw t2, Constant:i32<8>
  t19: i32,ch = load<(load (s32) from %ir.11, !tbaa !7)> t0, t18, undef:i32
  t20: i32 = xor t19, t16
      t23: i32 = xor t16, Constant:i32<-1>
    t28: i32 = and t19, t23
  t32: i32 = xor t28, t9
      t25: i32 = xor t12, Constant:i32<-1>
    t30: i32 = and t7, t25
  t34: i32 = xor t20, t30
      t22: i32 = xor t9, Constant:i32<-1>
    t27: i32 = and t16, t22
  t36: i32 = xor t27, t13
        t45: i32 = xor t34, Constant:i32<-1>
      t48: ch = store<(store (s32) into %ir.11, !tbaa !7)> t19:1, t45, t18, undef:i32
        t41: i32 = xor t32, t36
      t42: ch = store<(store (s32) into %ir.0, !tbaa !7)> t8:1, t41, t2, undef:i32
              t26: i32 = xor t13, Constant:i32<-1>
            t31: i32 = and t9, t26
          t35: i32 = xor t31, t12
        t43: i32 = xor t34, t35
      t50: ch = store<(store (s32) into %ir.6, !tbaa !7)> t12:1, t43, t11, undef:i32
              t24: i32 = xor t20, Constant:i32<-1>
            t29: i32 = and t12, t24
          t33: i32 = xor t29, t16
        t39: i32 = xor t33, t32
      t53: ch = store<(store (s32) into %ir.9, !tbaa !7)> t16:1, t39, t15, undef:i32
      t56: ch = store<(store (s32) into %ir.2, !tbaa !7)> t7:1, t36, t4, undef:i32
    t59: ch = TokenFactor t48, t42, t50, t53, t56
  t47: ch = RISCVISD::RET_FLAG t59


Type-legalized selection DAG: %bb.0 'sbox:'
SelectionDAG has 47 nodes:
  t0: ch,glue = EntryToken
  t2: i32,ch = CopyFromReg t0, Register:i32 %0
  t4: i32 = add nuw t2, Constant:i32<16>
  t7: i32,ch = load<(load (s32) from %ir.2, !tbaa !7)> t0, t4, undef:i32
  t8: i32,ch = load<(load (s32) from %ir.0, !tbaa !7)> t0, t2, undef:i32
  t9: i32 = xor t8, t7
  t11: i32 = add nuw t2, Constant:i32<12>
  t12: i32,ch = load<(load (s32) from %ir.6, !tbaa !7)> t0, t11, undef:i32
  t13: i32 = xor t12, t7
  t15: i32 = add nuw t2, Constant:i32<4>
  t16: i32,ch = load<(load (s32) from %ir.9, !tbaa !7)> t0, t15, undef:i32
  t18: i32 = add nuw t2, Constant:i32<8>
  t19: i32,ch = load<(load (s32) from %ir.11, !tbaa !7)> t0, t18, undef:i32
  t20: i32 = xor t19, t16
      t23: i32 = xor t16, Constant:i32<-1>
    t28: i32 = and t19, t23
  t32: i32 = xor t28, t9
      t25: i32 = xor t12, Constant:i32<-1>
    t30: i32 = and t7, t25
  t34: i32 = xor t20, t30
      t22: i32 = xor t9, Constant:i32<-1>
    t27: i32 = and t16, t22
  t36: i32 = xor t27, t13
        t45: i32 = xor t34, Constant:i32<-1>
      t48: ch = store<(store (s32) into %ir.11, !tbaa !7)> t19:1, t45, t18, undef:i32
        t41: i32 = xor t32, t36
      t42: ch = store<(store (s32) into %ir.0, !tbaa !7)> t8:1, t41, t2, undef:i32
              t26: i32 = xor t13, Constant:i32<-1>
            t31: i32 = and t9, t26
          t35: i32 = xor t31, t12
        t43: i32 = xor t34, t35
      t50: ch = store<(store (s32) into %ir.6, !tbaa !7)> t12:1, t43, t11, undef:i32
              t24: i32 = xor t20, Constant:i32<-1>
            t29: i32 = and t12, t24
          t33: i32 = xor t29, t16
        t39: i32 = xor t33, t32
      t53: ch = store<(store (s32) into %ir.9, !tbaa !7)> t16:1, t39, t15, undef:i32
      t56: ch = store<(store (s32) into %ir.2, !tbaa !7)> t7:1, t36, t4, undef:i32
    t59: ch = TokenFactor t48, t42, t50, t53, t56
  t47: ch = RISCVISD::RET_FLAG t59


Legalized selection DAG: %bb.0 'sbox:'
SelectionDAG has 47 nodes:
  t0: ch,glue = EntryToken
  t2: i32,ch = CopyFromReg t0, Register:i32 %0
  t18: i32 = add nuw t2, Constant:i32<8>
  t15: i32 = add nuw t2, Constant:i32<4>
  t11: i32 = add nuw t2, Constant:i32<12>
  t8: i32,ch = load<(load (s32) from %ir.0, !tbaa !7)> t0, t2, undef:i32
  t4: i32 = add nuw t2, Constant:i32<16>
  t19: i32,ch = load<(load (s32) from %ir.11, !tbaa !7)> t0, t18, undef:i32
  t16: i32,ch = load<(load (s32) from %ir.9, !tbaa !7)> t0, t15, undef:i32
  t12: i32,ch = load<(load (s32) from %ir.6, !tbaa !7)> t0, t11, undef:i32
  t7: i32,ch = load<(load (s32) from %ir.2, !tbaa !7)> t0, t4, undef:i32
  t20: i32 = xor t19, t16
  t13: i32 = xor t12, t7
  t9: i32 = xor t8, t7
      t23: i32 = xor t16, Constant:i32<-1>
    t28: i32 = and t19, t23
  t32: i32 = xor t28, t9
      t25: i32 = xor t12, Constant:i32<-1>
    t30: i32 = and t7, t25
  t34: i32 = xor t20, t30
      t22: i32 = xor t9, Constant:i32<-1>
    t27: i32 = and t16, t22
  t36: i32 = xor t27, t13
        t45: i32 = xor t34, Constant:i32<-1>
      t48: ch = store<(store (s32) into %ir.11, !tbaa !7)> t19:1, t45, t18, undef:i32
        t41: i32 = xor t32, t36
      t42: ch = store<(store (s32) into %ir.0, !tbaa !7)> t8:1, t41, t2, undef:i32
              t26: i32 = xor t13, Constant:i32<-1>
            t31: i32 = and t9, t26
          t35: i32 = xor t31, t12
        t43: i32 = xor t34, t35
      t50: ch = store<(store (s32) into %ir.6, !tbaa !7)> t12:1, t43, t11, undef:i32
              t24: i32 = xor t20, Constant:i32<-1>
            t29: i32 = and t12, t24
          t33: i32 = xor t29, t16
        t39: i32 = xor t33, t32
      t53: ch = store<(store (s32) into %ir.9, !tbaa !7)> t16:1, t39, t15, undef:i32
      t56: ch = store<(store (s32) into %ir.2, !tbaa !7)> t7:1, t36, t4, undef:i32
    t59: ch = TokenFactor t48, t42, t50, t53, t56
  t47: ch = RISCVISD::RET_FLAG t59


Optimized legalized selection DAG: %bb.0 'sbox:'
SelectionDAG has 47 nodes:
  t0: ch,glue = EntryToken
  t2: i32,ch = CopyFromReg t0, Register:i32 %0
  t18: i32 = add nuw t2, Constant:i32<8>
  t15: i32 = add nuw t2, Constant:i32<4>
  t11: i32 = add nuw t2, Constant:i32<12>
  t8: i32,ch = load<(load (s32) from %ir.0, !tbaa !7)> t0, t2, undef:i32
  t4: i32 = add nuw t2, Constant:i32<16>
  t19: i32,ch = load<(load (s32) from %ir.11, !tbaa !7)> t0, t18, undef:i32
  t16: i32,ch = load<(load (s32) from %ir.9, !tbaa !7)> t0, t15, undef:i32
  t12: i32,ch = load<(load (s32) from %ir.6, !tbaa !7)> t0, t11, undef:i32
  t7: i32,ch = load<(load (s32) from %ir.2, !tbaa !7)> t0, t4, undef:i32
  t20: i32 = xor t19, t16
  t13: i32 = xor t12, t7
  t9: i32 = xor t8, t7
      t23: i32 = xor t16, Constant:i32<-1>
    t28: i32 = and t19, t23
  t32: i32 = xor t28, t9
      t25: i32 = xor t12, Constant:i32<-1>
    t30: i32 = and t7, t25
  t34: i32 = xor t20, t30
      t22: i32 = xor t9, Constant:i32<-1>
    t27: i32 = and t16, t22
  t36: i32 = xor t27, t13
        t45: i32 = xor t34, Constant:i32<-1>
      t48: ch = store<(store (s32) into %ir.11, !tbaa !7)> t19:1, t45, t18, undef:i32
        t41: i32 = xor t32, t36
      t42: ch = store<(store (s32) into %ir.0, !tbaa !7)> t8:1, t41, t2, undef:i32
              t26: i32 = xor t13, Constant:i32<-1>
            t31: i32 = and t9, t26
          t35: i32 = xor t31, t12
        t43: i32 = xor t34, t35
      t50: ch = store<(store (s32) into %ir.6, !tbaa !7)> t12:1, t43, t11, undef:i32
              t24: i32 = xor t20, Constant:i32<-1>
            t29: i32 = and t12, t24
          t33: i32 = xor t29, t16
        t39: i32 = xor t33, t32
      t53: ch = store<(store (s32) into %ir.9, !tbaa !7)> t16:1, t39, t15, undef:i32
      t56: ch = store<(store (s32) into %ir.2, !tbaa !7)> t7:1, t36, t4, undef:i32
    t59: ch = TokenFactor t48, t42, t50, t53, t56
  t47: ch = RISCVISD::RET_FLAG t59


===== Instruction selection begins: %bb.0 ''

ISEL: Starting selection on root node: t47: ch = RISCVISD::RET_FLAG t59
ISEL: Starting pattern match
  Morphed node: t47: ch = PseudoRET t59
ISEL: Match complete!

ISEL: Starting selection on root node: t59: ch = TokenFactor t48, t42, t50, t53, t56

ISEL: Starting selection on root node: t42: ch = store<(store (s32) into %ir.0, !tbaa !7)> t8:1, t41, t2, undef:i32
ISEL: Starting pattern match
  Initial Opcode index to 120728
  Skipped scope entry (due to false predicate) at index 120734, continuing at 121163
  Skipped scope entry (due to false predicate) at index 121164, continuing at 121260
  Skipped scope entry (due to false predicate) at index 121261, continuing at 121357
  Skipped scope entry (due to false predicate) at index 121368, continuing at 121408
  Match failed at index 121411
  Continuing at 121426
  Match failed at index 121427
  Continuing at 121465
  Morphed node: t42: ch = SW<Mem:(store (s32) into %ir.0, !tbaa !7)> t41, t2, TargetConstant:i32<0>, t8:1
ISEL: Match complete!

ISEL: Starting selection on root node: t50: ch = store<(store (s32) into %ir.6, !tbaa !7)> t12:1, t43, t11, undef:i32
ISEL: Starting pattern match
  Initial Opcode index to 120728
  Skipped scope entry (due to false predicate) at index 120734, continuing at 121163
  Skipped scope entry (due to false predicate) at index 121164, continuing at 121260
  Skipped scope entry (due to false predicate) at index 121261, continuing at 121357
  Skipped scope entry (due to false predicate) at index 121368, continuing at 121408
  Match failed at index 121411
  Continuing at 121426
  Match failed at index 121427
  Continuing at 121465
  Morphed node: t50: ch = SW<Mem:(store (s32) into %ir.6, !tbaa !7)> t43, t2, TargetConstant:i32<12>, t12:1
ISEL: Match complete!

ISEL: Starting selection on root node: t53: ch = store<(store (s32) into %ir.9, !tbaa !7)> t16:1, t39, t15, undef:i32
ISEL: Starting pattern match
  Initial Opcode index to 120728
  Skipped scope entry (due to false predicate) at index 120734, continuing at 121163
  Skipped scope entry (due to false predicate) at index 121164, continuing at 121260
  Skipped scope entry (due to false predicate) at index 121261, continuing at 121357
  Skipped scope entry (due to false predicate) at index 121368, continuing at 121408
  Match failed at index 121411
  Continuing at 121426
  Match failed at index 121427
  Continuing at 121465
  Morphed node: t53: ch = SW<Mem:(store (s32) into %ir.9, !tbaa !7)> t39, t2, TargetConstant:i32<4>, t16:1
ISEL: Match complete!

ISEL: Starting selection on root node: t41: i32 = xor t32, t36
ISEL: Starting pattern match
  Initial Opcode index to 1106280
  Match failed at index 1106283
  Continuing at 1106331
  OpcodeSwitch from 1106334 to 1106384
  Match failed at index 1106385
  Continuing at 1106415
  Match failed at index 1106425
  Continuing at 1106453
  Match failed at index 1106454
  Continuing at 1106484
  Continuing at 1106485
  Match failed at index 1106493
  Continuing at 1106727
  Match failed at index 1106728
  Continuing at 1106740
  Morphed node: t41: i32 = XOR t32, t36
ISEL: Match complete!

ISEL: Starting selection on root node: t56: ch = store<(store (s32) into %ir.2, !tbaa !7)> t7:1, t36, t4, undef:i32
ISEL: Starting pattern match
  Initial Opcode index to 120728
  Skipped scope entry (due to false predicate) at index 120734, continuing at 121163
  Skipped scope entry (due to false predicate) at index 121164, continuing at 121260
  Skipped scope entry (due to false predicate) at index 121261, continuing at 121357
  Skipped scope entry (due to false predicate) at index 121368, continuing at 121408
  Match failed at index 121411
  Continuing at 121426
  Match failed at index 121427
  Continuing at 121465
  Morphed node: t56: ch = SW<Mem:(store (s32) into %ir.2, !tbaa !7)> t36, t2, TargetConstant:i32<16>, t7:1
ISEL: Match complete!

ISEL: Starting selection on root node: t43: i32 = xor t34, t35
ISEL: Starting pattern match
  Initial Opcode index to 1106280
  Match failed at index 1106283
  Continuing at 1106331
  OpcodeSwitch from 1106334 to 1106384
  Match failed at index 1106385
  Continuing at 1106415
  Match failed at index 1106425
  Continuing at 1106453
  Match failed at index 1106454
  Continuing at 1106484
  Continuing at 1106485
  Match failed at index 1106493
  Continuing at 1106727
  Match failed at index 1106728
  Continuing at 1106740
  Morphed node: t43: i32 = XOR t34, t35
ISEL: Match complete!

ISEL: Starting selection on root node: t48: ch = store<(store (s32) into %ir.11, !tbaa !7)> t19:1, t45, t18, undef:i32
ISEL: Starting pattern match
  Initial Opcode index to 120728
  Skipped scope entry (due to false predicate) at index 120734, continuing at 121163
  Skipped scope entry (due to false predicate) at index 121164, continuing at 121260
  Skipped scope entry (due to false predicate) at index 121261, continuing at 121357
  Skipped scope entry (due to false predicate) at index 121368, continuing at 121408
  Match failed at index 121411
  Continuing at 121426
  Match failed at index 121427
  Continuing at 121465
  Morphed node: t48: ch = SW<Mem:(store (s32) into %ir.11, !tbaa !7)> t45, t2, TargetConstant:i32<8>, t19:1
ISEL: Match complete!

ISEL: Starting selection on root node: t39: i32 = xor t33, t32
ISEL: Starting pattern match
  Initial Opcode index to 1106280
  Match failed at index 1106283
  Continuing at 1106331
  OpcodeSwitch from 1106334 to 1106384
  Match failed at index 1106385
  Continuing at 1106415
  Match failed at index 1106425
  Continuing at 1106453
  Match failed at index 1106454
  Continuing at 1106484
  Continuing at 1106485
  Match failed at index 1106493
  Continuing at 1106727
  Match failed at index 1106728
  Continuing at 1106740
  Morphed node: t39: i32 = XOR t33, t32
ISEL: Match complete!

ISEL: Starting selection on root node: t36: i32 = xor t27, t13
ISEL: Starting pattern match
  Initial Opcode index to 1106280
  Match failed at index 1106283
  Continuing at 1106331
  OpcodeSwitch from 1106334 to 1106384
  Match failed at index 1106385
  Continuing at 1106415
  Match failed at index 1106417
  Continuing at 1106485
  Match failed at index 1106493
  Continuing at 1106727
  Match failed at index 1106728
  Continuing at 1106740
  Morphed node: t36: i32 = XOR t27, t13
ISEL: Match complete!

ISEL: Starting selection on root node: t35: i32 = xor t31, t12
ISEL: Starting pattern match
  Initial Opcode index to 1106280
  Match failed at index 1106283
  Continuing at 1106331
  Match failed at index 1106334
  Continuing at 1106415
  Match failed at index 1106417
  Continuing at 1106485
  Match failed at index 1106493
  Continuing at 1106727
  Match failed at index 1106728
  Continuing at 1106740
  Morphed node: t35: i32 = XOR t31, t12
ISEL: Match complete!

ISEL: Starting selection on root node: t45: i32 = xor t34, Constant:i32<-1>
ISEL: Starting pattern match
  Initial Opcode index to 1106280
  Match failed at index 1106283
  Continuing at 1106331
  Match failed at index 1106334
  Continuing at 1106415
  TypeSwitch[i32] from 1106427 to 1106442
  Match failed at index 1106442
  Continuing at 1106453
  Match failed at index 1106454
  Continuing at 1106484
  Continuing at 1106485
  Skipped scope entry (due to false predicate) at index 1106498, continuing at 1106520
  TypeSwitch[i32] from 1106524 to 1106541
  Morphed node: t45: i32 = XORI t34, TargetConstant:i32<-1>
ISEL: Match complete!

ISEL: Starting selection on root node: t33: i32 = xor t29, t16
ISEL: Starting pattern match
  Initial Opcode index to 1106280
  Match failed at index 1106283
  Continuing at 1106331
  Match failed at index 1106334
  Continuing at 1106415
  Match failed at index 1106417
  Continuing at 1106485
  Match failed at index 1106493
  Continuing at 1106727
  Match failed at index 1106728
  Continuing at 1106740
  Morphed node: t33: i32 = XOR t29, t16
ISEL: Match complete!

ISEL: Starting selection on root node: t27: i32 = and t16, t22
ISEL: Starting pattern match
  Initial Opcode index to 7741
  Skipped scope entry (due to false predicate) at index 7743, continuing at 7856
  Match failed at index 7858
  Continuing at 7916
  Match failed at index 7923
  Continuing at 7975
  Match failed at index 7976
  Continuing at 8045
  Match failed at index 8048
  Continuing at 8178
  TypeSwitch[i32] from 8188 to 8203
  Match failed at index 8203
  Continuing at 8214
  Match failed at index 8216
  Continuing at 8294
  Match failed at index 8299
  Continuing at 8339
  Match failed at index 8342
  Continuing at 8367
  Continuing at 8368
  Match failed at index 8369
  Continuing at 8398
  Match failed at index 8399
  Continuing at 8449
  Match failed at index 8460
  Continuing at 8839
  Match failed at index 8840
  Continuing at 8852
  Morphed node: t27: i32 = AND t16, t22
ISEL: Match complete!

ISEL: Starting selection on root node: t31: i32 = and t9, t26
ISEL: Starting pattern match
  Initial Opcode index to 7741
  Skipped scope entry (due to false predicate) at index 7743, continuing at 7856
  Match failed at index 7862
  Continuing at 7916
  Match failed at index 7923
  Continuing at 7975
  Match failed at index 7976
  Continuing at 8045
  Match failed at index 8048
  Continuing at 8178
  TypeSwitch[i32] from 8188 to 8203
  Match failed at index 8203
  Continuing at 8214
  OpcodeSwitch from 8216 to 8262
  Match failed at index 8263
  Continuing at 8294
  Match failed at index 8299
  Continuing at 8339
  Match failed at index 8342
  Continuing at 8367
  Continuing at 8368
  Match failed at index 8369
  Continuing at 8398
  Match failed at index 8399
  Continuing at 8449
  Match failed at index 8460
  Continuing at 8839
  Match failed at index 8840
  Continuing at 8852
  Morphed node: t31: i32 = AND t9, t26
ISEL: Match complete!

ISEL: Starting selection on root node: t34: i32 = xor t20, t30
ISEL: Starting pattern match
  Initial Opcode index to 1106280
  Match failed at index 1106283
  Continuing at 1106331
  Match failed at index 1106334
  Continuing at 1106415
  Match failed at index 1106425
  Continuing at 1106453
  Match failed at index 1106454
  Continuing at 1106484
  Continuing at 1106485
  Match failed at index 1106493
  Continuing at 1106727
  Match failed at index 1106728
  Continuing at 1106740
  Morphed node: t34: i32 = XOR t20, t30
ISEL: Match complete!

ISEL: Starting selection on root node: t29: i32 = and t12, t24
ISEL: Starting pattern match
  Initial Opcode index to 7741
  Skipped scope entry (due to false predicate) at index 7743, continuing at 7856
  Match failed at index 7858
  Continuing at 7916
  Match failed at index 7923
  Continuing at 7975
  Match failed at index 7976
  Continuing at 8045
  Match failed at index 8048
  Continuing at 8178
  TypeSwitch[i32] from 8188 to 8203
  Match failed at index 8203
  Continuing at 8214
  Match failed at index 8216
  Continuing at 8294
  Match failed at index 8299
  Continuing at 8339
  Match failed at index 8342
  Continuing at 8367
  Continuing at 8368
  Match failed at index 8369
  Continuing at 8398
  Match failed at index 8399
  Continuing at 8449
  Match failed at index 8460
  Continuing at 8839
  Match failed at index 8840
  Continuing at 8852
  Morphed node: t29: i32 = AND t12, t24
ISEL: Match complete!

ISEL: Starting selection on root node: t32: i32 = xor t28, t9
ISEL: Starting pattern match
  Initial Opcode index to 1106280
  Match failed at index 1106283
  Continuing at 1106331
  OpcodeSwitch from 1106334 to 1106384
  Match failed at index 1106385
  Continuing at 1106415
  Match failed at index 1106417
  Continuing at 1106485
  Match failed at index 1106493
  Continuing at 1106727
  Match failed at index 1106728
  Continuing at 1106740
  Morphed node: t32: i32 = XOR t28, t9
ISEL: Match complete!

ISEL: Starting selection on root node: t22: i32 = xor t9, Constant:i32<-1>
ISEL: Starting pattern match
  Initial Opcode index to 1106280
  Match failed at index 1106283
  Continuing at 1106331
  Match failed at index 1106334
  Continuing at 1106415
  TypeSwitch[i32] from 1106427 to 1106442
  Match failed at index 1106442
  Continuing at 1106453
  Match failed at index 1106454
  Continuing at 1106484
  Continuing at 1106485
  Skipped scope entry (due to false predicate) at index 1106498, continuing at 1106520
  TypeSwitch[i32] from 1106524 to 1106541
  Morphed node: t22: i32 = XORI t9, TargetConstant:i32<-1>
ISEL: Match complete!

ISEL: Starting selection on root node: t26: i32 = xor t13, Constant:i32<-1>
ISEL: Starting pattern match
  Initial Opcode index to 1106280
  Match failed at index 1106283
  Continuing at 1106331
  Match failed at index 1106334
  Continuing at 1106415
  TypeSwitch[i32] from 1106427 to 1106442
  Match failed at index 1106442
  Continuing at 1106453
  Match failed at index 1106454
  Continuing at 1106484
  Continuing at 1106485
  Skipped scope entry (due to false predicate) at index 1106498, continuing at 1106520
  TypeSwitch[i32] from 1106524 to 1106541
  Morphed node: t26: i32 = XORI t13, TargetConstant:i32<-1>
ISEL: Match complete!

ISEL: Starting selection on root node: t30: i32 = and t7, t25
ISEL: Starting pattern match
  Initial Opcode index to 7741
  Skipped scope entry (due to false predicate) at index 7743, continuing at 7856
  Match failed at index 7858
  Continuing at 7916
  Match failed at index 7923
  Continuing at 7975
  Match failed at index 7976
  Continuing at 8045
  Match failed at index 8048
  Continuing at 8178
  TypeSwitch[i32] from 8188 to 8203
  Match failed at index 8203
  Continuing at 8214
  Match failed at index 8216
  Continuing at 8294
  Match failed at index 8299
  Continuing at 8339
  Match failed at index 8342
  Continuing at 8367
  Continuing at 8368
  Match failed at index 8369
  Continuing at 8398
  Match failed at index 8399
  Continuing at 8449
  Match failed at index 8460
  Continuing at 8839
  Match failed at index 8840
  Continuing at 8852
  Morphed node: t30: i32 = AND t7, t25
ISEL: Match complete!

ISEL: Starting selection on root node: t24: i32 = xor t20, Constant:i32<-1>
ISEL: Starting pattern match
  Initial Opcode index to 1106280
  Match failed at index 1106283
  Continuing at 1106331
  Match failed at index 1106334
  Continuing at 1106415
  TypeSwitch[i32] from 1106427 to 1106442
  Match failed at index 1106442
  Continuing at 1106453
  Match failed at index 1106454
  Continuing at 1106484
  Continuing at 1106485
  Skipped scope entry (due to false predicate) at index 1106498, continuing at 1106520
  TypeSwitch[i32] from 1106524 to 1106541
  Morphed node: t24: i32 = XORI t20, TargetConstant:i32<-1>
ISEL: Match complete!

ISEL: Starting selection on root node: t28: i32 = and t19, t23
ISEL: Starting pattern match
  Initial Opcode index to 7741
  Skipped scope entry (due to false predicate) at index 7743, continuing at 7856
  Match failed at index 7858
  Continuing at 7916
  Match failed at index 7923
  Continuing at 7975
  Match failed at index 7976
  Continuing at 8045
  Match failed at index 8048
  Continuing at 8178
  TypeSwitch[i32] from 8188 to 8203
  Match failed at index 8203
  Continuing at 8214
  Match failed at index 8216
  Continuing at 8294
  Match failed at index 8299
  Continuing at 8339
  Match failed at index 8342
  Continuing at 8367
  Continuing at 8368
  Match failed at index 8369
  Continuing at 8398
  Match failed at index 8399
  Continuing at 8449
  Match failed at index 8460
  Continuing at 8839
  Match failed at index 8840
  Continuing at 8852
  Morphed node: t28: i32 = AND t19, t23
ISEL: Match complete!

ISEL: Starting selection on root node: t9: i32 = xor t8, t7
ISEL: Starting pattern match
  Initial Opcode index to 1106280
  Match failed at index 1106283
  Continuing at 1106331
  Match failed at index 1106334
  Continuing at 1106415
  Match failed at index 1106417
  Continuing at 1106485
  Match failed at index 1106493
  Continuing at 1106727
  Match failed at index 1106728
  Continuing at 1106740
  Morphed node: t9: i32 = XOR t8, t7
ISEL: Match complete!

ISEL: Starting selection on root node: t13: i32 = xor t12, t7
ISEL: Starting pattern match
  Initial Opcode index to 1106280
  Match failed at index 1106283
  Continuing at 1106331
  Match failed at index 1106334
  Continuing at 1106415
  Match failed at index 1106417
  Continuing at 1106485
  Match failed at index 1106493
  Continuing at 1106727
  Match failed at index 1106728
  Continuing at 1106740
  Morphed node: t13: i32 = XOR t12, t7
ISEL: Match complete!

ISEL: Starting selection on root node: t25: i32 = xor t12, Constant:i32<-1>
ISEL: Starting pattern match
  Initial Opcode index to 1106280
  Match failed at index 1106283
  Continuing at 1106331
  Match failed at index 1106334
  Continuing at 1106415
  Match failed at index 1106417
  Continuing at 1106485
  Skipped scope entry (due to false predicate) at index 1106498, continuing at 1106520
  TypeSwitch[i32] from 1106524 to 1106541
  Morphed node: t25: i32 = XORI t12, TargetConstant:i32<-1>
ISEL: Match complete!

ISEL: Starting selection on root node: t20: i32 = xor t19, t16
ISEL: Starting pattern match
  Initial Opcode index to 1106280
  Match failed at index 1106283
  Continuing at 1106331
  Match failed at index 1106334
  Continuing at 1106415
  Match failed at index 1106417
  Continuing at 1106485
  Match failed at index 1106493
  Continuing at 1106727
  Match failed at index 1106728
  Continuing at 1106740
  Morphed node: t20: i32 = XOR t19, t16
ISEL: Match complete!

ISEL: Starting selection on root node: t23: i32 = xor t16, Constant:i32<-1>
ISEL: Starting pattern match
  Initial Opcode index to 1106280
  Match failed at index 1106283
  Continuing at 1106331
  Match failed at index 1106334
  Continuing at 1106415
  Match failed at index 1106417
  Continuing at 1106485
  Skipped scope entry (due to false predicate) at index 1106498, continuing at 1106520
  TypeSwitch[i32] from 1106524 to 1106541
  Morphed node: t23: i32 = XORI t16, TargetConstant:i32<-1>
ISEL: Match complete!

ISEL: Starting selection on root node: t7: i32,ch = load<(load (s32) from %ir.2, !tbaa !7)> t0, t4, undef:i32
ISEL: Starting pattern match
  Initial Opcode index to 118036
  Skipped scope entry (due to false predicate) at index 118042, continuing at 118248
  Skipped scope entry (due to false predicate) at index 118254, continuing at 118294
  Skipped scope entry (due to false predicate) at index 118295, continuing at 118335
  Skipped scope entry (due to false predicate) at index 118336, continuing at 118376
  Skipped scope entry (due to false predicate) at index 118377, continuing at 118417
  Skipped scope entry (due to false predicate) at index 118418, continuing at 118458
  Skipped scope entry (due to false predicate) at index 118459, continuing at 118499
  Match failed at index 118504
  Continuing at 118519
  Match failed at index 118520
  Continuing at 118541
  Match failed at index 118542
  Continuing at 118563
  Match failed at index 118564
  Continuing at 118585
  Match failed at index 118588
  Continuing at 118605
  Match failed at index 118606
  Continuing at 118644
  Match failed at index 118645
  Continuing at 118683
  Match failed at index 118684
  Continuing at 118722
  Match failed at index 118723
  Continuing at 118761
  Morphed node: t7: i32,ch = LW<Mem:(load (s32) from %ir.2, !tbaa !7)> t2, TargetConstant:i32<16>, t0
ISEL: Match complete!

ISEL: Starting selection on root node: t12: i32,ch = load<(load (s32) from %ir.6, !tbaa !7)> t0, t11, undef:i32
ISEL: Starting pattern match
  Initial Opcode index to 118036
  Skipped scope entry (due to false predicate) at index 118042, continuing at 118248
  Skipped scope entry (due to false predicate) at index 118254, continuing at 118294
  Skipped scope entry (due to false predicate) at index 118295, continuing at 118335
  Skipped scope entry (due to false predicate) at index 118336, continuing at 118376
  Skipped scope entry (due to false predicate) at index 118377, continuing at 118417
  Skipped scope entry (due to false predicate) at index 118418, continuing at 118458
  Skipped scope entry (due to false predicate) at index 118459, continuing at 118499
  Match failed at index 118504
  Continuing at 118519
  Match failed at index 118520
  Continuing at 118541
  Match failed at index 118542
  Continuing at 118563
  Match failed at index 118564
  Continuing at 118585
  Match failed at index 118588
  Continuing at 118605
  Match failed at index 118606
  Continuing at 118644
  Match failed at index 118645
  Continuing at 118683
  Match failed at index 118684
  Continuing at 118722
  Match failed at index 118723
  Continuing at 118761
  Morphed node: t12: i32,ch = LW<Mem:(load (s32) from %ir.6, !tbaa !7)> t2, TargetConstant:i32<12>, t0
ISEL: Match complete!

ISEL: Starting selection on root node: t16: i32,ch = load<(load (s32) from %ir.9, !tbaa !7)> t0, t15, undef:i32
ISEL: Starting pattern match
  Initial Opcode index to 118036
  Skipped scope entry (due to false predicate) at index 118042, continuing at 118248
  Skipped scope entry (due to false predicate) at index 118254, continuing at 118294
  Skipped scope entry (due to false predicate) at index 118295, continuing at 118335
  Skipped scope entry (due to false predicate) at index 118336, continuing at 118376
  Skipped scope entry (due to false predicate) at index 118377, continuing at 118417
  Skipped scope entry (due to false predicate) at index 118418, continuing at 118458
  Skipped scope entry (due to false predicate) at index 118459, continuing at 118499
  Match failed at index 118504
  Continuing at 118519
  Match failed at index 118520
  Continuing at 118541
  Match failed at index 118542
  Continuing at 118563
  Match failed at index 118564
  Continuing at 118585
  Match failed at index 118588
  Continuing at 118605
  Match failed at index 118606
  Continuing at 118644
  Match failed at index 118645
  Continuing at 118683
  Match failed at index 118684
  Continuing at 118722
  Match failed at index 118723
  Continuing at 118761
  Morphed node: t16: i32,ch = LW<Mem:(load (s32) from %ir.9, !tbaa !7)> t2, TargetConstant:i32<4>, t0
ISEL: Match complete!

ISEL: Starting selection on root node: t19: i32,ch = load<(load (s32) from %ir.11, !tbaa !7)> t0, t18, undef:i32
ISEL: Starting pattern match
  Initial Opcode index to 118036
  Skipped scope entry (due to false predicate) at index 118042, continuing at 118248
  Skipped scope entry (due to false predicate) at index 118254, continuing at 118294
  Skipped scope entry (due to false predicate) at index 118295, continuing at 118335
  Skipped scope entry (due to false predicate) at index 118336, continuing at 118376
  Skipped scope entry (due to false predicate) at index 118377, continuing at 118417
  Skipped scope entry (due to false predicate) at index 118418, continuing at 118458
  Skipped scope entry (due to false predicate) at index 118459, continuing at 118499
  Match failed at index 118504
  Continuing at 118519
  Match failed at index 118520
  Continuing at 118541
  Match failed at index 118542
  Continuing at 118563
  Match failed at index 118564
  Continuing at 118585
  Match failed at index 118588
  Continuing at 118605
  Match failed at index 118606
  Continuing at 118644
  Match failed at index 118645
  Continuing at 118683
  Match failed at index 118684
  Continuing at 118722
  Match failed at index 118723
  Continuing at 118761
  Morphed node: t19: i32,ch = LW<Mem:(load (s32) from %ir.11, !tbaa !7)> t2, TargetConstant:i32<8>, t0
ISEL: Match complete!

ISEL: Starting selection on root node: t8: i32,ch = load<(load (s32) from %ir.0, !tbaa !7)> t0, t2, undef:i32
ISEL: Starting pattern match
  Initial Opcode index to 118036
  Skipped scope entry (due to false predicate) at index 118042, continuing at 118248
  Skipped scope entry (due to false predicate) at index 118254, continuing at 118294
  Skipped scope entry (due to false predicate) at index 118295, continuing at 118335
  Skipped scope entry (due to false predicate) at index 118336, continuing at 118376
  Skipped scope entry (due to false predicate) at index 118377, continuing at 118417
  Skipped scope entry (due to false predicate) at index 118418, continuing at 118458
  Skipped scope entry (due to false predicate) at index 118459, continuing at 118499
  Match failed at index 118504
  Continuing at 118519
  Match failed at index 118520
  Continuing at 118541
  Match failed at index 118542
  Continuing at 118563
  Match failed at index 118564
  Continuing at 118585
  Match failed at index 118588
  Continuing at 118605
  Match failed at index 118606
  Continuing at 118644
  Match failed at index 118645
  Continuing at 118683
  Match failed at index 118684
  Continuing at 118722
  Match failed at index 118723
  Continuing at 118761
  Morphed node: t8: i32,ch = LW<Mem:(load (s32) from %ir.0, !tbaa !7)> t2, TargetConstant:i32<0>, t0
ISEL: Match complete!

ISEL: Starting selection on root node: t2: i32,ch = CopyFromReg t0, Register:i32 %0

ISEL: Starting selection on root node: t1: i32 = Register %0

ISEL: Starting selection on root node: t0: ch,glue = EntryToken

===== Instruction selection ends:
Selected selection DAG: %bb.0 'sbox:'
SelectionDAG has 43 nodes:
  t0: ch,glue = EntryToken
  t2: i32,ch = CopyFromReg t0, Register:i32 %0
  t8: i32,ch = LW<Mem:(load (s32) from %ir.0, !tbaa !7)> t2, TargetConstant:i32<0>, t0
  t19: i32,ch = LW<Mem:(load (s32) from %ir.11, !tbaa !7)> t2, TargetConstant:i32<8>, t0
  t16: i32,ch = LW<Mem:(load (s32) from %ir.9, !tbaa !7)> t2, TargetConstant:i32<4>, t0
  t12: i32,ch = LW<Mem:(load (s32) from %ir.6, !tbaa !7)> t2, TargetConstant:i32<12>, t0
  t7: i32,ch = LW<Mem:(load (s32) from %ir.2, !tbaa !7)> t2, TargetConstant:i32<16>, t0
  t20: i32 = XOR t19, t16
  t13: i32 = XOR t12, t7
  t9: i32 = XOR t8, t7
      t23: i32 = XORI t16, TargetConstant:i32<-1>
    t28: i32 = AND t19, t23
  t32: i32 = XOR t28, t9
      t25: i32 = XORI t12, TargetConstant:i32<-1>
    t30: i32 = AND t7, t25
  t34: i32 = XOR t20, t30
      t22: i32 = XORI t9, TargetConstant:i32<-1>
    t27: i32 = AND t16, t22
  t36: i32 = XOR t27, t13
        t45: i32 = XORI t34, TargetConstant:i32<-1>
      t48: ch = SW<Mem:(store (s32) into %ir.11, !tbaa !7)> t45, t2, TargetConstant:i32<8>, t19:1
        t41: i32 = XOR t32, t36
      t42: ch = SW<Mem:(store (s32) into %ir.0, !tbaa !7)> t41, t2, TargetConstant:i32<0>, t8:1
              t26: i32 = XORI t13, TargetConstant:i32<-1>
            t31: i32 = AND t9, t26
          t35: i32 = XOR t31, t12
        t43: i32 = XOR t34, t35
      t50: ch = SW<Mem:(store (s32) into %ir.6, !tbaa !7)> t43, t2, TargetConstant:i32<12>, t12:1
              t24: i32 = XORI t20, TargetConstant:i32<-1>
            t29: i32 = AND t12, t24
          t33: i32 = XOR t29, t16
        t39: i32 = XOR t33, t32
      t53: ch = SW<Mem:(store (s32) into %ir.9, !tbaa !7)> t39, t2, TargetConstant:i32<4>, t16:1
      t56: ch = SW<Mem:(store (s32) into %ir.2, !tbaa !7)> t36, t2, TargetConstant:i32<16>, t7:1
    t59: ch = TokenFactor t48, t42, t50, t53, t56
  t47: ch = PseudoRET t59


Total amount of phi nodes to update: 0
*** MachineFunction at end of ISel ***
# Machine code for function sbox: IsSSA, TracksLiveness
Function Live Ins: $x10 in %0

bb.0 (%ir-block.1):
  liveins: $x10
  %0:gpr = COPY $x10
  %1:gpr = LW %0:gpr, 16 :: (load (s32) from %ir.2, !tbaa !7)
  %2:gpr = LW %0:gpr, 0 :: (load (s32) from %ir.0, !tbaa !7)
  %3:gpr = XOR killed %2:gpr, %1:gpr
  %4:gpr = LW %0:gpr, 12 :: (load (s32) from %ir.6, !tbaa !7)
  %5:gpr = XOR %4:gpr, %1:gpr
  %6:gpr = LW %0:gpr, 4 :: (load (s32) from %ir.9, !tbaa !7)
  %7:gpr = LW %0:gpr, 8 :: (load (s32) from %ir.11, !tbaa !7)
  %8:gpr = XOR %7:gpr, %6:gpr
  %9:gpr = XORI %3:gpr, -1
  %10:gpr = XORI %6:gpr, -1
  %11:gpr = XORI %8:gpr, -1
  %12:gpr = XORI %4:gpr, -1
  %13:gpr = XORI %5:gpr, -1
  %14:gpr = AND %6:gpr, killed %9:gpr
  %15:gpr = AND %7:gpr, killed %10:gpr
  %16:gpr = AND %4:gpr, killed %11:gpr
  %17:gpr = AND %1:gpr, killed %12:gpr
  %18:gpr = AND %3:gpr, killed %13:gpr
  %19:gpr = XOR killed %15:gpr, %3:gpr
  %20:gpr = XOR killed %16:gpr, %6:gpr
  %21:gpr = XOR %8:gpr, killed %17:gpr
  %22:gpr = XOR killed %18:gpr, %4:gpr
  %23:gpr = XOR killed %14:gpr, %5:gpr
  SW %23:gpr, %0:gpr, 16 :: (store (s32) into %ir.2, !tbaa !7)
  %24:gpr = XOR killed %20:gpr, %19:gpr
  SW killed %24:gpr, %0:gpr, 4 :: (store (s32) into %ir.9, !tbaa !7)
  %25:gpr = XOR %19:gpr, %23:gpr
  SW killed %25:gpr, %0:gpr, 0 :: (store (s32) into %ir.0, !tbaa !7)
  %26:gpr = XOR %21:gpr, killed %22:gpr
  SW killed %26:gpr, %0:gpr, 12 :: (store (s32) into %ir.6, !tbaa !7)
  %27:gpr = XORI %21:gpr, -1
  SW killed %27:gpr, %0:gpr, 8 :: (store (s32) into %ir.11, !tbaa !7)
  PseudoRET

# End machine code for function sbox.

