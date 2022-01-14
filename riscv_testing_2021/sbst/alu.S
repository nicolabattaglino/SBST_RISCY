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



//////////// REGISTER OP ////////////



     //ADD

	li x1,0xFFFFFFFF
	li x2,0xF0F0F0F0
	li x3,0x00000000
	li x4,0x0F0F0F0F
	li x5,0xAAAAAAAA
	li x6,0x55555555

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

/*
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


*/

     //SUB

	li x1,0xFFFFFFFF
	li x2,0xF0F0F0F0
	li x3,0x00000000
	li x4,0x0F0F0F0F
	li x5,0xAAAAAAAA
	li x6,0x55555555

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

/*
	sub x23, x2, x2
	add x31, x31, x23         //update signature
	sub x24, x3, x3
	add x31, x31, x24         //update signature
	sub x25, x4, x4
	add x31, x31, x25         //update signature
	sub x26, x5, x5
	add x31, x31, x26         //update signature
	sub x27, x6, x6
	add x31, x31, x27          //update signature

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


*/


     //AND

	li x1,0xFFFFFFFF
	li x2,0xF0F0F0F0
	li x3,0x00000000
	li x4,0x0F0F0F0F
	li x5,0xAAAAAAAA
	li x6,0x55555555

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

/*
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

*/


     //OR

	li x1,0xFFFFFFFF
	li x2,0xF0F0F0F0
	li x3,0x00000000
	li x4,0x0F0F0F0F
	li x5,0xAAAAAAAA
	li x6,0x55555555

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

/*
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


*/


     //XOR

	li x1,0xFFFFFFFF
	li x2,0xF0F0F0F0
	li x3,0x00000000
	li x4,0x0F0F0F0F
	li x5,0xAAAAAAAA
	li x6,0x55555555

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

/*
	xor x23, x2, x2
	add x31, x31, x23         //update signature
	xor x24, x3, x3
	add x31, x31, x24         //update signature
	xor x25, x4, x4
	add x31, x31, x25         //update signature
	xor x26, x5, x5
	add x31, x31, x26         //update signature
	xor x27, x6, x6
	add x31, x31, x27          //update signature

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

*/



	//SLT
	li x1,0xFFFFFFFF
	li x2,0xF0F0F0F0
	li x3,0x00000000
	li x4,0x0F0F0F0F
	li x5,0xAAAAAAAA
	li x6,0x55555555

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


/*
	slt x23, x2, x2
	add x31, x31, x23         //update signature
	slt x24, x3, x3
	add x31, x31, x24         //update signature
	slt x25, x4, x4
	add x31, x31, x25         //update signature
	slt x26, x5, x5
	add x31, x31, x26         //update signature
	slt x27, x6, x6
	add x31, x31, x27          //update signature

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


*/

	//SLTU
	li x1,0xFFFFFFFF
	li x2,0xF0F0F0F0
	li x3,0x00000000
	li x4,0x0F0F0F0F
	li x5,0xAAAAAAAA
	li x6,0x55555555

	sltu x7, x1, x2
	add x31, x31, x7          //update signature
	sltu x8, x1, x3
	add x31, x31, x8          //update signature
	sltu x9, x1, x4
	add x31, x31, x9          //update signature
	sltu x10, x1, x5
	add x31, x31, x10         //update signature
	sltu x11, x1, x6
	add x31, x31, x11         //update signature
	sltu x12, x2, x3
	add x31, x31, x12         //update signature
	sltu x13, x2, x4
	add x31, x31, x13         //update signature
	sltu x14, x2, x5
	add x31, x31, x14         //update signature
	sltu x15, x2, x6
	add x31, x31, x15         //update signature
	sltu x16, x3, x4
	add x31, x31, x16         //update signature
	sltu x17, x3, x5
	add x31, x31, x17         //update signature
	sltu x18, x3, x6
	add x31, x31, x18         //update signature
	sltu x19, x4, x5
	add x31, x31, x19         //update signature
	sltu x20, x4, x6
	add x31, x31, x20         //update signature
	sltu x21, x5, x6
	add x31, x31, x21         //update signature
	sltu x22, x1, x1
	add x31, x31, x22         //update signature

/*
	sltu x23, x2, x2
	add x31, x31, x23         //update signature
	sltu x24, x3, x3
	add x31, x31, x24         //update signature
	sltu x25, x4, x4
	add x31, x31, x25         //update signature
	sltu x26, x5, x5
	add x31, x31, x26         //update signature
	sltu x27, x6, x6
	add x31, x31, x27          //update signature

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

*/



///////// SHIFT OPERATIONS /////////

	li x1,0xFFFFFFFF
	li x2,0xF0F0F0F0
	li x3,0x00000000
	li x4,0x0F0F0F0F
	li x5,0xAAAAAAAA
	li x6,0x55555555

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

/*
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

		//shifting values
		li x9, 4

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

/*
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

		//shifting values
		li x9, 4

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


/*
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

		//shifting values
		li x9, 4

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
	.global alu_test_result

signature:
	.space 4

loandst:
	.space 150

save_regs:
	.space 0x7C
