// func HasAESNI() bool
TEXT ·HasAESNI(SB),$0
	XORQ AX, AX
	INCL AX
	CPUID
	SHRQ $25, CX
	ANDQ $1, CX
	MOVB CX, ret+0(FP)
	RET