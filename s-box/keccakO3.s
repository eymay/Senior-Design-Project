	.text
	.attribute	4, 16
	.attribute	5, "rv32i2p0"
	.file	"keccakSbox.c"
	.globl	keccakSbox                      # -- Begin function keccakSbox
	.p2align	1
	.type	keccakSbox,@function
keccakSbox:                             # @keccakSbox
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	s0, 28(sp)                      # 4-byte Folded Spill
	sw	s1, 24(sp)                      # 4-byte Folded Spill
	sw	s2, 20(sp)                      # 4-byte Folded Spill
	sw	s3, 16(sp)                      # 4-byte Folded Spill
	sw	s4, 12(sp)                      # 4-byte Folded Spill
	sw	s5, 8(sp)                       # 4-byte Folded Spill
	sw	s6, 4(sp)                       # 4-byte Folded Spill
	sw	s7, 0(sp)                       # 4-byte Folded Spill
	.cfi_offset s0, -4
	.cfi_offset s1, -8
	.cfi_offset s2, -12
	.cfi_offset s3, -16
	.cfi_offset s4, -20
	.cfi_offset s5, -24
	.cfi_offset s6, -28
	.cfi_offset s7, -32
	lw	a6, 32(a0)
	lw	a7, 36(a0)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	xor	t0, a3, a7
	xor	t1, a4, a6
	lw	t2, 24(a0)
	lw	a3, 28(a0)
	lw	a4, 12(a0)
	lw	a1, 8(a0)
	lw	a2, 16(a0)
	lw	a5, 20(a0)
	xor	t3, a3, a7
	xor	t4, t2, a6
	xor	t5, a2, a1
	xor	t6, a5, a4
	andn	a5, a5, a4
	andn	a2, a2, a1
	xor	s5, a2, t1
	xor	s4, a5, t0
	andn	a2, a3, t6
	andn	s1, t2, t5
	xor	s2, s1, a1
	xor	s3, a2, a4
	andn	a2, a6, t2
	andn	s7, a7, a3
	xor	a7, t6, s7
	xor	a6, t5, a2
	andn	a5, t1, t4
	andn	s0, t0, t3
	xor	s6, s0, a3
	xor	t2, a5, t2
	andn	a5, a1, t1
	andn	a1, a4, t0
	xor	t1, a1, t3
	xor	t0, a5, t4
	xor	s3, s3, s4
	xor	s0, s2, s5
	xor	s1, s5, t0
	xor	a5, s4, t1
	xor	t2, t2, a6
	xor	t3, s6, a7
	xnor	s2, t5, a2
	xnor	t4, t6, s7
	srli	a3, a5, 19
	slli	a1, s1, 13
	or	t5, a1, a3
	srli	a1, s1, 19
	slli	a3, a5, 13
	or	a1, a1, a3
	srli	a3, a5, 28
	slli	a2, s1, 4
	or	a2, a2, a3
	srli	a3, s1, 28
	slli	a4, a5, 4
	or	a3, a3, a4
	xor	a1, a1, a3
	xor	a2, a2, t5
	xor	a2, a2, a5
	xor	a1, a1, s1
	sw	a1, 0(a0)
	sw	a2, 4(a0)
	srli	a1, s0, 29
	slli	a2, s3, 3
	or	a1, a1, a2
	srli	a2, s3, 29
	slli	a3, s0, 3
	or	a2, a2, a3
	srli	a3, s0, 7
	slli	a4, s3, 25
	or	a3, a3, a4
	srli	a4, s3, 7
	slli	a5, s0, 25
	or	a4, a4, a5
	xor	a2, a2, a4
	xor	a1, a1, a3
	xor	a1, a1, s3
	xor	a2, a2, s0
	sw	a2, 8(a0)
	sw	a1, 12(a0)
	srli	a1, t4, 1
	slli	a2, s2, 31
	or	a1, a1, a2
	srli	a2, s2, 1
	slli	a3, t4, 31
	or	a2, a2, a3
	srli	a3, t4, 6
	slli	a4, s2, 26
	or	a3, a3, a4
	srli	a4, s2, 6
	slli	t4, t4, 26
	or	a4, t4, a4
	xor	a2, a2, a4
	xor	a1, a1, a3
	xnor	a1, a1, a7
	xnor	a2, a2, a6
	sw	a2, 16(a0)
	sw	a1, 20(a0)
	srli	a1, t3, 10
	slli	a2, t2, 22
	or	a1, a1, a2
	srli	a2, t2, 10
	slli	a3, t3, 22
	or	a2, a2, a3
	srli	a3, t3, 17
	slli	a4, t2, 15
	or	a3, a3, a4
	srli	a4, t2, 17
	slli	a5, t3, 15
	or	a4, a4, a5
	xor	a2, a2, a4
	xor	a1, a1, a3
	xor	a1, a1, t3
	xor	a2, a2, t2
	sw	a2, 24(a0)
	sw	a1, 28(a0)
	srli	a1, t1, 7
	slli	a2, t0, 25
	or	a1, a1, a2
	srli	a2, t0, 7
	slli	a3, t1, 25
	or	a2, a2, a3
	srli	a3, t0, 9
	slli	a4, t1, 23
	or	a3, a3, a4
	srli	a4, t1, 9
	slli	a5, t0, 23
	or	a4, a4, a5
	xor	a2, a2, a4
	xor	a1, a1, a3
	xor	a1, a1, t1
	xor	a2, a2, t0
	sw	a2, 32(a0)
	sw	a1, 36(a0)
	lw	s0, 28(sp)                      # 4-byte Folded Reload
	lw	s1, 24(sp)                      # 4-byte Folded Reload
	lw	s2, 20(sp)                      # 4-byte Folded Reload
	lw	s3, 16(sp)                      # 4-byte Folded Reload
	lw	s4, 12(sp)                      # 4-byte Folded Reload
	lw	s5, 8(sp)                       # 4-byte Folded Reload
	lw	s6, 4(sp)                       # 4-byte Folded Reload
	lw	s7, 0(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	keccakSbox, .Lfunc_end0-keccakSbox
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 17.0.0 (git@github.com:Eymay/llvm-project.git 988fc65a2c68e73f871ac55958d286a4e12dabdf)"
	.section	".note.GNU-stack","",@progbits
