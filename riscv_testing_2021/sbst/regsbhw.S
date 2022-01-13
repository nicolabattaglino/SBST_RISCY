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



//register tests word

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

// restore signature
add       x31, x1, x0



//register tests byte

la        x30, RF_PATTERNS
lb        x1, 0(x30)
add       x31, x31, x1
lb        x1, 4(x30)
add       x31, x31, x1

la        x30, RF_PATTERNS
lb        x2, 0(x30)
add       x31, x31, x2
lb        x2, 4(x30)
add       x31, x31, x2

la        x30, RF_PATTERNS
lb        x3, 0(x30)
add       x31, x31, x3
lb        x3, 4(x30)
add       x31, x31, x3

la        x30, RF_PATTERNS
lb        x4, 0(x30)
add       x31, x31, x4
lb        x4, 4(x30)
add       x31, x31, x4

la        x30, RF_PATTERNS
lb        x5, 0(x30)
add       x31, x31, x5
lb        x5, 4(x30)
add       x31, x31, x5

la        x30, RF_PATTERNS
lb        x6, 0(x30)
add       x31, x31, x6
lb        x6, 4(x30)
add       x31, x31, x6

la        x30, RF_PATTERNS
lb        x7, 0(x30)
add       x31, x31, x7
lb        x7, 4(x30)
add       x31, x31, x7

la        x30, RF_PATTERNS
lb        x8, 0(x30)
add       x31, x31, x8
lb        x8, 4(x30)
add       x31, x31, x8

la        x30, RF_PATTERNS
lb        x9, 0(x30)
add       x31, x31, x9
lb        x9, 4(x30)
add       x31, x31, x9

la        x30, RF_PATTERNS
lb        x10, 0(x30)
add       x31, x31, x10
lb        x10, 4(x30)
add       x31, x31, x10

la        x30, RF_PATTERNS
lb        x11, 0(x30)
add       x31, x31, x11
lb        x11, 4(x30)
add       x31, x31, x11

la        x30, RF_PATTERNS
lb        x12, 0(x30)
add       x31, x31, x12
lb        x12, 4(x30)
add       x31, x31, x12

la        x30, RF_PATTERNS
lb        x13, 0(x30)
add       x31, x31, x13
lb        x13, 4(x30)
add       x31, x31, x13

la        x30, RF_PATTERNS
lb        x14, 0(x30)
add       x31, x31, x14
lb        x14, 4(x30)
add       x31, x31, x14

la        x30, RF_PATTERNS
lb        x15, 0(x30)
add       x31, x31, x15
lb        x15, 4(x30)
add       x31, x31, x15

la        x30, RF_PATTERNS
lb        x16, 0(x30)
add       x31, x31, x16
lb        x16, 4(x30)
add       x31, x31, x16

la        x30, RF_PATTERNS
lb        x17, 0(x30)
add       x31, x31, x17
lb        x17, 4(x30)
add       x31, x31, x17

la        x30, RF_PATTERNS
lb        x18, 0(x30)
add       x31, x31, x18
lb        x18, 4(x30)
add       x31, x31, x18

la        x30, RF_PATTERNS
lb        x19, 0(x30)
add       x31, x31, x19
lb        x19, 4(x30)
add       x31, x31, x19

la        x30, RF_PATTERNS
lb        x20, 0(x30)
add       x31, x31, x20
lb        x20, 4(x30)
add       x31, x31, x20

la        x30, RF_PATTERNS
lb        x21, 0(x30)
add       x31, x31, x21
lb        x21, 4(x30)
add       x31, x31, x21

la        x30, RF_PATTERNS
lb        x22, 0(x30)
add       x31, x31, x22
lb        x22, 4(x30)
add       x31, x31, x22

la        x30, RF_PATTERNS
lb        x23, 0(x30)
add       x31, x31, x23
lb        x23, 4(x30)
add       x31, x31, x23

la        x30, RF_PATTERNS
lb        x24, 0(x30)
add       x31, x31, x24
lb        x24, 4(x30)
add       x31, x31, x24

la        x30, RF_PATTERNS
lb        x25, 0(x30)
add       x31, x31, x25
lb        x25, 4(x30)
add       x31, x31, x25

la        x30, RF_PATTERNS
lb        x26, 0(x30)
add       x31, x31, x26
lb        x26, 4(x30)
add       x31, x31, x26

la        x30, RF_PATTERNS
lb        x27, 0(x30)
add       x31, x31, x27
lb        x27, 4(x30)
add       x31, x31, x27

la        x30, RF_PATTERNS
lb        x28, 0(x30)
add       x31, x31, x28
lb        x28, 4(x30)
add       x31, x31, x28

la        x30, RF_PATTERNS
lb        x29, 0(x30)
add       x31, x31, x29
lb        x29, 4(x30)
add       x31, x31, x29

la        x2, RF_PATTERNS
lb        x30, 0(x2)
add       x31, x31, x30
lb        x30, 4(x2)
add       x31, x31, x30

// move signature
add       x1, x31, x0

la        x30, RF_PATTERNS
lb        x31, 0(x30)
add       x1, x1, x31
lb        x31, 4(x30)
add       x1, x1, x31

// restore signature
add       x31, x1, x0


//register tests halfword

la        x30, RF_PATTERNS
lh        x1, 0(x30)
add       x31, x31, x1
lh        x1, 4(x30)
add       x31, x31, x1

la        x30, RF_PATTERNS
lh        x2, 0(x30)
add       x31, x31, x2
lh        x2, 4(x30)
add       x31, x31, x2

la        x30, RF_PATTERNS
lh        x3, 0(x30)
add       x31, x31, x3
lh        x3, 4(x30)
add       x31, x31, x3

la        x30, RF_PATTERNS
lh        x4, 0(x30)
add       x31, x31, x4
lh        x4, 4(x30)
add       x31, x31, x4

la        x30, RF_PATTERNS
lh        x5, 0(x30)
add       x31, x31, x5
lh        x5, 4(x30)
add       x31, x31, x5

la        x30, RF_PATTERNS
lh        x6, 0(x30)
add       x31, x31, x6
lh        x6, 4(x30)
add       x31, x31, x6

la        x30, RF_PATTERNS
lh        x7, 0(x30)
add       x31, x31, x7
lh        x7, 4(x30)
add       x31, x31, x7

la        x30, RF_PATTERNS
lh        x8, 0(x30)
add       x31, x31, x8
lh        x8, 4(x30)
add       x31, x31, x8

la        x30, RF_PATTERNS
lh        x9, 0(x30)
add       x31, x31, x9
lh        x9, 4(x30)
add       x31, x31, x9

la        x30, RF_PATTERNS
lh        x10, 0(x30)
add       x31, x31, x10
lh        x10, 4(x30)
add       x31, x31, x10

la        x30, RF_PATTERNS
lh        x11, 0(x30)
add       x31, x31, x11
lh        x11, 4(x30)
add       x31, x31, x11

la        x30, RF_PATTERNS
lh        x12, 0(x30)
add       x31, x31, x12
lh        x12, 4(x30)
add       x31, x31, x12

la        x30, RF_PATTERNS
lh        x13, 0(x30)
add       x31, x31, x13
lh        x13, 4(x30)
add       x31, x31, x13

la        x30, RF_PATTERNS
lh        x14, 0(x30)
add       x31, x31, x14
lh        x14, 4(x30)
add       x31, x31, x14

la        x30, RF_PATTERNS
lh        x15, 0(x30)
add       x31, x31, x15
lh        x15, 4(x30)
add       x31, x31, x15

la        x30, RF_PATTERNS
lh        x16, 0(x30)
add       x31, x31, x16
lh        x16, 4(x30)
add       x31, x31, x16

la        x30, RF_PATTERNS
lh        x17, 0(x30)
add       x31, x31, x17
lh        x17, 4(x30)
add       x31, x31, x17

la        x30, RF_PATTERNS
lh        x18, 0(x30)
add       x31, x31, x18
lh        x18, 4(x30)
add       x31, x31, x18

la        x30, RF_PATTERNS
lh        x19, 0(x30)
add       x31, x31, x19
lh        x19, 4(x30)
add       x31, x31, x19

la        x30, RF_PATTERNS
lh        x20, 0(x30)
add       x31, x31, x20
lh        x20, 4(x30)
add       x31, x31, x20

la        x30, RF_PATTERNS
lh        x21, 0(x30)
add       x31, x31, x21
lh        x21, 4(x30)
add       x31, x31, x21

la        x30, RF_PATTERNS
lh        x22, 0(x30)
add       x31, x31, x22
lh        x22, 4(x30)
add       x31, x31, x22

la        x30, RF_PATTERNS
lh        x23, 0(x30)
add       x31, x31, x23
lh        x23, 4(x30)
add       x31, x31, x23

la        x30, RF_PATTERNS
lh        x24, 0(x30)
add       x31, x31, x24
lh        x24, 4(x30)
add       x31, x31, x24

la        x30, RF_PATTERNS
lh        x25, 0(x30)
add       x31, x31, x25
lh        x25, 4(x30)
add       x31, x31, x25

la        x30, RF_PATTERNS
lh        x26, 0(x30)
add       x31, x31, x26
lh        x26, 4(x30)
add       x31, x31, x26

la        x30, RF_PATTERNS
lh        x27, 0(x30)
add       x31, x31, x27
lh        x27, 4(x30)
add       x31, x31, x27

la        x30, RF_PATTERNS
lh        x28, 0(x30)
add       x31, x31, x28
lh        x28, 4(x30)
add       x31, x31, x28

la        x30, RF_PATTERNS
lh        x29, 0(x30)
add       x31, x31, x29
lh        x29, 4(x30)
add       x31, x31, x29

la        x2, RF_PATTERNS
lh        x30, 0(x2)
add       x31, x31, x30
lh        x30, 4(x2)
add       x31, x31, x30

// move signature
add       x1, x31, x0

la        x30, RF_PATTERNS
lh        x31, 0(x30)
add       x1, x1, x31
lh        x31, 4(x30)
add       x1, x1, x31

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
