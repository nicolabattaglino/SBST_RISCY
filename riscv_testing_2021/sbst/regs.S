     .section .text
	.global _sbst_regs
	.type _sbst_regs, @function

_sbst_regs:

	//add sp, sp, 16		// this creates space in the stack

	lui	a0, %hi(__TEST_DATA_START)
	addi	a0, a0, %lo(__TEST_DATA_START)

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

     //initialize signature
     add       x31, x0, x0

     //register tests

     la        x30, RF_PATTERNS
     lw        x1, 0(x30)
     add       x31, x31, x1
     lw        x1, 4(x30)
     add       x31, x31, x1

     la        x30, RF_PATTERNS
     lw        x2, 0(x30)
     add       x31, x31, x2
     lw        x2, 4(x30)
     add       x31, x31, x2

     la        x30, RF_PATTERNS
     lw        x3, 0(x30)
     add       x31, x31, x3
     lw        x3, 4(x30)
     add       x31, x31, x3

     la        x30, RF_PATTERNS
     lw        x4, 0(x30)
     add       x31, x31, x4
     lw        x4, 4(x30)
     add       x31, x31, x4

     la        x30, RF_PATTERNS
     lw        x5, 0(x30)
     add       x31, x31, x5
     lw        x5, 4(x30)
     add       x31, x31, x5

     la        x30, RF_PATTERNS
     lw        x6, 0(x30)
     add       x31, x31, x6
     lw        x6, 4(x30)
     add       x31, x31, x6

     la        x30, RF_PATTERNS
     lw        x7, 0(x30)
     add       x31, x31, x7
     lw        x7, 4(x30)
     add       x31, x31, x7

     la        x30, RF_PATTERNS
     lw        x8, 0(x30)
     add       x31, x31, x8
     lw        x8, 4(x30)
     add       x31, x31, x8

     la        x30, RF_PATTERNS
     lw        x9, 0(x30)
     add       x31, x31, x9
     lw        x9, 4(x30)
     add       x31, x31, x9

     la        x30, RF_PATTERNS
     lw        x10, 0(x30)
     add       x31, x31, x10
     lw        x10, 4(x30)
     add       x31, x31, x10

     la        x30, RF_PATTERNS
     lw        x11, 0(x30)
     add       x31, x31, x11
     lw        x11, 4(x30)
     add       x31, x31, x11

     la        x30, RF_PATTERNS
     lw        x12, 0(x30)
     add       x31, x31, x12
     lw        x12, 4(x30)
     add       x31, x31, x12

     la        x30, RF_PATTERNS
     lw        x13, 0(x30)
     add       x31, x31, x13
     lw        x13, 4(x30)
     add       x31, x31, x13

     la        x30, RF_PATTERNS
     lw        x14, 0(x30)
     add       x31, x31, x14
     lw        x14, 4(x30)
     add       x31, x31, x14

     la        x30, RF_PATTERNS
     lw        x15, 0(x30)
     add       x31, x31, x15
     lw        x15, 4(x30)
     add       x31, x31, x15

     la        x30, RF_PATTERNS
     lw        x16, 0(x30)
     add       x31, x31, x16
     lw        x16, 4(x30)
     add       x31, x31, x16

     la        x30, RF_PATTERNS
     lw        x17, 0(x30)
     add       x31, x31, x17
     lw        x17, 4(x30)
     add       x31, x31, x17

     la        x30, RF_PATTERNS
     lw        x18, 0(x30)
     add       x31, x31, x18
     lw        x18, 4(x30)
     add       x31, x31, x18

     la        x30, RF_PATTERNS
     lw        x19, 0(x30)
     add       x31, x31, x19
     lw        x19, 4(x30)
     add       x31, x31, x19

     la        x30, RF_PATTERNS
     lw        x20, 0(x30)
     add       x31, x31, x20
     lw        x20, 4(x30)
     add       x31, x31, x20

     la        x30, RF_PATTERNS
     lw        x21, 0(x30)
     add       x31, x31, x21
     lw        x21, 4(x30)
     add       x31, x31, x21

     la        x30, RF_PATTERNS
     lw        x22, 0(x30)
     add       x31, x31, x22
     lw        x22, 4(x30)
     add       x31, x31, x22

     la        x30, RF_PATTERNS
     lw        x23, 0(x30)
     add       x31, x31, x23
     lw        x23, 4(x30)
     add       x31, x31, x23

     la        x30, RF_PATTERNS
     lw        x24, 0(x30)
     add       x31, x31, x24
     lw        x24, 4(x30)
     add       x31, x31, x24

     la        x30, RF_PATTERNS
     lw        x25, 0(x30)
     add       x31, x31, x25
     lw        x25, 4(x30)
     add       x31, x31, x25

     la        x30, RF_PATTERNS
     lw        x26, 0(x30)
     add       x31, x31, x26
     lw        x26, 4(x30)
     add       x31, x31, x26

     la        x30, RF_PATTERNS
     lw        x27, 0(x30)
     add       x31, x31, x27
     lw        x27, 4(x30)
     add       x31, x31, x27

     la        x30, RF_PATTERNS
     lw        x28, 0(x30)
     add       x31, x31, x28
     lw        x28, 4(x30)
     add       x31, x31, x28

     la        x30, RF_PATTERNS
     lw        x29, 0(x30)
     add       x31, x31, x29
     lw        x29, 4(x30)
     add       x31, x31, x29

     la        x2, RF_PATTERNS
     lw        x30, 0(x2)
     add       x31, x31, x30
     lw        x30, 4(x2)
     add       x31, x31, x30

     // move signature
     add       x1, x31, x0

     la        x30, RF_PATTERNS
     lw        x31, 0(x30)
     add       x1, x1, x31
     lw        x31, 4(x30)
     add       x1, x1, x31


	//store value in signature
	la x31, signature
	sw x1,0*4(x31)


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
	.global test_result

save_regs:
	.space 0x7C
signature:
	.space 4

// -------------------------------------
	.section ".TEST_RODATA", "a"

//TEST ALL 0 AND ALL 1 FOR EACH REGISTER

RF_PATTERNS:
     .long 0x00000000
     .long 0xFFFFFFFF
