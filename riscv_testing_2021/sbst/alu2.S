.section .text
.global _sbst_alu2
.type _sbst_alu2, @function

_sbst_alu2:

// preserve all non-volatile registers (use section .TEST_DATA)
//store it in save_regs area
la		x5, save_regs
sw		x1,	0*4(x5)
sw		x2,	1*4(x5)
sw		x3,	2*4(x5)
sw		x4,	3*4(x5)
sw		x8,	4*4(x5)
sw		x9,	5*4(x5)
sw		x18,	6*4(x5)
sw		x19,	7*4(x5)
sw		x20,	8*4(x5)
sw		x21,	9*4(x5)
sw		x22,	10*4(x5)
sw		x23,	11*4(x5)
sw		x24,	12*4(x5)
sw		x25,	13*4(x5)
sw		x26,	14*4(x5)
sw		x27,	15*4(x5)
// initialize registers for simulation...
	li x1, 0
	li x2, 0
	li x3, 0
	li x4, 0
	li x5, 0
	li x6, 0
	li x7, 0
	li x8, 0
	li x9, 0
	li x10, 0
	li x11, 0
	li x12, 0
	li x13, 0
	li x14, 0
	li x15, 0
	li x16, 0
	li x17, 0
	li x18, 0
	li x19, 0
	li x20, 0
	li x21, 0
	li x22, 0
	li x23, 0
	li x24, 0
	li x25, 0
	li x26, 0
	li x27, 0
	li x28, 0
	li x29, 0
	li x30, 0
	li x31, 0

add x31, x0, x0          //initialize signature


//////////// DIVISION ////////////

	li x1,0x00000001
	li x2,0xF0F0F0F0
	li x3,0x0F0F0F0F
	li x4,0x0000FFFF
	li x5,0xFFFF0000
	li x6,0xFFFFFFFF
	li x7,0x55555555
	li x8,0xAAAAAAAA


	//DIV

	div x9, x2, x1
	add x31, x31, x9         //update signature
	div x10, x2, x3
	add x31, x31, x10         //update signature
	div x11, x2, x4
	add x31, x31, x11         //update signature
	div x12, x2, x7
	add x31, x31, x12         //update signature
	div x13, x2, x8
	add x31, x31, x13         //update signature
	div x14, x3, x4
	add x31, x31, x14         //update signature
	div x15, x4, x1
	add x31, x31, x15         //update signature
	div x16, x5, x2
	add x31, x31, x16        //update signature
	div x17, x5, x3
	add x31, x31, x17        //update signature
	div x18, x5, x4
	add x31, x31, x18         //update signature
	div x19, x5, x7
	add x31, x31, x19         //update signature
	div x20, x5, x8
	add x31, x31, x20         //update signature

/*
	div x21, x6, x1
	add x31, x31, x21         //update signature
	div x22, x6, x2
	add x31, x31, x22         //update signature
	div x23, x6, x3
	add x31, x31, x23         //update signature
	div x24, x6, x4
	add x31, x31, x24         //update signature
	div x25, x6, x5
	add x31, x31, x25        //update signature
	div x26, x6, x7
	add x31, x31, x26         //update signature
	div x27, x6, x8
	add x31, x31, x27         //update signature
	div x28, x7, x3
	add x31, x31, x28         //update signature
	div x29, x7, x4
	add x31, x31, x29         //update signature
	div x30, x8, x7
	add x31, x31, x30         //update signature

	la x1, loandst
	sw x9, 28(x1)
	sw x10, 32(x1)
	sw x11, 36(x1)
	sw x12, 40(x1)
	sw x13, 44(x1)
	sw x14, 48(x1)
	sw x15, 52(x1)
	sw x16, 56(x1)
	sw x17, 60(x1)
	sw x18, 64(x1)
	sw x19, 68(x1)
	sw x20, 72(x1)
	sw x21, 76(x1)
	sw x22, 80(x1)
	sw x23, 84(x1)
	sw x24, 88(x1)
	sw x25, 92(x1)
	sw x26, 96(x1)
	sw x27, 100(x1)
	sw x28, 104(x1)
	sw x29, 108(x1)
	sw x30, 112(x1)


*/

	//DIVU

	li x1,0x00000001
	li x2,0xF0F0F0F0
	li x3,0x0F0F0F0F
	li x4,0x0000FFFF
	li x5,0xFFFF0000
	li x6,0xFFFFFFFF
	li x7,0x55555555
	li x8,0xAAAAAAAA

	divu x9, x2, x1
	add x31, x31, x9         //update signature
	divu x10, x2, x3
	add x31, x31, x10         //update signature
	divu x11, x2, x4
	add x31, x31, x11         //update signature
	divu x12, x2, x7
	add x31, x31, x12         //update signature
	divu x13, x2, x8
	add x31, x31, x13         //update signature
	divu x14, x3, x4
	add x31, x31, x14         //update signature
	divu x15, x4, x1
	add x31, x31, x15         //update signature
	divu x16, x5, x2
	add x31, x31, x16         //update signature
	divu x17, x5, x3
	add x31, x31, x17         //update signature
	divu x18, x5, x4
	add x31, x31, x18         //update signature
	divu x19, x5, x7
	add x31, x31, x19         //update signature
	divu x20, x5, x8
	add x31, x31, x20         //update signature

/*
	divu x21, x6, x1
	add x31, x31, x21         //update signature
	divu x22, x6, x2
	add x31, x31, x22         //update signature
	divu x23, x6, x3
	add x31, x31, x23         //update signature
	divu x24, x6, x4
	add x31, x31, x24         //update signature
	divu x25, x6, x5
	add x31, x31, x25         //update signature
	divu x26, x6, x7
	add x31, x31, x26         //update signature
	divu x27, x6, x8
	add x31, x31, x27         //update signature
	divu x28, x7, x3
	add x31, x31, x28         //update signature
	divu x29, x7, x4
	add x31, x31, x29         //update signature
	divu x30, x8, x7
	add x31, x31, x30         //update signature

	la x1, loandst
	sw x9, 28(x1)
	sw x10, 32(x1)
	sw x11, 36(x1)
	sw x12, 40(x1)
	sw x13, 44(x1)
	sw x14, 48(x1)
	sw x15, 52(x1)
	sw x16, 56(x1)
	sw x17, 60(x1)
	sw x18, 64(x1)
	sw x19, 68(x1)
	sw x20, 72(x1)
	sw x21, 76(x1)
	sw x22, 80(x1)
	sw x23, 84(x1)
	sw x24, 88(x1)
	sw x25, 92(x1)
	sw x26, 96(x1)
	sw x27, 100(x1)
	sw x28, 104(x1)
	sw x29, 108(x1)
	sw x30, 112(x1)

*/

	//REM

	li x1,0x00000001
	li x2,0xF0F0F0F0
	li x3,0x0F0F0F0F
	li x4,0x0000FFFF
	li x5,0xFFFF0000
	li x6,0xFFFFFFFF
	li x7,0x55555555
	li x8,0xAAAAAAAA

	rem x9, x2, x1
	add x31, x31, x9         //update signature
	rem x10, x2, x3
	add x31, x31, x10         //update signature
	rem x11, x2, x4
	add x31, x31, x11         //update signature
	rem x12, x2, x7
	add x31, x31, x12         //update signature
	rem x13, x2, x8
	add x31, x31, x13         //update signature
	rem x14, x3, x4
	add x31, x31, x14         //update signature
	rem x15, x4, x1
	add x31, x31, x15         //update signature
	rem x16, x5, x2
	add x31, x31, x16        //update signature
	rem x17, x5, x3
	add x31, x31, x17        //update signature
	rem x18, x5, x4
	add x31, x31, x18         //update signature
	rem x19, x5, x7
	add x31, x31, x19         //update signature
	rem x20, x5, x8
	add x31, x31, x20         //update signature

/*
	rem x21, x6, x1
	add x31, x31, x21         //update signature
	rem x22, x6, x2
	add x31, x31, x22         //update signature
	rem x23, x6, x3
	add x31, x31, x23         //update signature
	rem x24, x6, x4
	add x31, x31, x24         //update signature
	rem x25, x6, x5
	add x31, x31, x25        //update signature
	rem x26, x6, x7
	add x31, x31, x26         //update signature
	rem x27, x6, x8
	add x31, x31, x27         //update signature
	rem x28, x7, x3
	add x31, x31, x28         //update signature
	rem x29, x7, x4
	add x31, x31, x29         //update signature
	rem x30, x8, x7
	add x31, x31, x30         //update signature

	la x1, loandst
	sw x9, 28(x1)
	sw x10, 32(x1)
	sw x11, 36(x1)
	sw x12, 40(x1)
	sw x13, 44(x1)
	sw x14, 48(x1)
	sw x15, 52(x1)
	sw x16, 56(x1)
	sw x17, 60(x1)
	sw x18, 64(x1)
	sw x19, 68(x1)
	sw x20, 72(x1)
	sw x21, 76(x1)
	sw x22, 80(x1)
	sw x23, 84(x1)
	sw x24, 88(x1)
	sw x25, 92(x1)
	sw x26, 96(x1)
	sw x27, 100(x1)
	sw x28, 104(x1)
	sw x29, 108(x1)
	sw x30, 112(x1)

*/

	//remU

	li x1,0x00000001
	li x2,0xF0F0F0F0
	li x3,0x0F0F0F0F
	li x4,0x0000FFFF
	li x5,0xFFFF0000
	li x6,0xFFFFFFFF
	li x7,0x55555555
	li x8,0xAAAAAAAA

	remu x9, x2, x1
	add x31, x31, x9         //update signature
	remu x10, x2, x3
	add x31, x31, x10         //update signature
	remu x11, x2, x4
	add x31, x31, x11         //update signature
	remu x12, x2, x7
	add x31, x31, x12         //update signature
	remu x13, x2, x8
	add x31, x31, x13         //update signature
	remu x14, x3, x4
	add x31, x31, x14         //update signature
	remu x15, x4, x1
	add x31, x31, x15         //update signature
	remu x16, x5, x2
	add x31, x31, x16         //update signature
	remu x17, x5, x3
	add x31, x31, x17         //update signature
	remu x18, x5, x4
	add x31, x31, x18         //update signature
	remu x19, x5, x7
	add x31, x31, x19         //update signature
	remu x20, x5, x8
	add x31, x31, x20         //update signature

/*
	remu x21, x6, x1
	add x31, x31, x21         //update signature
	remu x22, x6, x2
	add x31, x31, x22         //update signature
	remu x23, x6, x3
	add x31, x31, x23         //update signature
	remu x24, x6, x4
	add x31, x31, x24         //update signature
	remu x25, x6, x5
	add x31, x31, x25         //update signature
	remu x26, x6, x7
	add x31, x31, x26         //update signature
	remu x27, x6, x8
	add x31, x31, x27         //update signature
	remu x28, x7, x3
	add x31, x31, x28         //update signature
	remu x29, x7, x4
	add x31, x31, x29         //update signature
	remu x30, x8, x7
	add x31, x31, x30         //update signature

	la x1, loandst
	sw x9, 28(x1)
	sw x10, 32(x1)
	sw x11, 36(x1)
	sw x12, 40(x1)
	sw x13, 44(x1)
	sw x14, 48(x1)
	sw x15, 52(x1)
	sw x16, 56(x1)
	sw x17, 60(x1)
	sw x18, 64(x1)
	sw x19, 68(x1)
	sw x20, 72(x1)
	sw x21, 76(x1)
	sw x22, 80(x1)
	sw x23, 84(x1)
	sw x24, 88(x1)
	sw x25, 92(x1)
	sw x26, 96(x1)
	sw x27, 100(x1)
	sw x28, 104(x1)
	sw x29, 108(x1)
	sw x30, 112(x1)

*/

//////////// JUMP /////////////

	li x1,0x00000001
	li x2,0xF0F0F0F0
	li x3,0x0F0F0F0F

	la x4, jump1
	la x5, jump2
	la x6, jump3
	la x7, jump4
	la x8, jump5

	j jump2

jump1:
	add x31, x31, x4         //update signature
	beq x2, x2, jump4

jump2:
	add x31, x31, x5         //update signature
	bne x2, x1, jump1

jump3:
	add x31, x31, x6         //update signature
	blt x3, x2, jump5

jump4:
	add x31, x31, x7         //update signature
	bge x2, x1, jump3

jump5:
	add x31, x31, x8         //update signature



/////////////////// LOAD AND STORE //////////////////


	li x2,0xF0F0F0F0
	li x3,0x0F0F0F0F
	li x4,0x0000FFFF
	li x5,0xFFFF0000
	li x6,0xFFFFFFFF
	li x7,0x55555555
	li x8,0xAAAAAAAA
	li x9,0x00000001
	li x10,0x33333333
	li x11,0x22222222
	li x12,0xABABABAB
	li x13,0xCACACACA
	li x14,0x00000000


	// store values
	la		x1, loandst
	sw		x2,	0*4(x1)
	sw		x3,	1*4(x1)
	sw		x4,	2*4(x1)
	sw		x5,	3*4(x1)
	sw		x6,	4*4(x1)
	sw		x7,	5*4(x1)
	sw		x8,	6*4(x1)
	sw		x9,	7*4(x1)
	sw		x10,	8*4(x1)
	sw		x11,	9*4(x1)
	sw		x12,	10*4(x1)
	sw		x13,	11*4(x1)
	sw		x14,	12*4(x1)

	//load values
	la		x1, loandst
	lw		x18,	0*4(x1)
		and 	x15, x18, x2
		add  x31, x31, x15         //update signature

	lw		x19,	1*4(x1)
		and 	x15, x19, x3
		add  x31, x31, x15         //update signature

	lw		x20,	2*4(x1)
		and 	x15, x20, x4
		add 	x31, x31, x15         //update signature
	lw		x21,	3*4(x1)
		and 	x15, x21, x5
		add 	x31, x31, x15         //update signature
	lw		x22,	4*4(x1)
		and 	x15, x22, x6
		add 	x31, x31, x15         //update signature
	lw		x23,	5*4(x1)
		and 	x15, x23, x7
		add 	x31, x31, x15         //update signature
	lw		x24,	6*4(x1)
		and 	x15, x24, x8
		add 	x31, x31, x15         //update signature
	lw		x25,	7*4(x1)
		and 	x15, x25, x9
		add 	x31, x31, x15         //update signature
	lw		x26,	8*4(x1)
		and 	x15, x26, x10
		add 	x31, x31, x15         //update signature
	lw		x27,	9*4(x1)
		and 	x15, x27, x11
		add 	x31, x31, x15         //update signature
	lw		x28,	10*4(x1)
		and 	x15, x28, x12
		add 	x31, x31, x15         //update signature
	lw		x29,	11*4(x1)
		and 	x15, x29, x13
		add 	x31, x31, x15         //update signature
	lw		x30,	12*4(x1)
		and 	x15, x30, x14
		add 	x31, x31, x15         //update signature



     //STORE SIGNATURE
     la x30, signature
     sw x31, 0(x30)

     add a0, x31, x0	//return value 

	// restore non-volatile registers
	la		x5, save_regs
	lw		x1,	0*4(x5)
	lw		x2,	1*4(x5)
	lw		x3,	2*4(x5)
	lw		x4,	3*4(x5)
	lw		x8,	4*4(x5)
	lw		x9,	5*4(x5)
	lw		x18,	6*4(x5)
	lw		x19,	7*4(x5)
	lw		x20,	8*4(x5)
	lw		x21,	9*4(x5)
	lw		x22,	10*4(x5)
	lw		x23,	11*4(x5)
	lw		x24,	12*4(x5)
	lw		x25,	13*4(x5)
	lw		x26,	14*4(x5)
	lw		x27,	15*4(x5)

     ret

// -------------------------------------
	.section ".TEST_DATA", "aw"
	.global alu2_test_result

signature:
	.space 4

loandst:
	.space 150

save_regs:
	.space 0x7C
