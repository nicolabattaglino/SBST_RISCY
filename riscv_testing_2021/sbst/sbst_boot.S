	.section .text
	.global _sbst_boot
	.type _sbst_boot, @function

_sbst_boot:
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
	

	// disable interrupts (if they were enabled)
	li x21, 0x00000000
	//mstatus (0x300) is the register for handling the interrupts
	//read and store the CSR in the register x20
	csrrs x20, 0x300, x21
	//use the x20 reg to unset the interrupt
	csrrc x22, 0x300, x20

	// load values from rf_patterns 
	la		x31, RF_PATTERNS
	lw		x1,	0*4(x31)  	
	lw		x2,	1*4(x31)
	lw		x3,	2*4(x31)
	lw		x4,	3*4(x31)
	lw		x5,	4*4(x31)
	lw		x6,	5*4(x31)
	lw		x7,	6*4(x31)
	lw		x8,	7*4(x31)
	lw		x9,	8*4(x31)
	lw		x10,	9*4(x31)
	lw		x11,	10*4(x31)
	lw		x12,	11*4(x31)
	lw		x13,	12*4(x31)
	lw		x14,	13*4(x31)
	lw		x15,	14*4(x31)
	
	add		x1,x1,x2
	add		x1,x1,x3
	add		x1,x1,x4
	add		x1,x1,x5
	add		x1,x1,x6
	add		x1,x1,x7
	add		x1,x1,x8
	add		x1,x1,x9
	add		x1,x1,x10
	add		x1,x1,x11
	add		x1,x1,x12
	add		x1,x1,x13
	add		x1,x1,x14
	//store the result of the first addition part in x30 reg
	add		x30,x1,x15
	//load second part of values 
	la		x31, RF_PATTERNS
	lw		x1,	15*4(x31)  	
	lw		x2,	16*4(x31)
	lw		x3,	17*4(x31)
	lw		x4,	18*4(x31)
	lw		x5,	19*4(x31)
	lw		x6,	20*4(x31)
	lw		x7,	21*4(x31)
	lw		x8,	22*4(x31)
	lw		x9,	23*4(x31)
	lw		x10,	24*4(x31)
	lw		x11,	25*4(x31)
	lw		x12,	26*4(x31)
	lw		x13,	27*4(x31)
	lw		x14,	28*4(x31)
	lw		x15,	29*4(x31)
	lw		x16,	30*4(x31)
	// sum the second part of values
	add		x1,x1,x2
	add		x1,x1,x3
	add		x1,x1,x4
	add		x1,x1,x5
	add		x1,x1,x6
	add		x1,x1,x7
	add		x1,x1,x8
	add		x1,x1,x9
	add		x1,x1,x10
	add		x1,x1,x11
	add		x1,x1,x12
	add		x1,x1,x13
	add		x1,x1,x14
	add		x1,x1,x15
	add		x1,x1,x16
	// store the value of the first (x30) and the second (x1) part of the addition in x30 register
	add		x30,x30,x1

	//store value in signature
	la x31, signature
	sw x30,0*4(x31)

	// write the result (check label 'test_result') 
	la x31,test_result
	sw x30,0*4(x31)
	
	li x1, 0x00000001
	addi x1,x1,2
	not x1,x1
	addi x1,x1,3
	
	// restore interrupts (if they were active before!)
	// in x20 there is the vector with the previuos active interrupts
	// set interrupts
	csrrs x21, 0x300, x20

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

test_result:
	.space 4
save_regs:
	.space 0x7C
signature:
	.space 4

// -------------------------------------
	.section ".TEST_RODATA", "a"

RF_PATTERNS:
	.long 0x00000001
	.long 0x00000002
	.long 0x00000003
	.long 0x00000004
	.long 0x00000005
	.long 0x00000006
	.long 0x00000007
	.long 0x00000008
	.long 0x00000009
	.long 0x0000000A
	.long 0x0000000B
	.long 0x0000000C
	.long 0x0000000D
	.long 0x0000000E
	.long 0x0000000F
	.long 0x00000010
	.long 0x00000011
	.long 0x00000012
	.long 0x00000013
	.long 0x00000014
	.long 0x00000015
	.long 0x00000016
	.long 0x00000017
	.long 0x00000018
	.long 0x00000019
	.long 0x0000001A
	.long 0x0000001B
	.long 0x0000001C
	.long 0x0000001D
	.long 0x0000001E
	.long 0x0000001F
	





OTHER_PATTERNS:
	.long 0x0
	.long 0x0
