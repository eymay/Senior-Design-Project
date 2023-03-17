	.text
	.attribute	4, 16
	.attribute	5, "rv32i2p0"
	.file	"LXR.c"
	.globl	lxr                             # -- Begin function lxr
	.p2align	1
	.type	lxr,@function
lxr:                                    # @lxr
	.cfi_startproc
# %bb.0:                                # %entry
	sbox	a1, a0, 0
	sw	a1, 0(a0)
	ret
.Lfunc_end0:
	.size	lxr, .Lfunc_end0-lxr
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 17.0.0 (https://github.com/llvm/llvm-project.git 07158c54add927057690aa8c073d35d42eac7006)"
	.section	".note.GNU-stack","",@progbits
