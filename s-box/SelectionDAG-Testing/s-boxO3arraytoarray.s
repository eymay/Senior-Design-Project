	.text
	.attribute	4, 16
	.attribute	5, "rv32i2p0"
	.file	"s-box.c"
	.globl	sbox                            # -- Begin function sbox
	.p2align	1
	.type	sbox,@function
sbox:                                   # @sbox
	.cfi_startproc
# %bb.0:
	lw	a1, 16(a0)
	lw	a2, 0(a0)
	lw	a3, 12(a0)
	lw	a4, 4(a0)
	lw	a5, 8(a0)
	xor	a2, a2, a1
	xor	a6, a3, a1
	xor	a7, a5, a4
	not	t0, a2
	not	t1, a4
	not	t2, a7
	not	t3, a3
	not	t4, a6
	and	t0, a4, t0
	and	a5, a5, t1
	and	t1, a3, t2
	and	a1, a1, t3
	and	t2, a2, t4
	xor	a2, a2, a5
	xor	a4, t1, a4
	xor	a1, a7, a1
	xor	a3, t2, a3
	xor	a5, t0, a6
	sw	a5, 16(a0)
	xor	a4, a4, a2
	sw	a4, 4(a0)
	xor	a2, a2, a5
	sw	a2, 0(a0)
	xor	a3, a3, a1
	sw	a3, 12(a0)
	not	a1, a1
	sw	a1, 8(a0)
	ret
.Lfunc_end0:
	.size	sbox, .Lfunc_end0-sbox
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 17.0.0 (https://github.com/llvm/llvm-project.git e3dd9f7e66fec22986605da2dcd8120a7864455d)"
	.section	".note.GNU-stack","",@progbits
