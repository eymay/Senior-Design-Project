	.text
	.attribute	4, 16
	.attribute	5, "rv32i2p0"
	.file	"aead.c"
	.globl	crypto_aead_encrypt             # -- Begin function crypto_aead_encrypt
	.p2align	1
	.type	crypto_aead_encrypt,@function
crypto_aead_encrypt:                    # @crypto_aead_encrypt
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -112
	.cfi_def_cfa_offset 112
	sw	ra, 108(sp)                     # 4-byte Folded Spill
	sw	s0, 104(sp)                     # 4-byte Folded Spill
	sw	s1, 100(sp)                     # 4-byte Folded Spill
	sw	s2, 96(sp)                      # 4-byte Folded Spill
	sw	s3, 92(sp)                      # 4-byte Folded Spill
	sw	s4, 88(sp)                      # 4-byte Folded Spill
	sw	s5, 84(sp)                      # 4-byte Folded Spill
	sw	s6, 80(sp)                      # 4-byte Folded Spill
	sw	s7, 76(sp)                      # 4-byte Folded Spill
	sw	s8, 72(sp)                      # 4-byte Folded Spill
	sw	s9, 68(sp)                      # 4-byte Folded Spill
	sw	s10, 64(sp)                     # 4-byte Folded Spill
	sw	s11, 60(sp)                     # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	.cfi_offset s6, -32
	.cfi_offset s7, -36
	.cfi_offset s8, -40
	.cfi_offset s9, -44
	.cfi_offset s10, -48
	.cfi_offset s11, -52
	mv	s6, a7
	mv	s4, a6
	mv	s0, a5
	mv	s3, a4
	mv	s2, a3
	mv	s7, a2
	mv	s5, a0
	lw	a0, 120(sp)
	addi	a2, a3, 16
	sltu	a3, a2, a3
	add	a3, a3, a4
	sw	a2, 0(a1)
	sw	a3, 4(a1)
	lbu	a2, 1(a0)
	lw	a1, 116(sp)
	lbu	a3, 2(a0)
	lb	a7, 0(a0)
	slli	a6, a2, 16
	lbu	a5, 4(a0)
	slli	t4, a3, 8
	lbu	t5, 3(a0)
	lbu	a2, 5(a0)
	slli	t0, a5, 24
	lbu	a4, 9(a0)
	lbu	a5, 10(a0)
	slli	t6, a2, 16
	lb	t1, 8(a0)
	slli	t3, a4, 16
	slli	t2, a5, 8
	lbu	a5, 12(a0)
	lbu	a4, 13(a0)
	slli	a7, a7, 24
	or	a3, a6, a7
	lbu	s1, 14(a0)
	or	a2, t5, t4
	lbu	a6, 11(a0)
	slli	a5, a5, 24
	slli	a4, a4, 16
	slli	t4, s1, 8
	or	s11, a2, a3
	lbu	a2, 15(a0)
	or	a7, t6, t0
	lbu	a3, 1(a1)
	slli	t1, t1, 24
	or	s1, t3, t1
	lb	t0, 0(a1)
	slli	t1, a3, 16
	or	a3, a6, t2
	or	s8, a3, s1
	or	a4, a4, a5
	lb	a3, 8(a1)
	or	a2, t4, a2
	lbu	a5, 9(a1)
	or	s9, a2, a4
	slli	a3, a3, 24
	lbu	a2, 10(a1)
	slli	a5, a5, 16
	or	a3, a3, a5
	lbu	a4, 11(a1)
	slli	a2, a2, 8
	lbu	a5, 12(a1)
	lbu	s1, 13(a1)
	or	a2, a2, a4
	or	a6, a2, a3
	slli	a5, a5, 24
	slli	s1, s1, 16
	lbu	a3, 14(a1)
	lbu	a4, 15(a1)
	or	a5, a5, s1
	lbu	s1, 2(a1)
	slli	a3, a3, 8
	or	a3, a3, a4
	lbu	a4, 3(a1)
	or	t2, a3, a5
	lbu	a5, 4(a1)
	slli	t0, t0, 24
	or	a2, t1, t0
	lbu	a3, 5(a1)
	slli	s1, s1, 8
	or	a4, a4, s1
	slli	a5, a5, 24
	slli	a3, a3, 16
	or	a2, a2, a4
	lbu	a4, 6(a1)
	lbu	a1, 7(a1)
	or	a3, a3, a5
	lbu	a5, 6(a0)
	lbu	a0, 7(a0)
	slli	a4, a4, 8
	or	a1, a1, a4
	or	a1, a1, a3
	slli	a5, a5, 8
	or	a0, a0, a5
	or	s10, a0, a7
	lui	a0, 525313
	addi	a0, a0, -1018
	sw	a0, 20(sp)
	sw	zero, 16(sp)
	sw	s11, 28(sp)
	sw	s10, 24(sp)
	sw	s8, 36(sp)
	sw	s9, 32(sp)
	sw	a2, 44(sp)
	sw	a1, 40(sp)
	sw	a6, 52(sp)
	sw	t2, 48(sp)
	li	s1, 56
	addi	a0, sp, 16
	call	P12
	lw	a0, 44(sp)
	lw	a1, 40(sp)
	sw	s11, 12(sp)                     # 4-byte Folded Spill
	xor	a0, a0, s11
	xor	a1, a1, s10
	sw	a1, 40(sp)
	sw	a0, 44(sp)
	lw	a0, 52(sp)
	lw	a1, 48(sp)
	xor	a0, a0, s8
	xor	a1, a1, s9
	sw	a1, 48(sp)
	sw	a0, 52(sp)
	or	a2, s4, s6
	addi	s11, s1, 72
	beqz	a2, .LBB0_15
# %bb.1:                                # %while.cond.preheader
	sltiu	a0, s4, 8
	seqz	a1, s6
	and	a0, a0, a1
	beqz	a0, .LBB0_3
	j	.LBB0_5
.LBB0_2:                                # %for.body.i181.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	snez	a0, s6
	addi	s0, s0, 8
	beqz	a0, .LBB0_5
.LBB0_3:                                # %for.body.i181.preheader
                                        # =>This Inner Loop Header: Depth=1
	lb	a0, 0(s0)
	lbu	a1, 1(s0)
	slli	a0, a0, 24
	lbu	a2, 2(s0)
	slli	a1, a1, 16
	lbu	a3, 3(s0)
	or	a0, a0, a1
	slli	a2, a2, 8
	lbu	a1, 4(s0)
	or	a2, a2, a3
	lbu	a3, 5(s0)
	or	a0, a0, a2
	slli	a1, a1, 24
	lbu	a2, 6(s0)
	slli	a3, a3, 16
	or	a1, a1, a3
	lbu	a3, 7(s0)
	slli	a2, a2, 8
	lw	a4, 20(sp)
	lw	a5, 16(sp)
	or	a2, a2, a3
	or	a1, a1, a2
	mv	s1, s4
	xor	a0, a0, a4
	xor	a1, a1, a5
	sw	a1, 16(sp)
	sw	a0, 20(sp)
	addi	a0, sp, 16
	call	P6
	addi	s4, s4, -8
	sltu	a0, s4, s1
	add	a0, a0, s6
	addi	s6, a0, -1
	bnez	s6, .LBB0_2
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	sltiu	a0, s4, 8
	xori	a0, a0, 1
	addi	s0, s0, 8
	bnez	a0, .LBB0_3
.LBB0_5:                                # %while.end
	li	a0, 0
	li	a1, 0
	beqz	s4, .LBB0_11
# %bb.6:                                # %for.body.i194.preheader
	li	a2, 56
	mv	a3, s4
	j	.LBB0_9
.LBB0_7:                                # %for.body.i194
                                        #   in Loop: Header=BB0_9 Depth=1
	mv	a6, a4
.LBB0_8:                                # %for.body.i194
                                        #   in Loop: Header=BB0_9 Depth=1
	slti	a5, a5, 0
	neg	a5, a5
	and	a4, a4, a5
	or	a1, a6, a1
	or	a0, a0, a4
	addi	a3, a3, -1
	addi	a2, a2, -8
	addi	s0, s0, 1
	beqz	a3, .LBB0_11
.LBB0_9:                                # %for.body.i194
                                        # =>This Inner Loop Header: Depth=1
	lbu	s1, 0(s0)
	addi	a5, a2, -32
	sll	a4, s1, a2
	bgez	a5, .LBB0_7
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	not	a6, a2
	srli	s1, s1, 1
	srl	a6, s1, a6
	j	.LBB0_8
.LBB0_11:                               # %LOADBYTES.exit195
	lw	a6, 16(sp)
	lw	a3, 20(sp)
	slli	s4, s4, 3
	li	a2, 56
	sub	a5, a2, s4
	li	s1, 56
	addi	a2, a5, -32
	sll	a4, s11, a5
	bltz	a2, .LBB0_13
# %bb.12:                               # %LOADBYTES.exit195
	mv	s0, a4
	j	.LBB0_14
.LBB0_13:
	sltu	s1, s11, s1
	sll	s1, s1, a5
	not	a5, a5
	srli	s0, s11, 1
	srl	s0, s0, a5
	or	s0, s0, s1
.LBB0_14:                               # %LOADBYTES.exit195
	slti	a2, a2, 0
	neg	a2, a2
	and	a2, a2, a4
	xor	a3, a3, s0
	xor	a1, a1, a3
	xor	a2, a2, a6
	xor	a0, a0, a2
	sw	a0, 16(sp)
	sw	a1, 20(sp)
	addi	a0, sp, 16
	call	P6
	lw	a0, 52(sp)
	lw	a1, 48(sp)
.LBB0_15:                               # %if.end
	xori	a1, a1, 1
	sw	a0, 52(sp)
	sltiu	a0, s2, 8
	seqz	a2, s3
	and	a0, a0, a2
	sw	a1, 48(sp)
	li	s4, 56
	beqz	a0, .LBB0_24
.LBB0_16:                               # %while.end62
	beqz	s2, .LBB0_31
# %bb.17:                               # %for.body.i230.preheader
	li	a0, 0
	li	a2, 0
	li	a1, 56
	mv	a3, s2
	j	.LBB0_20
.LBB0_18:                               # %for.body.i230
                                        #   in Loop: Header=BB0_20 Depth=1
	mv	s0, a4
.LBB0_19:                               # %for.body.i230
                                        #   in Loop: Header=BB0_20 Depth=1
	slti	a5, a5, 0
	neg	a5, a5
	and	a4, a4, a5
	or	a2, a2, s0
	or	a0, a0, a4
	addi	a3, a3, -1
	addi	a1, a1, -8
	addi	s7, s7, 1
	beqz	a3, .LBB0_26
.LBB0_20:                               # %for.body.i230
                                        # =>This Inner Loop Header: Depth=1
	lbu	s1, 0(s7)
	addi	a5, a1, -32
	sll	a4, s1, a1
	bgez	a5, .LBB0_18
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=1
	not	s0, a1
	srli	s1, s1, 1
	srl	s0, s1, s0
	j	.LBB0_19
.LBB0_22:                               # %for.body.i207.preheader
                                        #   in Loop: Header=BB0_24 Depth=1
	snez	a0, s3
.LBB0_23:                               # %for.body.i207.preheader
                                        #   in Loop: Header=BB0_24 Depth=1
	addi	s7, s7, 8
	addi	s5, s5, 8
	beqz	a0, .LBB0_16
.LBB0_24:                               # %for.body.i207.preheader
                                        # =>This Inner Loop Header: Depth=1
	lb	a0, 0(s7)
	lbu	a1, 1(s7)
	slli	a0, a0, 24
	lbu	a2, 2(s7)
	slli	a1, a1, 16
	lbu	a3, 3(s7)
	or	a0, a0, a1
	slli	a2, a2, 8
	lbu	a1, 4(s7)
	or	a2, a2, a3
	lbu	a3, 5(s7)
	or	a0, a0, a2
	slli	a1, a1, 24
	lbu	a2, 6(s7)
	slli	a3, a3, 16
	or	a1, a1, a3
	lbu	a3, 7(s7)
	slli	a2, a2, 8
	lw	a4, 20(sp)
	lw	a5, 16(sp)
	or	a2, a2, a3
	or	a1, a1, a2
	mv	s0, s2
	xor	a0, a0, a4
	xor	a1, a1, a5
	sw	a1, 16(sp)
	sw	a0, 20(sp)
	srli	a2, a0, 24
	sb	a2, 0(s5)
	srli	a2, a0, 16
	sb	a2, 1(s5)
	srli	a2, a0, 8
	sb	a2, 2(s5)
	sb	a0, 3(s5)
	srli	a0, a1, 24
	sb	a0, 4(s5)
	srli	a0, a1, 16
	sb	a0, 5(s5)
	srli	a0, a1, 8
	sb	a0, 6(s5)
	sb	a1, 7(s5)
	addi	a0, sp, 16
	call	P6
	addi	s2, s2, -8
	sltu	a0, s2, s0
	add	a0, a0, s3
	addi	s3, a0, -1
	bnez	s3, .LBB0_22
# %bb.25:                               #   in Loop: Header=BB0_24 Depth=1
	sltiu	a0, s2, 8
	xori	a0, a0, 1
	j	.LBB0_23
.LBB0_26:                               # %for.body.i242.preheader
	lw	a1, 16(sp)
	lw	a3, 20(sp)
	xor	a1, a1, a0
	xor	a0, a3, a2
	li	s0, 56
	slli	a3, a0, 1
	mv	a4, s5
	mv	a5, s2
	j	.LBB0_29
.LBB0_27:                               # %for.body.i242
                                        #   in Loop: Header=BB0_29 Depth=1
	srl	s1, a0, s0
.LBB0_28:                               # %for.body.i242
                                        #   in Loop: Header=BB0_29 Depth=1
	sb	s1, 0(a4)
	addi	a5, a5, -1
	addi	a4, a4, 1
	addi	s0, s0, -8
	beqz	a5, .LBB0_32
.LBB0_29:                               # %for.body.i242
                                        # =>This Inner Loop Header: Depth=1
	addi	a2, s0, -32
	bgez	a2, .LBB0_27
# %bb.30:                               #   in Loop: Header=BB0_29 Depth=1
	srl	a2, a1, s0
	not	s1, s0
	sll	s1, a3, s1
	or	s1, s1, a2
	j	.LBB0_28
.LBB0_31:                               # %LOADBYTES.exit232.thread
	lw	a0, 20(sp)
	lw	a1, 16(sp)
.LBB0_32:
	lw	s0, 12(sp)                      # 4-byte Folded Reload
	slli	a2, s2, 3
	sub	a4, s4, a2
	addi	a3, a4, -32
	sll	a2, s11, a4
	bltz	a3, .LBB0_34
# %bb.33:                               # %STOREBYTES.exit243
	mv	a4, a2
	j	.LBB0_35
.LBB0_34:
	sltu	a5, s11, s4
	sll	a5, a5, a4
	not	a4, a4
	srli	s1, s11, 1
	srl	a4, s1, a4
	or	a4, a4, a5
.LBB0_35:                               # %STOREBYTES.exit243
	slti	a3, a3, 0
	neg	a3, a3
	and	a2, a2, a3
	xor	a1, a1, a2
	xor	a0, a0, a4
	sw	a0, 20(sp)
	sw	a1, 16(sp)
	lw	a0, 28(sp)
	lw	a1, 24(sp)
	xor	a0, a0, s0
	xor	a1, a1, s10
	sw	a1, 24(sp)
	sw	a0, 28(sp)
	lw	a0, 36(sp)
	lw	a1, 32(sp)
	add	s2, s2, s5
	xor	a0, a0, s8
	xor	a1, a1, s9
	sw	a1, 32(sp)
	sw	a0, 36(sp)
	addi	a0, sp, 16
	call	P12
	lw	a0, 40(sp)
	lw	a1, 44(sp)
	lw	a2, 48(sp)
	lw	a3, 52(sp)
	xor	a0, a0, s10
	xor	a1, a1, s0
	xor	a2, a2, s9
	xor	a3, a3, s8
	srli	a4, a1, 24
	sb	a4, 0(s2)
	srli	a4, a1, 16
	sb	a4, 1(s2)
	srli	a4, a1, 8
	sb	a4, 2(s2)
	sb	a1, 3(s2)
	srli	a1, a0, 24
	sb	a1, 4(s2)
	srli	a1, a0, 16
	sb	a1, 5(s2)
	srli	a1, a0, 8
	sb	a1, 6(s2)
	sb	a0, 7(s2)
	srli	a0, a3, 24
	sb	a0, 8(s2)
	srli	a0, a3, 16
	sb	a0, 9(s2)
	srli	a0, a3, 8
	sb	a0, 10(s2)
	sb	a3, 11(s2)
	srli	a0, a2, 24
	sb	a0, 12(s2)
	srli	a0, a2, 16
	sb	a0, 13(s2)
	srli	a0, a2, 8
	sb	a0, 14(s2)
	sb	a2, 15(s2)
	li	a0, 0
	lw	ra, 108(sp)                     # 4-byte Folded Reload
	lw	s0, 104(sp)                     # 4-byte Folded Reload
	lw	s1, 100(sp)                     # 4-byte Folded Reload
	lw	s2, 96(sp)                      # 4-byte Folded Reload
	lw	s3, 92(sp)                      # 4-byte Folded Reload
	lw	s4, 88(sp)                      # 4-byte Folded Reload
	lw	s5, 84(sp)                      # 4-byte Folded Reload
	lw	s6, 80(sp)                      # 4-byte Folded Reload
	lw	s7, 76(sp)                      # 4-byte Folded Reload
	lw	s8, 72(sp)                      # 4-byte Folded Reload
	lw	s9, 68(sp)                      # 4-byte Folded Reload
	lw	s10, 64(sp)                     # 4-byte Folded Reload
	lw	s11, 60(sp)                     # 4-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end0:
	.size	crypto_aead_encrypt, .Lfunc_end0-crypto_aead_encrypt
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function P12
	.type	P12,@function
P12:                                    # @P12
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sw	s0, 44(sp)                      # 4-byte Folded Spill
	sw	s1, 40(sp)                      # 4-byte Folded Spill
	sw	s2, 36(sp)                      # 4-byte Folded Spill
	sw	s3, 32(sp)                      # 4-byte Folded Spill
	sw	s4, 28(sp)                      # 4-byte Folded Spill
	sw	s5, 24(sp)                      # 4-byte Folded Spill
	sw	s6, 20(sp)                      # 4-byte Folded Spill
	sw	s7, 16(sp)                      # 4-byte Folded Spill
	sw	s8, 12(sp)                      # 4-byte Folded Spill
	sw	s9, 8(sp)                       # 4-byte Folded Spill
	.cfi_offset s0, -4
	.cfi_offset s1, -8
	.cfi_offset s2, -12
	.cfi_offset s3, -16
	.cfi_offset s4, -20
	.cfi_offset s5, -24
	.cfi_offset s6, -28
	.cfi_offset s7, -32
	.cfi_offset s8, -36
	.cfi_offset s9, -40
	lw	a6, 16(a0)
	lw	t2, 36(a0)
	lw	t3, 32(a0)
	lw	a7, 0(a0)
	lw	t0, 4(a0)
	lw	t1, 20(a0)
	xori	a4, a6, 240
	xor	a6, a7, t3
	xor	a7, t0, t2
	lw	a5, 24(a0)
	lw	a1, 28(a0)
	lw	a2, 12(a0)
	lw	a3, 8(a0)
	xor	t4, a5, t3
	xor	t5, a1, t2
	xor	t6, a2, t1
	xor	s7, a3, a4
	andn	t0, a4, a3
	andn	a4, t1, a2
	xor	s2, a4, a7
	xor	t1, t0, a6
	andn	a4, a5, s7
	andn	s1, a1, t6
	xor	s3, s1, a2
	xor	s4, a4, a3
	andn	s5, t2, a1
	andn	t3, t3, a5
	xor	t0, s7, t3
	xor	t2, t6, s5
	andn	s1, a7, t5
	andn	a4, a6, t4
	xor	s6, a4, a5
	xor	s8, s1, a1
	andn	a2, a2, a7
	andn	a1, a3, a6
	xor	t4, a1, t4
	xor	t5, a2, t5
	xor	s4, s4, t1
	xor	s1, s3, s2
	xor	a5, s2, t5
	xor	a4, t1, t4
	xor	s2, s8, t2
	xor	s3, s6, t0
	xnor	t3, s7, t3
	xnor	t6, t6, s5
	srli	a2, a4, 19
	slli	a1, a5, 13
	or	a6, a1, a2
	srli	a1, a5, 19
	slli	a2, a4, 13
	or	a1, a1, a2
	srli	a2, a4, 28
	slli	a3, a5, 4
	or	a2, a2, a3
	srli	a3, a5, 28
	slli	s0, a4, 4
	or	a3, a3, s0
	xor	a1, a1, a3
	xor	a2, a6, a2
	xor	a6, a2, a4
	xor	a7, a1, a5
	slli	a1, s1, 3
	srli	a2, s4, 29
	or	a1, a1, a2
	srli	a2, s1, 29
	slli	a3, s4, 3
	or	a2, a2, a3
	slli	a3, s1, 25
	srli	a4, s4, 7
	or	a3, a3, a4
	srli	a4, s1, 7
	slli	a5, s4, 25
	or	a4, a4, a5
	xor	a2, a2, a4
	xor	a1, a1, a3
	xor	t1, a1, s1
	xor	s4, a2, s4
	srli	a1, t6, 1
	slli	a2, t3, 31
	or	a1, a1, a2
	slli	a2, t6, 31
	srli	a3, t3, 1
	or	a2, a2, a3
	srli	a3, t6, 6
	slli	a5, t3, 26
	or	a3, a3, a5
	slli	t6, t6, 26
	srli	a5, t3, 6
	or	a5, t6, a5
	xor	a2, a2, a5
	xor	a1, a1, a3
	xnor	t2, a1, t2
	xnor	t0, a2, t0
	srli	a3, s3, 10
	slli	a5, s2, 22
	or	a3, a3, a5
	srli	a5, s2, 10
	slli	s1, s3, 22
	or	a5, a5, s1
	srli	s1, s3, 17
	slli	s0, s2, 15
	or	s0, s0, s1
	srli	s1, s2, 17
	slli	a2, s3, 15
	or	a2, a2, s1
	xor	a2, a2, a5
	xor	a3, a3, s0
	xor	a3, a3, s3
	xor	a2, a2, s2
	srli	a5, t4, 7
	slli	s1, t5, 25
	or	a5, a5, s1
	srli	s1, t5, 7
	slli	s0, t4, 25
	or	s0, s0, s1
	srli	s1, t5, 9
	slli	a1, t4, 23
	or	a1, a1, s1
	srli	s1, t4, 9
	slli	a4, t5, 23
	or	a4, a4, s1
	xor	a4, a4, s0
	xor	a1, a1, a5
	xor	a1, a1, t4
	xor	a4, a4, t5
	xori	a5, t0, 225
	xor	s1, a7, a4
	xor	s0, a6, a1
	xor	a6, a2, a4
	xor	a7, a3, a1
	xor	t0, s4, a5
	xor	t4, t1, t2
	andn	t2, t2, t1
	andn	a5, a5, s4
	xor	t5, a5, s0
	xor	t6, t2, s1
	andn	t2, a2, t4
	andn	a5, a3, t0
	xor	s2, a5, s4
	xor	s3, t2, t1
	andn	s5, a1, a3
	andn	s7, a4, a2
	xor	t2, t4, s7
	xor	t3, t0, s5
	andn	a5, s0, a7
	andn	a1, s1, a6
	xor	s6, a1, a2
	xor	s8, a5, a3
	andn	a2, t1, s1
	andn	a5, s4, s0
	xor	s4, a5, a7
	xor	t1, a2, a6
	xor	s0, s3, t6
	xor	s3, s2, t5
	xor	a5, t6, t1
	xor	a1, t5, s4
	xor	t5, s8, t3
	xor	t6, s6, t2
	xnor	s2, t0, s5
	xnor	t4, t4, s7
	srli	s1, a1, 19
	slli	a2, a5, 13
	or	a6, a2, s1
	srli	a2, a5, 19
	slli	s1, a1, 13
	or	a2, a2, s1
	srli	s1, a1, 28
	slli	a4, a5, 4
	or	a4, a4, s1
	srli	s1, a5, 28
	slli	a3, a1, 4
	or	a3, a3, s1
	xor	a2, a2, a3
	xor	a3, a6, a4
	xor	a6, a3, a1
	xor	a7, a2, a5
	srli	a1, s3, 29
	slli	a2, s0, 3
	or	a1, a1, a2
	srli	a2, s0, 29
	slli	a3, s3, 3
	or	a2, a2, a3
	srli	a3, s3, 7
	slli	a4, s0, 25
	or	a3, a3, a4
	srli	a4, s0, 7
	slli	a5, s3, 25
	or	a4, a4, a5
	xor	a2, a2, a4
	xor	a1, a1, a3
	xor	t0, a1, s0
	xor	s3, a2, s3
	srli	a2, t4, 1
	slli	a3, s2, 31
	or	a2, a2, a3
	srli	a3, s2, 1
	slli	a4, t4, 31
	or	a3, a3, a4
	srli	a4, t4, 6
	slli	a5, s2, 26
	or	a4, a4, a5
	srli	a5, s2, 6
	slli	t4, t4, 26
	or	a5, t4, a5
	xor	a3, a3, a5
	xor	a2, a2, a4
	xnor	t4, a2, t2
	xnor	t2, a3, t3
	srli	a4, t6, 10
	slli	a5, t5, 22
	or	a4, a4, a5
	srli	a5, t5, 10
	slli	s1, t6, 22
	or	a5, a5, s1
	srli	s1, t6, 17
	slli	s0, t5, 15
	or	s0, s0, s1
	srli	s1, t5, 17
	slli	a3, t6, 15
	or	a3, a3, s1
	xor	a3, a3, a5
	xor	a4, a4, s0
	xor	a4, a4, t6
	xor	a3, a3, t5
	srli	a5, s4, 7
	slli	s1, t1, 25
	or	a5, a5, s1
	srli	s1, t1, 7
	slli	s0, s4, 25
	or	s0, s0, s1
	srli	s1, t1, 9
	slli	a2, s4, 23
	or	a2, a2, s1
	srli	s1, s4, 9
	slli	a1, t1, 23
	or	a1, a1, s1
	xor	a1, a1, s0
	xor	a2, a2, a5
	xor	a2, a2, s4
	xor	a1, a1, t1
	xori	a5, t2, 210
	xor	s1, a7, a1
	xor	s0, a6, a2
	xor	a6, a3, a2
	xor	a7, a4, a1
	xor	t3, s3, a5
	xor	t5, t0, t4
	andn	t1, t4, t0
	andn	a5, a5, s3
	xor	t4, a5, s0
	xor	t6, t1, s1
	andn	t1, a4, t5
	andn	a5, a3, t3
	xor	s2, a5, s3
	xor	s4, t1, t0
	andn	s5, a1, a4
	andn	s9, a2, a3
	xor	t1, t3, s9
	xor	t2, t5, s5
	andn	a5, s1, a7
	andn	a1, s0, a6
	xor	s6, a1, a3
	xor	s7, a5, a4
	andn	a3, t0, s1
	andn	a5, s3, s0
	xor	s3, a5, a6
	xor	s8, a3, a7
	xor	t0, s4, t6
	xor	a4, s2, t4
	xor	a5, t6, s8
	xor	a1, t4, s3
	xor	t4, s7, t2
	xor	t6, s6, t1
	xnor	t3, t3, s9
	xnor	t5, t5, s5
	srli	s1, a1, 19
	slli	s0, a5, 13
	or	a6, s0, s1
	srli	s0, a5, 19
	slli	s1, a1, 13
	or	s0, s0, s1
	srli	s1, a1, 28
	slli	a2, a5, 4
	or	a2, a2, s1
	srli	s1, a5, 28
	slli	a3, a1, 4
	or	a3, a3, s1
	xor	a3, a3, s0
	xor	a2, a6, a2
	xor	a6, a2, a1
	xor	a7, a3, a5
	srli	a1, a4, 29
	slli	a2, t0, 3
	or	a1, a1, a2
	srli	a2, t0, 29
	slli	a3, a4, 3
	or	a2, a2, a3
	srli	a3, a4, 7
	slli	a5, t0, 25
	or	a3, a3, a5
	srli	a5, t0, 7
	slli	s0, a4, 25
	or	a5, a5, s0
	xor	a2, a2, a5
	xor	a1, a1, a3
	xor	t0, a1, t0
	xor	s2, a2, a4
	srli	a1, t5, 1
	slli	a2, t3, 31
	or	a1, a1, a2
	srli	a2, t3, 1
	slli	a3, t5, 31
	or	a2, a2, a3
	srli	a3, t5, 6
	slli	a5, t3, 26
	or	a3, a3, a5
	srli	a5, t3, 6
	slli	t5, t5, 26
	or	a5, t5, a5
	xor	a2, a2, a5
	xor	a1, a1, a3
	xnor	t2, a1, t2
	xnor	t1, a2, t1
	srli	a3, t6, 10
	slli	a5, t4, 22
	or	a3, a3, a5
	srli	a5, t4, 10
	slli	s1, t6, 22
	or	a5, a5, s1
	srli	s1, t6, 17
	slli	s0, t4, 15
	or	s0, s0, s1
	srli	s1, t4, 17
	slli	a2, t6, 15
	or	a2, a2, s1
	xor	a2, a2, a5
	xor	a3, a3, s0
	xor	a3, a3, t6
	xor	a2, a2, t4
	srli	a5, s3, 7
	slli	s1, s8, 25
	or	a5, a5, s1
	srli	s1, s8, 7
	slli	s0, s3, 25
	or	s0, s0, s1
	srli	s1, s8, 9
	slli	a1, s3, 23
	or	a1, a1, s1
	srli	s1, s3, 9
	slli	a4, s8, 23
	or	a4, a4, s1
	xor	a4, a4, s0
	xor	a1, a1, a5
	xor	a1, a1, s3
	xor	a4, a4, s8
	xori	a5, t1, 195
	xor	s1, a7, a4
	xor	s0, a6, a1
	xor	a6, a2, a4
	xor	a7, a3, a1
	xor	t3, s2, a5
	xor	t4, t0, t2
	andn	t1, t2, t0
	andn	a5, a5, s2
	xor	t5, a5, s0
	xor	t6, t1, s1
	andn	t1, a2, t4
	andn	a5, a3, t3
	xor	s3, a5, s2
	xor	s4, t1, t0
	andn	s5, a1, a3
	andn	s8, a4, a2
	xor	t1, t4, s8
	xor	t2, t3, s5
	andn	a5, s0, a7
	andn	a1, s1, a6
	xor	s6, a1, a2
	xor	s9, a5, a3
	andn	a2, t0, s1
	andn	a5, s2, s0
	xor	s7, a5, a7
	xor	s2, a2, a6
	xor	s1, s4, t6
	xor	s4, s3, t5
	xor	a5, t6, s2
	xor	a1, t5, s7
	xor	t5, s9, t2
	xor	t6, s6, t1
	xnor	s3, t3, s5
	xnor	t3, t4, s8
	srli	s0, a1, 19
	slli	a2, a5, 13
	or	a6, a2, s0
	srli	a2, a5, 19
	slli	s0, a1, 13
	or	a2, a2, s0
	srli	s0, a1, 28
	slli	a4, a5, 4
	or	a4, a4, s0
	srli	s0, a5, 28
	slli	a3, a1, 4
	or	a3, a3, s0
	xor	a2, a2, a3
	xor	a3, a6, a4
	xor	a6, a3, a1
	xor	a7, a2, a5
	srli	a1, s4, 29
	slli	a2, s1, 3
	or	a1, a1, a2
	srli	a2, s1, 29
	slli	a3, s4, 3
	or	a2, a2, a3
	srli	a3, s4, 7
	slli	a4, s1, 25
	or	a3, a3, a4
	srli	a4, s1, 7
	slli	a5, s4, 25
	or	a4, a4, a5
	xor	a2, a2, a4
	xor	a1, a1, a3
	xor	t0, a1, s1
	xor	t4, a2, s4
	srli	a2, t3, 1
	slli	a3, s3, 31
	or	a2, a2, a3
	srli	a3, s3, 1
	slli	a4, t3, 31
	or	a3, a3, a4
	srli	a4, t3, 6
	slli	a5, s3, 26
	or	a4, a4, a5
	srli	a5, s3, 6
	slli	t3, t3, 26
	or	a5, t3, a5
	xor	a3, a3, a5
	xor	a2, a2, a4
	xnor	t3, a2, t1
	xnor	t1, a3, t2
	srli	a4, t6, 10
	slli	a5, t5, 22
	or	a4, a4, a5
	srli	a5, t5, 10
	slli	s1, t6, 22
	or	a5, a5, s1
	srli	s1, t6, 17
	slli	s0, t5, 15
	or	s0, s0, s1
	srli	s1, t5, 17
	slli	a3, t6, 15
	or	a3, a3, s1
	xor	a3, a3, a5
	xor	a4, a4, s0
	xor	a4, a4, t6
	xor	a3, a3, t5
	srli	a5, s7, 7
	slli	s1, s2, 25
	or	a5, a5, s1
	srli	s1, s2, 7
	slli	s0, s7, 25
	or	s0, s0, s1
	srli	s1, s2, 9
	slli	a2, s7, 23
	or	a2, a2, s1
	srli	s1, s7, 9
	slli	a1, s2, 23
	or	a1, a1, s1
	xor	a1, a1, s0
	xor	a2, a2, a5
	xor	a2, a2, s7
	xor	a1, a1, s2
	xori	a5, t1, 180
	xor	s1, a7, a1
	xor	s0, a6, a2
	xor	a6, a3, a2
	xor	a7, a4, a1
	xor	t5, t4, a5
	xor	t6, t0, t3
	andn	t1, t3, t0
	andn	a5, a5, t4
	xor	t3, a5, s0
	xor	s2, t1, s1
	andn	t1, a4, t6
	andn	a5, a3, t5
	xor	s3, a5, t4
	xor	s4, t1, t0
	andn	s5, a1, a4
	andn	s9, a2, a3
	xor	t1, t5, s9
	xor	t2, t6, s5
	andn	a5, s1, a7
	andn	a1, s0, a6
	xor	s6, a1, a3
	xor	s7, a5, a4
	andn	a3, t0, s1
	andn	a5, t4, s0
	xor	s8, a5, a6
	xor	t4, a3, a7
	xor	t0, s4, s2
	xor	a4, s3, t3
	xor	a5, s2, t4
	xor	a1, t3, s8
	xor	t3, s7, t2
	xor	s2, s6, t1
	xnor	t5, t5, s9
	xnor	t6, t6, s5
	srli	s1, a1, 19
	slli	s0, a5, 13
	or	a6, s0, s1
	srli	s0, a5, 19
	slli	s1, a1, 13
	or	s0, s0, s1
	srli	s1, a1, 28
	slli	a2, a5, 4
	or	a2, a2, s1
	srli	s1, a5, 28
	slli	a3, a1, 4
	or	a3, a3, s1
	xor	a3, a3, s0
	xor	a2, a6, a2
	xor	a6, a2, a1
	xor	a7, a3, a5
	srli	a1, a4, 29
	slli	a2, t0, 3
	or	a1, a1, a2
	srli	a2, t0, 29
	slli	a3, a4, 3
	or	a2, a2, a3
	srli	a3, a4, 7
	slli	a5, t0, 25
	or	a3, a3, a5
	srli	a5, t0, 7
	slli	s0, a4, 25
	or	a5, a5, s0
	xor	a2, a2, a5
	xor	a1, a1, a3
	xor	t0, a1, t0
	xor	s3, a2, a4
	srli	a1, t6, 1
	slli	a2, t5, 31
	or	a1, a1, a2
	srli	a2, t5, 1
	slli	a3, t6, 31
	or	a2, a2, a3
	srli	a3, t6, 6
	slli	a5, t5, 26
	or	a3, a3, a5
	srli	a5, t5, 6
	slli	t6, t6, 26
	or	a5, t6, a5
	xor	a2, a2, a5
	xor	a1, a1, a3
	xnor	t2, a1, t2
	xnor	t1, a2, t1
	srli	a3, s2, 10
	slli	a5, t3, 22
	or	a3, a3, a5
	srli	a5, t3, 10
	slli	s1, s2, 22
	or	a5, a5, s1
	srli	s1, s2, 17
	slli	s0, t3, 15
	or	s0, s0, s1
	srli	s1, t3, 17
	slli	a2, s2, 15
	or	a2, a2, s1
	xor	a2, a2, a5
	xor	a3, a3, s0
	xor	a3, a3, s2
	xor	a2, a2, t3
	srli	a5, s8, 7
	slli	s1, t4, 25
	or	a5, a5, s1
	srli	s1, t4, 7
	slli	s0, s8, 25
	or	s0, s0, s1
	srli	s1, t4, 9
	slli	a1, s8, 23
	or	a1, a1, s1
	srli	s1, s8, 9
	slli	a4, t4, 23
	or	a4, a4, s1
	xor	a4, a4, s0
	xor	a1, a1, a5
	xor	a1, a1, s8
	xor	a4, a4, t4
	xori	a5, t1, 165
	xor	s1, a7, a4
	xor	s0, a6, a1
	xor	a6, a2, a4
	xor	a7, a3, a1
	xor	t3, s3, a5
	xor	t4, t0, t2
	andn	t1, t2, t0
	andn	a5, a5, s3
	xor	t5, a5, s0
	xor	t6, t1, s1
	andn	t1, a2, t4
	andn	a5, a3, t3
	xor	s2, a5, s3
	xor	s4, t1, t0
	andn	s5, a1, a3
	andn	s8, a4, a2
	xor	t1, t4, s8
	xor	t2, t3, s5
	andn	a5, s0, a7
	andn	a1, s1, a6
	xor	s6, a1, a2
	xor	s9, a5, a3
	andn	a2, t0, s1
	andn	a5, s3, s0
	xor	s7, a5, a7
	xor	s3, a2, a6
	xor	s1, s4, t6
	xor	s4, s2, t5
	xor	a5, t6, s3
	xor	a1, t5, s7
	xor	t5, s9, t2
	xor	t6, s6, t1
	xnor	s2, t3, s5
	xnor	t3, t4, s8
	srli	s0, a1, 19
	slli	a2, a5, 13
	or	a6, a2, s0
	srli	a2, a5, 19
	slli	s0, a1, 13
	or	a2, a2, s0
	srli	s0, a1, 28
	slli	a4, a5, 4
	or	a4, a4, s0
	srli	s0, a5, 28
	slli	a3, a1, 4
	or	a3, a3, s0
	xor	a2, a2, a3
	xor	a3, a6, a4
	xor	a6, a3, a1
	xor	a7, a2, a5
	srli	a1, s4, 29
	slli	a2, s1, 3
	or	a1, a1, a2
	srli	a2, s1, 29
	slli	a3, s4, 3
	or	a2, a2, a3
	srli	a3, s4, 7
	slli	a4, s1, 25
	or	a3, a3, a4
	srli	a4, s1, 7
	slli	a5, s4, 25
	or	a4, a4, a5
	xor	a2, a2, a4
	xor	a1, a1, a3
	xor	t0, a1, s1
	xor	t4, a2, s4
	srli	a2, t3, 1
	slli	a3, s2, 31
	or	a2, a2, a3
	srli	a3, s2, 1
	slli	a4, t3, 31
	or	a3, a3, a4
	srli	a4, t3, 6
	slli	a5, s2, 26
	or	a4, a4, a5
	srli	a5, s2, 6
	slli	t3, t3, 26
	or	a5, t3, a5
	xor	a3, a3, a5
	xor	a2, a2, a4
	xnor	t3, a2, t1
	xnor	t1, a3, t2
	srli	a4, t6, 10
	slli	a5, t5, 22
	or	a4, a4, a5
	srli	a5, t5, 10
	slli	s1, t6, 22
	or	a5, a5, s1
	srli	s1, t6, 17
	slli	s0, t5, 15
	or	s0, s0, s1
	srli	s1, t5, 17
	slli	a3, t6, 15
	or	a3, a3, s1
	xor	a3, a3, a5
	xor	a4, a4, s0
	xor	a4, a4, t6
	xor	a3, a3, t5
	srli	a5, s7, 7
	slli	s1, s3, 25
	or	a5, a5, s1
	srli	s1, s3, 7
	slli	s0, s7, 25
	or	s0, s0, s1
	srli	s1, s3, 9
	slli	a2, s7, 23
	or	a2, a2, s1
	srli	s1, s7, 9
	slli	a1, s3, 23
	or	a1, a1, s1
	xor	a1, a1, s0
	xor	a2, a2, a5
	xor	a2, a2, s7
	xor	a1, a1, s3
	xori	a5, t1, 150
	xor	s1, a7, a1
	xor	s0, a6, a2
	xor	a6, a3, a2
	xor	a7, a4, a1
	xor	t5, t4, a5
	xor	t6, t0, t3
	andn	t1, t3, t0
	andn	a5, a5, t4
	xor	t3, a5, s0
	xor	s2, t1, s1
	andn	t1, a4, t6
	andn	a5, a3, t5
	xor	s3, a5, t4
	xor	s4, t1, t0
	andn	s5, a1, a4
	andn	s9, a2, a3
	xor	t1, t5, s9
	xor	t2, t6, s5
	andn	a5, s1, a7
	andn	a1, s0, a6
	xor	s6, a1, a3
	xor	s7, a5, a4
	andn	a3, t0, s1
	andn	a5, t4, s0
	xor	s8, a5, a6
	xor	t4, a3, a7
	xor	t0, s4, s2
	xor	a4, s3, t3
	xor	a5, s2, t4
	xor	a1, t3, s8
	xor	t3, s7, t2
	xor	s2, s6, t1
	xnor	t5, t5, s9
	xnor	t6, t6, s5
	srli	s1, a1, 19
	slli	s0, a5, 13
	or	a6, s0, s1
	srli	s0, a5, 19
	slli	s1, a1, 13
	or	s0, s0, s1
	srli	s1, a1, 28
	slli	a2, a5, 4
	or	a2, a2, s1
	srli	s1, a5, 28
	slli	a3, a1, 4
	or	a3, a3, s1
	xor	a3, a3, s0
	xor	a2, a6, a2
	xor	a6, a2, a1
	xor	a7, a3, a5
	srli	a1, a4, 29
	slli	a2, t0, 3
	or	a1, a1, a2
	srli	a2, t0, 29
	slli	a3, a4, 3
	or	a2, a2, a3
	srli	a3, a4, 7
	slli	a5, t0, 25
	or	a3, a3, a5
	srli	a5, t0, 7
	slli	s0, a4, 25
	or	a5, a5, s0
	xor	a2, a2, a5
	xor	a1, a1, a3
	xor	t0, a1, t0
	xor	s3, a2, a4
	srli	a1, t6, 1
	slli	a2, t5, 31
	or	a1, a1, a2
	srli	a2, t5, 1
	slli	a3, t6, 31
	or	a2, a2, a3
	srli	a3, t6, 6
	slli	a5, t5, 26
	or	a3, a3, a5
	srli	a5, t5, 6
	slli	t6, t6, 26
	or	a5, t6, a5
	xor	a2, a2, a5
	xor	a1, a1, a3
	xnor	t2, a1, t2
	xnor	t1, a2, t1
	srli	a3, s2, 10
	slli	a5, t3, 22
	or	a3, a3, a5
	srli	a5, t3, 10
	slli	s1, s2, 22
	or	a5, a5, s1
	srli	s1, s2, 17
	slli	s0, t3, 15
	or	s0, s0, s1
	srli	s1, t3, 17
	slli	a2, s2, 15
	or	a2, a2, s1
	xor	a2, a2, a5
	xor	a3, a3, s0
	xor	a3, a3, s2
	xor	a2, a2, t3
	srli	a5, s8, 7
	slli	s1, t4, 25
	or	a5, a5, s1
	srli	s1, t4, 7
	slli	s0, s8, 25
	or	s0, s0, s1
	srli	s1, t4, 9
	slli	a1, s8, 23
	or	a1, a1, s1
	srli	s1, s8, 9
	slli	a4, t4, 23
	or	a4, a4, s1
	xor	a4, a4, s0
	xor	a1, a1, a5
	xor	a1, a1, s8
	xor	a4, a4, t4
	xori	a5, t1, 135
	xor	s1, a7, a4
	xor	s0, a6, a1
	xor	a6, a2, a4
	xor	a7, a3, a1
	xor	t3, s3, a5
	xor	t4, t0, t2
	andn	t1, t2, t0
	andn	a5, a5, s3
	xor	t5, a5, s0
	xor	t6, t1, s1
	andn	t1, a2, t4
	andn	a5, a3, t3
	xor	s2, a5, s3
	xor	s4, t1, t0
	andn	s5, a1, a3
	andn	s8, a4, a2
	xor	t1, t4, s8
	xor	t2, t3, s5
	andn	a5, s0, a7
	andn	a1, s1, a6
	xor	s6, a1, a2
	xor	s9, a5, a3
	andn	a2, t0, s1
	andn	a5, s3, s0
	xor	s7, a5, a7
	xor	s3, a2, a6
	xor	s1, s4, t6
	xor	s4, s2, t5
	xor	a5, t6, s3
	xor	a1, t5, s7
	xor	t5, s9, t2
	xor	t6, s6, t1
	xnor	s2, t3, s5
	xnor	t3, t4, s8
	srli	s0, a1, 19
	slli	a2, a5, 13
	or	a6, a2, s0
	srli	a2, a5, 19
	slli	s0, a1, 13
	or	a2, a2, s0
	srli	s0, a1, 28
	slli	a4, a5, 4
	or	a4, a4, s0
	srli	s0, a5, 28
	slli	a3, a1, 4
	or	a3, a3, s0
	xor	a2, a2, a3
	xor	a3, a6, a4
	xor	a6, a3, a1
	xor	a7, a2, a5
	srli	a1, s4, 29
	slli	a2, s1, 3
	or	a1, a1, a2
	srli	a2, s1, 29
	slli	a3, s4, 3
	or	a2, a2, a3
	srli	a3, s4, 7
	slli	a4, s1, 25
	or	a3, a3, a4
	srli	a4, s1, 7
	slli	a5, s4, 25
	or	a4, a4, a5
	xor	a2, a2, a4
	xor	a1, a1, a3
	xor	t0, a1, s1
	xor	t4, a2, s4
	srli	a2, t3, 1
	slli	a3, s2, 31
	or	a2, a2, a3
	srli	a3, s2, 1
	slli	a4, t3, 31
	or	a3, a3, a4
	srli	a4, t3, 6
	slli	a5, s2, 26
	or	a4, a4, a5
	srli	a5, s2, 6
	slli	t3, t3, 26
	or	a5, t3, a5
	xor	a3, a3, a5
	xor	a2, a2, a4
	xnor	t3, a2, t1
	xnor	t1, a3, t2
	srli	a4, t6, 10
	slli	a5, t5, 22
	or	a4, a4, a5
	srli	a5, t5, 10
	slli	s1, t6, 22
	or	a5, a5, s1
	srli	s1, t6, 17
	slli	s0, t5, 15
	or	s0, s0, s1
	srli	s1, t5, 17
	slli	a3, t6, 15
	or	a3, a3, s1
	xor	a3, a3, a5
	xor	a4, a4, s0
	xor	a4, a4, t6
	xor	a3, a3, t5
	srli	a5, s7, 7
	slli	s1, s3, 25
	or	a5, a5, s1
	srli	s1, s3, 7
	slli	s0, s7, 25
	or	s0, s0, s1
	srli	s1, s3, 9
	slli	a2, s7, 23
	or	a2, a2, s1
	srli	s1, s7, 9
	slli	a1, s3, 23
	or	a1, a1, s1
	xor	a1, a1, s0
	xor	a2, a2, a5
	xor	a2, a2, s7
	xor	a1, a1, s3
	xori	a5, t1, 120
	xor	s1, a7, a1
	xor	s0, a6, a2
	xor	a6, a3, a2
	xor	a7, a4, a1
	xor	t5, t4, a5
	xor	t6, t0, t3
	andn	t1, t3, t0
	andn	a5, a5, t4
	xor	t3, a5, s0
	xor	s2, t1, s1
	andn	t1, a4, t6
	andn	a5, a3, t5
	xor	s3, a5, t4
	xor	s4, t1, t0
	andn	s5, a1, a4
	andn	s9, a2, a3
	xor	t1, t5, s9
	xor	t2, t6, s5
	andn	a5, s1, a7
	andn	a1, s0, a6
	xor	s6, a1, a3
	xor	s7, a5, a4
	andn	a3, t0, s1
	andn	a5, t4, s0
	xor	s8, a5, a6
	xor	t4, a3, a7
	xor	t0, s4, s2
	xor	a4, s3, t3
	xor	a5, s2, t4
	xor	a1, t3, s8
	xor	t3, s7, t2
	xor	s2, s6, t1
	xnor	t5, t5, s9
	xnor	t6, t6, s5
	srli	s1, a1, 19
	slli	s0, a5, 13
	or	a6, s0, s1
	srli	s0, a5, 19
	slli	s1, a1, 13
	or	s0, s0, s1
	srli	s1, a1, 28
	slli	a2, a5, 4
	or	a2, a2, s1
	srli	s1, a5, 28
	slli	a3, a1, 4
	or	a3, a3, s1
	xor	a3, a3, s0
	xor	a2, a6, a2
	xor	a6, a2, a1
	xor	a7, a3, a5
	srli	a1, a4, 29
	slli	a2, t0, 3
	or	a1, a1, a2
	srli	a2, t0, 29
	slli	a3, a4, 3
	or	a2, a2, a3
	srli	a3, a4, 7
	slli	a5, t0, 25
	or	a3, a3, a5
	srli	a5, t0, 7
	slli	s0, a4, 25
	or	a5, a5, s0
	xor	a2, a2, a5
	xor	a1, a1, a3
	xor	t0, a1, t0
	xor	s3, a2, a4
	srli	a1, t6, 1
	slli	a2, t5, 31
	or	a1, a1, a2
	srli	a2, t5, 1
	slli	a3, t6, 31
	or	a2, a2, a3
	srli	a3, t6, 6
	slli	a5, t5, 26
	or	a3, a3, a5
	srli	a5, t5, 6
	slli	t6, t6, 26
	or	a5, t6, a5
	xor	a2, a2, a5
	xor	a1, a1, a3
	xnor	t2, a1, t2
	xnor	t1, a2, t1
	srli	a3, s2, 10
	slli	a5, t3, 22
	or	a3, a3, a5
	srli	a5, t3, 10
	slli	s1, s2, 22
	or	a5, a5, s1
	srli	s1, s2, 17
	slli	s0, t3, 15
	or	s0, s0, s1
	srli	s1, t3, 17
	slli	a2, s2, 15
	or	a2, a2, s1
	xor	a2, a2, a5
	xor	a3, a3, s0
	xor	a3, a3, s2
	xor	a2, a2, t3
	srli	a5, s8, 7
	slli	s1, t4, 25
	or	a5, a5, s1
	srli	s1, t4, 7
	slli	s0, s8, 25
	or	s0, s0, s1
	srli	s1, t4, 9
	slli	a1, s8, 23
	or	a1, a1, s1
	srli	s1, s8, 9
	slli	a4, t4, 23
	or	a4, a4, s1
	xor	a4, a4, s0
	xor	a1, a1, a5
	xor	a1, a1, s8
	xor	a4, a4, t4
	xori	a5, t1, 105
	xor	s1, a7, a4
	xor	s0, a6, a1
	xor	a6, a2, a4
	xor	a7, a3, a1
	xor	t3, s3, a5
	xor	t4, t0, t2
	andn	t1, t2, t0
	andn	a5, a5, s3
	xor	t5, a5, s0
	xor	t6, t1, s1
	andn	t1, a2, t4
	andn	a5, a3, t3
	xor	s2, a5, s3
	xor	s4, t1, t0
	andn	s5, a1, a3
	andn	s8, a4, a2
	xor	t1, t4, s8
	xor	t2, t3, s5
	andn	a5, s0, a7
	andn	a1, s1, a6
	xor	s6, a1, a2
	xor	s9, a5, a3
	andn	a2, t0, s1
	andn	a5, s3, s0
	xor	s7, a5, a7
	xor	s3, a2, a6
	xor	s1, s4, t6
	xor	s4, s2, t5
	xor	a5, t6, s3
	xor	a1, t5, s7
	xor	t5, s9, t2
	xor	t6, s6, t1
	xnor	s2, t3, s5
	xnor	t3, t4, s8
	srli	s0, a1, 19
	slli	a2, a5, 13
	or	a6, a2, s0
	srli	a2, a5, 19
	slli	s0, a1, 13
	or	a2, a2, s0
	srli	s0, a1, 28
	slli	a4, a5, 4
	or	a4, a4, s0
	srli	s0, a5, 28
	slli	a3, a1, 4
	or	a3, a3, s0
	xor	a2, a2, a3
	xor	a3, a6, a4
	xor	a6, a3, a1
	xor	a7, a2, a5
	srli	a1, s4, 29
	slli	a2, s1, 3
	or	a1, a1, a2
	srli	a2, s1, 29
	slli	a3, s4, 3
	or	a2, a2, a3
	srli	a3, s4, 7
	slli	a4, s1, 25
	or	a3, a3, a4
	srli	a4, s1, 7
	slli	a5, s4, 25
	or	a4, a4, a5
	xor	a2, a2, a4
	xor	a1, a1, a3
	xor	t0, a1, s1
	xor	t4, a2, s4
	srli	a2, t3, 1
	slli	a3, s2, 31
	or	a2, a2, a3
	srli	a3, s2, 1
	slli	a4, t3, 31
	or	a3, a3, a4
	srli	a4, t3, 6
	slli	a5, s2, 26
	or	a4, a4, a5
	srli	a5, s2, 6
	slli	t3, t3, 26
	or	a5, t3, a5
	xor	a3, a3, a5
	xor	a2, a2, a4
	xnor	t3, a2, t1
	xnor	t1, a3, t2
	srli	a4, t6, 10
	slli	a5, t5, 22
	or	a4, a4, a5
	srli	a5, t5, 10
	slli	s1, t6, 22
	or	a5, a5, s1
	srli	s1, t6, 17
	slli	s0, t5, 15
	or	s0, s0, s1
	srli	s1, t5, 17
	slli	a3, t6, 15
	or	a3, a3, s1
	xor	a3, a3, a5
	xor	a4, a4, s0
	xor	a4, a4, t6
	xor	a3, a3, t5
	srli	a5, s7, 7
	slli	s1, s3, 25
	or	a5, a5, s1
	srli	s1, s3, 7
	slli	s0, s7, 25
	or	s0, s0, s1
	srli	s1, s3, 9
	slli	a2, s7, 23
	or	a2, a2, s1
	srli	s1, s7, 9
	slli	a1, s3, 23
	or	a1, a1, s1
	xor	a1, a1, s0
	xor	a2, a2, a5
	xor	a2, a2, s7
	xor	a1, a1, s3
	xori	a5, t1, 90
	xor	s1, a7, a1
	xor	s0, a6, a2
	xor	a6, a3, a2
	xor	a7, a4, a1
	xor	t5, t4, a5
	xor	t6, t0, t3
	andn	t1, t3, t0
	andn	a5, a5, t4
	xor	t3, a5, s0
	xor	s2, t1, s1
	andn	t1, a4, t6
	andn	a5, a3, t5
	xor	s3, a5, t4
	xor	s4, t1, t0
	andn	s5, a1, a4
	andn	s9, a2, a3
	xor	t1, t5, s9
	xor	t2, t6, s5
	andn	a5, s1, a7
	andn	a1, s0, a6
	xor	s6, a1, a3
	xor	s7, a5, a4
	andn	a3, t0, s1
	andn	a5, t4, s0
	xor	s8, a5, a6
	xor	t4, a3, a7
	xor	t0, s4, s2
	xor	a4, s3, t3
	xor	a5, s2, t4
	xor	a1, t3, s8
	xor	t3, s7, t2
	xor	s2, s6, t1
	xnor	t5, t5, s9
	xnor	t6, t6, s5
	srli	s1, a1, 19
	slli	s0, a5, 13
	or	a6, s0, s1
	srli	s0, a5, 19
	slli	s1, a1, 13
	or	s0, s0, s1
	srli	s1, a1, 28
	slli	a2, a5, 4
	or	a2, a2, s1
	srli	s1, a5, 28
	slli	a3, a1, 4
	or	a3, a3, s1
	xor	a3, a3, s0
	xor	a2, a6, a2
	xor	a6, a2, a1
	xor	a7, a3, a5
	srli	a1, a4, 29
	slli	a2, t0, 3
	or	a1, a1, a2
	srli	a2, t0, 29
	slli	a3, a4, 3
	or	a2, a2, a3
	srli	a3, a4, 7
	slli	a5, t0, 25
	or	a3, a3, a5
	srli	a5, t0, 7
	slli	s0, a4, 25
	or	a5, a5, s0
	xor	a2, a2, a5
	xor	a1, a1, a3
	xor	t0, a1, t0
	xor	s3, a2, a4
	srli	a1, t6, 1
	slli	a2, t5, 31
	or	a1, a1, a2
	srli	a2, t5, 1
	slli	a3, t6, 31
	or	a2, a2, a3
	srli	a3, t6, 6
	slli	a5, t5, 26
	or	a3, a3, a5
	srli	a5, t5, 6
	slli	t6, t6, 26
	or	a5, t6, a5
	xor	a2, a2, a5
	xor	a1, a1, a3
	xnor	t2, a1, t2
	xnor	t1, a2, t1
	srli	a3, s2, 10
	slli	a5, t3, 22
	or	a3, a3, a5
	srli	a5, t3, 10
	slli	s1, s2, 22
	or	a5, a5, s1
	srli	s1, s2, 17
	slli	s0, t3, 15
	or	s0, s0, s1
	srli	s1, t3, 17
	slli	a2, s2, 15
	or	a2, a2, s1
	xor	a2, a2, a5
	xor	a3, a3, s0
	xor	a3, a3, s2
	xor	a2, a2, t3
	srli	a5, s8, 7
	slli	s1, t4, 25
	or	a5, a5, s1
	srli	s1, t4, 7
	slli	s0, s8, 25
	or	s0, s0, s1
	srli	s1, t4, 9
	slli	a1, s8, 23
	or	a1, a1, s1
	srli	s1, s8, 9
	slli	a4, t4, 23
	or	a4, a4, s1
	xor	a4, a4, s0
	xor	a1, a1, a5
	xor	a1, a1, s8
	xor	a4, a4, t4
	xori	a5, t1, 75
	xor	s1, a7, a4
	xor	s0, a6, a1
	xor	a7, a2, a4
	xor	t1, a3, a1
	xor	t3, s3, a5
	xor	t4, t0, t2
	andn	a6, t2, t0
	andn	a5, a5, s3
	xor	t6, a5, s0
	xor	t5, a6, s1
	andn	a6, a2, t4
	andn	a5, a3, t3
	xor	s2, a5, s3
	xor	s4, a6, t0
	andn	s8, a1, a3
	andn	s5, a4, a2
	xor	t2, t4, s5
	xor	a6, t3, s8
	andn	a4, s0, t1
	andn	a1, s1, a7
	xor	s6, a1, a2
	xor	s7, a4, a3
	andn	a2, s3, s0
	andn	a4, t0, s1
	xor	t0, a4, a7
	xor	a7, a2, t1
	xor	s0, s4, t5
	xor	s2, s2, t6
	xor	a5, t6, a7
	xor	a1, t5, t0
	xor	t1, s7, a6
	xor	t5, s6, t2
	xnor	t6, t3, s8
	xnor	t3, t4, s5
	srli	s1, a1, 19
	slli	a2, a5, 13
	or	t4, a2, s1
	srli	a2, a5, 19
	slli	s1, a1, 13
	or	a2, a2, s1
	srli	s1, a1, 28
	slli	a3, a5, 4
	or	a3, a3, s1
	srli	s1, a5, 28
	slli	a4, a1, 4
	or	a4, a4, s1
	xor	a2, a2, a4
	xor	a3, t4, a3
	xor	a1, a1, a3
	xor	a2, a2, a5
	sw	a2, 0(a0)
	sw	a1, 4(a0)
	srli	a1, s2, 29
	slli	a2, s0, 3
	or	a1, a1, a2
	srli	a2, s0, 29
	slli	a3, s2, 3
	or	a2, a2, a3
	srli	a3, s2, 7
	slli	a4, s0, 25
	or	a3, a3, a4
	srli	a4, s0, 7
	slli	a5, s2, 25
	or	a4, a4, a5
	xor	a2, a2, a4
	xor	a1, a1, a3
	xor	a1, a1, s0
	xor	a2, a2, s2
	sw	a2, 8(a0)
	sw	a1, 12(a0)
	srli	a1, t3, 1
	slli	a2, t6, 31
	or	a1, a1, a2
	srli	a2, t6, 1
	slli	a3, t3, 31
	or	a2, a2, a3
	srli	a3, t3, 6
	slli	a4, t6, 26
	or	a3, a3, a4
	srli	a4, t6, 6
	slli	t3, t3, 26
	or	a4, t3, a4
	xor	a2, a2, a4
	xor	a1, a1, a3
	xnor	a1, a1, t2
	xnor	a2, a2, a6
	sw	a2, 16(a0)
	sw	a1, 20(a0)
	srli	a1, t5, 10
	slli	a2, t1, 22
	or	a1, a1, a2
	srli	a2, t1, 10
	slli	a3, t5, 22
	or	a2, a2, a3
	srli	a3, t5, 17
	slli	a4, t1, 15
	or	a3, a3, a4
	srli	a4, t1, 17
	slli	a5, t5, 15
	or	a4, a4, a5
	xor	a2, a2, a4
	xor	a1, a1, a3
	xor	a1, a1, t5
	xor	a2, a2, t1
	sw	a2, 24(a0)
	sw	a1, 28(a0)
	srli	a1, t0, 7
	slli	a2, a7, 25
	or	a1, a1, a2
	srli	a2, a7, 7
	slli	a3, t0, 25
	or	a2, a2, a3
	srli	a3, a7, 9
	slli	a4, t0, 23
	or	a3, a3, a4
	srli	a4, t0, 9
	slli	a5, a7, 23
	or	a4, a4, a5
	xor	a2, a2, a4
	xor	a1, a1, a3
	xor	a1, a1, t0
	xor	a2, a2, a7
	sw	a2, 32(a0)
	sw	a1, 36(a0)
	lw	s0, 44(sp)                      # 4-byte Folded Reload
	lw	s1, 40(sp)                      # 4-byte Folded Reload
	lw	s2, 36(sp)                      # 4-byte Folded Reload
	lw	s3, 32(sp)                      # 4-byte Folded Reload
	lw	s4, 28(sp)                      # 4-byte Folded Reload
	lw	s5, 24(sp)                      # 4-byte Folded Reload
	lw	s6, 20(sp)                      # 4-byte Folded Reload
	lw	s7, 16(sp)                      # 4-byte Folded Reload
	lw	s8, 12(sp)                      # 4-byte Folded Reload
	lw	s9, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end1:
	.size	P12, .Lfunc_end1-P12
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function P6
	.type	P6,@function
P6:                                     # @P6
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sw	s0, 44(sp)                      # 4-byte Folded Spill
	sw	s1, 40(sp)                      # 4-byte Folded Spill
	sw	s2, 36(sp)                      # 4-byte Folded Spill
	sw	s3, 32(sp)                      # 4-byte Folded Spill
	sw	s4, 28(sp)                      # 4-byte Folded Spill
	sw	s5, 24(sp)                      # 4-byte Folded Spill
	sw	s6, 20(sp)                      # 4-byte Folded Spill
	sw	s7, 16(sp)                      # 4-byte Folded Spill
	sw	s8, 12(sp)                      # 4-byte Folded Spill
	sw	s9, 8(sp)                       # 4-byte Folded Spill
	.cfi_offset s0, -4
	.cfi_offset s1, -8
	.cfi_offset s2, -12
	.cfi_offset s3, -16
	.cfi_offset s4, -20
	.cfi_offset s5, -24
	.cfi_offset s6, -28
	.cfi_offset s7, -32
	.cfi_offset s8, -36
	.cfi_offset s9, -40
	lw	a6, 16(a0)
	lw	t2, 36(a0)
	lw	t3, 32(a0)
	lw	a7, 0(a0)
	lw	t0, 4(a0)
	lw	t1, 20(a0)
	xori	a4, a6, 150
	xor	a6, a7, t3
	xor	a7, t0, t2
	lw	a5, 24(a0)
	lw	a1, 28(a0)
	lw	a2, 12(a0)
	lw	a3, 8(a0)
	xor	t4, a5, t3
	xor	t5, a1, t2
	xor	t6, a2, t1
	xor	s7, a3, a4
	andn	t0, a4, a3
	andn	a4, t1, a2
	xor	s2, a4, a7
	xor	t1, t0, a6
	andn	a4, a5, s7
	andn	s1, a1, t6
	xor	s3, s1, a2
	xor	s4, a4, a3
	andn	s5, t2, a1
	andn	t3, t3, a5
	xor	t0, s7, t3
	xor	t2, t6, s5
	andn	s1, a7, t5
	andn	a4, a6, t4
	xor	s6, a4, a5
	xor	s8, s1, a1
	andn	a2, a2, a7
	andn	a1, a3, a6
	xor	t4, a1, t4
	xor	t5, a2, t5
	xor	s4, s4, t1
	xor	s1, s3, s2
	xor	a5, s2, t5
	xor	a4, t1, t4
	xor	s2, s8, t2
	xor	s3, s6, t0
	xnor	t3, s7, t3
	xnor	t6, t6, s5
	srli	a2, a4, 19
	slli	a1, a5, 13
	or	a6, a1, a2
	srli	a1, a5, 19
	slli	a2, a4, 13
	or	a1, a1, a2
	srli	a2, a4, 28
	slli	a3, a5, 4
	or	a2, a2, a3
	srli	a3, a5, 28
	slli	s0, a4, 4
	or	a3, a3, s0
	xor	a1, a1, a3
	xor	a2, a6, a2
	xor	a6, a2, a4
	xor	a7, a1, a5
	slli	a1, s1, 3
	srli	a2, s4, 29
	or	a1, a1, a2
	srli	a2, s1, 29
	slli	a3, s4, 3
	or	a2, a2, a3
	slli	a3, s1, 25
	srli	a4, s4, 7
	or	a3, a3, a4
	srli	a4, s1, 7
	slli	a5, s4, 25
	or	a4, a4, a5
	xor	a2, a2, a4
	xor	a1, a1, a3
	xor	t1, a1, s1
	xor	s4, a2, s4
	srli	a1, t6, 1
	slli	a2, t3, 31
	or	a1, a1, a2
	slli	a2, t6, 31
	srli	a3, t3, 1
	or	a2, a2, a3
	srli	a3, t6, 6
	slli	a5, t3, 26
	or	a3, a3, a5
	slli	t6, t6, 26
	srli	a5, t3, 6
	or	a5, t6, a5
	xor	a2, a2, a5
	xor	a1, a1, a3
	xnor	t2, a1, t2
	xnor	t0, a2, t0
	srli	a3, s3, 10
	slli	a5, s2, 22
	or	a3, a3, a5
	srli	a5, s2, 10
	slli	s1, s3, 22
	or	a5, a5, s1
	srli	s1, s3, 17
	slli	s0, s2, 15
	or	s0, s0, s1
	srli	s1, s2, 17
	slli	a2, s3, 15
	or	a2, a2, s1
	xor	a2, a2, a5
	xor	a3, a3, s0
	xor	a3, a3, s3
	xor	a2, a2, s2
	srli	a5, t4, 7
	slli	s1, t5, 25
	or	a5, a5, s1
	srli	s1, t5, 7
	slli	s0, t4, 25
	or	s0, s0, s1
	srli	s1, t5, 9
	slli	a1, t4, 23
	or	a1, a1, s1
	srli	s1, t4, 9
	slli	a4, t5, 23
	or	a4, a4, s1
	xor	a4, a4, s0
	xor	a1, a1, a5
	xor	a1, a1, t4
	xor	a4, a4, t5
	xori	a5, t0, 135
	xor	s1, a7, a4
	xor	s0, a6, a1
	xor	a6, a2, a4
	xor	a7, a3, a1
	xor	t0, s4, a5
	xor	t4, t1, t2
	andn	t2, t2, t1
	andn	a5, a5, s4
	xor	t5, a5, s0
	xor	t6, t2, s1
	andn	t2, a2, t4
	andn	a5, a3, t0
	xor	s2, a5, s4
	xor	s3, t2, t1
	andn	s5, a1, a3
	andn	s7, a4, a2
	xor	t2, t4, s7
	xor	t3, t0, s5
	andn	a5, s0, a7
	andn	a1, s1, a6
	xor	s6, a1, a2
	xor	s8, a5, a3
	andn	a2, t1, s1
	andn	a5, s4, s0
	xor	s4, a5, a7
	xor	t1, a2, a6
	xor	s0, s3, t6
	xor	s3, s2, t5
	xor	a5, t6, t1
	xor	a1, t5, s4
	xor	t5, s8, t3
	xor	t6, s6, t2
	xnor	s2, t0, s5
	xnor	t4, t4, s7
	srli	s1, a1, 19
	slli	a2, a5, 13
	or	a6, a2, s1
	srli	a2, a5, 19
	slli	s1, a1, 13
	or	a2, a2, s1
	srli	s1, a1, 28
	slli	a4, a5, 4
	or	a4, a4, s1
	srli	s1, a5, 28
	slli	a3, a1, 4
	or	a3, a3, s1
	xor	a2, a2, a3
	xor	a3, a6, a4
	xor	a6, a3, a1
	xor	a7, a2, a5
	srli	a1, s3, 29
	slli	a2, s0, 3
	or	a1, a1, a2
	srli	a2, s0, 29
	slli	a3, s3, 3
	or	a2, a2, a3
	srli	a3, s3, 7
	slli	a4, s0, 25
	or	a3, a3, a4
	srli	a4, s0, 7
	slli	a5, s3, 25
	or	a4, a4, a5
	xor	a2, a2, a4
	xor	a1, a1, a3
	xor	t0, a1, s0
	xor	s3, a2, s3
	srli	a2, t4, 1
	slli	a3, s2, 31
	or	a2, a2, a3
	srli	a3, s2, 1
	slli	a4, t4, 31
	or	a3, a3, a4
	srli	a4, t4, 6
	slli	a5, s2, 26
	or	a4, a4, a5
	srli	a5, s2, 6
	slli	t4, t4, 26
	or	a5, t4, a5
	xor	a3, a3, a5
	xor	a2, a2, a4
	xnor	t4, a2, t2
	xnor	t2, a3, t3
	srli	a4, t6, 10
	slli	a5, t5, 22
	or	a4, a4, a5
	srli	a5, t5, 10
	slli	s1, t6, 22
	or	a5, a5, s1
	srli	s1, t6, 17
	slli	s0, t5, 15
	or	s0, s0, s1
	srli	s1, t5, 17
	slli	a3, t6, 15
	or	a3, a3, s1
	xor	a3, a3, a5
	xor	a4, a4, s0
	xor	a4, a4, t6
	xor	a3, a3, t5
	srli	a5, s4, 7
	slli	s1, t1, 25
	or	a5, a5, s1
	srli	s1, t1, 7
	slli	s0, s4, 25
	or	s0, s0, s1
	srli	s1, t1, 9
	slli	a2, s4, 23
	or	a2, a2, s1
	srli	s1, s4, 9
	slli	a1, t1, 23
	or	a1, a1, s1
	xor	a1, a1, s0
	xor	a2, a2, a5
	xor	a2, a2, s4
	xor	a1, a1, t1
	xori	a5, t2, 120
	xor	s1, a7, a1
	xor	s0, a6, a2
	xor	a6, a3, a2
	xor	a7, a4, a1
	xor	t3, s3, a5
	xor	t5, t0, t4
	andn	t1, t4, t0
	andn	a5, a5, s3
	xor	t4, a5, s0
	xor	t6, t1, s1
	andn	t1, a4, t5
	andn	a5, a3, t3
	xor	s2, a5, s3
	xor	s4, t1, t0
	andn	s5, a1, a4
	andn	s9, a2, a3
	xor	t1, t3, s9
	xor	t2, t5, s5
	andn	a5, s1, a7
	andn	a1, s0, a6
	xor	s6, a1, a3
	xor	s7, a5, a4
	andn	a3, t0, s1
	andn	a5, s3, s0
	xor	s3, a5, a6
	xor	s8, a3, a7
	xor	t0, s4, t6
	xor	a4, s2, t4
	xor	a5, t6, s8
	xor	a1, t4, s3
	xor	t4, s7, t2
	xor	t6, s6, t1
	xnor	t3, t3, s9
	xnor	t5, t5, s5
	srli	s1, a1, 19
	slli	s0, a5, 13
	or	a6, s0, s1
	srli	s0, a5, 19
	slli	s1, a1, 13
	or	s0, s0, s1
	srli	s1, a1, 28
	slli	a2, a5, 4
	or	a2, a2, s1
	srli	s1, a5, 28
	slli	a3, a1, 4
	or	a3, a3, s1
	xor	a3, a3, s0
	xor	a2, a6, a2
	xor	a6, a2, a1
	xor	a7, a3, a5
	srli	a1, a4, 29
	slli	a2, t0, 3
	or	a1, a1, a2
	srli	a2, t0, 29
	slli	a3, a4, 3
	or	a2, a2, a3
	srli	a3, a4, 7
	slli	a5, t0, 25
	or	a3, a3, a5
	srli	a5, t0, 7
	slli	s0, a4, 25
	or	a5, a5, s0
	xor	a2, a2, a5
	xor	a1, a1, a3
	xor	t0, a1, t0
	xor	s2, a2, a4
	srli	a1, t5, 1
	slli	a2, t3, 31
	or	a1, a1, a2
	srli	a2, t3, 1
	slli	a3, t5, 31
	or	a2, a2, a3
	srli	a3, t5, 6
	slli	a5, t3, 26
	or	a3, a3, a5
	srli	a5, t3, 6
	slli	t5, t5, 26
	or	a5, t5, a5
	xor	a2, a2, a5
	xor	a1, a1, a3
	xnor	t2, a1, t2
	xnor	t1, a2, t1
	srli	a3, t6, 10
	slli	a5, t4, 22
	or	a3, a3, a5
	srli	a5, t4, 10
	slli	s1, t6, 22
	or	a5, a5, s1
	srli	s1, t6, 17
	slli	s0, t4, 15
	or	s0, s0, s1
	srli	s1, t4, 17
	slli	a2, t6, 15
	or	a2, a2, s1
	xor	a2, a2, a5
	xor	a3, a3, s0
	xor	a3, a3, t6
	xor	a2, a2, t4
	srli	a5, s3, 7
	slli	s1, s8, 25
	or	a5, a5, s1
	srli	s1, s8, 7
	slli	s0, s3, 25
	or	s0, s0, s1
	srli	s1, s8, 9
	slli	a1, s3, 23
	or	a1, a1, s1
	srli	s1, s3, 9
	slli	a4, s8, 23
	or	a4, a4, s1
	xor	a4, a4, s0
	xor	a1, a1, a5
	xor	a1, a1, s3
	xor	a4, a4, s8
	xori	a5, t1, 105
	xor	s1, a7, a4
	xor	s0, a6, a1
	xor	a6, a2, a4
	xor	a7, a3, a1
	xor	t3, s2, a5
	xor	t4, t0, t2
	andn	t1, t2, t0
	andn	a5, a5, s2
	xor	t5, a5, s0
	xor	t6, t1, s1
	andn	t1, a2, t4
	andn	a5, a3, t3
	xor	s3, a5, s2
	xor	s4, t1, t0
	andn	s5, a1, a3
	andn	s8, a4, a2
	xor	t1, t4, s8
	xor	t2, t3, s5
	andn	a5, s0, a7
	andn	a1, s1, a6
	xor	s6, a1, a2
	xor	s9, a5, a3
	andn	a2, t0, s1
	andn	a5, s2, s0
	xor	s7, a5, a7
	xor	s2, a2, a6
	xor	s1, s4, t6
	xor	s4, s3, t5
	xor	a5, t6, s2
	xor	a1, t5, s7
	xor	t5, s9, t2
	xor	t6, s6, t1
	xnor	s3, t3, s5
	xnor	t3, t4, s8
	srli	s0, a1, 19
	slli	a2, a5, 13
	or	a6, a2, s0
	srli	a2, a5, 19
	slli	s0, a1, 13
	or	a2, a2, s0
	srli	s0, a1, 28
	slli	a4, a5, 4
	or	a4, a4, s0
	srli	s0, a5, 28
	slli	a3, a1, 4
	or	a3, a3, s0
	xor	a2, a2, a3
	xor	a3, a6, a4
	xor	a6, a3, a1
	xor	a7, a2, a5
	srli	a1, s4, 29
	slli	a2, s1, 3
	or	a1, a1, a2
	srli	a2, s1, 29
	slli	a3, s4, 3
	or	a2, a2, a3
	srli	a3, s4, 7
	slli	a4, s1, 25
	or	a3, a3, a4
	srli	a4, s1, 7
	slli	a5, s4, 25
	or	a4, a4, a5
	xor	a2, a2, a4
	xor	a1, a1, a3
	xor	t0, a1, s1
	xor	t4, a2, s4
	srli	a2, t3, 1
	slli	a3, s3, 31
	or	a2, a2, a3
	srli	a3, s3, 1
	slli	a4, t3, 31
	or	a3, a3, a4
	srli	a4, t3, 6
	slli	a5, s3, 26
	or	a4, a4, a5
	srli	a5, s3, 6
	slli	t3, t3, 26
	or	a5, t3, a5
	xor	a3, a3, a5
	xor	a2, a2, a4
	xnor	t3, a2, t1
	xnor	t1, a3, t2
	srli	a4, t6, 10
	slli	a5, t5, 22
	or	a4, a4, a5
	srli	a5, t5, 10
	slli	s1, t6, 22
	or	a5, a5, s1
	srli	s1, t6, 17
	slli	s0, t5, 15
	or	s0, s0, s1
	srli	s1, t5, 17
	slli	a3, t6, 15
	or	a3, a3, s1
	xor	a3, a3, a5
	xor	a4, a4, s0
	xor	a4, a4, t6
	xor	a3, a3, t5
	srli	a5, s7, 7
	slli	s1, s2, 25
	or	a5, a5, s1
	srli	s1, s2, 7
	slli	s0, s7, 25
	or	s0, s0, s1
	srli	s1, s2, 9
	slli	a2, s7, 23
	or	a2, a2, s1
	srli	s1, s7, 9
	slli	a1, s2, 23
	or	a1, a1, s1
	xor	a1, a1, s0
	xor	a2, a2, a5
	xor	a2, a2, s7
	xor	a1, a1, s2
	xori	a5, t1, 90
	xor	s1, a7, a1
	xor	s0, a6, a2
	xor	a6, a3, a2
	xor	a7, a4, a1
	xor	t5, t4, a5
	xor	t6, t0, t3
	andn	t1, t3, t0
	andn	a5, a5, t4
	xor	t3, a5, s0
	xor	s2, t1, s1
	andn	t1, a4, t6
	andn	a5, a3, t5
	xor	s3, a5, t4
	xor	s4, t1, t0
	andn	s5, a1, a4
	andn	s9, a2, a3
	xor	t1, t5, s9
	xor	t2, t6, s5
	andn	a5, s1, a7
	andn	a1, s0, a6
	xor	s6, a1, a3
	xor	s7, a5, a4
	andn	a3, t0, s1
	andn	a5, t4, s0
	xor	s8, a5, a6
	xor	t4, a3, a7
	xor	t0, s4, s2
	xor	a4, s3, t3
	xor	a5, s2, t4
	xor	a1, t3, s8
	xor	t3, s7, t2
	xor	s2, s6, t1
	xnor	t5, t5, s9
	xnor	t6, t6, s5
	srli	s1, a1, 19
	slli	s0, a5, 13
	or	a6, s0, s1
	srli	s0, a5, 19
	slli	s1, a1, 13
	or	s0, s0, s1
	srli	s1, a1, 28
	slli	a2, a5, 4
	or	a2, a2, s1
	srli	s1, a5, 28
	slli	a3, a1, 4
	or	a3, a3, s1
	xor	a3, a3, s0
	xor	a2, a6, a2
	xor	a6, a2, a1
	xor	a7, a3, a5
	srli	a1, a4, 29
	slli	a2, t0, 3
	or	a1, a1, a2
	srli	a2, t0, 29
	slli	a3, a4, 3
	or	a2, a2, a3
	srli	a3, a4, 7
	slli	a5, t0, 25
	or	a3, a3, a5
	srli	a5, t0, 7
	slli	s0, a4, 25
	or	a5, a5, s0
	xor	a2, a2, a5
	xor	a1, a1, a3
	xor	t0, a1, t0
	xor	s3, a2, a4
	srli	a1, t6, 1
	slli	a2, t5, 31
	or	a1, a1, a2
	srli	a2, t5, 1
	slli	a3, t6, 31
	or	a2, a2, a3
	srli	a3, t6, 6
	slli	a5, t5, 26
	or	a3, a3, a5
	srli	a5, t5, 6
	slli	t6, t6, 26
	or	a5, t6, a5
	xor	a2, a2, a5
	xor	a1, a1, a3
	xnor	t2, a1, t2
	xnor	t1, a2, t1
	srli	a3, s2, 10
	slli	a5, t3, 22
	or	a3, a3, a5
	srli	a5, t3, 10
	slli	s1, s2, 22
	or	a5, a5, s1
	srli	s1, s2, 17
	slli	s0, t3, 15
	or	s0, s0, s1
	srli	s1, t3, 17
	slli	a2, s2, 15
	or	a2, a2, s1
	xor	a2, a2, a5
	xor	a3, a3, s0
	xor	a3, a3, s2
	xor	a2, a2, t3
	srli	a5, s8, 7
	slli	s1, t4, 25
	or	a5, a5, s1
	srli	s1, t4, 7
	slli	s0, s8, 25
	or	s0, s0, s1
	srli	s1, t4, 9
	slli	a1, s8, 23
	or	a1, a1, s1
	srli	s1, s8, 9
	slli	a4, t4, 23
	or	a4, a4, s1
	xor	a4, a4, s0
	xor	a1, a1, a5
	xor	a1, a1, s8
	xor	a4, a4, t4
	xori	a5, t1, 75
	xor	s1, a7, a4
	xor	s0, a6, a1
	xor	a7, a2, a4
	xor	t1, a3, a1
	xor	t3, s3, a5
	xor	t4, t0, t2
	andn	a6, t2, t0
	andn	a5, a5, s3
	xor	t6, a5, s0
	xor	t5, a6, s1
	andn	a6, a2, t4
	andn	a5, a3, t3
	xor	s2, a5, s3
	xor	s4, a6, t0
	andn	s8, a1, a3
	andn	s5, a4, a2
	xor	t2, t4, s5
	xor	a6, t3, s8
	andn	a4, s0, t1
	andn	a1, s1, a7
	xor	s6, a1, a2
	xor	s7, a4, a3
	andn	a2, s3, s0
	andn	a4, t0, s1
	xor	t0, a4, a7
	xor	a7, a2, t1
	xor	s0, s4, t5
	xor	s2, s2, t6
	xor	a5, t6, a7
	xor	a1, t5, t0
	xor	t1, s7, a6
	xor	t5, s6, t2
	xnor	t6, t3, s8
	xnor	t3, t4, s5
	srli	s1, a1, 19
	slli	a2, a5, 13
	or	t4, a2, s1
	srli	a2, a5, 19
	slli	s1, a1, 13
	or	a2, a2, s1
	srli	s1, a1, 28
	slli	a3, a5, 4
	or	a3, a3, s1
	srli	s1, a5, 28
	slli	a4, a1, 4
	or	a4, a4, s1
	xor	a2, a2, a4
	xor	a3, t4, a3
	xor	a1, a1, a3
	xor	a2, a2, a5
	sw	a2, 0(a0)
	sw	a1, 4(a0)
	srli	a1, s2, 29
	slli	a2, s0, 3
	or	a1, a1, a2
	srli	a2, s0, 29
	slli	a3, s2, 3
	or	a2, a2, a3
	srli	a3, s2, 7
	slli	a4, s0, 25
	or	a3, a3, a4
	srli	a4, s0, 7
	slli	a5, s2, 25
	or	a4, a4, a5
	xor	a2, a2, a4
	xor	a1, a1, a3
	xor	a1, a1, s0
	xor	a2, a2, s2
	sw	a2, 8(a0)
	sw	a1, 12(a0)
	srli	a1, t3, 1
	slli	a2, t6, 31
	or	a1, a1, a2
	srli	a2, t6, 1
	slli	a3, t3, 31
	or	a2, a2, a3
	srli	a3, t3, 6
	slli	a4, t6, 26
	or	a3, a3, a4
	srli	a4, t6, 6
	slli	t3, t3, 26
	or	a4, t3, a4
	xor	a2, a2, a4
	xor	a1, a1, a3
	xnor	a1, a1, t2
	xnor	a2, a2, a6
	sw	a2, 16(a0)
	sw	a1, 20(a0)
	srli	a1, t5, 10
	slli	a2, t1, 22
	or	a1, a1, a2
	srli	a2, t1, 10
	slli	a3, t5, 22
	or	a2, a2, a3
	srli	a3, t5, 17
	slli	a4, t1, 15
	or	a3, a3, a4
	srli	a4, t1, 17
	slli	a5, t5, 15
	or	a4, a4, a5
	xor	a2, a2, a4
	xor	a1, a1, a3
	xor	a1, a1, t5
	xor	a2, a2, t1
	sw	a2, 24(a0)
	sw	a1, 28(a0)
	srli	a1, t0, 7
	slli	a2, a7, 25
	or	a1, a1, a2
	srli	a2, a7, 7
	slli	a3, t0, 25
	or	a2, a2, a3
	srli	a3, a7, 9
	slli	a4, t0, 23
	or	a3, a3, a4
	srli	a4, t0, 9
	slli	a5, a7, 23
	or	a4, a4, a5
	xor	a2, a2, a4
	xor	a1, a1, a3
	xor	a1, a1, t0
	xor	a2, a2, a7
	sw	a2, 32(a0)
	sw	a1, 36(a0)
	lw	s0, 44(sp)                      # 4-byte Folded Reload
	lw	s1, 40(sp)                      # 4-byte Folded Reload
	lw	s2, 36(sp)                      # 4-byte Folded Reload
	lw	s3, 32(sp)                      # 4-byte Folded Reload
	lw	s4, 28(sp)                      # 4-byte Folded Reload
	lw	s5, 24(sp)                      # 4-byte Folded Reload
	lw	s6, 20(sp)                      # 4-byte Folded Reload
	lw	s7, 16(sp)                      # 4-byte Folded Reload
	lw	s8, 12(sp)                      # 4-byte Folded Reload
	lw	s9, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end2:
	.size	P6, .Lfunc_end2-P6
	.cfi_endproc
                                        # -- End function
	.globl	crypto_aead_decrypt             # -- Begin function crypto_aead_decrypt
	.p2align	1
	.type	crypto_aead_decrypt,@function
crypto_aead_decrypt:                    # @crypto_aead_decrypt
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -112
	.cfi_def_cfa_offset 112
	sw	ra, 108(sp)                     # 4-byte Folded Spill
	sw	s0, 104(sp)                     # 4-byte Folded Spill
	sw	s1, 100(sp)                     # 4-byte Folded Spill
	sw	s2, 96(sp)                      # 4-byte Folded Spill
	sw	s3, 92(sp)                      # 4-byte Folded Spill
	sw	s4, 88(sp)                      # 4-byte Folded Spill
	sw	s5, 84(sp)                      # 4-byte Folded Spill
	sw	s6, 80(sp)                      # 4-byte Folded Spill
	sw	s7, 76(sp)                      # 4-byte Folded Spill
	sw	s8, 72(sp)                      # 4-byte Folded Spill
	sw	s9, 68(sp)                      # 4-byte Folded Spill
	sw	s10, 64(sp)                     # 4-byte Folded Spill
	sw	s11, 60(sp)                     # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	.cfi_offset s6, -32
	.cfi_offset s7, -36
	.cfi_offset s8, -40
	.cfi_offset s9, -44
	.cfi_offset s10, -48
	.cfi_offset s11, -52
	mv	s5, a0
	sltiu	a0, a4, 16
	seqz	a2, a5
	and	a2, a2, a0
	li	a0, -1
	bnez	a2, .LBB3_42
# %bb.1:                                # %if.end
	mv	s2, a7
	mv	s0, a6
	mv	s3, a3
	lw	s7, 112(sp)
	lw	a3, 120(sp)
	lw	a0, 116(sp)
	addi	s4, a4, -16
	sltu	a2, s4, a4
	add	a2, a2, a5
	addi	s11, a2, -1
	sw	s4, 0(a1)
	sw	s11, 4(a1)
	lbu	a1, 1(a3)
	lbu	a2, 2(a3)
	lb	a4, 0(a3)
	slli	a7, a1, 16
	slli	t0, a2, 8
	lbu	a2, 4(a3)
	lbu	s1, 5(a3)
	lbu	a1, 6(a3)
	lbu	a5, 3(a3)
	slli	t2, a2, 24
	slli	t6, s1, 16
	slli	a1, a1, 8
	sw	a1, 12(sp)                      # 4-byte Folded Spill
	lbu	a1, 9(a3)
	lbu	a2, 10(a3)
	lbu	s1, 7(a3)
	sw	s1, 8(sp)                       # 4-byte Folded Spill
	lb	t3, 8(a3)
	slli	t5, a1, 16
	slli	t4, a2, 8
	lbu	a2, 12(a3)
	lbu	a1, 13(a3)
	lbu	s1, 14(a3)
	lbu	a6, 11(a3)
	slli	a2, a2, 24
	slli	a1, a1, 16
	slli	s8, s1, 8
	lbu	a3, 15(a3)
	slli	a4, a4, 24
	or	a4, a7, a4
	or	a5, a5, t0
	or	s6, a5, a4
	lbu	a4, 1(a0)
	lbu	a5, 2(a0)
	or	t1, t6, t2
	lb	a7, 0(a0)
	slli	t6, a4, 16
	slli	t2, a5, 8
	lbu	a5, 4(a0)
	lbu	a4, 5(a0)
	lbu	s1, 6(a0)
	lbu	s9, 3(a0)
	slli	s10, a5, 24
	slli	t0, a4, 16
	slli	ra, s1, 8
	lbu	a5, 7(a0)
	slli	t3, t3, 24
	or	s1, t5, t3
	or	a4, a6, t4
	or	s1, s1, a4
	or	a1, a1, a2
	lb	a2, 8(a0)
	or	a3, s8, a3
	lbu	a4, 9(a0)
	or	s8, a3, a1
	slli	a2, a2, 24
	lbu	a1, 10(a0)
	slli	a4, a4, 16
	lbu	a3, 11(a0)
	or	a2, a2, a4
	slli	a1, a1, 8
	lbu	a4, 12(a0)
	or	a1, a1, a3
	or	a1, a1, a2
	lbu	a2, 13(a0)
	slli	a4, a4, 24
	lbu	a3, 14(a0)
	lbu	a0, 15(a0)
	slli	a2, a2, 16
	or	a2, a2, a4
	slli	a3, a3, 8
	or	a0, a0, a3
	or	a0, a0, a2
	slli	a7, a7, 24
	or	a2, t6, a7
	or	a3, s9, t2
	or	a2, a2, a3
	or	a3, t0, s10
	or	a4, ra, a5
	or	a3, a3, a4
	lw	a4, 12(sp)                      # 4-byte Folded Reload
	lw	a5, 8(sp)                       # 4-byte Folded Reload
	or	a4, a4, a5
	or	s9, a4, t1
	lui	a4, 525313
	addi	a4, a4, -1018
	sw	a4, 20(sp)
	sw	zero, 16(sp)
	sw	s6, 28(sp)
	sw	s9, 24(sp)
	sw	s1, 36(sp)
	sw	s8, 32(sp)
	sw	a2, 44(sp)
	sw	a3, 40(sp)
	sw	a1, 52(sp)
	sw	a0, 48(sp)
	addi	a0, sp, 16
	call	P12
	lw	a0, 44(sp)
	lw	a1, 40(sp)
	sw	s6, 12(sp)                      # 4-byte Folded Spill
	xor	a0, a0, s6
	mv	s6, s1
	xor	a1, a1, s9
	sw	a1, 40(sp)
	sw	a0, 44(sp)
	lw	a0, 52(sp)
	lw	a1, 48(sp)
	xor	a0, a0, s1
	xor	a1, a1, s8
	sw	a1, 48(sp)
	sw	a0, 52(sp)
	or	a2, s2, s7
	li	a3, 56
	addi	s10, a3, 72
	beqz	a2, .LBB3_16
# %bb.2:                                # %while.cond.preheader
	sltiu	a0, s2, 8
	seqz	a1, s7
	and	a0, a0, a1
	beqz	a0, .LBB3_4
	j	.LBB3_6
.LBB3_3:                                # %for.body.i215.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	snez	a0, s7
	addi	s0, s0, 8
	beqz	a0, .LBB3_6
.LBB3_4:                                # %for.body.i215.preheader
                                        # =>This Inner Loop Header: Depth=1
	lb	a0, 0(s0)
	lbu	a1, 1(s0)
	slli	a0, a0, 24
	lbu	a2, 2(s0)
	slli	a1, a1, 16
	lbu	a3, 3(s0)
	or	a0, a0, a1
	slli	a2, a2, 8
	lbu	a1, 4(s0)
	or	a2, a2, a3
	lbu	a3, 5(s0)
	or	a0, a0, a2
	slli	a1, a1, 24
	lbu	a2, 6(s0)
	slli	a3, a3, 16
	or	a1, a1, a3
	lbu	a3, 7(s0)
	slli	a2, a2, 8
	lw	a4, 20(sp)
	lw	a5, 16(sp)
	or	a2, a2, a3
	or	a1, a1, a2
	mv	s1, s2
	xor	a0, a0, a4
	xor	a1, a1, a5
	sw	a1, 16(sp)
	sw	a0, 20(sp)
	addi	a0, sp, 16
	call	P6
	addi	s2, s2, -8
	sltu	a0, s2, s1
	add	a0, a0, s7
	addi	s7, a0, -1
	bnez	s7, .LBB3_3
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	sltiu	a0, s2, 8
	xori	a0, a0, 1
	addi	s0, s0, 8
	bnez	a0, .LBB3_4
.LBB3_6:                                # %while.end
	li	a0, 0
	li	a1, 0
	beqz	s2, .LBB3_12
# %bb.7:                                # %for.body.i228.preheader
	li	a2, 56
	mv	a3, s2
	j	.LBB3_10
.LBB3_8:                                # %for.body.i228
                                        #   in Loop: Header=BB3_10 Depth=1
	mv	s1, a4
.LBB3_9:                                # %for.body.i228
                                        #   in Loop: Header=BB3_10 Depth=1
	slti	a5, a5, 0
	neg	a5, a5
	and	a4, a4, a5
	or	a1, a1, s1
	or	a0, a0, a4
	addi	a3, a3, -1
	addi	a2, a2, -8
	addi	s0, s0, 1
	beqz	a3, .LBB3_12
.LBB3_10:                               # %for.body.i228
                                        # =>This Inner Loop Header: Depth=1
	lbu	s1, 0(s0)
	addi	a5, a2, -32
	sll	a4, s1, a2
	bgez	a5, .LBB3_8
# %bb.11:                               #   in Loop: Header=BB3_10 Depth=1
	not	a6, a2
	srli	s1, s1, 1
	srl	s1, s1, a6
	j	.LBB3_9
.LBB3_12:                               # %LOADBYTES.exit229
	lw	a2, 16(sp)
	lw	a3, 20(sp)
	slli	s2, s2, 3
	li	a4, 56
	sub	a5, a4, s2
	li	s1, 56
	addi	s0, a5, -32
	sll	a4, s10, a5
	bltz	s0, .LBB3_14
# %bb.13:                               # %LOADBYTES.exit229
	mv	s1, a4
	j	.LBB3_15
.LBB3_14:
	sltu	s1, s10, s1
	sll	a6, s1, a5
	not	a5, a5
	srli	s1, s10, 1
	srl	a5, s1, a5
	or	s1, a6, a5
.LBB3_15:                               # %LOADBYTES.exit229
	slti	a5, s0, 0
	neg	a5, a5
	and	a4, a4, a5
	xor	a3, a3, s1
	xor	a1, a1, a3
	xor	a2, a2, a4
	xor	a0, a0, a2
	sw	a0, 16(sp)
	sw	a1, 20(sp)
	addi	a0, sp, 16
	call	P6
	lw	a0, 52(sp)
	lw	a1, 48(sp)
.LBB3_16:                               # %if.end43
	xori	a1, a1, 1
	sw	a0, 52(sp)
	sltiu	a0, s4, 8
	seqz	a2, s11
	and	a0, a0, a2
	sw	a1, 48(sp)
	li	s2, 56
	beqz	a0, .LBB3_25
.LBB3_17:                               # %while.end67
	beqz	s4, .LBB3_37
# %bb.18:                               # %for.body.i264.preheader
	li	t1, 0
	li	a1, 0
	li	a2, 56
	mv	a3, s3
	mv	a4, s4
	j	.LBB3_21
.LBB3_19:                               # %for.body.i264
                                        #   in Loop: Header=BB3_21 Depth=1
	mv	a0, a5
.LBB3_20:                               # %for.body.i264
                                        #   in Loop: Header=BB3_21 Depth=1
	slti	s1, s0, 0
	neg	s1, s1
	and	a5, a5, s1
	or	a1, a1, a0
	or	t1, a5, t1
	addi	a4, a4, -1
	addi	a2, a2, -8
	addi	a3, a3, 1
	beqz	a4, .LBB3_27
.LBB3_21:                               # %for.body.i264
                                        # =>This Inner Loop Header: Depth=1
	lbu	a0, 0(a3)
	addi	s0, a2, -32
	sll	a5, a0, a2
	bgez	s0, .LBB3_19
# %bb.22:                               #   in Loop: Header=BB3_21 Depth=1
	not	s1, a2
	srli	a0, a0, 1
	srl	a0, a0, s1
	j	.LBB3_20
.LBB3_23:                               # %for.body.i241.preheader
                                        #   in Loop: Header=BB3_25 Depth=1
	snez	a0, s11
.LBB3_24:                               # %for.body.i241.preheader
                                        #   in Loop: Header=BB3_25 Depth=1
	addi	s5, s5, 8
	addi	s3, s3, 8
	beqz	a0, .LBB3_17
.LBB3_25:                               # %for.body.i241.preheader
                                        # =>This Inner Loop Header: Depth=1
	lb	a0, 0(s3)
	lbu	a1, 1(s3)
	slli	a0, a0, 24
	lbu	a2, 2(s3)
	slli	a1, a1, 16
	lbu	a3, 3(s3)
	or	a0, a0, a1
	slli	a2, a2, 8
	lbu	a1, 4(s3)
	or	a2, a2, a3
	lbu	a3, 5(s3)
	or	a0, a0, a2
	slli	a1, a1, 24
	lbu	a2, 6(s3)
	slli	a3, a3, 16
	or	a1, a1, a3
	lbu	a3, 7(s3)
	slli	a2, a2, 8
	lw	a4, 16(sp)
	lw	a5, 20(sp)
	or	a2, a2, a3
	mv	s0, s4
	or	a1, a1, a2
	xor	a4, a4, a1
	xor	a5, a5, a0
	srli	a2, a5, 24
	sb	a2, 0(s5)
	srli	a2, a5, 16
	sb	a2, 1(s5)
	srli	a2, a5, 8
	sb	a2, 2(s5)
	sb	a5, 3(s5)
	srli	a2, a4, 24
	sb	a2, 4(s5)
	srli	a2, a4, 16
	sb	a2, 5(s5)
	srli	a2, a4, 8
	sb	a2, 6(s5)
	sb	a4, 7(s5)
	sw	a0, 20(sp)
	sw	a1, 16(sp)
	addi	a0, sp, 16
	call	P6
	addi	s4, s4, -8
	sltu	a0, s4, s0
	add	a0, a0, s11
	addi	s11, a0, -1
	bnez	s11, .LBB3_23
# %bb.26:                               #   in Loop: Header=BB3_25 Depth=1
	sltiu	a0, s4, 8
	xori	a0, a0, 1
	j	.LBB3_24
.LBB3_27:                               # %for.body.i276.preheader
	lw	a2, 16(sp)
	lw	a3, 20(sp)
	xor	a6, a2, t1
	xor	t0, a3, a1
	li	s0, 56
	slli	a7, t0, 1
	mv	a4, s4
	j	.LBB3_30
.LBB3_28:                               # %for.body.i276
                                        #   in Loop: Header=BB3_30 Depth=1
	srl	a0, t0, s0
.LBB3_29:                               # %for.body.i276
                                        #   in Loop: Header=BB3_30 Depth=1
	sb	a0, 0(s5)
	addi	a4, a4, -1
	addi	s5, s5, 1
	addi	s0, s0, -8
	beqz	a4, .LBB3_32
.LBB3_30:                               # %for.body.i276
                                        # =>This Inner Loop Header: Depth=1
	addi	a0, s0, -32
	bgez	a0, .LBB3_28
# %bb.31:                               #   in Loop: Header=BB3_30 Depth=1
	srl	a5, a6, s0
	not	s1, s0
	sll	a0, a7, s1
	or	a0, a0, a5
	j	.LBB3_29
.LBB3_32:                               # %for.body.i286.preheader
	li	a4, 56
	addi	t0, s2, 199
	sltu	a6, t0, s2
	srli	a7, t0, 1
	mv	s1, s4
	j	.LBB3_35
.LBB3_33:                               # %for.body.i286
                                        #   in Loop: Header=BB3_35 Depth=1
	mv	a0, s0
.LBB3_34:                               # %for.body.i286
                                        #   in Loop: Header=BB3_35 Depth=1
	slti	a5, a5, 0
	neg	a5, a5
	and	a5, a5, s0
	andn	a2, a2, a5
	andn	a3, a3, a0
	addi	s1, s1, -1
	addi	a4, a4, -8
	beqz	s1, .LBB3_38
.LBB3_35:                               # %for.body.i286
                                        # =>This Inner Loop Header: Depth=1
	addi	a5, a4, -32
	sll	s0, t0, a4
	bgez	a5, .LBB3_33
# %bb.36:                               #   in Loop: Header=BB3_35 Depth=1
	not	a0, a4
	srl	t2, a7, a0
	sll	a0, a6, a4
	or	a0, a0, t2
	j	.LBB3_34
.LBB3_37:                               # %LOADBYTES.exit266.thread
	lw	a3, 20(sp)
	lw	a2, 16(sp)
	li	t1, 0
	li	a1, 0
.LBB3_38:
	lw	s0, 12(sp)                      # 4-byte Folded Reload
	or	a1, a1, a3
	or	a0, a2, t1
	slli	a2, s4, 3
	sub	a4, s2, a2
	addi	a3, a4, -32
	sll	a2, s10, a4
	bltz	a3, .LBB3_40
# %bb.39:                               # %CLEARBYTES.exit
	mv	a4, a2
	j	.LBB3_41
.LBB3_40:
	sltu	a5, s10, s2
	sll	a5, a5, a4
	not	a4, a4
	srli	s1, s10, 1
	srl	a4, s1, a4
	or	a4, a4, a5
.LBB3_41:                               # %CLEARBYTES.exit
	slti	a3, a3, 0
	neg	a3, a3
	and	a2, a2, a3
	xor	a0, a0, a2
	xor	a1, a1, a4
	sw	a1, 20(sp)
	sw	a0, 16(sp)
	lw	a0, 28(sp)
	lw	a1, 24(sp)
	xor	a0, a0, s0
	xor	a1, a1, s9
	sw	a1, 24(sp)
	sw	a0, 28(sp)
	lw	a0, 36(sp)
	lw	a1, 32(sp)
	xor	a0, a0, s6
	xor	a1, a1, s8
	sw	a1, 32(sp)
	sw	a0, 36(sp)
	addi	a0, sp, 16
	call	P12
	lw	a0, 40(sp)
	lw	a1, 44(sp)
	xor	a5, a0, s9
	xor	a3, a1, s0
	sw	a3, 44(sp)
	sw	a5, 40(sp)
	lw	a0, 48(sp)
	lw	a1, 52(sp)
	xor	t3, a0, s8
	xor	a1, a1, s6
	sw	a1, 52(sp)
	sw	t3, 48(sp)
	srli	a7, a3, 24
	srli	t0, a3, 16
	srli	a6, a3, 8
	slli	s0, a3, 8
	srli	a2, a5, 24
	or	t6, a2, s0
	slli	s0, a3, 16
	srli	s1, a5, 16
	or	s5, s1, s0
	slli	s1, a3, 24
	srli	a4, a5, 8
	or	t5, a4, s1
	srli	t2, a1, 24
	srli	t1, a1, 16
	slli	s1, a1, 8
	srli	a0, t3, 24
	or	t4, a0, s1
	slli	s1, a1, 16
	srli	a0, t3, 16
	add	s3, s3, s4
	lb	a4, 0(s3)
	lb	a2, 1(s3)
	or	s2, a0, s1
	srli	s1, a1, 8
	xor	a4, a4, a7
	xor	a2, a2, t0
	lb	a0, 2(s3)
	lb	s0, 3(s3)
	or	a2, a2, a4
	srli	a7, t3, 8
	xor	a0, a0, a6
	xor	a3, a3, s0
	lb	s0, 4(s3)
	lb	a4, 5(s3)
	or	a0, a0, a3
	or	a0, a0, a2
	xor	a2, s0, t6
	xor	a3, a4, s5
	or	a2, a2, a3
	lb	a3, 6(s3)
	lb	a4, 7(s3)
	or	a0, a0, a2
	lb	a2, 8(s3)
	xor	a3, a3, t5
	xor	a4, a4, a5
	or	a3, a3, a4
	xor	a2, a2, t2
	lb	a4, 9(s3)
	or	a2, a2, a3
	lb	a3, 10(s3)
	or	a0, a0, a2
	xor	a2, a4, t1
	lb	a4, 11(s3)
	xor	a3, a3, s1
	or	a2, a2, a3
	lb	a3, 12(s3)
	xor	a1, a1, a4
	lb	a4, 13(s3)
	or	a1, a1, a2
	xor	a2, a3, t4
	or	a1, a1, a2
	xor	a2, a4, s2
	lb	a3, 14(s3)
	lb	a4, 15(s3)
	or	a1, a1, a2
	or	a0, a0, a1
	xor	a1, a3, a7
	xor	a2, a4, t3
	or	a1, a1, a2
	or	a0, a0, a1
	andi	a0, a0, 255
	addi	a0, a0, -1
	slli	a0, a0, 23
	srli	a0, a0, 31
	addi	a0, a0, -1
.LBB3_42:                               # %return
	lw	ra, 108(sp)                     # 4-byte Folded Reload
	lw	s0, 104(sp)                     # 4-byte Folded Reload
	lw	s1, 100(sp)                     # 4-byte Folded Reload
	lw	s2, 96(sp)                      # 4-byte Folded Reload
	lw	s3, 92(sp)                      # 4-byte Folded Reload
	lw	s4, 88(sp)                      # 4-byte Folded Reload
	lw	s5, 84(sp)                      # 4-byte Folded Reload
	lw	s6, 80(sp)                      # 4-byte Folded Reload
	lw	s7, 76(sp)                      # 4-byte Folded Reload
	lw	s8, 72(sp)                      # 4-byte Folded Reload
	lw	s9, 68(sp)                      # 4-byte Folded Reload
	lw	s10, 64(sp)                     # 4-byte Folded Reload
	lw	s11, 60(sp)                     # 4-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end3:
	.size	crypto_aead_decrypt, .Lfunc_end3-crypto_aead_decrypt
	.cfi_endproc
                                        # -- End function
	.type	alen,@object                    # @alen
	.section	.sbss,"aw",@nobits
	.globl	alen
	.p2align	3
alen:
	.quad	0                               # 0x0
	.size	alen, 8

	.type	clen,@object                    # @clen
	.globl	clen
	.p2align	3
clen:
	.quad	0                               # 0x0
	.size	clen, 8

	.ident	"clang version 17.0.0 (git@github.com:Eymay/llvm-project.git 988fc65a2c68e73f871ac55958d286a4e12dabdf)"
	.section	".note.GNU-stack","",@progbits
