.section .text
.global _sbst_regsebu
.type _sbst_regsebu, @function

_sbst_regsebu:

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
//initialize signature
add       x31, x0, x0


/////////////////////////////////
/////////// extensions //////////
/////////////////////////////////
///                           ///
///                           ///
/////////////////////////////////
//////////// p.lbu ///////////////
/////////////////////////////////

//addi                x1,     x0,     1
//addi                x2,     x0,     0

// test imm-reg with post-increment
la        x30, RF_P2
p.lbu      x1, 1(x30!)
add       x31, x31, x1
add       x31, x31, x30

la        x30, RF_P3
p.lbu      x2, 1(x30!)
add       x31, x31, x2
add       x31, x31, x30

la        x30, RF_P4
p.lbu      x3, 1(x30!)
add       x31, x31, x3
add       x31, x31, x30

la        x30, RF_P5
p.lbu      x4, 1(x30!)
add       x31, x31, x4
add       x31, x31, x30

la        x30, RF_P6
p.lbu      x5, 1(x30!)
add       x31, x31, x5
add       x31, x31, x30

la        x30, RF_P1
p.lbu      x6, 1(x30!)
add       x31, x31, x6
add       x31, x31, x30

la        x30, RF_P2
p.lbu      x7, 1(x30!)
add       x31, x31, x7
add       x31, x31, x30

la        x30, RF_P2
p.lbu      x8, 1(x30!)
add       x31, x13, x8
add       x31, x31, x30

la        x30, RF_P3
p.lbu      x9, 1(x30!)
add       x31, x31, x9
add       x31, x31, x30

la        x30, RF_P4
p.lbu      x10, 1(x30!)
add       x31, x31, x10
add       x31, x31, x30

la        x30, RF_P5
p.lbu      x11, 1(x30!)
add       x31, x31, x11
add       x31, x31, x30

la        x30, RF_P6
p.lbu      x12, 1(x30!)
add       x31, x31, x12
add       x31, x31, x30

la        x30, RF_P1
p.lbu      x13, 1(x30!)
add       x31, x31, x13
add       x31, x31, x30

la        x30, RF_P2
p.lbu      x14, 1(x30!)
add       x31, x31, x14
add       x31, x31, x30

la        x30, RF_P3
p.lbu      x15, 1(x30!)
add       x31, x31, x15
add       x31, x31, x30

la        x30, RF_P4
p.lbu      x16, 1(x30!)
add       x31, x31, x16
add       x31, x31, x30

la        x30, RF_P5
p.lbu      x17, 1(x30!)
add       x31, x31, x17
add       x31, x31, x30

la        x30, RF_P6
p.lbu      x18, 1(x30!)
add       x31, x31, x18
add       x31, x31, x30

la        x30, RF_P1
p.lbu      x20, 1(x30!)
add       x31, x31, x20
add       x31, x31, x30

la        x30, RF_P2
p.lbu      x21, 1(x30!)
add       x31, x31, x21
add       x31, x31, x30

la        x30, RF_P3
p.lbu      x22, 1(x30!)
add       x31, x31, x22
add       x31, x31, x30

la        x30, RF_P4
p.lbu      x23, 1(x30!)
add       x31, x31, x23
add       x31, x31, x30

la        x30, RF_P5
p.lbu      x24, 1(x30!)
add       x31, x31, x24
add       x31, x31, x30

la        x30, RF_P6
p.lbu      x25, 1(x30!)
add       x31, x31, x25
add       x31, x31, x30

la        x30, RF_P1
p.lbu      x26, 1(x30!)
add       x31, x31, x26
add       x31, x31, x30

la        x30, RF_P2
p.lbu      x27, 1(x30!)
add       x31, x31, x27
add       x31, x31, x30

la        x30, RF_P3
p.lbu      x28, 1(x30!)
add       x31, x31, x28
add       x31, x31, x30

la        x30, RF_P4
p.lbu      x29, 1(x30!)
add       x31, x31, x29
add       x31, x31, x30

la        x2, RF_P5
p.lbu      x30, 1(x2!)
add       x31, x31, x30
add       x31, x31, x2

//move signature
add       x1, x31, x0

la        x30, RF_P6
p.lbu      x31, 1(x30!)
add       x1, x1, x31
add       x1, x1, x30

// restore signature
add       x31, x1, x0


// test reg-reg with post-increment
addi                x1,     x0,     1
addi                x2,     x0,     1

la        x30, RF_P3
p.lbu      x1, x2(x30!)
add       x31, x31, x1
add       x31, x31, x30

addi                x1,     x0,     1

la        x30, RF_P4
p.lbu      x2, x1(x30!)
add       x31, x31, x2
add       x31, x31, x30

la        x30, RF_P5
p.lbu      x3, x1(x30!)
add       x31, x31, x3
add       x31, x31, x30

la        x30, RF_P6
p.lbu      x4, x1(x30!)
add       x31, x31, x4
add       x31, x31, x30

la        x30, RF_P1
p.lbu      x5, x1(x30!)
add       x31, x31, x5
add       x31, x31, x30

la        x30, RF_P2
p.lbu      x6, x1(x30!)
add       x31, x31, x6
add       x31, x31, x30

la        x30, RF_P3
p.lbu      x7, x1(x30!)
add       x31, x31, x7
add       x31, x31, x30

la        x30, RF_P4
p.lbu      x8, x1(x30!)
add       x31, x13, x8
add       x31, x31, x30

la        x30, RF_P5
p.lbu      x9, x1(x30!)
add       x31, x31, x9
add       x31, x31, x30

la        x30, RF_P6
p.lbu      x10, x1(x30!)
add       x31, x31, x10
add       x31, x31, x30

la        x30, RF_P1
p.lbu      x11, x1(x30!)
add       x31, x31, x11
add       x31, x31, x30

la        x30, RF_P2
p.lbu      x12, x1(x30!)
add       x31, x31, x12
add       x31, x31, x30

la        x30, RF_P3
p.lbu      x13, x1(x30!)
add       x31, x31, x13
add       x31, x31, x30

la        x30, RF_P4
p.lbu      x14, x1(x30!)
add       x31, x31, x14
add       x31, x31, x30

la        x30, RF_P5
p.lbu      x15, x1(x30!)
add       x31, x31, x15
add       x31, x31, x30

la        x30, RF_P6
p.lbu      x16, x1(x30!)
add       x31, x31, x16
add       x31, x31, x30

la        x30, RF_P1
p.lbu      x17, x1(x30!)
add       x31, x31, x17
add       x31, x31, x30

la        x30, RF_P2
p.lbu      x18, x1(x30!)
add       x31, x31, x18
add       x31, x31, x30

la        x30, RF_P3
p.lbu      x20, x1(x30!)
add       x31, x31, x20
add       x31, x31, x30

la        x30, RF_P4
p.lbu      x21, x1(x30!)
add       x31, x31, x21
add       x31, x31, x30

la        x30, RF_P5
p.lbu      x22, x1(x30!)
add       x31, x31, x22
add       x31, x31, x30

la        x30, RF_P6
p.lbu      x23, x1(x30!)
add       x31, x31, x23
add       x31, x31, x30

la        x30, RF_P1
p.lbu      x24, x1(x30!)
add       x31, x31, x24
add       x31, x31, x30

la        x30, RF_P2
p.lbu      x25, x1(x30!)
add       x31, x31, x25
add       x31, x31, x30

la        x30, RF_P3
p.lbu      x26, x1(x30!)
add       x31, x31, x26
add       x31, x31, x30

la        x30, RF_P4
p.lbu      x27, x1(x30!)
add       x31, x31, x27
add       x31, x31, x30

la        x30, RF_P5
p.lbu      x28, x1(x30!)
add       x31, x31, x28
add       x31, x31, x30

la        x30, RF_P6
p.lbu      x29, x1(x30!)
add       x31, x31, x29
add       x31, x31, x30

la        x2, RF_P1
p.lbu      x30, x1(x2!)
add       x31, x31, x30
add       x31, x31, x2

addi                x2,     x0,     1

//move signature
add       x1, x31, x0

la        x30, RF_P2
p.lbu      x31, x2(x30!)
add       x1, x1, x31
add       x1, x1, x30

// restore signature
add       x31, x1, x0

// test reg-reg without post-increment
addi                x1,     x0,     0
addi                x2,     x0,     0

la        x30, RF_P4
p.lbu      x1, x2(x30)
add       x31, x31, x1
add       x31, x31, x30

addi                x1,     x0,     0

la        x30, RF_P5
p.lbu      x2, x1(x30)
add       x31, x31, x2
add       x31, x31, x30

la        x30, RF_P6
p.lbu      x3, x1(x30)
add       x31, x31, x3
add       x31, x31, x30

la        x30, RF_P1
p.lbu      x4, x1(x30)
add       x31, x31, x4
add       x31, x31, x30

la        x30, RF_P2
p.lbu      x5, x1(x30)
add       x31, x31, x5
add       x31, x31, x30

la        x30, RF_P3
p.lbu      x6, x1(x30)
add       x31, x31, x6
add       x31, x31, x30

la        x30, RF_P4
p.lbu      x7, x1(x30)
add       x31, x31, x7
add       x31, x31, x30

la        x30, RF_P5
p.lbu      x8, x1(x30)
add       x31, x13, x8
add       x31, x31, x30

la        x30, RF_P6
p.lbu      x9, x1(x30)
add       x31, x31, x9
add       x31, x31, x30

la        x30, RF_P1
p.lbu      x10, x1(x30)
add       x31, x31, x10
add       x31, x31, x30

la        x30, RF_P2
p.lbu      x11, x1(x30)
add       x31, x31, x11
add       x31, x31, x30

la        x30, RF_P3
p.lbu      x12, x1(x30)
add       x31, x31, x12
add       x31, x31, x30

la        x30, RF_P4
p.lbu      x13, x1(x30)
add       x31, x31, x13
add       x31, x31, x30

la        x30, RF_P5
p.lbu      x14, x1(x30)
add       x31, x31, x14
add       x31, x31, x30

la        x30, RF_P6
p.lbu      x15, x1(x30)
add       x31, x31, x15
add       x31, x31, x30

la        x30, RF_P1
p.lbu      x16, x1(x30)
add       x31, x31, x16
add       x31, x31, x30

la        x30, RF_P2
p.lbu      x17, x1(x30)
add       x31, x31, x17
add       x31, x31, x30

la        x30, RF_P3
p.lbu      x18, x1(x30)
add       x31, x31, x18
add       x31, x31, x30

la        x30, RF_P4
p.lbu      x20, x1(x30)
add       x31, x31, x20
add       x31, x31, x30

la        x30, RF_P5
p.lbu      x21, x1(x30)
add       x31, x31, x21
add       x31, x31, x30

la        x30, RF_P6
p.lbu      x22, x1(x30)
add       x31, x31, x22
add       x31, x31, x30

la        x30, RF_P1
p.lbu      x23, x1(x30)
add       x31, x31, x23
add       x31, x31, x30

la        x30, RF_P2
p.lbu      x24, x1(x30)
add       x31, x31, x24
add       x31, x31, x30

la        x30, RF_P3
p.lbu      x25, x1(x30)
add       x31, x31, x25
add       x31, x31, x30

la        x30, RF_P4
p.lbu      x26, x1(x30)
add       x31, x31, x26
add       x31, x31, x30

la        x30, RF_P5
p.lbu      x27, x1(x30)
add       x31, x31, x27
add       x31, x31, x30

la        x30, RF_P6
p.lbu      x28, x1(x30)
add       x31, x31, x28
add       x31, x31, x30

la        x30, RF_P1
p.lbu      x29, x1(x30)
add       x31, x31, x29
add       x31, x31, x30

la        x2, RF_P2
p.lbu      x30, x1(x2)
add       x31, x31, x30
add       x31, x31, x2

addi                x2,     x0,     1

//move signature
add       x1, x31, x0

la        x30, RF_P5
p.lbu      x31, x2(x30)
add       x1, x1, x31
add       x1, x1, x30

// restore signature
add       x31, x1, x0


///////////////////////////////////////////

//store value in signature
la x30, signature
sw x31,0*4(x30)


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
.global regs_test_result

save_regs:
.space 0x7C
signature:
.space 4

// -------------------------------------
.section ".TEST_RODATA", "a"

//TEST ALL 0 AND ALL 1 FOR EACH REGISTER

RF_P1:
.long 0x55555555
RF_P2:
.long 0xaaaaaaaa
RF_P3:
.long 0x33333333
RF_P4:
.long 0xcccccccc
RF_P5:
.long 0x0f0f0f0f
RF_P6:
.long 0xf0f0f0f0

RF_XOR:
.long 0x55555555
.long 0xaaaaaaaa
.long 0x33333333
.long 0xcccccccc
.long 0x0f0f0f0f
.long 0xf0f0f0f0
.long 0x00ff00ff
.long 0xff00ff00

RF_PATTERNS:
.long 0x00000000
.long 0xFFFFFFFF
