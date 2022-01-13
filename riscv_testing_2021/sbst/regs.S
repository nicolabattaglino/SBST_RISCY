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



/////////////////////////////////
/////////// extensions //////////
/////////////////////////////////
///                           ///
///                           ///
/////////////////////////////////
//////////// p.lb ///////////////
/////////////////////////////////

//addi                x1,     x0,     1
//addi                x2,     x0,     0

// test imm-reg with post-increment
la        x30, RF_P1
p.lb      x1, 1(x30!)
add       x31, x31, x1
add       x31, x31, x30

la        x30, RF_P2
p.lb      x2, 1(x30!)
add       x31, x31, x2
add       x31, x31, x30

la        x30, RF_P3
p.lb      x3, 1(x30!)
add       x31, x31, x3
add       x31, x31, x30

la        x30, RF_P4
p.lb      x4, 1(x30!)
add       x31, x31, x4
add       x31, x31, x30

la        x30, RF_P5
p.lb      x5, 1(x30!)
add       x31, x31, x5
add       x31, x31, x30

la        x30, RF_P6
p.lb      x6, 1(x30!)
add       x31, x31, x6
add       x31, x31, x30

la        x30, RF_P1
p.lb      x7, 1(x30!)
add       x31, x31, x7
add       x31, x31, x30

la        x30, RF_P2
p.lb      x8, 1(x30!)
add       x31, x13, x8
add       x31, x31, x30

la        x30, RF_P3
p.lb      x9, 1(x30!)
add       x31, x31, x9
add       x31, x31, x30

la        x30, RF_P4
p.lb      x10, 1(x30!)
add       x31, x31, x10
add       x31, x31, x30

la        x30, RF_P5
p.lb      x11, 1(x30!)
add       x31, x31, x11
add       x31, x31, x30

la        x30, RF_P6
p.lb      x12, 1(x30!)
add       x31, x31, x12
add       x31, x31, x30

la        x30, RF_P1
p.lb      x13, 1(x30!)
add       x31, x31, x13
add       x31, x31, x30

la        x30, RF_P2
p.lb      x14, 1(x30!)
add       x31, x31, x14
add       x31, x31, x30

la        x30, RF_P3
p.lb      x15, 1(x30!)
add       x31, x31, x15
add       x31, x31, x30

la        x30, RF_P4
p.lb      x16, 1(x30!)
add       x31, x31, x16
add       x31, x31, x30

la        x30, RF_P5
p.lb      x17, 1(x30!)
add       x31, x31, x17
add       x31, x31, x30

la        x30, RF_P6
p.lb      x18, 1(x30!)
add       x31, x31, x18
add       x31, x31, x30

la        x30, RF_P1
p.lb      x20, 1(x30!)
add       x31, x31, x20
add       x31, x31, x30

la        x30, RF_P2
p.lb      x21, 1(x30!)
add       x31, x31, x21
add       x31, x31, x30

la        x30, RF_P3
p.lb      x22, 1(x30!)
add       x31, x31, x22
add       x31, x31, x30

la        x30, RF_P4
p.lb      x23, 1(x30!)
add       x31, x31, x23
add       x31, x31, x30

la        x30, RF_P5
p.lb      x24, 1(x30!)
add       x31, x31, x24
add       x31, x31, x30

la        x30, RF_P6
p.lb      x25, 1(x30!)
add       x31, x31, x25
add       x31, x31, x30

la        x30, RF_P1
p.lb      x26, 1(x30!)
add       x31, x31, x26
add       x31, x31, x30

la        x30, RF_P2
p.lb      x27, 1(x30!)
add       x31, x31, x27
add       x31, x31, x30

la        x30, RF_P3
p.lb      x28, 1(x30!)
add       x31, x31, x28
add       x31, x31, x30

la        x30, RF_P4
p.lb      x29, 1(x30!)
add       x31, x31, x29
add       x31, x31, x30

la        x2, RF_P5
p.lb      x30, 1(x2!)
add       x31, x31, x30
add       x31, x31, x2

//move signature
add       x1, x31, x0

la        x30, RF_P1
p.lb      x31, 1(x30!)
add       x1, x1, x31
add       x1, x1, x30

// restore signature
add       x31, x1, x0


// test reg-reg with post-increment
//addi                x1,     x0,     1
addi                x2,     x0,     1

la        x30, RF_P2
p.lb      x1, x2(x30!)
add       x31, x31, x1
add       x31, x31, x30

addi                x1,     x0,     1

la        x30, RF_P3
p.lb      x2, x1(x30!)
add       x31, x31, x2
add       x31, x31, x30

la        x30, RF_P4
p.lb      x3, x1(x30!)
add       x31, x31, x3
add       x31, x31, x30

la        x30, RF_P5
p.lb      x4, x1(x30!)
add       x31, x31, x4
add       x31, x31, x30

la        x30, RF_P6
p.lb      x5, x1(x30!)
add       x31, x31, x5
add       x31, x31, x30

la        x30, RF_P1
p.lb      x6, x1(x30!)
add       x31, x31, x6
add       x31, x31, x30

la        x30, RF_P2
p.lb      x7, x1(x30!)
add       x31, x31, x7
add       x31, x31, x30

la        x30, RF_P3
p.lb      x8, x1(x30!)
add       x31, x13, x8
add       x31, x31, x30

la        x30, RF_P4
p.lb      x9, x1(x30!)
add       x31, x31, x9
add       x31, x31, x30

la        x30, RF_P5
p.lb      x10, x1(x30!)
add       x31, x31, x10
add       x31, x31, x30

la        x30, RF_P6
p.lb      x11, x1(x30!)
add       x31, x31, x11
add       x31, x31, x30

la        x30, RF_P1
p.lb      x12, x1(x30!)
add       x31, x31, x12
add       x31, x31, x30

la        x30, RF_P2
p.lb      x13, x1(x30!)
add       x31, x31, x13
add       x31, x31, x30

la        x30, RF_P3
p.lb      x14, x1(x30!)
add       x31, x31, x14
add       x31, x31, x30

la        x30, RF_P4
p.lb      x15, x1(x30!)
add       x31, x31, x15
add       x31, x31, x30

la        x30, RF_P5
p.lb      x16, x1(x30!)
add       x31, x31, x16
add       x31, x31, x30

la        x30, RF_P6
p.lb      x17, x1(x30!)
add       x31, x31, x17
add       x31, x31, x30

la        x30, RF_P1
p.lb      x18, x1(x30!)
add       x31, x31, x18
add       x31, x31, x30

la        x30, RF_P2
p.lb      x20, x1(x30!)
add       x31, x31, x20
add       x31, x31, x30

la        x30, RF_P3
p.lb      x21, x1(x30!)
add       x31, x31, x21
add       x31, x31, x30

la        x30, RF_P4
p.lb      x22, x1(x30!)
add       x31, x31, x22
add       x31, x31, x30

la        x30, RF_P5
p.lb      x23, x1(x30!)
add       x31, x31, x23
add       x31, x31, x30

la        x30, RF_P6
p.lb      x24, x1(x30!)
add       x31, x31, x24
add       x31, x31, x30

la        x30, RF_P1
p.lb      x25, x1(x30!)
add       x31, x31, x25
add       x31, x31, x30

la        x30, RF_P2
p.lb      x26, x1(x30!)
add       x31, x31, x26
add       x31, x31, x30

la        x30, RF_P3
p.lb      x27, x1(x30!)
add       x31, x31, x27
add       x31, x31, x30

la        x30, RF_P4
p.lb      x28, x1(x30!)
add       x31, x31, x28
add       x31, x31, x30

la        x30, RF_P5
p.lb      x29, x1(x30!)
add       x31, x31, x29
add       x31, x31, x30

la        x2, RF_P6
p.lb      x30, x1(x2!)
add       x31, x31, x30
add       x31, x31, x2

addi                x2,     x0,     1

//move signature
add       x1, x31, x0

la        x30, RF_P2
p.lb      x31, x2(x30!)
add       x1, x1, x31
add       x1, x1, x30

// restore signature
add       x31, x1, x0

// test reg-reg without post-increment
addi                x1,     x0,     1
addi                x2,     x0,     1

la        x30, RF_P3
p.lb      x1, x2(x30)
add       x31, x31, x1
add       x31, x31, x30

addi                x1,     x0,     0

la        x30, RF_P4
p.lb      x2, x1(x30)
add       x31, x31, x2
add       x31, x31, x30

la        x30, RF_P5
p.lb      x3, x1(x30)
add       x31, x31, x3
add       x31, x31, x30

la        x30, RF_P6
p.lb      x4, x1(x30)
add       x31, x31, x4
add       x31, x31, x30

la        x30, RF_P1
p.lb      x5, x1(x30)
add       x31, x31, x5
add       x31, x31, x30

la        x30, RF_P2
p.lb      x6, x1(x30)
add       x31, x31, x6
add       x31, x31, x30

la        x30, RF_P3
p.lb      x7, x1(x30)
add       x31, x31, x7
add       x31, x31, x30

la        x30, RF_P4
p.lb      x8, x1(x30)
add       x31, x13, x8
add       x31, x31, x30

la        x30, RF_P4
p.lb      x9, x1(x30)
add       x31, x31, x9
add       x31, x31, x30

la        x30, RF_P5
p.lb      x10, x1(x30)
add       x31, x31, x10
add       x31, x31, x30

la        x30, RF_P6
p.lb      x11, x1(x30)
add       x31, x31, x11
add       x31, x31, x30

la        x30, RF_P1
p.lb      x12, x1(x30)
add       x31, x31, x12
add       x31, x31, x30

la        x30, RF_P2
p.lb      x13, x1(x30)
add       x31, x31, x13
add       x31, x31, x30

la        x30, RF_P3
p.lb      x14, x1(x30)
add       x31, x31, x14
add       x31, x31, x30

la        x30, RF_P4
p.lb      x15, x1(x30)
add       x31, x31, x15
add       x31, x31, x30

la        x30, RF_P5
p.lb      x16, x1(x30)
add       x31, x31, x16
add       x31, x31, x30

la        x30, RF_P6
p.lb      x17, x1(x30)
add       x31, x31, x17
add       x31, x31, x30

la        x30, RF_P1
p.lb      x18, x1(x30)
add       x31, x31, x18
add       x31, x31, x30

la        x30, RF_P2
p.lb      x20, x1(x30)
add       x31, x31, x20
add       x31, x31, x30

la        x30, RF_P3
p.lb      x21, x1(x30)
add       x31, x31, x21
add       x31, x31, x30

la        x30, RF_P4
p.lb      x22, x1(x30)
add       x31, x31, x22
add       x31, x31, x30

la        x30, RF_P5
p.lb      x23, x1(x30)
add       x31, x31, x23
add       x31, x31, x30

la        x30, RF_P6
p.lb      x24, x1(x30)
add       x31, x31, x24
add       x31, x31, x30

la        x30, RF_P1
p.lb      x25, x1(x30)
add       x31, x31, x25
add       x31, x31, x30

la        x30, RF_P2
p.lb      x26, x1(x30)
add       x31, x31, x26
add       x31, x31, x30

la        x30, RF_P3
p.lb      x27, x1(x30)
add       x31, x31, x27
add       x31, x31, x30

la        x30, RF_P4
p.lb      x28, x1(x30)
add       x31, x31, x28
add       x31, x31, x30

la        x30, RF_P5
p.lb      x29, x1(x30)
add       x31, x31, x29
add       x31, x31, x30

la        x2, RF_P6
p.lb      x30, x1(x2)
add       x31, x31, x30
add       x31, x31, x2

addi                x2,     x0,     1

//move signature
add       x1, x31, x0

la        x30, RF_P1
p.lb      x31, x2(x30)
add       x1, x1, x31
add       x1, x1, x30

// restore signature
add       x31, x1, x0

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


/////////////////////////////////
/////////////////////////////////
//////////// p.lh ///////////////
/////////////////////////////////
/////////////////////////////////

addi                x1,     x0,     1
addi                x2,     x0,     0

// test imm-reg with post-increment
la        x30, RF_P6
p.lh      x1, 1(x30!)
add       x31, x31, x1
add       x31, x31, x30

la        x30, RF_P1
p.lh      x2, 1(x30!)
add       x31, x31, x2
add       x31, x31, x30

la        x30, RF_P2
p.lh      x3, 1(x30!)
add       x31, x31, x3
add       x31, x31, x30

la        x30, RF_P3
p.lh      x4, 1(x30!)
add       x31, x31, x4
add       x31, x31, x30

la        x30, RF_P4
p.lh      x5, 1(x30!)
add       x31, x31, x5
add       x31, x31, x30

la        x30, RF_P5
p.lh      x6, 1(x30!)
add       x31, x31, x6
add       x31, x31, x30

la        x30, RF_P6
p.lh      x7, 1(x30!)
add       x31, x31, x7
add       x31, x31, x30

la        x30, RF_P1
p.lh      x8, 1(x30!)
add       x31, x13, x8
add       x31, x31, x30

la        x30, RF_P1
p.lh      x9, 1(x30!)
add       x31, x31, x9
add       x31, x31, x30

la        x30, RF_P2
p.lh      x10, 1(x30!)
add       x31, x31, x10
add       x31, x31, x30

la        x30, RF_P3
p.lh      x11, 1(x30!)
add       x31, x31, x11
add       x31, x31, x30

la        x30, RF_P4
p.lh      x12, 1(x30!)
add       x31, x31, x12
add       x31, x31, x30

la        x30, RF_P5
p.lh      x13, 1(x30!)
add       x31, x31, x13
add       x31, x31, x30

la        x30, RF_P6
p.lh      x14, 1(x30!)
add       x31, x31, x14
add       x31, x31, x30

la        x30, RF_P1
p.lh      x15, 1(x30!)
add       x31, x31, x15
add       x31, x31, x30

la        x30, RF_P2
p.lh      x16, 1(x30!)
add       x31, x31, x16
add       x31, x31, x30

la        x30, RF_P3
p.lh      x17, 1(x30!)
add       x31, x31, x17
add       x31, x31, x30

la        x30, RF_P4
p.lh      x18, 1(x30!)
add       x31, x31, x18
add       x31, x31, x30

la        x30, RF_P5
p.lh      x20, 1(x30!)
add       x31, x31, x20
add       x31, x31, x30

la        x30, RF_P6
p.lh      x21, 1(x30!)
add       x31, x31, x21
add       x31, x31, x30

la        x30, RF_P1
p.lh      x22, 1(x30!)
add       x31, x31, x22
add       x31, x31, x30

la        x30, RF_P2
p.lh      x23, 1(x30!)
add       x31, x31, x23
add       x31, x31, x30

la        x30, RF_P3
p.lh      x24, 1(x30!)
add       x31, x31, x24
add       x31, x31, x30

la        x30, RF_P4
p.lh      x25, 1(x30!)
add       x31, x31, x25
add       x31, x31, x30

la        x30, RF_P5
p.lh      x26, 1(x30!)
add       x31, x31, x26
add       x31, x31, x30

la        x30, RF_P6
p.lh      x27, 1(x30!)
add       x31, x31, x27
add       x31, x31, x30

la        x30, RF_P1
p.lh      x28, 1(x30!)
add       x31, x31, x28
add       x31, x31, x30

la        x30, RF_P2
p.lh      x29, 1(x30!)
add       x31, x31, x29
add       x31, x31, x30

la        x2, RF_P3
p.lh      x30, 1(x2!)
add       x31, x31, x30
add       x31, x31, x2

//move signature
add       x1, x31, x0

la        x30, RF_P4
p.lh        x31, 1(x30!)
add       x1, x1, x31
add       x1, x1, x30

// restore signature
add       x31, x1, x0


// test reg-reg with post-increment
addi                x1,     x0,     1
addi                x2,     x0,     1

la        x30, RF_P5
p.lh      x1, x2(x30!)
add       x31, x31, x1
add       x31, x31, x30

addi                x1,     x0,     1

la        x30, RF_P6
p.lh      x2, x1(x30!)
add       x31, x31, x2
add       x31, x31, x30

la        x30, RF_P1
p.lh      x3, x1(x30!)
add       x31, x31, x3
add       x31, x31, x30

la        x30, RF_P2
p.lh      x4, x1(x30!)
add       x31, x31, x4
add       x31, x31, x30

la        x30, RF_P3
p.lh      x5, x1(x30!)
add       x31, x31, x5
add       x31, x31, x30

la        x30, RF_P4
p.lh      x6, x1(x30!)
add       x31, x31, x6
add       x31, x31, x30

la        x30, RF_P5
p.lh      x7, x1(x30!)
add       x31, x31, x7
add       x31, x31, x30

la        x30, RF_P6
p.lh      x8, x1(x30!)
add       x31, x13, x8
add       x31, x31, x30

la        x30, RF_P1
p.lh      x9, x1(x30!)
add       x31, x31, x9
add       x31, x31, x30

la        x30, RF_P2
p.lh      x10, x1(x30!)
add       x31, x31, x10
add       x31, x31, x30

la        x30, RF_P3
p.lh      x11, x1(x30!)
add       x31, x31, x11
add       x31, x31, x30

la        x30, RF_P4
p.lh      x12, x1(x30!)
add       x31, x31, x12
add       x31, x31, x30

la        x30, RF_P5
p.lh      x13, x1(x30!)
add       x31, x31, x13
add       x31, x31, x30

la        x30, RF_P6
p.lh      x14, x1(x30!)
add       x31, x31, x14
add       x31, x31, x30

la        x30, RF_P1
p.lh      x15, x1(x30!)
add       x31, x31, x15
add       x31, x31, x30

la        x30, RF_P2
p.lh      x16, x1(x30!)
add       x31, x31, x16
add       x31, x31, x30

la        x30, RF_P3
p.lh      x17, x1(x30!)
add       x31, x31, x17
add       x31, x31, x30

la        x30, RF_P4
p.lh      x18, x1(x30!)
add       x31, x31, x18
add       x31, x31, x30

la        x30, RF_P5
p.lh      x20, x1(x30!)
add       x31, x31, x20
add       x31, x31, x30

la        x30, RF_P6
p.lh      x21, x1(x30!)
add       x31, x31, x21
add       x31, x31, x30

la        x30, RF_P1
p.lh      x22, x1(x30!)
add       x31, x31, x22
add       x31, x31, x30

la        x30, RF_P2
p.lh      x23, x1(x30!)
add       x31, x31, x23
add       x31, x31, x30

la        x30, RF_P3
p.lh      x24, x1(x30!)
add       x31, x31, x24
add       x31, x31, x30

la        x30, RF_P4
p.lh      x25, x1(x30!)
add       x31, x31, x25
add       x31, x31, x30

la        x30, RF_P5
p.lh      x26, x1(x30!)
add       x31, x31, x26
add       x31, x31, x30

la        x30, RF_P6
p.lh      x27, x1(x30!)
add       x31, x31, x27
add       x31, x31, x30

la        x30, RF_P1
p.lh      x28, x1(x30!)
add       x31, x31, x28
add       x31, x31, x30

la        x30, RF_P2
p.lh      x29, x1(x30!)
add       x31, x31, x29
add       x31, x31, x30

la        x2, RF_P3
p.lh      x30, x1(x2!)
add       x31, x31, x30
add       x31, x31, x2

addi                x2,     x0,     1

//move signature
add       x1, x31, x0

la        x30, RF_P4
p.lh      x31, x2(x30!)
add       x1, x1, x31
add       x1, x1, x30

// restore signature
add       x31, x1, x0

// test reg-reg without post-increment
addi                x1,     x0,     0
addi                x2,     x0,     0

la        x30, RF_P5
p.lh      x1, x2(x30)
add       x31, x31, x1
add       x31, x31, x30

addi                x1,     x0,     0

la        x30, RF_P6
p.lh      x2, x1(x30)
add       x31, x31, x2
add       x31, x31, x30

la        x30, RF_P1
p.lh      x3, x1(x30)
add       x31, x31, x3
add       x31, x31, x30

la        x30, RF_P2
p.lh      x4, x1(x30)
add       x31, x31, x4
add       x31, x31, x30

la        x30, RF_P3
p.lh      x5, x1(x30)
add       x31, x31, x5
add       x31, x31, x30

la        x30, RF_P4
p.lh      x6, x1(x30)
add       x31, x31, x6
add       x31, x31, x30

la        x30, RF_P5
p.lh      x7, x1(x30)
add       x31, x31, x7
add       x31, x31, x30

la        x30, RF_P6
p.lh      x8, x1(x30)
add       x31, x13, x8
add       x31, x31, x30

la        x30, RF_P1
p.lh      x9, x1(x30)
add       x31, x31, x9
add       x31, x31, x30

la        x30, RF_P2
p.lh      x10, x1(x30)
add       x31, x31, x10
add       x31, x31, x30

la        x30, RF_P3
p.lh      x11, x1(x30)
add       x31, x31, x11
add       x31, x31, x30

la        x30, RF_P4
p.lh      x12, x1(x30)
add       x31, x31, x12
add       x31, x31, x30

la        x30, RF_P5
p.lh      x13, x1(x30)
add       x31, x31, x13
add       x31, x31, x30

la        x30, RF_P6
p.lh      x14, x1(x30)
add       x31, x31, x14
add       x31, x31, x30

la        x30, RF_P1
p.lh      x15, x1(x30)
add       x31, x31, x15
add       x31, x31, x30

la        x30, RF_P2
p.lh      x16, x1(x30)
add       x31, x31, x16
add       x31, x31, x30

la        x30, RF_P3
p.lh      x17, x1(x30)
add       x31, x31, x17
add       x31, x31, x30

la        x30, RF_P4
p.lh      x18, x1(x30)
add       x31, x31, x18
add       x31, x31, x30

la        x30, RF_P5
p.lh      x20, x1(x30)
add       x31, x31, x20
add       x31, x31, x30

la        x30, RF_P6
p.lh      x21, x1(x30)
add       x31, x31, x21
add       x31, x31, x30

la        x30, RF_P1
p.lh      x22, x1(x30)
add       x31, x31, x22
add       x31, x31, x30

la        x30, RF_P2
p.lh      x23, x1(x30)
add       x31, x31, x23
add       x31, x31, x30

la        x30, RF_P3
p.lh      x24, x1(x30)
add       x31, x31, x24
add       x31, x31, x30

la        x30, RF_P4
p.lh      x25, x1(x30)
add       x31, x31, x25
add       x31, x31, x30

la        x30, RF_P5
p.lh      x26, x1(x30)
add       x31, x31, x26
add       x31, x31, x30

la        x30, RF_P6
p.lh      x27, x1(x30)
add       x31, x31, x27
add       x31, x31, x30

la        x30, RF_P1
p.lh      x28, x1(x30)
add       x31, x31, x28
add       x31, x31, x30

la        x30, RF_P2
p.lh      x29, x1(x30)
add       x31, x31, x29
add       x31, x31, x30

la        x2, RF_P3
p.lh      x30, x1(x2)
add       x31, x31, x30
add       x31, x31, x2

addi                x2,     x0,     1

//move signature
add       x1, x31, x0

la        x30, RF_P1
p.lh      x31, x2(x30)
add       x1, x1, x31
add       x1, x1, x30

// restore signature
add       x31, x1, x0

/////////////////////////////////
/////////////////////////////////
//////////// p.lhu ///////////////
/////////////////////////////////
/////////////////////////////////

addi                x1,     x0,     1
addi                x2,     x0,     0

// test imm-reg with post-increment
la        x30, RF_P1
p.lhu      x1, 1(x30!)
add       x31, x31, x1
add       x31, x31, x30

la        x30, RF_P2
p.lhu      x2, 1(x30!)
add       x31, x31, x2
add       x31, x31, x30

la        x30, RF_P3
p.lhu      x3, 1(x30!)
add       x31, x31, x3
add       x31, x31, x30

la        x30, RF_P4
p.lhu      x4, 1(x30!)
add       x31, x31, x4
add       x31, x31, x30

la        x30, RF_P5
p.lhu      x5, 1(x30!)
add       x31, x31, x5
add       x31, x31, x30

la        x30, RF_P6
p.lhu      x6, 1(x30!)
add       x31, x31, x6
add       x31, x31, x30

la        x30, RF_P1
p.lhu      x7, 1(x30!)
add       x31, x31, x7
add       x31, x31, x30

la        x30, RF_P2
p.lhu      x8, 1(x30!)
add       x31, x13, x8
add       x31, x31, x30

la        x30, RF_P3
p.lhu      x9, 1(x30!)
add       x31, x31, x9
add       x31, x31, x30

la        x30, RF_P4
p.lhu      x10, 1(x30!)
add       x31, x31, x10
add       x31, x31, x30

la        x30, RF_P5
p.lhu      x11, 1(x30!)
add       x31, x31, x11
add       x31, x31, x30

la        x30, RF_P6
p.lhu      x12, 1(x30!)
add       x31, x31, x12
add       x31, x31, x30

la        x30, RF_P1
p.lhu      x13, 1(x30!)
add       x31, x31, x13
add       x31, x31, x30

la        x30, RF_P2
p.lhu      x14, 1(x30!)
add       x31, x31, x14
add       x31, x31, x30

la        x30, RF_P3
p.lhu      x15, 1(x30!)
add       x31, x31, x15
add       x31, x31, x30

la        x30, RF_P4
p.lhu      x16, 1(x30!)
add       x31, x31, x16
add       x31, x31, x30

la        x30, RF_P5
p.lhu      x17, 1(x30!)
add       x31, x31, x17
add       x31, x31, x30

la        x30, RF_P6
p.lhu      x18, 1(x30!)
add       x31, x31, x18
add       x31, x31, x30

la        x30, RF_P1
p.lhu      x20, 1(x30!)
add       x31, x31, x20
add       x31, x31, x30

la        x30, RF_P2
p.lhu      x21, 1(x30!)
add       x31, x31, x21
add       x31, x31, x30

la        x30, RF_P3
p.lhu      x22, 1(x30!)
add       x31, x31, x22
add       x31, x31, x30

la        x30, RF_P4
p.lhu      x23, 1(x30!)
add       x31, x31, x23
add       x31, x31, x30

la        x30, RF_P5
p.lhu      x24, 1(x30!)
add       x31, x31, x24
add       x31, x31, x30

la        x30, RF_P6
p.lhu      x25, 1(x30!)
add       x31, x31, x25
add       x31, x31, x30

la        x30, RF_P1
p.lhu      x26, 1(x30!)
add       x31, x31, x26
add       x31, x31, x30

la        x30, RF_P2
p.lhu      x27, 1(x30!)
add       x31, x31, x27
add       x31, x31, x30

la        x30, RF_P3
p.lhu      x28, 1(x30!)
add       x31, x31, x28
add       x31, x31, x30

la        x30, RF_P4
p.lhu      x29, 1(x30!)
add       x31, x31, x29
add       x31, x31, x30

la        x2, RF_P5
p.lhu      x30, 1(x2!)
add       x31, x31, x30
add       x31, x31, x2

//move signature
add       x1, x31, x0

la        x30, RF_P6
p.lhu        x31, 1(x30!)
add       x1, x1, x31
add       x1, x1, x30

// restore signature
add       x31, x1, x0


// test reg-reg with post-increment
addi                x1,     x0,     1
addi                x2,     x0,     1

la        x30, RF_P1
p.lhu      x1, x2(x30!)
add       x31, x31, x1
add       x31, x31, x30

addi                x1,     x0,     1

la        x30, RF_P2
p.lhu      x2, x1(x30!)
add       x31, x31, x2
add       x31, x31, x30

la        x30, RF_P3
p.lhu      x3, x1(x30!)
add       x31, x31, x3
add       x31, x31, x30

la        x30, RF_P4
p.lhu      x4, x1(x30!)
add       x31, x31, x4
add       x31, x31, x30

la        x30, RF_P5
p.lhu      x5, x1(x30!)
add       x31, x31, x5
add       x31, x31, x30

la        x30, RF_P6
p.lhu      x6, x1(x30!)
add       x31, x31, x6
add       x31, x31, x30

la        x30, RF_P1
p.lhu      x7, x1(x30!)
add       x31, x31, x7
add       x31, x31, x30

la        x30, RF_P2
p.lhu      x8, x1(x30!)
add       x31, x13, x8
add       x31, x31, x30

la        x30, RF_P3
p.lhu      x9, x1(x30!)
add       x31, x31, x9
add       x31, x31, x30

la        x30, RF_P4
p.lhu      x10, x1(x30!)
add       x31, x31, x10
add       x31, x31, x30

la        x30, RF_P5
p.lhu      x11, x1(x30!)
add       x31, x31, x11
add       x31, x31, x30

la        x30, RF_P6
p.lhu      x12, x1(x30!)
add       x31, x31, x12
add       x31, x31, x30

la        x30, RF_P1
p.lhu      x13, x1(x30!)
add       x31, x31, x13
add       x31, x31, x30

la        x30, RF_P2
p.lhu      x14, x1(x30!)
add       x31, x31, x14
add       x31, x31, x30

la        x30, RF_P3
p.lhu      x15, x1(x30!)
add       x31, x31, x15
add       x31, x31, x30

la        x30, RF_P4
p.lhu      x16, x1(x30!)
add       x31, x31, x16
add       x31, x31, x30

la        x30, RF_P5
p.lhu      x17, x1(x30!)
add       x31, x31, x17
add       x31, x31, x30

la        x30, RF_P6
p.lhu      x18, x1(x30!)
add       x31, x31, x18
add       x31, x31, x30

la        x30, RF_P1
p.lhu      x20, x1(x30!)
add       x31, x31, x20
add       x31, x31, x30

la        x30, RF_P2
p.lhu      x21, x1(x30!)
add       x31, x31, x21
add       x31, x31, x30

la        x30, RF_P3
p.lhu      x22, x1(x30!)
add       x31, x31, x22
add       x31, x31, x30

la        x30, RF_P4
p.lhu      x23, x1(x30!)
add       x31, x31, x23
add       x31, x31, x30

la        x30, RF_P5
p.lhu      x24, x1(x30!)
add       x31, x31, x24
add       x31, x31, x30

la        x30, RF_P6
p.lhu      x25, x1(x30!)
add       x31, x31, x25
add       x31, x31, x30

la        x30, RF_P1
p.lhu      x26, x1(x30!)
add       x31, x31, x26
add       x31, x31, x30

la        x30, RF_P2
p.lhu      x27, x1(x30!)
add       x31, x31, x27
add       x31, x31, x30

la        x30, RF_P3
p.lhu      x28, x1(x30!)
add       x31, x31, x28
add       x31, x31, x30

la        x30, RF_P4
p.lhu      x29, x1(x30!)
add       x31, x31, x29
add       x31, x31, x30

la        x2, RF_P5
p.lhu      x30, x1(x2!)
add       x31, x31, x30
add       x31, x31, x2

addi                x2,     x0,     1

//move signature
add       x1, x31, x0

la        x30, RF_P1
p.lhu      x31, x2(x30!)
add       x1, x1, x31
add       x1, x1, x30

// restore signature
add       x31, x1, x0

// test reg-reg without post-increment
addi                x1,     x0,     0
addi                x2,     x0,     0

la        x30, RF_P1
p.lhu      x1, x2(x30)
add       x31, x31, x1
add       x31, x31, x30

addi                x1,     x0,     0

la        x30, RF_P2
p.lhu      x2, x1(x30)
add       x31, x31, x2
add       x31, x31, x30

la        x30, RF_P3
p.lhu      x3, x1(x30)
add       x31, x31, x3
add       x31, x31, x30

la        x30, RF_P4
p.lhu      x4, x1(x30)
add       x31, x31, x4
add       x31, x31, x30

la        x30, RF_P5
p.lhu      x5, x1(x30)
add       x31, x31, x5
add       x31, x31, x30

la        x30, RF_P6
p.lhu      x6, x1(x30)
add       x31, x31, x6
add       x31, x31, x30

la        x30, RF_P1
p.lhu      x7, x1(x30)
add       x31, x31, x7
add       x31, x31, x30

la        x30, RF_P2
p.lhu      x8, x1(x30)
add       x31, x13, x8
add       x31, x31, x30

la        x30, RF_P3
p.lhu      x9, x1(x30)
add       x31, x31, x9
add       x31, x31, x30

la        x30, RF_P4
p.lhu      x10, x1(x30)
add       x31, x31, x10
add       x31, x31, x30

la        x30, RF_P5
p.lhu      x11, x1(x30)
add       x31, x31, x11
add       x31, x31, x30

la        x30, RF_P6
p.lhu      x12, x1(x30)
add       x31, x31, x12
add       x31, x31, x30

la        x30, RF_P1
p.lhu      x13, x1(x30)
add       x31, x31, x13
add       x31, x31, x30

la        x30, RF_P2
p.lhu      x14, x1(x30)
add       x31, x31, x14
add       x31, x31, x30

la        x30, RF_P3
p.lhu      x15, x1(x30)
add       x31, x31, x15
add       x31, x31, x30

la        x30, RF_P4
p.lhu      x16, x1(x30)
add       x31, x31, x16
add       x31, x31, x30

la        x30, RF_P5
p.lhu      x17, x1(x30)
add       x31, x31, x17
add       x31, x31, x30

la        x30, RF_P6
p.lhu      x18, x1(x30)
add       x31, x31, x18
add       x31, x31, x30

la        x30, RF_P1
p.lhu      x20, x1(x30)
add       x31, x31, x20
add       x31, x31, x30

la        x30, RF_P2
p.lhu      x21, x1(x30)
add       x31, x31, x21
add       x31, x31, x30

la        x30, RF_P3
p.lhu      x22, x1(x30)
add       x31, x31, x22
add       x31, x31, x30

la        x30, RF_P4
p.lhu      x23, x1(x30)
add       x31, x31, x23
add       x31, x31, x30

la        x30, RF_P5
p.lhu      x24, x1(x30)
add       x31, x31, x24
add       x31, x31, x30

la        x30, RF_P6
p.lhu      x25, x1(x30)
add       x31, x31, x25
add       x31, x31, x30

la        x30, RF_P1
p.lhu      x26, x1(x30)
add       x31, x31, x26
add       x31, x31, x30

la        x30, RF_P2
p.lhu      x27, x1(x30)
add       x31, x31, x27
add       x31, x31, x30

la        x30, RF_P3
p.lhu      x28, x1(x30)
add       x31, x31, x28
add       x31, x31, x30

la        x30, RF_P4
p.lhu      x29, x1(x30)
add       x31, x31, x29
add       x31, x31, x30

la        x2, RF_P5
p.lhu      x30, x1(x2)
add       x31, x31, x30
add       x31, x31, x2

addi                x2,     x0,     1

//move signature
add       x1, x31, x0

la        x30, RF_P6
p.lhu      x31, x2(x30)
add       x1, x1, x31
add       x1, x1, x30

// restore signature
add       x31, x1, x0

/////////////////////////////////
/////////////////////////////////
//////////// p.lw ///////////////
/////////////////////////////////
/////////////////////////////////

addi                x1,     x0,     1
addi                x2,     x0,     0

// test imm-reg with post-increment
la        x30, RF_P1
p.lw      x1, 1(x30!)
add       x31, x31, x1
add       x31, x31, x30

la        x30, RF_P2
p.lw      x2, 1(x30!)
add       x31, x31, x2
add       x31, x31, x30

la        x30, RF_P3
p.lw      x3, 1(x30!)
add       x31, x31, x3
add       x31, x31, x30

la        x30, RF_P4
p.lw      x4, 1(x30!)
add       x31, x31, x4
add       x31, x31, x30

la        x30, RF_P5
p.lw      x5, 1(x30!)
add       x31, x31, x5
add       x31, x31, x30

la        x30, RF_P6
p.lw      x6, 1(x30!)
add       x31, x31, x6
add       x31, x31, x30

la        x30, RF_P1
p.lw      x7, 1(x30!)
add       x31, x31, x7
add       x31, x31, x30

la        x30, RF_P2
p.lw      x8, 1(x30!)
add       x31, x13, x8
add       x31, x31, x30

la        x30, RF_P3
p.lw      x9, 1(x30!)
add       x31, x31, x9
add       x31, x31, x30

la        x30, RF_P4
p.lw      x10, 1(x30!)
add       x31, x31, x10
add       x31, x31, x30

la        x30, RF_P5
p.lw      x11, 1(x30!)
add       x31, x31, x11
add       x31, x31, x30

la        x30, RF_P6
p.lw      x12, 1(x30!)
add       x31, x31, x12
add       x31, x31, x30

la        x30, RF_P1
p.lw      x13, 1(x30!)
add       x31, x31, x13
add       x31, x31, x30

la        x30, RF_P2
p.lw      x14, 1(x30!)
add       x31, x31, x14
add       x31, x31, x30

la        x30, RF_P3
p.lw      x15, 1(x30!)
add       x31, x31, x15
add       x31, x31, x30

la        x30, RF_P4
p.lw      x16, 1(x30!)
add       x31, x31, x16
add       x31, x31, x30

la        x30, RF_P5
p.lw      x17, 1(x30!)
add       x31, x31, x17
add       x31, x31, x30

la        x30, RF_P6
p.lw      x18, 1(x30!)
add       x31, x31, x18
add       x31, x31, x30

la        x30, RF_P1
p.lw      x20, 1(x30!)
add       x31, x31, x20
add       x31, x31, x30

la        x30, RF_P2
p.lw      x21, 1(x30!)
add       x31, x31, x21
add       x31, x31, x30

la        x30, RF_P3
p.lw      x22, 1(x30!)
add       x31, x31, x22
add       x31, x31, x30

la        x30, RF_P4
p.lw      x23, 1(x30!)
add       x31, x31, x23
add       x31, x31, x30

la        x30, RF_P5
p.lw      x24, 1(x30!)
add       x31, x31, x24
add       x31, x31, x30

la        x30, RF_P6
p.lw      x25, 1(x30!)
add       x31, x31, x25
add       x31, x31, x30

la        x30, RF_P1
p.lw      x26, 1(x30!)
add       x31, x31, x26
add       x31, x31, x30

la        x30, RF_P2
p.lw      x27, 1(x30!)
add       x31, x31, x27
add       x31, x31, x30

la        x30, RF_P3
p.lw      x28, 1(x30!)
add       x31, x31, x28
add       x31, x31, x30

la        x30, RF_P4
p.lw      x29, 1(x30!)
add       x31, x31, x29
add       x31, x31, x30

la        x2, RF_P5
p.lw      x30, 1(x2!)
add       x31, x31, x30
add       x31, x31, x2

//move signature
add       x1, x31, x0

la        x30, RF_P6
p.lw        x31, 1(x30!)
add       x1, x1, x31
add       x1, x1, x30

// restore signature
add       x31, x1, x0

///////////////*///////////////

// test reg-reg with post-increment
addi                x1,     x0,     1
addi                x2,     x0,     1
//addi                x1,     x30,     1
//addi                x2,     x31,     1

la        x30, RF_P6
p.lw      x1, x2(x30!)

add       x31, x31, x1
add       x31, x31, x30

la        x30, RF_P5
p.lw      x2, x1(x30!)
add       x31, x31, x2
add       x31, x31, x30

la        x30, RF_P4
p.lw      x3, x1(x30!)
add       x31, x31, x3
add       x31, x31, x30

la        x30, RF_P3
p.lw      x4, x1(x30!)
add       x31, x31, x4
add       x31, x31, x30

la        x30, RF_P2
p.lw      x5, x1(x30!)
add       x31, x31, x5
add       x31, x31, x30

la        x30, RF_P1
p.lw      x6, x1(x30!)
add       x31, x31, x6
add       x31, x31, x30

la        x30, RF_P2
p.lw      x7, x1(x30!)
add       x31, x31, x7
add       x31, x31, x30

la        x30, RF_P3
p.lw      x8, x1(x30!)
add       x31, x13, x8
add       x31, x31, x30

la        x30, RF_P4
p.lw      x9, x1(x30!)
add       x31, x31, x9
add       x31, x31, x30

la        x30, RF_P3
p.lw      x10, x1(x30!)
add       x31, x31, x10
add       x31, x31, x30

la        x30, RF_P2
p.lw      x11, x1(x30!)
add       x31, x31, x11
add       x31, x31, x30

la        x30, RF_P1
p.lw      x12, x1(x30!)
add       x31, x31, x12
add       x31, x31, x30

la        x30, RF_P1
p.lw      x13, x1(x30!)
add       x31, x31, x13
add       x31, x31, x30

la        x30, RF_P2
p.lw      x14, x1(x30!)
add       x31, x31, x14
add       x31, x31, x30

la        x30, RF_P3
p.lw      x15, x1(x30!)
add       x31, x31, x15
add       x31, x31, x30

la        x30, RF_P4
p.lw      x16, x1(x30!)
add       x31, x31, x16
add       x31, x31, x30

la        x30, RF_P5
p.lw      x17, x1(x30!)
add       x31, x31, x17
add       x31, x31, x30

la        x30, RF_P6
p.lw      x18, x1(x30!)
add       x31, x31, x18
add       x31, x31, x30

la        x30, RF_P1
p.lw      x20, x1(x30!)
add       x31, x31, x20
add       x31, x31, x30

la        x30, RF_P2
p.lw      x21, x1(x30!)
add       x31, x31, x21
add       x31, x31, x30

la        x30, RF_P3
p.lw      x22, x1(x30!)
add       x31, x31, x22
add       x31, x31, x30

la        x30, RF_P4
p.lw      x23, x1(x30!)
add       x31, x31, x23
add       x31, x31, x30

la        x30, RF_P5
p.lw      x24, x1(x30!)
add       x31, x31, x24
add       x31, x31, x30

la        x30, RF_P6
p.lw      x25, x1(x30!)
add       x31, x31, x25
add       x31, x31, x30

la        x30, RF_P1
p.lw      x26, x1(x30!)
add       x31, x31, x26
add       x31, x31, x30

la        x30, RF_P2
p.lw      x27, x1(x30!)
add       x31, x31, x27
add       x31, x31, x30

la        x30, RF_P3
p.lw      x28, x1(x30!)
add       x31, x31, x28
add       x31, x31, x30

la        x30, RF_P4
p.lw      x29, x1(x30!)
add       x31, x31, x29
add       x31, x31, x30

la        x2, RF_P5
p.lw      x30, x1(x2!)
add       x31, x31, x30
add       x31, x31, x2

addi                x2,     x0,     1

//move signature
add       x1, x31, x0

la        x30, RF_P1
p.lw      x31, x2(x30!)
add       x1, x1, x31
add       x1, x1, x30

// restore signature
add       x31, x1, x0

// test reg-reg without post-increment
addi                x1,     x0,     0
addi                x2,     x0,     0

la        x30, RF_P2
p.lw      x1, x2(x30)
add       x31, x31, x1
add       x31, x31, x30

addi                x1,     x0,     0

la        x30, RF_P3
p.lw      x2, x1(x30)
add       x31, x31, x2
add       x31, x31, x30

la        x30, RF_P4
p.lw      x3, x1(x30)
add       x31, x31, x3
add       x31, x31, x30

la        x30, RF_P5
p.lw      x4, x1(x30)
add       x31, x31, x4
add       x31, x31, x30

la        x30, RF_P6
p.lw      x5, x1(x30)
add       x31, x31, x5
add       x31, x31, x30

la        x30, RF_P1
p.lw      x6, x1(x30)
add       x31, x31, x6
add       x31, x31, x30

la        x30, RF_P2
p.lw      x7, x1(x30)
add       x31, x31, x7
add       x31, x31, x30

la        x30, RF_P3
p.lw      x8, x1(x30)
add       x31, x13, x8
add       x31, x31, x30

la        x30, RF_P4
p.lw      x9, x1(x30)
add       x31, x31, x9
add       x31, x31, x30

la        x30, RF_P5
p.lw      x10, x1(x30)
add       x31, x31, x10
add       x31, x31, x30

la        x30, RF_P6
p.lw      x11, x1(x30)
add       x31, x31, x11
add       x31, x31, x30

la        x30, RF_P1
p.lw      x12, x1(x30)
add       x31, x31, x12
add       x31, x31, x30

la        x30, RF_P2
p.lw      x13, x1(x30)
add       x31, x31, x13
add       x31, x31, x30

la        x30, RF_P3
p.lw      x14, x1(x30)
add       x31, x31, x14
add       x31, x31, x30

la        x30, RF_P4
p.lw      x15, x1(x30)
add       x31, x31, x15
add       x31, x31, x30

la        x30, RF_P5
p.lw      x16, x1(x30)
add       x31, x31, x16
add       x31, x31, x30

la        x30, RF_P6
p.lw      x17, x1(x30)
add       x31, x31, x17
add       x31, x31, x30

la        x30, RF_P1
p.lw      x18, x1(x30)
add       x31, x31, x18
add       x31, x31, x30

la        x30, RF_P2
p.lw      x20, x1(x30)
add       x31, x31, x20
add       x31, x31, x30

la        x30, RF_P3
p.lw      x21, x1(x30)
add       x31, x31, x21
add       x31, x31, x30

la        x30, RF_P4
p.lw      x22, x1(x30)
add       x31, x31, x22
add       x31, x31, x30

la        x30, RF_P5
p.lw      x23, x1(x30)
add       x31, x31, x23
add       x31, x31, x30

la        x30, RF_P1
p.lw      x24, x1(x30)
add       x31, x31, x24
add       x31, x31, x30

la        x30, RF_P2
p.lw      x25, x1(x30)
add       x31, x31, x25
add       x31, x31, x30

la        x30, RF_P3
p.lw      x26, x1(x30)
add       x31, x31, x26
add       x31, x31, x30

la        x30, RF_P4
p.lw      x27, x1(x30)
add       x31, x31, x27
add       x31, x31, x30

la        x30, RF_P5
p.lw      x28, x1(x30)
add       x31, x31, x28
add       x31, x31, x30

la        x30, RF_P6
p.lw      x29, x1(x30)
add       x31, x31, x29
add       x31, x31, x30

la        x2, RF_P1
p.lw      x30, x1(x2)
add       x31, x31, x30
add       x31, x31, x2

addi                x2,     x0,     1

//move signature
add       x1, x31, x0

la        x30, RF_P3
p.lw      x31, x2(x30)
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
