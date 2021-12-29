	.section .text
	.global _sbst_alu
	.type _sbst_alu, @function

_sbst_alu:

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

     add x31, x0, x0          //initialize signature


/////////////////// IMMEDIATE OP ///////////////////////

	li x1,0xFFFFFFFF
	li x2,0xF0F0F0F0
	li x3,0x00000000
	li x4,0x0F0F0F0F
	li x5,0xAAAAAAAA
	li x6,0x55555555

	//ADDI
	addi x31,x1,0x000		  //update signature
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
	addi x1,x6,0x7FF
	add x31, x31, x1          //update signature


	//new registers obtained using signature as random value
	add x1, x1, x31
	add x2, x2, x31
	add x3, x3, x31
	add x4, x4, x31
	add x5, x5, x31
	add x6, x6, x31

	// ANDI

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
	andi x1,x6,0x7FF
	add x31, x31, x1          //update signature


	//new registers obtained using signature as random value
	add x1, x1, x31
	add x2, x2, x31
	add x3, x3, x31
	add x4, x4, x31
	add x5, x5, x31
	add x6, x6, x31

	// ORI

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
	ori x1,x6,0x7FF
	add x31, x31, x1          //update signature


	//new registers obtained using signature as random value
	add x1, x1, x31
	add x2, x2, x31
	add x3, x3, x31
	add x4, x4, x31
	add x5, x5, x31
	add x6, x6, x31

	// XORI

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
	xori x1,x6,0x7FF
	add x31, x31, x1          //update signature


	//new registers obtained using signature as random value
	add x1, x1, x31
	add x2, x2, x31
	add x3, x3, x31
	add x4, x4, x31
	add x5, x5, x31
	add x6, x6, x31

	// SLTI

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
	slti x1,x6,0x7FF
	add x31, x31, x1          //update signature


///////// LOAD ///////////

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
	lui x1,0x3C7D1
	add x31, x31, x1          //update signature


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
	auipc x1,0x3C7D1
	add x31, x31, x1          //update signature


///////// SHIFT OPERATIONS /////////

	//new registers obtained using signature as random value
	add x1, x1, x31
	add x2, x2, x31
	add x3, x3, x31
	add x4, x4, x31
	add x5, x5, x31
	add x6, x6, x31

	//SLL
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


	//new registers obtained using signature as random value
	add x1, x1, x31
	add x2, x2, x31
	add x3, x3, x31
	add x4, x4, x31
	add x5, x5, x31
	add x6, x6, x31

     //SRL

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


	//new registers obtained using signature as random value
	add x1, x1, x31
	add x2, x2, x31
	add x3, x3, x31
	add x4, x4, x31
	add x5, x5, x31
	add x6, x6, x31

     //SRA

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




//////////// REGISTER OP ////////////

	//new registers obtained using signature as random value
	add x1, x1, x31
	add x2, x2, x31
	add x3, x3, x31
	add x4, x4, x31
	add x5, x5, x31
	add x6, x6, x31

     //ADD
     add x7, x1, x2
	add x31, x31, x7          //update signature
	add x8, x1, x3
	add x31, x31, x8          //update signature
	add x9, x1, x4
	add x31, x31, x9          //update signature
	add x10, x1, x5
	add x31, x31, x10         //update signature
	add x11, x1, x6
	add x31, x31, x11         //update signature
	add x12, x2, x3
	add x31, x31, x12         //update signature
	add x13, x2, x4
	add x31, x31, x13         //update signature
	add x14, x2, x5
	add x31, x31, x14         //update signature
	add x15, x2, x6
	add x31, x31, x15         //update signature
	add x16, x3, x4
	add x31, x31, x16         //update signature
	add x17, x3, x5
	add x31, x31, x17         //update signature
	add x18, x3, x6
	add x31, x31, x18         //update signature
	add x19, x4, x5
	add x31, x31, x19         //update signature
	add x20, x4, x6
	add x31, x31, x20         //update signature
	add x21, x5, x6
	add x31, x31, x21         //update signature
	add x22, x1, x1
	add x31, x31, x22         //update signature
	add x23, x2, x2
	add x31, x31, x23         //update signature
	add x24, x3, x3
	add x31, x31, x24         //update signature
	add x25, x4, x4
	add x31, x31, x25         //update signature
	add x26, x5, x5
	add x31, x31, x26         //update signature
	add x27, x6, x6
	add x31, x31, x27          //update signature


	//new registers obtained using signature as random value
	add x1, x1, x31
	add x2, x2, x31
	add x3, x3, x31
	add x4, x4, x31
	add x5, x5, x31
	add x6, x6, x31

     //SUB

     sub x7, x1, x2
	add x31, x31, x7          //update signature
	sub x8, x1, x3
	add x31, x31, x8          //update signature
	sub x9, x1, x4
	add x31, x31, x9          //update signature
	sub x10, x1, x5
	add x31, x31, x10         //update signature
	sub x11, x1, x6
	add x31, x31, x11         //update signature
	sub x12, x2, x3
	add x31, x31, x12         //update signature
	sub x13, x2, x4
	add x31, x31, x13         //update signature
	sub x14, x2, x5
	add x31, x31, x14         //update signature
	sub x15, x2, x6
	add x31, x31, x15         //update signature
	sub x16, x3, x4
	add x31, x31, x16         //update signature
	sub x17, x3, x5
	add x31, x31, x17         //update signature
	sub x18, x3, x6
	add x31, x31, x18         //update signature
	sub x19, x4, x5
	add x31, x31, x19         //update signature
	sub x20, x4, x6
	add x31, x31, x20         //update signature
	sub x21, x5, x6
	add x31, x31, x21         //update signature
	sub x22, x1, x1
	add x31, x31, x22         //update signature
// REDUNDANT
//	sub x23, x2, x2
//	add x31, x31, x23         //update signature
//	sub x24, x3, x3
//	add x31, x31, x24         //update signature
//	sub x25, x4, x4
//	add x31, x31, x25         //update signature
//	sub x26, x5, x5
//	add x31, x31, x26         //update signature
//	sub x27, x6, x6
//	add x31, x31, x27          //update signature


	//new registers obtained using signature as random value
	add x1, x1, x31
	add x2, x2, x31
	add x3, x3, x31
	add x4, x4, x31
	add x5, x5, x31
	add x6, x6, x31

     //AND
	and x7, x1, x2
	add x31, x31, x7          //update signature
	and x8, x1, x3
	add x31, x31, x8          //update signature
	and x9, x1, x4
	add x31, x31, x9          //update signature
	and x10, x1, x5
	add x31, x31, x10         //update signature
	and x11, x1, x6
	add x31, x31, x11         //update signature
	and x12, x2, x3
	add x31, x31, x12         //update signature
	and x13, x2, x4
	add x31, x31, x13         //update signature
	and x14, x2, x5
	add x31, x31, x14         //update signature
	and x15, x2, x6
	add x31, x31, x15         //update signature
	and x16, x3, x4
	add x31, x31, x16         //update signature
	and x17, x3, x5
	add x31, x31, x17         //update signature
	and x18, x3, x6
	add x31, x31, x18         //update signature
	and x19, x4, x5
	add x31, x31, x19         //update signature
	and x20, x4, x6
	add x31, x31, x20         //update signature
	and x21, x5, x6
	add x31, x31, x21         //update signature
	and x22, x1, x1
	add x31, x31, x22         //update signature
	and x23, x2, x2
	add x31, x31, x23         //update signature
	and x24, x3, x3
	add x31, x31, x24         //update signature
	and x25, x4, x4
	add x31, x31, x25         //update signature
	and x26, x5, x5
	add x31, x31, x26         //update signature
	and x27, x6, x6
	add x31, x31, x27          //update signature


	//new registers obtained using signature as random value
	add x1, x1, x31
	add x2, x2, x31
	add x3, x3, x31
	add x4, x4, x31
	add x5, x5, x31
	add x6, x6, x31

     //OR
	or x7, x1, x2
	add x31, x31, x7          //update signature
	or x8, x1, x3
	add x31, x31, x8          //update signature
	or x9, x1, x4
	add x31, x31, x9          //update signature
	or x10, x1, x5
	add x31, x31, x10         //update signature
	or x11, x1, x6
	add x31, x31, x11         //update signature
	or x12, x2, x3
	add x31, x31, x12         //update signature
	or x13, x2, x4
	add x31, x31, x13         //update signature
	or x14, x2, x5
	add x31, x31, x14         //update signature
	or x15, x2, x6
	add x31, x31, x15         //update signature
	or x16, x3, x4
	add x31, x31, x16         //update signature
	or x17, x3, x5
	add x31, x31, x17         //update signature
	or x18, x3, x6
	add x31, x31, x18         //update signature
	or x19, x4, x5
	add x31, x31, x19         //update signature
	or x20, x4, x6
	add x31, x31, x20         //update signature
	or x21, x5, x6
	add x31, x31, x21         //update signature
	or x22, x1, x1
	add x31, x31, x22         //update signature
	or x23, x2, x2
	add x31, x31, x23         //update signature
	or x24, x3, x3
	add x31, x31, x24         //update signature
	or x25, x4, x4
	add x31, x31, x25         //update signature
	or x26, x5, x5
	add x31, x31, x26         //update signature
	or x27, x6, x6
	add x31, x31, x27          //update signature


	//new registers obtained using signature as random value
	add x1, x1, x31
	add x2, x2, x31
	add x3, x3, x31
	add x4, x4, x31
	add x5, x5, x31
	add x6, x6, x31

     //XOR
	xor x7, x1, x2
	add x31, x31, x7          //update signature
	xor x8, x1, x3
	add x31, x31, x8          //update signature
	xor x9, x1, x4
	add x31, x31, x9          //update signature
	xor x10, x1, x5
	add x31, x31, x10         //update signature
	xor x11, x1, x6
	add x31, x31, x11         //update signature
	xor x12, x2, x3
	add x31, x31, x12         //update signature
	xor x13, x2, x4
	add x31, x31, x13         //update signature
	xor x14, x2, x5
	add x31, x31, x14         //update signature
	xor x15, x2, x6
	add x31, x31, x15         //update signature
	xor x16, x3, x4
	add x31, x31, x16         //update signature
	xor x17, x3, x5
	add x31, x31, x17         //update signature
	xor x18, x3, x6
	add x31, x31, x18         //update signature
	xor x19, x4, x5
	add x31, x31, x19         //update signature
	xor x20, x4, x6
	add x31, x31, x20         //update signature
	xor x21, x5, x6
	add x31, x31, x21         //update signature
	xor x22, x1, x1
	add x31, x31, x22         //update signature
//	REDUNDANT
//	xor x23, x2, x2
//	add x31, x31, x23         //update signature
//	xor x24, x3, x3
//	add x31, x31, x24         //update signature
//	xor x25, x4, x4
//	add x31, x31, x25         //update signature
//	xor x26, x5, x5
//	add x31, x31, x26         //update signature
//	xor x27, x6, x6
//	add x31, x31, x27          //update signature


	//new registers obtained using signature as random value
	add x1, x1, x31
	add x2, x2, x31
	add x3, x3, x31
	add x4, x4, x31
	add x5, x5, x31
	add x6, x6, x31

	//SLT

	slt x7, x1, x2
	add x31, x31, x7          //update signature
	slt x8, x1, x3
	add x31, x31, x8          //update signature
	slt x9, x1, x4
	add x31, x31, x9          //update signature
	slt x10, x1, x5
	add x31, x31, x10         //update signature
	slt x11, x1, x6
	add x31, x31, x11         //update signature
	slt x12, x2, x3
	add x31, x31, x12         //update signature
	slt x13, x2, x4
	add x31, x31, x13         //update signature
	slt x14, x2, x5
	add x31, x31, x14         //update signature
	slt x15, x2, x6
	add x31, x31, x15         //update signature
	slt x16, x3, x4
	add x31, x31, x16         //update signature
	slt x17, x3, x5
	add x31, x31, x17         //update signature
	slt x18, x3, x6
	add x31, x31, x18         //update signature
	slt x19, x4, x5
	add x31, x31, x19         //update signature
	slt x20, x4, x6
	add x31, x31, x20         //update signature
	slt x21, x5, x6
	add x31, x31, x21         //update signature
	slt x22, x1, x1
	add x31, x31, x22         //update signature
//	REDUNDANT
//	slt x23, x2, x2
//	add x31, x31, x23         //update signature
//	slt x24, x3, x3
//	add x31, x31, x24         //update signature
//	slt x25, x4, x4
//	add x31, x31, x25         //update signature
//	slt x26, x5, x5
//	add x31, x31, x26         //update signature
//	slt x27, x6, x6
//	add x31, x31, x27          //update signature


///////// SHIFT OPERATIONS /////////

	//new registers obtained using signature as random value
	add x1, x1, x31
	add x2, x2, x31
	add x3, x3, x31
	add x4, x4, x31
	add x5, x5, x31
	add x6, x6, x31

	//shifting values
	li x7, 1
	li x8, 2
	li x9, 4
	li x10, 8
	li x11, 16
	li x12, 24

	//SLL
     sll x13, x1, x7
	     add x31, x31, x13          //update signature
     sll x14, x1, x8
	     add x31, x31, x14         //update signature
     sll x15, x1, x9
	     add x31, x31, x15          //update signature
     sll x16, x1, x10
	     add x31, x31, x16         //update signature
     sll x17, x1, x11
	     add x31, x31, x17         //update signature
     sll x18, x1, x12
	     add x31, x31, x18         //update signature
	sll x19, x2, x7
	     add x31, x31, x19         //update signature
     sll x20, x2, x8
	     add x31, x31, x20         //update signature
     sll x21, x2, x9
	     add x31, x31, x21         //update signature
     sll x22, x2, x10
	     add x31, x31, x22         //update signature
     sll x23, x2, x11
	     add x31, x31, x23         //update signature
     sll x24, x2, x12
	     add x31, x31, x24         //update signature
	sll x25, x3, x7
	     add x31, x31, x25         //update signature
     sll x26, x3, x8
	     add x31, x31, x26         //update signature
     sll x27, x3, x9
	     add x31, x31, x27         //update signature
     sll x28, x3, x10
	     add x31, x31, x28         //update signature
     sll x29, x3, x11
	     add x31, x31, x29         //update signature
     sll x30, x3, x12
	     add x31, x31, x30         //update signature
	sll x13, x4, x7
	     add x31, x31, x13         //update signature
     sll x14, x4, x8
	     add x31, x31, x14         //update signature
     sll x15, x4, x9
	     add x31, x31, x15         //update signature
     sll x16, x4, x10
	     add x31, x31, x16         //update signature
     sll x17, x4, x11
	     add x31, x31, x17         //update signature
     sll x18, x4, x12
	     add x31, x31, x18         //update signature
	sll x19, x5, x7
	     add x31, x31, x19         //update signature
     sll x20, x5, x8
	     add x31, x31, x20         //update signature
     sll x21, x5, x9
	     add x31, x31, x21         //update signature
     sll x22, x5, x10
	     add x31, x31, x22         //update signature
     sll x23, x5, x11
	     add x31, x31, x23         //update signature
     sll x24, x5, x12
	     add x31, x31, x24         //update signature
	sll x25, x6, x7
		add x31, x31, x25         //update signature
	sll x26, x6, x8
		add x31, x31, x26         //update signature
	sll x27, x6, x9
		add x31, x31, x27         //update signature
	sll x28, x6, x10
		add x31, x31, x28         //update signature
	sll x29, x6, x11
		add x31, x31, x29         //update signature
	sll x30, x6, x12
		add x31, x31, x30         //update signature


	//new registers obtained using signature as random value
	add x1, x1, x31
	add x2, x2, x31
	add x3, x3, x31
	add x4, x4, x31
	add x5, x5, x31
	add x6, x6, x31

     //SRL

     srl x13, x1, x7
	     add x31, x31, x13          //update signature
     srl x14, x1, x8
	     add x31, x31, x14         //update signature
     srl x15, x1, x9
	     add x31, x31, x15          //update signature
     srl x16, x1, x10
	     add x31, x31, x16         //update signature
     srl x17, x1, x11
	     add x31, x31, x17         //update signature
     srl x18, x1, x12
	     add x31, x31, x18         //update signature
	srl x19, x2, x7
	     add x31, x31, x19         //update signature
     srl x20, x2, x8
	     add x31, x31, x20         //update signature
     srl x21, x2, x9
	     add x31, x31, x21         //update signature
     srl x22, x2, x10
	     add x31, x31, x22         //update signature
     srl x23, x2, x11
	     add x31, x31, x23         //update signature
     srl x24, x2, x12
	     add x31, x31, x24         //update signature
	srl x25, x3, x7
	     add x31, x31, x25         //update signature
     srl x26, x3, x8
	     add x31, x31, x26         //update signature
     srl x27, x3, x9
	     add x31, x31, x27         //update signature
     srl x28, x3, x10
	     add x31, x31, x28         //update signature
     srl x29, x3, x11
	     add x31, x31, x29         //update signature
     srl x30, x3, x12
	     add x31, x31, x30         //update signature
	srl x13, x4, x7
	     add x31, x31, x13         //update signature
     srl x14, x4, x8
	     add x31, x31, x14         //update signature
     srl x15, x4, x9
	     add x31, x31, x15         //update signature
     srl x16, x4, x10
	     add x31, x31, x16         //update signature
     srl x17, x4, x11
	     add x31, x31, x17         //update signature
     srl x18, x4, x12
	     add x31, x31, x18         //update signature
	srl x19, x5, x7
	     add x31, x31, x19         //update signature
     srl x20, x5, x8
	     add x31, x31, x20         //update signature
     srl x21, x5, x9
	     add x31, x31, x21         //update signature
     srl x22, x5, x10
	     add x31, x31, x22         //update signature
     srl x23, x5, x11
	     add x31, x31, x23         //update signature
     srl x24, x5, x12
	     add x31, x31, x24         //update signature
	srl x25, x6, x7
		add x31, x31, x25         //update signature
	srl x26, x6, x8
		add x31, x31, x26         //update signature
	srl x27, x6, x9
		add x31, x31, x27         //update signature
	srl x28, x6, x10
		add x31, x31, x28         //update signature
	srl x29, x6, x11
		add x31, x31, x29         //update signature
	srl x30, x6, x12
		add x31, x31, x30         //update signature


	//new registers obtained using signature as random value
	add x1, x1, x31
	add x2, x2, x31
	add x3, x3, x31
	add x4, x4, x31
	add x5, x5, x31
	add x6, x6, x31

     //SRA

     sra x13, x1, x7
	     add x31, x31, x13          //update signature
     sra x14, x1, x8
	     add x31, x31, x14         //update signature
     sra x15, x1, x9
	     add x31, x31, x15          //update signature
     sra x16, x1, x10
	     add x31, x31, x16         //update signature
     sra x17, x1, x11
	     add x31, x31, x17         //update signature
     sra x18, x1, x12
	     add x31, x31, x18         //update signature
	sra x19, x2, x7
	     add x31, x31, x19         //update signature
     sra x20, x2, x8
	     add x31, x31, x20         //update signature
     sra x21, x2, x9
	     add x31, x31, x21         //update signature
     sra x22, x2, x10
	     add x31, x31, x22         //update signature
     sra x23, x2, x11
	     add x31, x31, x23         //update signature
     sra x24, x2, x12
	     add x31, x31, x24         //update signature
	sra x25, x3, x7
	     add x31, x31, x25         //update signature
     sra x26, x3, x8
	     add x31, x31, x26         //update signature
     sra x27, x3, x9
	     add x31, x31, x27         //update signature
     sra x28, x3, x10
	     add x31, x31, x28         //update signature
     sra x29, x3, x11
	     add x31, x31, x29         //update signature
     sra x30, x3, x12
	     add x31, x31, x30         //update signature
	sra x13, x4, x7
	     add x31, x31, x13         //update signature
     sra x14, x4, x8
	     add x31, x31, x14         //update signature
     sra x15, x4, x9
	     add x31, x31, x15         //update signature
     sra x16, x4, x10
	     add x31, x31, x16         //update signature
     sra x17, x4, x11
	     add x31, x31, x17         //update signature
     sra x18, x4, x12
	     add x31, x31, x18         //update signature
	sra x19, x5, x7
	     add x31, x31, x19         //update signature
     sra x20, x5, x8
	     add x31, x31, x20         //update signature
     sra x21, x5, x9
	     add x31, x31, x21         //update signature
     sra x22, x5, x10
	     add x31, x31, x22         //update signature
     sra x23, x5, x11
	     add x31, x31, x23         //update signature
     sra x24, x5, x12
	     add x31, x31, x24         //update signature
	sra x25, x6, x7
		add x31, x31, x25         //update signature
	sra x26, x6, x8
		add x31, x31, x26         //update signature
	sra x27, x6, x9
		add x31, x31, x27         //update signature
	sra x28, x6, x10
		add x31, x31, x28         //update signature
	sra x29, x6, x11
		add x31, x31, x29         //update signature
	sra x30, x6, x12
		add x31, x31, x30         //update signature



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


	//DIVU

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



	//REM

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


	//remU

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




///////////////////  OTHER INSTRUCTIONS MUST BE ADDED  /////////////////

     //STORE SIGNATURE
     la x30, signature
     sw x31, 0(x30)

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
	.global alu_test_result

signature:
	.space 4

save_regs:
	.space 0x7C
