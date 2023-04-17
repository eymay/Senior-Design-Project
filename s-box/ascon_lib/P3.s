	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0"
	.file	"P3.ll"
	.p2align	2                               # -- Begin function P6
	.type	P6,@function
P6:                                     # @P6
	.cfi_startproc
# %bb.0:                                # %entry
	ld	a1, 16(a0)
	ld	a2, 32(a0)
	ld	a3, 0(a0)
	ld	a4, 24(a0)
	ld	a5, 8(a0)
	xori	a1, a1, 150
	xor	a3, a3, a2
	xor	a6, a4, a2
	xor	a7, a5, a1
	not	t0, a5
	and	a1, a1, t0
	xor	a1, a1, a3
	not	t0, a7
	and	t0, a4, t0
	not	t1, a4
	and	a2, a2, t1
	xor	a2, a7, a2
	not	a7, a6
	and	a7, a3, a7
	xor	a4, a7, a4
	not	a3, a3
	and	a3, a5, a3
	xor	a3, a3, a6
	xor	a5, a5, a1
	xor	a5, t0, a5
	xor	a1, a1, a3
	xor	a4, a4, a2
	not	a2, a2
	srli	a6, a1, 19
	slli	a7, a1, 45
	or	a6, a7, a6
	srli	a7, a1, 28
	slli	t0, a1, 36
	or	a7, t0, a7
	xor	a6, a6, a7
	xor	a1, a6, a1
	srli	a6, a5, 61
	slli	a7, a5, 3
	or	a6, a7, a6
	srli	a7, a5, 39
	slli	t0, a5, 25
	or	a7, t0, a7
	xor	a6, a6, a7
	xor	a5, a6, a5
	srli	a6, a2, 1
	slli	a7, a2, 63
	or	a6, a7, a6
	srli	a7, a2, 6
	slli	t0, a2, 58
	or	a7, t0, a7
	xor	a6, a6, a7
	xor	a2, a6, a2
	srli	a6, a4, 10
	slli	a7, a4, 54
	or	a6, a7, a6
	srli	a7, a4, 17
	slli	t0, a4, 47
	or	a7, t0, a7
	xor	a6, a6, a7
	xor	a4, a6, a4
	srli	a6, a3, 7
	slli	a7, a3, 57
	or	a6, a7, a6
	srli	a7, a3, 41
	slli	t0, a3, 23
	or	a7, t0, a7
	xor	a6, a6, a7
	xor	a3, a6, a3
	xori	a2, a2, 135
	xor	a1, a1, a3
	xor	a6, a4, a3
	xor	a7, a5, a2
	not	t0, a5
	and	a2, a2, t0
	xor	a2, a2, a1
	not	t0, a7
	and	t0, a4, t0
	xor	t0, t0, a5
	not	t1, a4
	and	a3, a3, t1
	xor	a3, a7, a3
	not	a7, a6
	and	a7, a1, a7
	xor	a4, a7, a4
	not	a1, a1
	and	a1, a5, a1
	xor	a1, a1, a6
	xor	a5, t0, a2
	xor	a2, a2, a1
	xor	a4, a4, a3
	not	a3, a3
	srli	a6, a2, 19
	slli	a7, a2, 45
	or	a6, a7, a6
	srli	a7, a2, 28
	slli	t0, a2, 36
	or	a7, t0, a7
	xor	a6, a6, a7
	xor	a2, a6, a2
	srli	a6, a5, 61
	slli	a7, a5, 3
	or	a6, a7, a6
	srli	a7, a5, 39
	slli	t0, a5, 25
	or	a7, t0, a7
	xor	a6, a6, a7
	xor	a5, a6, a5
	srli	a6, a3, 1
	slli	a7, a3, 63
	or	a6, a7, a6
	srli	a7, a3, 6
	slli	t0, a3, 58
	or	a7, t0, a7
	xor	a6, a6, a7
	xor	a3, a6, a3
	srli	a6, a4, 10
	slli	a7, a4, 54
	or	a6, a7, a6
	srli	a7, a4, 17
	slli	t0, a4, 47
	or	a7, t0, a7
	xor	a6, a6, a7
	xor	a4, a6, a4
	srli	a6, a1, 7
	slli	a7, a1, 57
	or	a6, a7, a6
	srli	a7, a1, 41
	slli	t0, a1, 23
	or	a7, t0, a7
	xor	a6, a6, a7
	xor	a1, a6, a1
	xori	a3, a3, 120
	xor	a2, a2, a1
	xor	a6, a4, a1
	xor	a7, a5, a3
	not	t0, a5
	and	a3, a3, t0
	xor	a3, a3, a2
	not	t0, a7
	and	t0, a4, t0
	xor	t0, t0, a5
	not	t1, a4
	and	a1, a1, t1
	xor	a1, a7, a1
	not	a7, a6
	and	a7, a2, a7
	xor	a4, a7, a4
	not	a2, a2
	and	a2, a5, a2
	xor	a2, a2, a6
	xor	a5, t0, a3
	xor	a3, a3, a2
	xor	a4, a4, a1
	not	a1, a1
	srli	a6, a3, 19
	slli	a7, a3, 45
	or	a6, a7, a6
	srli	a7, a3, 28
	slli	t0, a3, 36
	or	a7, t0, a7
	xor	a6, a6, a7
	xor	a3, a6, a3
	srli	a6, a5, 61
	slli	a7, a5, 3
	or	a6, a7, a6
	srli	a7, a5, 39
	slli	t0, a5, 25
	or	a7, t0, a7
	xor	a6, a6, a7
	xor	a5, a6, a5
	srli	a6, a1, 1
	slli	a7, a1, 63
	or	a6, a7, a6
	srli	a7, a1, 6
	slli	t0, a1, 58
	or	a7, t0, a7
	xor	a6, a6, a7
	xor	a1, a6, a1
	srli	a6, a4, 10
	slli	a7, a4, 54
	or	a6, a7, a6
	srli	a7, a4, 17
	slli	t0, a4, 47
	or	a7, t0, a7
	xor	a6, a6, a7
	xor	a4, a6, a4
	srli	a6, a2, 7
	slli	a7, a2, 57
	or	a6, a7, a6
	srli	a7, a2, 41
	slli	t0, a2, 23
	or	a7, t0, a7
	xor	a6, a6, a7
	xor	a2, a6, a2
	xori	a1, a1, 105
	xor	a3, a3, a2
	xor	a6, a4, a2
	xor	a7, a5, a1
	not	t0, a5
	and	a1, a1, t0
	xor	a1, a1, a3
	not	t0, a7
	and	t0, a4, t0
	xor	t0, t0, a5
	not	t1, a4
	and	a2, a2, t1
	xor	a2, a7, a2
	not	a7, a6
	and	a7, a3, a7
	xor	a4, a7, a4
	not	a3, a3
	and	a3, a5, a3
	xor	a3, a3, a6
	xor	a5, t0, a1
	xor	a1, a1, a3
	xor	a4, a4, a2
	not	a2, a2
	srli	a6, a1, 19
	slli	a7, a1, 45
	or	a6, a7, a6
	srli	a7, a1, 28
	slli	t0, a1, 36
	or	a7, t0, a7
	xor	a6, a6, a7
	xor	a1, a6, a1
	srli	a6, a5, 61
	slli	a7, a5, 3
	or	a6, a7, a6
	srli	a7, a5, 39
	slli	t0, a5, 25
	or	a7, t0, a7
	xor	a6, a6, a7
	xor	a5, a6, a5
	srli	a6, a2, 1
	slli	a7, a2, 63
	or	a6, a7, a6
	srli	a7, a2, 6
	slli	t0, a2, 58
	or	a7, t0, a7
	xor	a6, a6, a7
	xor	a2, a6, a2
	srli	a6, a4, 10
	slli	a7, a4, 54
	or	a6, a7, a6
	srli	a7, a4, 17
	slli	t0, a4, 47
	or	a7, t0, a7
	xor	a6, a6, a7
	xor	a4, a6, a4
	srli	a6, a3, 7
	slli	a7, a3, 57
	or	a6, a7, a6
	srli	a7, a3, 41
	slli	t0, a3, 23
	or	a7, t0, a7
	xor	a6, a6, a7
	xor	a3, a6, a3
	xori	a2, a2, 90
	xor	a1, a1, a3
	xor	a6, a4, a3
	xor	a7, a5, a2
	not	t0, a5
	and	a2, a2, t0
	xor	a2, a2, a1
	not	t0, a7
	and	t0, a4, t0
	xor	t0, t0, a5
	not	t1, a4
	and	a3, a3, t1
	xor	a3, a7, a3
	not	a7, a6
	and	a7, a1, a7
	xor	a4, a7, a4
	not	a1, a1
	and	a1, a5, a1
	xor	a1, a1, a6
	xor	a5, t0, a2
	xor	a2, a2, a1
	xor	a4, a4, a3
	not	a3, a3
	srli	a6, a2, 19
	slli	a7, a2, 45
	or	a6, a7, a6
	srli	a7, a2, 28
	slli	t0, a2, 36
	or	a7, t0, a7
	xor	a6, a6, a7
	xor	a2, a6, a2
	srli	a6, a5, 61
	slli	a7, a5, 3
	or	a6, a7, a6
	srli	a7, a5, 39
	slli	t0, a5, 25
	or	a7, t0, a7
	xor	a6, a6, a7
	xor	a5, a6, a5
	srli	a6, a3, 1
	slli	a7, a3, 63
	or	a6, a7, a6
	srli	a7, a3, 6
	slli	t0, a3, 58
	or	a7, t0, a7
	xor	a6, a6, a7
	xor	a3, a6, a3
	srli	a6, a4, 10
	slli	a7, a4, 54
	or	a6, a7, a6
	srli	a7, a4, 17
	slli	t0, a4, 47
	or	a7, t0, a7
	xor	a6, a6, a7
	xor	a4, a6, a4
	srli	a6, a1, 7
	slli	a7, a1, 57
	or	a6, a7, a6
	srli	a7, a1, 41
	slli	t0, a1, 23
	or	a7, t0, a7
	xor	a6, a6, a7
	xor	a1, a6, a1
	xori	a3, a3, 75
	xor	a2, a2, a1
	xor	a6, a4, a1
	xor	a7, a5, a3
	not	t0, a5
	and	a3, a3, t0
	xor	a3, a3, a2
	not	t0, a7
	and	t0, a4, t0
	xor	t0, t0, a5
	not	t1, a4
	and	a1, a1, t1
	xor	a1, a7, a1
	not	a7, a6
	and	a7, a2, a7
	xor	a4, a7, a4
	not	a2, a2
	and	a2, a5, a2
	xor	a2, a2, a6
	xor	a5, t0, a3
	xor	a3, a3, a2
	xor	a4, a4, a1
	not	a1, a1
	srli	a6, a3, 19
	slli	a7, a3, 45
	or	a6, a7, a6
	srli	a7, a3, 28
	slli	t0, a3, 36
	or	a7, t0, a7
	xor	a6, a6, a7
	xor	a3, a6, a3
	sd	a3, 0(a0)
	srli	a3, a5, 61
	slli	a6, a5, 3
	or	a3, a6, a3
	srli	a6, a5, 39
	slli	a7, a5, 25
	or	a6, a7, a6
	xor	a3, a3, a6
	xor	a3, a3, a5
	sd	a3, 8(a0)
	srli	a3, a1, 1
	slli	a5, a1, 63
	or	a3, a5, a3
	srli	a5, a1, 6
	slli	a6, a1, 58
	or	a5, a6, a5
	xor	a3, a3, a5
	xor	a1, a3, a1
	sd	a1, 16(a0)
	srli	a1, a4, 10
	slli	a3, a4, 54
	or	a1, a3, a1
	srli	a3, a4, 17
	slli	a5, a4, 47
	or	a3, a5, a3
	xor	a1, a1, a3
	xor	a1, a1, a4
	sd	a1, 24(a0)
	srli	a1, a2, 7
	slli	a3, a2, 57
	or	a1, a3, a1
	srli	a3, a2, 41
	slli	a4, a2, 23
	or	a3, a4, a3
	xor	a1, a1, a3
	xor	a1, a1, a2
	sd	a1, 32(a0)
	ret
.Lfunc_end0:
	.size	P6, .Lfunc_end0-P6
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
