	.text
	.attribute	4, 16
	.attribute	5, "rv32i2p0"
	.file	"s-box-reg.c"
	.globl	sbox                            # -- Begin function sbox
	.p2align	1
	.type	sbox,@function
sbox:                                   # @sbox
# %bb.0:                                # %entry
	lw	a2, 16(a1)
	lw	a6, 0(a1)
	lw	a4, 12(a1)
	lw	a5, 4(a1)
	lw	a7, 8(a1)
	xor	a3, a6, a2
	xor	a6, a4, a2
	xor	t0, a7, a5
	not	t1, a3
	not	t2, a5
	not	t3, t0
	not	t4, a4
	not	t5, a6
	and	t1, a5, t1
	and	a7, a7, t2
	and	t2, a4, t3
	and	a2, a2, t4
	and	t3, a3, t5
	xor	a3, a7, a3
	xor	a5, t2, a5
	xor	a2, t0, a2
	xor	a7, t3, a4
	xor	a4, t1, a6
	sw	a4, 16(a1)
	xor	a6, a5, a3
	sw	a6, 4(a1)
	xor	a3, a3, a4
	sw	a3, 0(a1)
	xor	a5, a2, a7
	sw	a5, 12(a1)
	not	a2, a2
	sw	a2, 8(a1)
	sw	a4, 16(a0)
	sw	a5, 12(a0)
	sw	a2, 8(a0)
	sw	a6, 4(a0)
	sw	a3, 0(a0)
	ret
.Lfunc_end0:
	.size	sbox, .Lfunc_end0-sbox
                                        # -- End function
	.ident	"clang version 16.0.0 (git@github.com:Eymay/CustomInstrLLVM.git d10adf3e6d56af987e993c658a78caeb675f2292)"
	.section	".note.GNU-stack","",@progbits
