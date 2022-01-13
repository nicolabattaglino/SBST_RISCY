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


////////// MAC ///////////

li                  x2,     0x399237f5
li                  x24,    0xfa5d437f
p.mac               x9,     x2,     x24
add 				x31,    x31,    x9         //update signature
li                  x27,    0x38f6f473
li                  x2,     0xb60ea21
p.mac               x7,     x27,    x2
add 				x31,    x31,    x7         //update signature
li                  x3,     0x329f8c78
li                  x10,    0x4fd0efa8
p.mac               x15,    x3,     x10
add 				x31,    x31,    x15         //update signature

li                  x1,     0xdb7997b0
li                  x16,    0x9c235054
p.msu               x26,    x1,     x16
add 				x31,    x31,    x26         //update signature
li                  x23,    0x7aba8893
li                  x8,     0x5226cb59
p.msu               x7,     x23,    x8
add 				x31,    x31,    x7         //update signature
li                  x19,    0xe7b2f985
li                  x20,    0xa49112d4
p.msu               x19,    x19,    x20
add 				x31,    x31,    x19         //update signature

li                  x20,    0xb172755
li                  x16,    0x85b55787
p.muls              x16,    x20,    x16
add 				x31,    x31,    x16         //update signature
li                  x30,    0xf3661180
li                  x23,    0x6a1cef73
p.muls              x30,    x30,    x23
add 				x31,    x31,    x30         //update signature
li                  x0,     0x2c8b96bd
li                  x25,    0xd6514464
p.muls              x13,    x0,     x25
add 				x31,    x31,    x13         //update signature

li                  x4,     0x2e240162
li                  x7,     0x9d6ad627
p.mulhhs            x11,    x4,     x7
add 				x31,    x31,    x11         //update signature
li                  x12,    0xe4e88664
li                  x24,    0xd04a1c00
p.mulhhs            x29,    x12,    x24
add 				x31,    x31,    x29         //update signature
li                  x11,    0x4e5e5e38
li                  x27,    0x705ce624
p.mulhhs            x1,     x11,    x27
add 				x31,    x31,    x1         //update signature

li                  x30,    0x8cc0495c
li                  x4,     0xf9c219b7
p.mulu              x26,    x30,    x4
add 				x31,    x31,    x26         //update signature
li                  x29,    0x800948f8
li                  x1,     0xc14c6dd1
p.mulu              x21,    x29,    x1
add 				x31,    x31,    x21         //update signature
li                  x7,     0xfd465a83
li                  x4,     0x571cd24e
p.mulu              x1,     x7,     x4
add 				x31,    x31,    x1         //update signature

li                  x8,     0x8c422964
li                  x23,    0x405c4837
p.mulhhu            x27,    x8,     x23
add 				x31,    x31,    x27         //update signature
li                  x11,    0x9c341886
li                  x21,    0xa3ba7099
p.mulhhu            x27,    x11,    x21
add 				x31,    x31,    x27         //update signature
li                  x22,    0x466c78ce
li                  x8,     0x5506ec2
p.mulhhu            x23,    x22,    x8
add 				x31,    x31,    x23         //update signature


////////// MULT //////////////

	p.mulsN             x10,    x25,    x11,    7
	add 				x31,    x31,    x10         //update signature
	p.mulsN             x10,    x10,    x29,    27
	add 				x31,    x31,    x10         //update signature
	p.mulsN             x1,     x9,     x18,    31
	add 				x31,    x31,    x1         //update signature

	p.mulhhsN           x13,    x6,     x17,    6
	add 				x31,    x31,    x13         //update signature
	p.mulhhsN           x6,     x20,    x2,     15
	add 				x31,    x31,    x6         //update signature
	p.mulhhsN           x8,     x12,    x31,    26
	add 				x31,    x31,    x8         //update signature

	p.mulsRN            x4,     x5,     x28,    2
	add 				x31,    x31,    x4         //update signature
	p.mulsRN            x6,     x0,     x27,    16
	add 				x31,    x31,    x6         //update signature
	p.mulsRN            x29,    x19,    x0,     14
	add 				x31,    x31,    x29         //update signature

	p.mulhhsRN          x29,    x9,     x8,     14
	add 				x31,    x31,    x29         //update signature
	p.mulhhsRN          x7,     x30,    x8,     0
	add 				x31,    x31,    x7         //update signature
	p.mulhhsRN          x14,    x0,     x25,    29
	add 				x31,    x31,    x14         //update signature

	p.muluN             x22,    x29,    x21,    0
	add 				x31,    x31,    x22         //update signature
	p.muluN             x20,    x22,    x10,    2
	add 				x31,    x31,    x20         //update signature
	p.muluN             x12,    x19,    x27,    16
	add 				x31,    x31,    x12         //update signature

	p.mulhhuN           x26,    x8,     x12,    5
	add 				x31,    x31,    x26         //update signature
	p.mulhhuN           x10,    x2,     x23,    10
	add 				x31,    x31,    x10         //update signature
	p.mulhhuN           x25,    x1,     x5,     25
	add 				x31,    x31,    x25         //update signature

	p.muluRN            x13,    x6,     x17,    9
	add 				x31,    x31,    x13         //update signature
	p.muluRN            x19,    x1,     x29,    8
	add 				x31,    x31,    x19         //update signature
	p.muluRN            x3,     x28,    x7,     0
	add 				x31,    x31,    x3         //update signature

	p.mulhhuRN          x18,    x13,    x6,     4
	add 				x31,    x31,    x18         //update signature
	p.mulhhuRN          x27,    x6,     x2,     1
	add 				x31,    x31,    x27         //update signature
	p.mulhhuRN          x30,    x7,     x13,    4
	add 				x31,    x31,    x30         //update signature

	p.macsN             x24,    x21,    x20,    6
	add 				x31,    x31,    x24         //update signature
	p.macsN             x17,    x4,     x15,    16
	add 				x31,    x31,    x17         //update signature
	p.macsN             x21,    x4,     x25,    10
	add 				x31,    x31,    x21         //update signature

	p.machhsN           x11,    x13,    x14,    19
	add 				x31,    x31,    x11         //update signature
	p.machhsN           x17,    x3,     x18,    23
	add 				x31,    x31,    x17         //update signature
	p.machhsN           x7,     x23,    x3,     29
	add 				x31,    x31,    x7         //update signature

	p.macsRN            x27,    x10,    x0,     30
	add 				x31,    x31,    x27         //update signature
	p.macsRN            x19,    x25,    x16,    22
	add 				x31,    x31,    x19         //update signature
	p.macsRN            x24,    x11,    x30,    8
	add 				x31,    x31,    x24         //update signature

	p.machhsRN          x15,    x22,    x1,     15
	add 				x31,    x31,    x15         //update signature
	p.machhsRN          x20,    x0,     x29,    24
	add 				x31,    x31,    x20         //update signature
	p.machhsRN          x11,    x19,    x21,    24
	add 				x31,    x31,    x11         //update signature

	p.macuN             x25,    x25,    x27,    11
	add 				x31,    x31,    x25         //update signature
	p.macuN             x2,     x6,     x28,    27
	add 				x31,    x31,    x2         //update signature
	p.macuN             x1,     x25,    x4,     8
	add 				x31,    x31,    x1         //update signature

	p.machhuN           x1,     x28,    x17,    19
	add 				x31,    x31,    x1         //update signature
	p.machhuN           x4,     x28,    x4,     9
	add 				x31,    x31,    x4         //update signature
	p.machhuN           x1,     x31,    x7,     24
	add 				x31,    x31,    x1         //update signature

	p.macuRN            x10,    x16,    x9,     23
	add 				x31,    x31,    x10         //update signature
	p.macuRN            x24,    x8,     x14,    8
	add 				x31,    x31,    x24         //update signature
	p.macuRN            x21,    x10,    x21,    10
	add 				x31,    x31,    x21         //update signature

	p.machhuRN          x5,     x23,    x24,    2
	add 				x31,    x31,    x5         //update signature
	p.machhuRN          x22,    x21,    x6,     19
	add 				x31,    x31,    x22         //update signature
	p.machhuRN          x25,    x30,    x25,    8
	add 				x31,    x31,    x25         //update signature


///////////////////  OTHER INSTRUCTIONS MUST BE ADDED  /////////////////

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
	.global mac_test_result

signature:
	.space 4

save_regs:
	.space 0x7C
