	.text
	.attribute	4, 16
	.attribute	5, "rv32i2p0_m2p0_a2p0_c2p0_zbb1p0"
	.file	"rori.c"
	.globl	rotimm
	.p2align	1
	.type	rotimm,@function
rotimm:
	rori	a0, a0, 2
	ret
.Lfunc_end0:
	.size	rotimm, .Lfunc_end0-rotimm

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
