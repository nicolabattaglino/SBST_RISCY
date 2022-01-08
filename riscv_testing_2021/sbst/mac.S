.section .text
.global _sbst_mac
.type _sbst_mac, @function

_sbst_mac:


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

//////////// MUL //////////////

//MUL

li x1,0x00000001
li x2,0xF0F0F0F0
li x3,0x0F0F0F0F
li x4,0x0000FFFF
li x5,0xFFFF0000
li x6,0xFFFFFFFF
li x7,0x55555555
li x8,0xAAAAAAAA

mul x9, x2, x1
add x31, x31, x9         //update signature
mul x10, x2, x3
add x31, x31, x10         //update signature
mul x11, x2, x4
add x31, x31, x11         //update signature
mul x12, x2, x7
add x31, x31, x12         //update signature
mul x13, x2, x8
add x31, x31, x13         //update signature
mul x14, x3, x4
add x31, x31, x14         //update signature
mul x15, x4, x1
add x31, x31, x15         //update signature
mul x16, x5, x2
add x31, x31, x16        //update signature
mul x17, x5, x3
add x31, x31, x17        //update signature
mul x18, x5, x4
add x31, x31, x18         //update signature
mul x19, x5, x7
add x31, x31, x19         //update signature
mul x20, x5, x8
add x31, x31, x20         //update signature
mul x21, x6, x1
add x31, x31, x21         //update signature
mul x22, x6, x2
add x31, x31, x22         //update signature
mul x23, x6, x3
add x31, x31, x23         //update signature
mul x24, x6, x4
add x31, x31, x24         //update signature
mul x25, x6, x5
add x31, x31, x25        //update signature
mul x26, x6, x7
add x31, x31, x26         //update signature
mul x27, x6, x8
add x31, x31, x27         //update signature
mul x28, x7, x3
add x31, x31, x28         //update signature
mul x29, x7, x4
add x31, x31, x29         //update signature
mul x30, x8, x7
add x31, x31, x30         //update signature


//mulH

li x1,0x00000001
li x2,0xF0F0F0F0
li x3,0x0F0F0F0F
li x4,0x0000FFFF
li x5,0xFFFF0000
li x6,0xFFFFFFFF
li x7,0x55555555
li x8,0xAAAAAAAA

mulh x9, x2, x1
add x31, x31, x9         //update signature
mulh x10, x2, x3
add x31, x31, x10         //update signature
mulh x11, x2, x4
add x31, x31, x11         //update signature
mulh x12, x2, x7
add x31, x31, x12         //update signature
mulh x13, x2, x8
add x31, x31, x13         //update signature
mulh x14, x3, x4
add x31, x31, x14         //update signature
mulh x15, x4, x1
add x31, x31, x15         //update signature
mulh x16, x5, x2
add x31, x31, x16         //update signature
mulh x17, x5, x3
add x31, x31, x17         //update signature
mulh x18, x5, x4
add x31, x31, x18         //update signature
mulh x19, x5, x7
add x31, x31, x19         //update signature
mulh x20, x5, x8
add x31, x31, x20         //update signature
mulh x21, x6, x1
add x31, x31, x21         //update signature
mulh x22, x6, x2
add x31, x31, x22         //update signature
mulh x23, x6, x3
add x31, x31, x23         //update signature
mulh x24, x6, x4
add x31, x31, x24         //update signature
mulh x25, x6, x5
add x31, x31, x25         //update signature
mulh x26, x6, x7
add x31, x31, x26         //update signature
mulh x27, x6, x8
add x31, x31, x27         //update signature
mulh x28, x7, x3
add x31, x31, x28         //update signature
mulh x29, x7, x4
add x31, x31, x29         //update signature
mulh x30, x8, x7
add x31, x31, x30         //update signature



//mulHU

li x1,0x00000001
li x2,0xF0F0F0F0
li x3,0x0F0F0F0F
li x4,0x0000FFFF
li x5,0xFFFF0000
li x6,0xFFFFFFFF
li x7,0x55555555
li x8,0xAAAAAAAA

mulhu x9, x2, x1
add x31, x31, x9         //update signature
mulhu x10, x2, x3
add x31, x31, x10         //update signature
mulhu x11, x2, x4
add x31, x31, x11         //update signature
mulhu x12, x2, x7
add x31, x31, x12         //update signature
mulhu x13, x2, x8
add x31, x31, x13         //update signature
mulhu x14, x3, x4
add x31, x31, x14         //update signature
mulhu x15, x4, x1
add x31, x31, x15         //update signature
mulhu x16, x5, x2
add x31, x31, x16         //update signature
mulhu x17, x5, x3
add x31, x31, x17         //update signature
mulhu x18, x5, x4
add x31, x31, x18         //update signature
mulhu x19, x5, x7
add x31, x31, x19         //update signature
mulhu x20, x5, x8
add x31, x31, x20         //update signature
mulhu x21, x6, x1
add x31, x31, x21         //update signature
mulhu x22, x6, x2
add x31, x31, x22         //update signature
mulhu x23, x6, x3
add x31, x31, x23         //update signature
mulhu x24, x6, x4
add x31, x31, x24         //update signature
mulhu x25, x6, x5
add x31, x31, x25         //update signature
mulhu x26, x6, x7
add x31, x31, x26         //update signature
mulhu x27, x6, x8
add x31, x31, x27         //update signature
mulhu x28, x7, x3
add x31, x31, x28         //update signature
mulhu x29, x7, x4
add x31, x31, x29         //update signature
mulhu x30, x8, x7
add x31, x31, x30         //update signature




//mulHSU

li x1,0x00000001
li x2,0xF0F0F0F0
li x3,0x0F0F0F0F
li x4,0x0000FFFF
li x5,0xFFFF0000
li x6,0xFFFFFFFF
li x7,0x55555555
li x8,0xAAAAAAAA

mulhsu x9, x2, x1
add x31, x31, x9         //update signature
mulhsu x10, x2, x3
add x31, x31, x10         //update signature
mulhsu x11, x2, x4
add x31, x31, x11         //update signature
mulhsu x12, x2, x7
add x31, x31, x12         //update signature
mulhsu x13, x2, x8
add x31, x31, x13         //update signature
mulhsu x14, x3, x4
add x31, x31, x14         //update signature
mulhsu x15, x4, x1
add x31, x31, x15         //update signature
mulhsu x16, x5, x2
add x31, x31, x16         //update signature
mulhsu x17, x5, x3
add x31, x31, x17         //update signature
mulhsu x18, x5, x4
add x31, x31, x18         //update signature
mulhsu x19, x5, x7
add x31, x31, x19         //update signature
mulhsu x20, x5, x8
add x31, x31, x20         //update signature
mulhsu x21, x6, x1
add x31, x31, x21         //update signature
mulhsu x22, x6, x2
add x31, x31, x22         //update signature
mulhsu x23, x6, x3
add x31, x31, x23         //update signature
mulhsu x24, x6, x4
add x31, x31, x24         //update signature
mulhsu x25, x6, x5
add x31, x31, x25         //update signature
mulhsu x26, x6, x7
add x31, x31, x26         //update signature
mulhsu x27, x6, x8
add x31, x31, x27         //update signature
mulhsu x28, x7, x3
add x31, x31, x28         //update signature
mulhsu x29, x7, x4
add x31, x31, x29         //update signature
mulhsu x30, x8, x7
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
	.global mac_test_result

signature:
	.space 4

save_regs:
	.space 0x7C
