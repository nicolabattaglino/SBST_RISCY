	.section .text
	.global _march
	.type _march, @function

_march:

/*la		x5, save_regs
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
sw		x27,	15*4(x5)*/

    lui	x1, %hi(__RAM_START)
		addi	x1, x1, %lo(__RAM_START)
    lui x2, %hi(__RAM_END)
    addi	x2, x2, %lo(__RAM_END)
	
    //li x2,0x00204000
    mv x3,x1
    li x4,0xffffffff
    li x7,0x00000000

    // write all 1
    ciclo1:
    sw  x4,0(x3) 
    addi x3,x3,4
    bne x3,x2,ciclo1
		
    // read 0, write 1
    mv x3,x2

    ciclo2:
    lw  x6,0(x3)
    bne x6,x7,errore
    sw  x4,0*4(x3)
    addi x3,x3,-4
    bne x3,x1,ciclo2

    // read 1, write 0
    mv x3,x1

    ciclo3:
    lw  x6,0*4(x3)
    bne x6,x4,errore
    sw  x7,4(x3)
    addi x3,x3,4
    bne x3,x2,ciclo3
    j fine
    errore:
    li x1,0xe00ee00e
    fine:
    li x1,0x00000000
    li x2,0x00000000
	 /*la		x5, save_regs
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
	 lw		x27,	15*4(x5)*/
ret

// -------------------------------------
	.section ".TEST_DATA", "aw"
	
save_regs:
	.space 0x7C
