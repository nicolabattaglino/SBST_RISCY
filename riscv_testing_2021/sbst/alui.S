.section .text
.global _sbst_alui
.type _sbst_alui, @function

_sbst_alui:

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


/////////////////// IMMEDIATE OP ///////////////////////

li x1,0xFFFFFFFF
li x2,0xF0F0F0F0
li x3,0x00000000
li x4,0x0F0F0F0F
li x5,0xAAAAAAAA
li x6,0x55555555

//ADDI
addi x30,x1,0x001
add x31, x31, x30          //update signature
addi x29,x1,0x2AA
add x31, x31, x29          //update signature
addi x28,x1,0x555
add x31, x31, x28          //update signature
addi x27,x1,0x7FF
add x31, x31, x27          //update signature
addi x26,x2,0x000
add x31, x31, x26          //update signature
addi x25,x2,0x001
add x31, x31, x25          //update signature
addi x24,x2,0x2AA
add x31, x31, x24          //update signature
addi x23,x2,0x555
add x31, x31, x23          //update signature
addi x22,x2,0x7FF
add x31, x31, x22          //update signature

/*
addi x21,x3,0x000
add x31, x31, x21          //update signature
addi x20,x3,0x001
add x31, x31, x20          //update signature
addi x19,x3,0x2AA
add x31, x31, x19          //update signature
addi x18,x3,0x555
add x31, x31, x18          //update signature
addi x17,x3,0x7FF
add x31, x31, x17          //update signature
addi x16,x4,0x000
add x31, x31, x16          //update signature
addi x15,x4,0x001
add x31, x31, x15          //update signature
addi x14,x4,0x2AA
add x31, x31, x14          //update signature
addi x13,x4,0x555
add x31, x31, x13          //update signature
addi x12,x4,0x7FF
add x31, x31, x12          //update signature
addi x11,x5,0x000
add x31, x31, x11          //update signature
addi x10,x5,0x001
add x31, x31, x10          //update signature
addi x9,x5,0x2AA
add x31, x31, x9          //update signature
addi x8,x5,0x555
add x31, x31, x8          //update signature
addi x7,x5,0x7FF
add x31, x31, x7          //update signature
addi x5,x6,0x000
add x31, x31, x5          //update signature
addi x4,x6,0x001
add x31, x31, x4          //update signature
addi x3,x6,0x2AA
add x31, x31, x3          //update signature
addi x2,x6,0x555
add x31, x31, x2          //update signature
//	addi x1,x6,0x7FF
//	add x31, x31, x1          //update signature

la x1, loandst
sw x2, 0(x1)
sw x3, 4(x1)
sw x4, 8(x1)
sw x5, 12(x1)
sw x6, 16(x1)
sw x7, 20(x1)
sw x8, 24(x1)
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


// ANDI

li x1,0xFFFFFFFF
li x2,0xF0F0F0F0
li x3,0x00000000
li x4,0x0F0F0F0F
li x5,0xAAAAAAAA
li x6,0x55555555

andi x30,x1,0x001
add x31, x31, x30          //update signature
andi x29,x1,0x2AA
add x31, x31, x29          //update signature
andi x28,x1,0x555
add x31, x31, x28          //update signature
andi x27,x1,0x7FF
add x31, x31, x27          //update signature
andi x26,x2,0x000
add x31, x31, x26          //update signature
andi x25,x2,0x001
add x31, x31, x25          //update signature
andi x24,x2,0x2AA
add x31, x31, x24          //update signature
andi x23,x2,0x555
add x31, x31, x23          //update signature
andi x22,x2,0x7FF
add x31, x31, x22          //update signature


/*
andi x21,x3,0x000
add x31, x31, x21          //update signature
andi x20,x3,0x001
add x31, x31, x20          //update signature
andi x19,x3,0x2AA
add x31, x31, x19          //update signature
andi x18,x3,0x555
add x31, x31, x18          //update signature
andi x17,x3,0x7FF
add x31, x31, x17          //update signature
andi x16,x4,0x000
add x31, x31, x16          //update signature
andi x15,x4,0x001
add x31, x31, x15          //update signature
andi x14,x4,0x2AA
add x31, x31, x14          //update signature
andi x13,x4,0x555
add x31, x31, x13          //update signature
andi x12,x4,0x7FF
add x31, x31, x12          //update signature
andi x11,x5,0x000
add x31, x31, x11          //update signature
andi x10,x5,0x001
add x31, x31, x10          //update signature
andi x9,x5,0x2AA
add x31, x31, x9          //update signature
andi x8,x5,0x555
add x31, x31, x8          //update signature
andi x7,x5,0x7FF
add x31, x31, x7          //update signature
andi x5,x6,0x000
add x31, x31, x5          //update signature
andi x4,x6,0x001
add x31, x31, x4          //update signature
andi x3,x6,0x2AA
add x31, x31, x3          //update signature
andi x2,x6,0x555
add x31, x31, x2          //update signature
//	andi x1,x6,0x7FF
//	add x31, x31, x1          //update signature

la x1, loandst
sw x2, 0(x1)
sw x3, 4(x1)
sw x4, 8(x1)
sw x5, 12(x1)
sw x6, 16(x1)
sw x7, 20(x1)
sw x8, 24(x1)
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


// ORI

li x1,0xFFFFFFFF
li x2,0xF0F0F0F0
li x3,0x00000000
li x4,0x0F0F0F0F
li x5,0xAAAAAAAA
li x6,0x55555555

ori x30,x1,0x001
add x31, x31, x30          //update signature
ori x29,x1,0x2AA
add x31, x31, x29          //update signature
ori x28,x1,0x555
add x31, x31, x28          //update signature
ori x27,x1,0x7FF
add x31, x31, x27          //update signature
ori x26,x2,0x000
add x31, x31, x26          //update signature
ori x25,x2,0x001
add x31, x31, x25          //update signature
ori x24,x2,0x2AA
add x31, x31, x24          //update signature
ori x23,x2,0x555
add x31, x31, x23          //update signature
ori x22,x2,0x7FF
add x31, x31, x22          //update signature

/*
ori x21,x3,0x000
add x31, x31, x21          //update signature
ori x20,x3,0x001
add x31, x31, x20          //update signature
ori x19,x3,0x2AA
add x31, x31, x19          //update signature
ori x18,x3,0x555
add x31, x31, x18          //update signature
ori x17,x3,0x7FF
add x31, x31, x17          //update signature
ori x16,x4,0x000
add x31, x31, x16          //update signature
ori x15,x4,0x001
add x31, x31, x15          //update signature
ori x14,x4,0x2AA
add x31, x31, x14          //update signature
ori x13,x4,0x555
add x31, x31, x13          //update signature
ori x12,x4,0x7FF
add x31, x31, x12          //update signature
ori x11,x5,0x000
add x31, x31, x11          //update signature
ori x10,x5,0x001
add x31, x31, x10          //update signature
ori x9,x5,0x2AA
add x31, x31, x9          //update signature
ori x8,x5,0x555
add x31, x31, x8          //update signature
ori x7,x5,0x7FF
add x31, x31, x7          //update signature
ori x5,x6,0x000
add x31, x31, x5          //update signature
ori x4,x6,0x001
add x31, x31, x4          //update signature
ori x3,x6,0x2AA
add x31, x31, x3          //update signature
ori x2,x6,0x555
add x31, x31, x2          //update signature
//	ori x1,x6,0x7FF
//	add x31, x31, x1          //update signature

la x1, loandst
sw x2, 0(x1)
sw x3, 4(x1)
sw x4, 8(x1)
sw x5, 12(x1)
sw x6, 16(x1)
sw x7, 20(x1)
sw x8, 24(x1)
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


// XORI

li x1,0xFFFFFFFF
li x2,0xF0F0F0F0
li x3,0x00000000
li x4,0x0F0F0F0F
li x5,0xAAAAAAAA
li x6,0x55555555

xori x30,x1,0x001
add x31, x31, x30          //update signature
xori x29,x1,0x2AA
add x31, x31, x29          //update signature
xori x28,x1,0x555
add x31, x31, x28          //update signature
xori x27,x1,0x7FF
add x31, x31, x27          //update signature
xori x26,x2,0x000
add x31, x31, x26          //update signature
xori x25,x2,0x001
add x31, x31, x25          //update signature
xori x24,x2,0x2AA
add x31, x31, x24          //update signature
xori x23,x2,0x555
add x31, x31, x23          //update signature
xori x22,x2,0x7FF
add x31, x31, x22          //update signature


/*
xori x21,x3,0x000
add x31, x31, x21          //update signature
xori x20,x3,0x001
add x31, x31, x20          //update signature
xori x19,x3,0x2AA
add x31, x31, x19          //update signature
xori x18,x3,0x555
add x31, x31, x18          //update signature
xori x17,x3,0x7FF
add x31, x31, x17          //update signature
xori x16,x4,0x000
add x31, x31, x16          //update signature
xori x15,x4,0x001
add x31, x31, x15          //update signature
xori x14,x4,0x2AA
add x31, x31, x14          //update signature
xori x13,x4,0x555
add x31, x31, x13          //update signature
xori x12,x4,0x7FF
add x31, x31, x12          //update signature
xori x11,x5,0x000
add x31, x31, x11          //update signature
xori x10,x5,0x001
add x31, x31, x10          //update signature
xori x9,x5,0x2AA
add x31, x31, x9          //update signature
xori x8,x5,0x555
add x31, x31, x8          //update signature
xori x7,x5,0x7FF
add x31, x31, x7          //update signature
xori x5,x6,0x000
add x31, x31, x5          //update signature
xori x4,x6,0x001
add x31, x31, x4          //update signature
xori x3,x6,0x2AA
add x31, x31, x3          //update signature
xori x2,x6,0x555
add x31, x31, x2          //update signature
//	xori x1,x6,0x7FF
//	add x31, x31, x1          //update signature

la x1, loandst
sw x2, 0(x1)
sw x3, 4(x1)
sw x4, 8(x1)
sw x5, 12(x1)
sw x6, 16(x1)
sw x7, 20(x1)
sw x8, 24(x1)
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


// SLTI

li x1,0xFFFFFFFF
li x2,0xF0F0F0F0
li x3,0x00000000
li x4,0x0F0F0F0F
li x5,0xAAAAAAAA
li x6,0x55555555

slti x30,x1,0x001
add x31, x31, x30          //update signature
slti x29,x1,0x2AA
add x31, x31, x29          //update signature
slti x28,x1,0x555
add x31, x31, x28          //update signature
slti x27,x1,0x7FF
add x31, x31, x27          //update signature
slti x26,x2,0x000
add x31, x31, x26          //update signature
slti x25,x2,0x001
add x31, x31, x25          //update signature
slti x24,x2,0x2AA
add x31, x31, x24          //update signature
slti x23,x2,0x555
add x31, x31, x23          //update signature
slti x22,x2,0x7FF
add x31, x31, x22          //update signature

/*
slti x21,x3,0x000
add x31, x31, x21          //update signature
slti x20,x3,0x001
add x31, x31, x20          //update signature
slti x19,x3,0x2AA
add x31, x31, x19          //update signature
slti x18,x3,0x555
add x31, x31, x18          //update signature
slti x17,x3,0x7FF
add x31, x31, x17          //update signature
slti x16,x4,0x000
add x31, x31, x16          //update signature
slti x15,x4,0x001
add x31, x31, x15          //update signature
slti x14,x4,0x2AA
add x31, x31, x14          //update signature
slti x13,x4,0x555
add x31, x31, x13          //update signature
slti x12,x4,0x7FF
add x31, x31, x12          //update signature
slti x11,x5,0x000
add x31, x31, x11          //update signature
slti x10,x5,0x001
add x31, x31, x10          //update signature
slti x9,x5,0x2AA
add x31, x31, x9          //update signature
slti x8,x5,0x555
add x31, x31, x8          //update signature
slti x7,x5,0x7FF
add x31, x31, x7          //update signature
slti x5,x6,0x000
add x31, x31, x5          //update signature
slti x4,x6,0x001
add x31, x31, x4          //update signature
slti x3,x6,0x2AA
add x31, x31, x3          //update signature
slti x2,x6,0x555
add x31, x31, x2          //update signature
//	slti x1,x6,0x7FF
//	add x31, x31, x1          //update signature

la x1, loandst
sw x2, 0(x1)
sw x3, 4(x1)
sw x4, 8(x1)
sw x5, 12(x1)
sw x6, 16(x1)
sw x7, 20(x1)
sw x8, 24(x1)
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


// SLTIU

li x1,0xFFFFFFFF
li x2,0xF0F0F0F0
li x3,0x00000000
li x4,0x0F0F0F0F
li x5,0xAAAAAAAA
li x6,0x55555555

sltiu x30,x1,0x001
add x31, x31, x30          //update signature
sltiu x29,x1,0x2AA
add x31, x31, x29          //update signature
sltiu x28,x1,0x555
add x31, x31, x28          //update signature
sltiu x27,x1,0x7FF
add x31, x31, x27          //update signature
sltiu x26,x2,0x000
add x31, x31, x26          //update signature
sltiu x25,x2,0x001
add x31, x31, x25          //update signature
sltiu x24,x2,0x2AA
add x31, x31, x24          //update signature
sltiu x23,x2,0x555
add x31, x31, x23          //update signature
sltiu x22,x2,0x7FF
add x31, x31, x22          //update signature

/*
sltiu x21,x3,0x000
add x31, x31, x21          //update signature
sltiu x20,x3,0x001
add x31, x31, x20          //update signature
sltiu x19,x3,0x2AA
add x31, x31, x19          //update signature
sltiu x18,x3,0x555
add x31, x31, x18          //update signature
sltiu x17,x3,0x7FF
add x31, x31, x17          //update signature
sltiu x16,x4,0x000
add x31, x31, x16          //update signature
sltiu x15,x4,0x001
add x31, x31, x15          //update signature
sltiu x14,x4,0x2AA
add x31, x31, x14          //update signature
sltiu x13,x4,0x555
add x31, x31, x13          //update signature
sltiu x12,x4,0x7FF
add x31, x31, x12          //update signature
sltiu x11,x5,0x000
add x31, x31, x11          //update signature
sltiu x10,x5,0x001
add x31, x31, x10          //update signature
sltiu x9,x5,0x2AA
add x31, x31, x9          //update signature
sltiu x8,x5,0x555
add x31, x31, x8          //update signature
sltiu x7,x5,0x7FF
add x31, x31, x7          //update signature
sltiu x5,x6,0x000
add x31, x31, x5          //update signature
sltiu x4,x6,0x001
add x31, x31, x4          //update signature
sltiu x3,x6,0x2AA
add x31, x31, x3          //update signature
sltiu x2,x6,0x555
add x31, x31, x2          //update signature
//	sltiu x1,x6,0x7FF
//	add x31, x31, x1          //update signature

la x1, loandst
sw x2, 0(x1)
sw x3, 4(x1)
sw x4, 8(x1)
sw x5, 12(x1)
sw x6, 16(x1)
sw x7, 20(x1)
sw x8, 24(x1)
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



///////// AUIPC ///////////

lui x30,0x0F0F0
add x31, x31, x30          //update signature
lui x29,0x00FF0
add x31, x31, x29          //update signature
lui x28,0x0F00F
add x31, x31, x28          //update signature
lui x27,0x7F7F7
add x31, x31, x27          //update signature
lui x26,0x10101
add x31, x31, x26          //update signature
lui x25,0x01010
add x31, x31, x25          //update signature
lui x24,0x000FF
add x31, x31, x24          //update signature
lui x23,0x3AFAC
add x31, x31, x23          //update signature
lui x22,0x36472
add x31, x31, x22          //update signature
lui x21,0x5DDD5

/*
add x31, x31, x21          //update signature
lui x20,0x1AAA1
add x31, x31, x20          //update signature
lui x19,0x00001
add x31, x31, x19          //update signature
lui x18,0x00CCC
add x31, x31, x18          //update signature
lui x17,0x0DADA
add x31, x31, x17          //update signature
lui x16,0x07654
add x31, x31, x16          //update signature
lui x15,0x54321
add x31, x31, x15          //update signature
lui x14,0x55555
add x31, x31, x14          //update signature
lui x13,0x5AAAA
add x31, x31, x13          //update signature
lui x12,0x11111
add x31, x31, x12          //update signature
lui x11,0x12323
add x31, x31, x11          //update signature
lui x10,0x33333
add x31, x31, x10          //update signature
lui x9,0x11111
add x31, x31, x9          //update signature
lui x8,0x444DD
add x31, x31, x8          //update signature
lui x7,0x70000
add x31, x31, x7          //update signature
lui x6,0x00000
add x31, x31, x6          //update signature
lui x5,0x22222
add x31, x31, x5          //update signature
lui x4,0x2CE89
add x31, x31, x4          //update signature
lui x3,0x2AAAA
add x31, x31, x3          //update signature
lui x2,0x20123
add x31, x31, x2          //update signature
//	lui x1,0x3C7D1
//	add x31, x31, x1          //update signature

la x1, loandst
sw x2, 0(x1)
sw x3, 4(x1)
sw x4, 8(x1)
sw x5, 12(x1)
sw x6, 16(x1)
sw x7, 20(x1)
sw x8, 24(x1)
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



//AUIPC
auipc x30,0x0F0F0
add x31, x31, x30          //update signature
auipc x29,0x00FF0
add x31, x31, x29          //update signature
auipc x28,0x0F00F
add x31, x31, x28          //update signature
auipc x27,0x7F7F7
add x31, x31, x27          //update signature
auipc x26,0x10101
add x31, x31, x26          //update signature
auipc x25,0x01010
add x31, x31, x25          //update signature
auipc x24,0x000FF
add x31, x31, x24          //update signature
auipc x23,0x3AFAC
add x31, x31, x23          //update signature
auipc x22,0x36472
add x31, x31, x22          //update signature

/*
auipc x21,0x5DDD5
add x31, x31, x21          //update signature
auipc x20,0x1AAA1
add x31, x31, x20          //update signature
auipc x19,0x00001
add x31, x31, x19          //update signature
auipc x18,0x00CCC
add x31, x31, x18          //update signature
auipc x17,0x0DADA
add x31, x31, x17          //update signature
auipc x16,0x07654
add x31, x31, x16          //update signature
auipc x15,0x54321
add x31, x31, x15          //update signature
auipc x14,0x55555
add x31, x31, x14          //update signature
auipc x13,0x5AAAA
add x31, x31, x13          //update signature
auipc x12,0x11111
add x31, x31, x12          //update signature
auipc x11,0x12323
add x31, x31, x11          //update signature
auipc x10,0x33333
add x31, x31, x10          //update signature
auipc x9,0x11111
add x31, x31, x9          //update signature
auipc x8,0x444DD
add x31, x31, x8          //update signature
auipc x7,0x70000
add x31, x31, x7          //update signature
auipc x6,0x00000
add x31, x31, x6          //update signature
auipc x5,0x22222
add x31, x31, x5          //update signature
auipc x4,0x2CE89
add x31, x31, x4          //update signature
auipc x3,0x2AAAA
add x31, x31, x3          //update signature
auipc x2,0x20123
add x31, x31, x2          //update signature
//	auipc x1,0x3C7D1
//	add x31, x31, x1          //update signature

la x1, loandst
sw x2, 0(x1)
sw x3, 4(x1)
sw x4, 8(x1)
sw x5, 12(x1)
sw x6, 16(x1)
sw x7, 20(x1)
sw x8, 24(x1)
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


///////// SHIFT OPERATIONS /////////



//SLL

li x1,0xFFFFFFFF
li x2,0xF0F0F0F0
li x3,0x00000000
li x4,0x0F0F0F0F
li x5,0xAAAAAAAA
li x6,0x55555555

slli x13, x1, 1
     add x31, x31, x13          //update signature
slli x14, x1, 2
     add x31, x31, x14         //update signature
slli x15, x1, 4
     add x31, x31, x15          //update signature
slli x16, x1, 8
     add x31, x31, x16         //update signature
slli x17, x1, 16
     add x31, x31, x17         //update signature
slli x18, x1, 24
     add x31, x31, x18         //update signature
slli x19, x2, 1
     add x31, x31, x19         //update signature
slli x20, x2, 2
     add x31, x31, x20         //update signature
slli x21, x2, 4
     add x31, x31, x21         //update signature
slli x22, x2, 8
     add x31, x31, x22         //update signature
slli x23, x2, 16
     add x31, x31, x23         //update signature
slli x24, x2, 24
     add x31, x31, x24         //update signature


/*
slli x25, x3, 1
     add x31, x31, x25         //update signature
slli x26, x3, 2
     add x31, x31, x26         //update signature
slli x27, x3, 4
     add x31, x31, x27         //update signature
slli x28, x3, 8
     add x31, x31, x28         //update signature
slli x29, x3, 16
     add x31, x31, x29         //update signature
slli x30, x3, 24
     add x31, x31, x30         //update signature

     la x9, loandst
     sw x13, 0(x9)
     sw x14, 4(x9)
     sw x15, 8(x9)
     sw x16, 12(x9)
     sw x17, 16(x9)
     sw x18, 20(x9)
     sw x19, 24(x9)
     sw x20, 28(x9)
     sw x21, 32(x9)
     sw x22, 36(x9)
     sw x23, 40(x9)
     sw x24, 44(x9)
     sw x25, 48(x9)
     sw x26, 52(x9)
     sw x27, 56(x9)
     sw x28, 60(x9)
     sw x29, 64(x9)
     sw x30, 68(x9)

slli x13, x4, 1
     add x31, x31, x13         //update signature
slli x14, x4, 2
     add x31, x31, x14         //update signature
slli x15, x4, 4
     add x31, x31, x15         //update signature
slli x16, x4, 8
     add x31, x31, x16         //update signature
slli x17, x4, 16
     add x31, x31, x17         //update signature
slli x18, x4, 24
     add x31, x31, x18         //update signature
slli x19, x5, 1
     add x31, x31, x19         //update signature
slli x20, x5, 2
     add x31, x31, x20         //update signature
slli x21, x5, 4
     add x31, x31, x21         //update signature
slli x22, x5, 8
     add x31, x31, x22         //update signature
slli x23, x5, 16
     add x31, x31, x23         //update signature
slli x24, x5, 24
     add x31, x31, x24         //update signature
slli x25, x6, 1
     add x31, x31, x25         //update signature
slli x26, x6, 2
     add x31, x31, x26         //update signature
slli x27, x6, 4
     add x31, x31, x27         //update signature
slli x28, x6, 8
     add x31, x31, x28         //update signature
slli x29, x6, 16
     add x31, x31, x29         //update signature
slli x30, x6, 24
     add x31, x31, x30         //update signature

     la x9, loandst
     sw x13, 0(x9)
     sw x14, 4(x9)
     sw x15, 8(x9)
     sw x16, 12(x9)
     sw x17, 16(x9)
     sw x18, 20(x9)
     sw x19, 24(x9)
     sw x20, 28(x9)
     sw x21, 32(x9)
     sw x22, 36(x9)
     sw x23, 40(x9)
     sw x24, 44(x9)
     sw x25, 48(x9)
     sw x26, 52(x9)
     sw x27, 56(x9)
     sw x28, 60(x9)
     sw x29, 64(x9)
     sw x30, 68(x9)

*/



//SRL

li x1,0xFFFFFFFF
li x2,0xF0F0F0F0
li x3,0x00000000
li x4,0x0F0F0F0F
li x5,0xAAAAAAAA
li x6,0x55555555

srli x13, x1, 1
     add x31, x31, x13          //update signature
srli x14, x1, 2
     add x31, x31, x14         //update signature
srli x15, x1, 4
     add x31, x31, x15          //update signature
srli x16, x1, 8
     add x31, x31, x16         //update signature
srli x17, x1, 16
     add x31, x31, x17         //update signature
srli x18, x1, 24
     add x31, x31, x18         //update signature
srli x19, x2, 1
     add x31, x31, x19         //update signature
srli x20, x2, 2
     add x31, x31, x20         //update signature
srli x21, x2, 4
     add x31, x31, x21         //update signature
srli x22, x2, 8
     add x31, x31, x22         //update signature
srli x23, x2, 16
     add x31, x31, x23         //update signature
srli x24, x2, 24
     add x31, x31, x24         //update signature



/*
srli x25, x3, 1
     add x31, x31, x25         //update signature
srli x26, x3, 2
     add x31, x31, x26         //update signature
srli x27, x3, 4
     add x31, x31, x27         //update signature
srli x28, x3, 8
     add x31, x31, x28         //update signature
srli x29, x3, 16
     add x31, x31, x29         //update signature
srli x30, x3, 24
     add x31, x31, x30         //update signature

     la x9, loandst
     sw x13, 0(x9)
     sw x14, 4(x9)
     sw x15, 8(x9)
     sw x16, 12(x9)
     sw x17, 16(x9)
     sw x18, 20(x9)
     sw x19, 24(x9)
     sw x20, 28(x9)
     sw x21, 32(x9)
     sw x22, 36(x9)
     sw x23, 40(x9)
     sw x24, 44(x9)
     sw x25, 48(x9)
     sw x26, 52(x9)
     sw x27, 56(x9)
     sw x28, 60(x9)
     sw x29, 64(x9)
     sw x30, 68(x9)

srli x13, x4, 1
     add x31, x31, x13         //update signature
srli x14, x4, 2
     add x31, x31, x14         //update signature
srli x15, x4, 4
     add x31, x31, x15         //update signature
srli x16, x4, 8
     add x31, x31, x16         //update signature
srli x17, x4, 16
     add x31, x31, x17         //update signature
srli x18, x4, 24
     add x31, x31, x18         //update signature
srli x19, x5, 1
     add x31, x31, x19         //update signature
srli x20, x5, 2
     add x31, x31, x20         //update signature
srli x21, x5, 4
     add x31, x31, x21         //update signature
srli x22, x5, 8
     add x31, x31, x22         //update signature
srli x23, x5, 16
     add x31, x31, x23         //update signature
srli x24, x5, 24
     add x31, x31, x24         //update signature
srli x25, x6, 1
     add x31, x31, x25         //update signature
srli x26, x6, 2
     add x31, x31, x26         //update signature
srli x27, x6, 4
     add x31, x31, x27         //update signature
srli x28, x6, 8
     add x31, x31, x28         //update signature
srli x29, x6, 16
     add x31, x31, x29         //update signature
srli x30, x6, 24
     add x31, x31, x30         //update signature

     la x9, loandst
     sw x13, 0(x9)
     sw x14, 4(x9)
     sw x15, 8(x9)
     sw x16, 12(x9)
     sw x17, 16(x9)
     sw x18, 20(x9)
     sw x19, 24(x9)
     sw x20, 28(x9)
     sw x21, 32(x9)
     sw x22, 36(x9)
     sw x23, 40(x9)
     sw x24, 44(x9)
     sw x25, 48(x9)
     sw x26, 52(x9)
     sw x27, 56(x9)
     sw x28, 60(x9)
     sw x29, 64(x9)
     sw x30, 68(x9)

*/


//SRA

li x1,0xFFFFFFFF
li x2,0xF0F0F0F0
li x3,0x00000000
li x4,0x0F0F0F0F
li x5,0xAAAAAAAA
li x6,0x55555555

srai x13, x1, 1
     add x31, x31, x13          //update signature
srai x14, x1, 2
     add x31, x31, x14         //update signature
srai x15, x1, 4
     add x31, x31, x15          //update signature
srai x16, x1, 8
     add x31, x31, x16         //update signature
srai x17, x1, 16
     add x31, x31, x17         //update signature
srai x18, x1, 24
     add x31, x31, x18         //update signature
srai x19, x2, 1
     add x31, x31, x19         //update signature
srai x20, x2, 2
     add x31, x31, x20         //update signature
srai x21, x2, 4
     add x31, x31, x21         //update signature
srai x22, x2, 8
     add x31, x31, x22         //update signature
srai x23, x2, 16
     add x31, x31, x23         //update signature
srai x24, x2, 24
     add x31, x31, x24         //update signature

/*
srai x25, x3, 1
     add x31, x31, x25         //update signature
srai x26, x3, 2
     add x31, x31, x26         //update signature
srai x27, x3, 4
     add x31, x31, x27         //update signature
srai x28, x3, 8
     add x31, x31, x28         //update signature
srai x29, x3, 16
     add x31, x31, x29         //update signature
srai x30, x3, 24
     add x31, x31, x30         //update signature

     la x9, loandst
     sw x13, 0(x9)
     sw x14, 4(x9)
     sw x15, 8(x9)
     sw x16, 12(x9)
     sw x17, 16(x9)
     sw x18, 20(x9)
     sw x19, 24(x9)
     sw x20, 28(x9)
     sw x21, 32(x9)
     sw x22, 36(x9)
     sw x23, 40(x9)
     sw x24, 44(x9)
     sw x25, 48(x9)
     sw x26, 52(x9)
     sw x27, 56(x9)
     sw x28, 60(x9)
     sw x29, 64(x9)
     sw x30, 68(x9)

srai x13, x4, 1
     add x31, x31, x13         //update signature
srai x14, x4, 2
     add x31, x31, x14         //update signature
srai x15, x4, 4
     add x31, x31, x15         //update signature
srai x16, x4, 8
     add x31, x31, x16         //update signature
srai x17, x4, 16
     add x31, x31, x17         //update signature
srai x18, x4, 24
     add x31, x31, x18         //update signature
srai x19, x5, 1
     add x31, x31, x19         //update signature
srai x20, x5, 2
     add x31, x31, x20         //update signature
srai x21, x5, 4
     add x31, x31, x21         //update signature
srai x22, x5, 8
     add x31, x31, x22         //update signature
srai x23, x5, 16
     add x31, x31, x23         //update signature
srai x24, x5, 24
     add x31, x31, x24         //update signature
srai x25, x6, 1
     add x31, x31, x25         //update signature
srai x26, x6, 2
     add x31, x31, x26         //update signature
srai x27, x6, 4
     add x31, x31, x27         //update signature
srai x28, x6, 8
     add x31, x31, x28         //update signature
srai x29, x6, 16
     add x31, x31, x29         //update signature
srai x30, x6, 24
     add x31, x31, x30         //update signature

     la x9, loandst
     sw x13, 0(x9)
     sw x14, 4(x9)
     sw x15, 8(x9)
     sw x16, 12(x9)
     sw x17, 16(x9)
     sw x18, 20(x9)
     sw x19, 24(x9)
     sw x20, 28(x9)
     sw x21, 32(x9)
     sw x22, 36(x9)
     sw x23, 40(x9)
     sw x24, 44(x9)
     sw x25, 48(x9)
     sw x26, 52(x9)
     sw x27, 56(x9)
     sw x28, 60(x9)
     sw x29, 64(x9)
     sw x30, 68(x9)


*/

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
	.global alui_test_result

signature:
	.space 4

loandst:
	.space 150

save_regs:
	.space 0x7C
