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


la x31, RF_XOR
lw x1, 0*4(x31)
lw x2, 1*4(x31)
lw x3, 1*4(x31)
lw x4, 0*4(x31)

lw x5, 2*4(x31)
lw x6, 3*4(x31)
lw x7, 3*4(x31)
lw x8, 2*4(x31)

lw x9, 4*4(x31)
lw x10, 5*4(x31)
lw x11, 5*4(x31)
lw x12, 4*4(x31)

lw x13, 6*4(x31)
lw x14, 7*4(x31)
lw x15, 7*4(x31)
lw x16, 6*4(x31)

lw x17, 0*4(x31)
lw x18, 1*4(x31)
lw x19, 1*4(x31)
lw x20, 0*4(x31)

lw x21, 2*4(x31)
lw x22, 3*4(x31)
lw x23, 3*4(x31)
lw x24, 2*4(x31)

lw x25, 4*4(x31)
lw x26, 5*4(x31)
lw x27, 5*4(x31)
lw x28, 4*4(x31)

lw x29, 6*4(x31)
lw x30, 7*4(x31)

//initialize signature
add       x31, x0, x0

xor x15, x1, x2
add       x31, x31, x15
xor x16, x3, x4
add       x31, x31, x16
xor x17, x5, x6
add       x31, x31, x17
xor x18, x7, x8
add       x31, x31, x18
xor x19, x9, x10
add       x31, x31, x19
xor x20, x11, x12
add       x31, x31, x20
xor x21, x13, x14
add       x31, x31, x21

xor x15, x2, x1
add       x31, x31, x15
xor x16, x4, x3
add       x31, x31, x16
xor x17, x6, x5
add       x31, x31, x17
xor x18, x8, x7
add       x31, x31, x18
xor x19, x10, x9
add       x31, x31, x19
xor x20, x12, x11
add       x31, x31, x20
xor x21, x14, x13
add       x31, x31, x21

la x14, RF_XOR
lw x15, 7*4(x14)
lw x16, 6*4(x14)

lw x17, 0*4(x14)
lw x18, 1*4(x14)
lw x19, 1*4(x14)
lw x20, 0*4(x14)

lw x21, 2*4(x14)
lw x22, 3*4(x14)
lw x23, 3*4(x14)
lw x24, 2*4(x14)

lw x25, 4*4(x14)
lw x26, 5*4(x14)
lw x27, 5*4(x14)
lw x28, 4*4(x14)

xor x1, x15, x16
add       x31, x31, x1
xor x2, x17, x18
add       x31, x31, x2
xor x4, x19, x20
add       x31, x31, x4
xor x5, x21, x22
add       x31, x31, x5
xor x6, x23, x24
add       x31, x31, x6
xor x7, x25, x26
add       x31, x31, x7
xor x8, x27, x28
add       x31, x31, x8
xor x9, x29, x30
add       x31, x31, x9

xor x1, x16, x15
add       x31, x31, x1
xor x2, x18, x17
add       x31, x31, x2
xor x4, x20, x19
add       x31, x31, x4
xor x5, x22, x21
add       x31, x31, x5
xor x6, x24, x23
add       x31, x31, x6
xor x7, x26, x25
add       x31, x31, x7
xor x8, x28, x27
add       x31, x31, x8
xor x9, x30, x29
add       x31, x31, x9

xor x9, x1, x15
add       x31, x31, x9
xor x10, x2, x16
add       x31, x31, x10
xor x11, x3, x17
add       x31, x31, x11
xor x12, x4, x18
add       x31, x31, x12
xor x13, x5, x19
add       x31, x31, x13
xor x14, x6, x20
add       x31, x31, x14
xor x23, x7, x21
add       x31, x31, x23
xor x24, x8, x22
add       x31, x31, x24

xor x17, x9, x23
add       x31, x31, x17
xor x18, x10, x24
add       x31, x31, x18
xor x19, x11, x25
add       x31, x31, x19
xor x20, x12, x26
add       x31, x31, x20
xor x21, x13, x27
add       x31, x31, x21
xor x22, x14, x28
add       x31, x31, x22
xor x17, x15, x29
add       x31, x31, x17
xor x18, x16, x30
add       x31, x31, x18

xor x9, x1, x15
add       x31, x31, x9
xor x10, x2, x16
add       x31, x31, x10
xor x11, x3, x17
add       x31, x31, x11
xor x12, x4, x18
add       x31, x31, x12
xor x13, x5, x19
add       x31, x31, x13
xor x14, x6, x20
add       x31, x31, x14
xor x23, x7, x21
add       x31, x31, x23
xor x24, x8, x22
add       x31, x31, x24

xor x17, x9, x23
add       x31, x31, x17
xor x18, x10, x24
add       x31, x31, x18
xor x19, x11, x25
add       x31, x31, x19
xor x20, x12, x26
add       x31, x31, x20
xor x21, x13, x27
add       x31, x31, x21
xor x22, x14, x28
add       x31, x31, x22
xor x17, x15, x29
add       x31, x31, x17
xor x18, x16, x30
add       x31, x31, x18

///////////////// second

la x30, RF_XOR
lw x1, 1*4(x30)
lw x2, 0*4(x30)
lw x3, 0*4(x30)
lw x4, 1*4(x30)

lw x5, 3*4(x30)
lw x6, 2*4(x30)
lw x7, 2*4(x30)
lw x8, 3*4(x30)

lw x9, 5*4(x30)
lw x10, 4*4(x30)
lw x11, 4*4(x30)
lw x12, 5*4(x30)

lw x13, 7*4(x30)
lw x14, 6*4(x30)
lw x15, 6*4(x30)
lw x16, 7*4(x30)

lw x17, 1*4(x30)
lw x18, 0*4(x30)
lw x19, 0*4(x30)
lw x20, 1*4(x30)

lw x21, 3*4(x30)
lw x22, 2*4(x30)
lw x23, 2*4(x30)
lw x24, 3*4(x30)

lw x25, 5*4(x30)
lw x26, 4*4(x30)
lw x27, 4*4(x30)
lw x28, 5*4(x30)

lw x29, 7*4(x30)
mv x30, x15

xor x15, x1, x2
add       x31, x31, x15
xor x16, x3, x4
add       x31, x31, x16
xor x17, x5, x6
add       x31, x31, x17
xor x18, x7, x8
add       x31, x31, x18
xor x19, x9, x10
add       x31, x31, x19
xor x20, x11, x12
add       x31, x31, x20
xor x21, x13, x14
add       x31, x31, x21

xor x15, x2, x1
add       x31, x31, x15
xor x16, x4, x3
add       x31, x31, x16
xor x17, x6, x5
add       x31, x31, x17
xor x18, x8, x7
add       x31, x31, x18
xor x19, x10, x9
add       x31, x31, x19
xor x20, x12, x11
add       x31, x31, x20
xor x21, x14, x13
add       x31, x31, x21

la x30, RF_XOR
lw x15, 6*4(x30)
lw x16, 7*4(x30)

lw x17, 1*4(x30)
lw x18, 0*4(x30)
lw x19, 0*4(x30)
lw x20, 1*4(x30)

lw x21, 3*4(x30)
lw x22, 2*4(x30)
lw x23, 2*4(x30)
lw x24, 3*4(x30)

lw x25, 5*4(x30)
lw x26, 4*4(x30)
lw x27, 4*4(x30)
lw x28, 5*4(x30)

lw x29, 7*4(x30)
mv x30, x15

xor x1, x15, x16
add       x31, x31, x1
xor x2, x17, x18
add       x31, x31, x2
xor x4, x19, x20
add       x31, x31, x4
xor x5, x21, x22
add       x31, x31, x5
xor x6, x23, x24
add       x31, x31, x6
xor x7, x25, x26
add       x31, x31, x7
xor x8, x27, x28
add       x31, x31, x8
xor x9, x29, x30
add       x31, x31, x9

xor x1, x16, x15
add       x31, x31, x1
xor x2, x18, x17
add       x31, x31, x2
xor x4, x20, x19
add       x31, x31, x4
xor x5, x22, x21
add       x31, x31, x5
xor x6, x24, x23
add       x31, x31, x6
xor x7, x26, x25
add       x31, x31, x7
xor x8, x28, x27
add       x31, x31, x8
xor x9, x30, x29
add       x31, x31, x9

xor x9, x1, x15
add       x31, x31, x9
xor x10, x2, x16
add       x31, x31, x10
xor x11, x3, x17
add       x31, x31, x11
xor x12, x4, x18
add       x31, x31, x12
xor x13, x5, x19
add       x31, x31, x13
xor x14, x6, x20
add       x31, x31, x14
xor x23, x7, x21
add       x31, x31, x23
xor x24, x8, x22
add       x31, x31, x24

xor x17, x9, x23
add       x31, x31, x17
xor x18, x10, x24
add       x31, x31, x18
xor x19, x11, x25
add       x31, x31, x19
xor x20, x12, x26
add       x31, x31, x20
xor x21, x13, x27
add       x31, x31, x21
xor x22, x14, x28
add       x31, x31, x22
xor x17, x15, x29
add       x31, x31, x17
xor x18, x16, x30
add       x31, x31, x18



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

//TEST ALL 0 AND ALL 1 FOR EACH REGISTER

RF_PATTERNS:
.long 0x00000000
.long 0xFFFFFFFF
