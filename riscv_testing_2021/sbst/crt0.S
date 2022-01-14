
/* Entry point for bare metal programs */
.section .text.start
.global _start
.type _start, @function

_start:

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

/* Invoke MARCH test */

	call _march


/* initialize global pointer */
.option push
.option norelax
1:	auipc gp, %pcrel_hi(__global_pointer$)
	addi  gp, gp, %pcrel_lo(1b)
.option pop

/* initialize stack pointer */
	la sp, _sp

/* set vector table address */
	la a0, __vector_start
	csrw mtvec, a0

/* copy all INITIALIZED data sections from ROM to RAM */
	la a0, __TEST_DATA_START
	la a2, __TEST_DATA_END
	sub a2, a2, a0
	la a1, __ROM_TEST_DATA_START
	call memcpy

	la a0, __DATA_BEGIN__
	la a2, __DATA_END__
	sub a2, a2, a0
	la a1, __ROM_DATA_BEGIN__
	call memcpy

	la a0, __SDATA_BEGIN__
	la a2, __SDATA_END__
	sub a2, a2, a0
	la a1, __ROM_SDATA_BEGIN__
	call memcpy

/* clear the bss segment */
	la a0, __bss_start
	la a2, __bss_end
	sub a2, a2, a0
	li a1, 21
	call memset

/* new-style constructors and destructors */
	la a0, __libc_fini_array
	call atexit
	call __libc_init_array

// initialize registers for simulation...
	

///////////////////////////
//////// sbst_boot ////////
///////////////////////////

	la x30, ROUTINES
	lb x29, 0(x30)
	beq x29,x0,boot_correct

	call _sbst_boot

	mv x7, a0
	la x5, SIGNATURES
	lw x6, 0*4(x5)
	beq x6,x7,boot_correct
	j stop
boot_correct:

///////////////////////////
//////// alu //////////////
///////////////////////////

	la x30, ROUTINES
	lb x29, 1(x30)
	beq x29,x0,alu_correct

  	call _sbst_alu

	mv x7, a0
	la x5, SIGNATURES
	lw x6, 1*4(x5)
	beq x6,x7,alu_correct
	j stop
alu_correct:

////////////////////////////
//////// alu2 //////////////
///////////////////////////

	la x30, ROUTINES
	lb x29, 2(x30)
	beq x29,x0,alu2_correct

  	call _sbst_alu2

	mv x7, a0
	la x5, SIGNATURES
	lw x6, 2*4(x5)
	beq x6,x7,alu2_correct
	j stop
alu2_correct:

////////////////////////////
//////// alui //////////////
///////////////////////////

	la x30, ROUTINES
	lb x29, 3(x30)
	beq x29,x0,alui_correct

	call _sbst_alui

	mv x7, a0
	la x5, SIGNATURES
	lw x6, 3*4(x5)
	beq x6,x7,alui_correct
	j stop
alui_correct:

////////////////////////////
//////// palu //////////////
////////////////////////////

	la x30, ROUTINES
	lb x29, 4(x30)
	beq x29,x0,palu_correct

    call _sbst_palu

	mv x7, a0
	la x5, SIGNATURES
	lw x6, 4*4(x5)
	beq x6,x7,palu_correct
	j stop
palu_correct:

////////////////////////////
//////// pvalu /////////////
////////////////////////////

	la x30, ROUTINES
	lb x29, 5(x30)
	beq x29,x0,pvalu_correct

    call _sbst_pvalu

	mv x7, a0
	la x5, SIGNATURES
	lw x6, 5*4(x5)
	beq x6,x7,pvalu_correct
	j stop
pvalu_correct:

////////////////////////////
//////// pvalu2 ////////////
////////////////////////////

	la x30, ROUTINES
	lb x29, 6(x30)
	beq x29,x0,pvalu2_correct

    call _sbst_pvalu2

	mv x7, a0
	la x5, SIGNATURES
	lw x6, 6*4(x5)
	beq x6,x7,pvalu2_correct
	j stop
pvalu2_correct:

////////////////////////////
//////// mac ///////////////
////////////////////////////

	la x30, ROUTINES
	lb x29, 7(x30)
	beq x29,x0,mac_correct

    call _sbst_mac

	mv x7, a0
	la x5, SIGNATURES
	lw x6, 7*4(x5)
	beq x6,x7,mac_correct
	j stop
mac_correct:

////////////////////////////
//////// regs //////////////
////////////////////////////

	la x30, ROUTINES
	lb x29, 8(x30)
	beq x29,x0,regs_correct

    call _sbst_regs

	mv x7, a0
	la x5, SIGNATURES
	lw x6, 8*4(x5)
	beq x6,x7,regs_correct
	j stop
regs_correct:

////////////////////////////
//////// regseb ////////////
////////////////////////////

	la x30, ROUTINES
	lb x29, 9(x30)
	beq x29,x0,regseb_correct

    call _sbst_regseb

	mv x7, a0
	la x5, SIGNATURES
	lw x6, 9*4(x5)
	beq x6,x7,regseb_correct
	j stop
regseb_correct:


////////////////////////////
//////// regsebu ///////////
////////////////////////////

	la x30, ROUTINES
	lb x29, 10(x30)
	beq x29,x0,regsebu_correct

    call _sbst_regsebu

	mv x7, a0
	la x5, SIGNATURES
	lw x6, 10*4(x5)
	beq x6,x7,regsebu_correct
	j stop
regsebu_correct:


////////////////////////////
//////// regseh  ///////////
////////////////////////////

	la x30, ROUTINES
	lb x29, 11(x30)
	beq x29,x0,regseh_correct

    call _sbst_regseh

	mv x7, a0
	la x5, SIGNATURES
	lw x6, 11*4(x5)
	beq x6,x7,regseh_correct
	j stop
regseh_correct:


////////////////////////////
//////// regsehu ///////////
////////////////////////////

	la x30, ROUTINES
	lb x29, 12(x30)
	beq x29, x0, regsehu_correct

    call _sbst_regsehu

	mv x7, a0
	la x5, SIGNATURES
	lw x6, 12*4(x5)
	beq x6, x7, regsehu_correct
	j stop

regsehu_correct:

////////////////////////////
//////// regsew ////////////
////////////////////////////

	la x30, ROUTINES
	lb x29, 13(x30)
	beq x29,a0,regsew_correct

    call _sbst_regsew

	mv x7, a0
	la x5, SIGNATURES
	lw x6, 13*4(x5)
	beq x6,x7,regsew_correct
	j stop
regsew_correct:

////////////////////////////
//////// regsbhw //////////
////////////////////////////

	la x30, ROUTINES
	lb x29, 14(x30)
	beq x29,x0,regsbhw_correct

    call _sbst_regsbhw
	
	mv x7, a0
	la x5, SIGNATURES
	lw x6, 14*4(x5)
	beq x6,x7,regsbhw_correct
	j stop

stop:	j stop

regsbhw_correct:



/* call main */
	//lw a0, 0(sp)                    /* a0 = argc */
	li a0, 0
	//addi a1, sp, __SIZEOF_POINTER__ /* a1 = argv */
	li a1, 0
	li a2, 0                        /* a2 = envp = NULL */
	call main
	tail exit

.size  _start, .-_start

.global _init
.type   _init, @function
.global _fini
.type   _fini, @function
_init:
_fini:
 /* These don't have to do anything since we use init_array/fini_array. Prevent
    missing symbol error */
	ret
.size  _init, .-_init
.size _fini, .-_fini


.section ".TEST_RODATA", "a"

ROUTINES:

	.byte 0x01 // sbst_boot
	.byte 0x01 // alu
	.byte 0x01 // alu2
	.byte 0x01 // alui
	.byte 0x01 // palu
	.byte 0x01 // pvalu
	.byte 0x01 // pvalu2
	.byte 0x01 // mac
	.byte 0x01 // regs
	.byte 0x01 // regseb
	.byte 0x01 // regsebu
	.byte 0x01 // regseh
	.byte 0x01 // regsehu
	.byte 0x01 // regsew
	.byte 0x01 // regsbhw
SIGNATURES:
	.long 0x0000001F // sbst_boot signature
	.long 0x2819099F // alu signature
	.long 0xE4E1E502 // alu2 signature
	.long 0x4E0F8AED // alui signature
	.long 0xE5b6f1fe // palu signature
	.long 0x9D599FFA // pvalu signature
	.long 0x76EDE524 // pvalu2 signature
	.long 0xB28B3DFB // mac signature
	.long 0x26C5266C // regs signature
	.long 0x00000B37 // regseb signature
	.long 0x00000B37 // regsebu signature
	.long 0x0000887D // regseh signature
	.long 0x000BFFF4 // regsehu signature
	.long 0x85ecece2 // regsew signature
	.long 0xFFFFFFA3 // regsbhw signature

