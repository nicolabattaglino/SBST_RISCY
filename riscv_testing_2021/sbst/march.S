	.section .text
	.global _march
	.type _march, @function

_march:

//   MATS+

    lui	x5, %hi(__RAM_START)
    addi x5, x5, %lo(__RAM_START)
    lui x6, %hi(__RAM_END)
    addi x6, x6, %lo(__RAM_END)
    lui x7, %hi(__RAM_START)
    addi x7, x7, %lo(__RAM_END)
   
    li x8,0xffffffff
    li x9,0x00000000
    // write all 0
    ciclo1:
    sw  x9,0(x7) 
    addi x7,x7,4
    bne x7,x6,ciclo1
		
    // read 0, write 1
    
    mv x7,x2

    ciclo2:
    lw  x10,0(x7)
    bne x10,x9,errore
    sw  x8,0(x7)
    addi x7,x7,-4
    bne x7,x1,ciclo2

    // read 1, write 0
    mv x7,x1

    ciclo3:
    lw  x10,0(x7)
    bne x10,x8,errore
    sw  x9,4(x7)
    addi x7,x7,4
    bne x7,x2,ciclo3
    li x10, 0x00000000
    j fine
    errore:
    li x10,0x00000001
    fine:
ret

// -------------------------------------
	.section ".TEST_DATA", "aw"
	.global march_test_result
save_regs:
	.space 0x7C

