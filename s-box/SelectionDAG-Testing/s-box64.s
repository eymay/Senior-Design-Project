	.text
	.attribute	4, 16
	.attribute	5, "rv32i2p0"
	.file	"s-box64.c"
	.globl	sbox                            # -- Begin function sbox
	.p2align	1
	.type	sbox,@function
sbox:                                   # @sbox
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
	sw	s10, 4(sp)                      # 4-byte Folded Spill
	sw	s11, 0(sp)                      # 4-byte Folded Spill
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
	.cfi_offset s10, -44
	.cfi_offset s11, -48
	lw	a6, 36(a0)
	lw	a7, 32(a0)
	lw	a3, 0(a0)
	lw	a4, 4(a0)
	xor	t0, a3, a7
	xor	t1, a4, a6
	lw	a5, 24(a0)
	lw	a1, 28(a0)
	lw	a2, 8(a0)
	lw	a3, 12(a0)
	lw	a4, 20(a0)
	lw	t2, 16(a0)
	xor	t3, a1, a6
	xor	t4, a5, a7
	xor	t5, a4, a3
	xor	t6, t2, a2
	not	s3, t1
	not	s1, t0
	not	s2, a2
	not	s0, a3
	not	s4, t6
	not	s5, t5
	not	s6, a5
	not	s7, a1
	not	s8, t4
	not	s9, t3
	and	s10, a2, s1
	and	s3, a3, s3
	and	s11, a4, s0
	and	s0, t2, s2
	and	t2, a1, s5
	and	s4, a5, s4
	and	a6, a6, s7
	and	s1, a7, s6
	and	a7, t1, s9
	and	s2, t0, s8
	xor	s0, s0, t0
	xor	a4, s11, t1
	xor	t0, s4, a2
	xor	a3, t2, a3
	xor	t1, t6, s1
	xor	a2, t5, a6
	xor	a6, s2, a5
	xor	a7, a7, a1
	xor	a5, s3, t3
	xor	a1, s10, t4
	sw	a1, 32(a0)
	sw	a5, 36(a0)
	xor	a3, a3, a4
	xor	s1, t0, s0
	sw	s1, 8(a0)
	sw	a3, 12(a0)
	xor	a4, a4, a5
	xor	a1, a1, s0
	sw	a1, 0(a0)
	sw	a4, 4(a0)
	xor	a1, a2, a7
	xor	a3, t1, a6
	sw	a3, 24(a0)
	sw	a1, 28(a0)
	not	a1, a2
	not	a2, t1
	sw	a2, 16(a0)
	sw	a1, 20(a0)
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
	lw	s10, 4(sp)                      # 4-byte Folded Reload
	lw	s11, 0(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	sbox, .Lfunc_end0-sbox
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 17.0.0 (git@github.com:Eymay/llvm-project.git 603d9e3632b3f31d0c6e0825b2e75f057347a015)"
	.section	".note.GNU-stack","",@progbits
