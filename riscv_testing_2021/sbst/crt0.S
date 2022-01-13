
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
	beq x6,a0,boot_correct
	halt
boot_correct:

///////////////////////////
//////// alu //////////////
///////////////////////////

	lb x29, 1(x30)
	beq x29,x0,alu_correct

  	call _sbst_alu

	mv x7, a0
	la x5, SIGNATURES
	lw x6, 1*4(x5)
	beq x6,a0,alu_correct
	halt
alu_correct:

////////////////////////////
//////// alu2 //////////////
///////////////////////////

	lb x29, 2(x30)
	beq x29,x0,alu2_correct

  	call _sbst_alu2

	mv x7, a0
	la x5, SIGNATURES
	lw x6, 2*4(x5)
	beq x6,a0,alu2_correct
	halt
alu2_correct:

////////////////////////////
//////// alui //////////////
////////////////////////////

	lb x29, 3(x30)
	beq x29,x0,alui_correct

	call _sbst_alui

	mv x7, a0
	la x5, SIGNATURES
	lw x6, 3*4(x5)
	beq x6,a0,alui_correct
	halt
alui_correct:

////////////////////////////
//////// palu //////////////
////////////////////////////

	lb x29, 4(x30)
	beq x29,x0,palu_correct

    call _sbst_palu

	mv x7, a0
	la x5, SIGNATURES
	lw x6, 4*4(x5)
	beq x6,a0,palu_correct
	halt
palu_correct:

////////////////////////////
//////// pvalu /////////////
////////////////////////////

	lb x29, 5(x30)
	beq x29,x0,pvalu_correct

    call _sbst_pvalu

	mv x7, a0
	la x5, SIGNATURES
	lw x6, 5*4(x5)
	beq x6,a0,pvalu_correct
	halt
pvalu_correct:

////////////////////////////
//////// pvalu2 ////////////
////////////////////////////

	lb x29, 6(x30)
	beq x29,x0,pvalu2_correct

    call _sbst_pvalu2

	mv x7, a0
	la x5, SIGNATURES
	lw x6, 6*4(x5)
	beq x6,a0,pvalu2_correct
	halt
pvalu2_correct:

////////////////////////////
//////// mac ///////////////
////////////////////////////

	lb x29, 7(x30)
	beq x29,x0,mac_correct

    call _sbst_mac

	mv x7, a0
	la x5, SIGNATURES
	lw x6, 7*4(x5)
	beq x6,a0,mac_correct
	halt
mac_correct:

////////////////////////////
//////// regs //////////////
////////////////////////////

	lb x29, 8(x30)
	beq x29,x0,regs_correct

    call _sbst_regs

	mv x7, a0
	la x5, SIGNATURES
	lw x6, 8*4(x5)
	beq x6,a0,regs_correct
	halt
regs_correct:

////////////////////////////
//////// regseb ////////////
////////////////////////////

	lb x29, 9(x30)
	beq x29,x0,regseb_correct

    call _sbst_regseb

	mv x7, a0
	la x5, SIGNATURES
	lw x6, 9*4(x5)
	beq x6,a0,regseb_correct
	halt
regseb_correct:


////////////////////////////
//////// regsebu ///////////
////////////////////////////

	lb x29, 10(x30)
	beq x29,x0,regsebu_correct

    call _sbst_regsebu

	mv x7, a0
	la x5, SIGNATURES
	lw x6, 10*4(x5)
	beq x6,a0,regsebu_correct
	halt
regsebu_correct:


////////////////////////////
//////// regseh  ///////////
////////////////////////////

	lb x29, 11(x30)
	beq x29,x0,regseh_correct

    call _sbst_regseh

	mv x7, a0
	la x5, SIGNATURES
	lw x6, 11*4(x5)
	beq x6,a0,regseh_correct
	halt
regseh_correct:


////////////////////////////
//////// regsehu ///////////
////////////////////////////

	lb x29, 12(x30)
	beq x29,x0,regsehu_correct

    call _sbst_regsehu

	mv x7, a0
	la x5, SIGNATURES
	lw x6, 12*4(x5)
	beq x6,a0,regsehu_correct
	halt
regsehu_correct:

////////////////////////////
//////// regsew ////////////
////////////////////////////

	lb x29, 13(x30)
	beq x29,x0,regsew_correct

    call _sbst_regsew

	mv x7, a0
	la x5, SIGNATURES
	lw x6, 13*4(x5)
	beq x6,a0,regsew_correct
	halt
regsew_correct:

////////////////////////////
//////// regsebhw //////////
////////////////////////////

	lb x29, 14(x30)
	beq x29,x0,regsebhw_correct

    call _sbst_regsebhw

	mv x7, a0
	la x5, SIGNATURES
	lw x6, 14*4(x5)
	beq x6,a0,regsebhw_correct
	halt
regsebhw_correct:



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

	.byte 0x00 // sbst_boot
	.byte 0x00 // alu
	.byte 0x00 // alu2
	.byte 0x00 // alui
	.byte 0x00 // palu
	.byte 0x00 // pvalu
	.byte 0x00 // pvalu2
	.byte 0x00 // mac
	.byte 0x00 // regs
	.byte 0x00 // regseb
	.byte 0x00 // regsebu
	.byte 0x00 // regseh
	.byte 0x00 // regsehu
	.byte 0x00 // regsew
	.byte 0x00 // regsbhw


SIGNATURES:
	.long 0x000001F0 // sbst_boot signature
	.long 0x00000000 // alu signature
	.long 0x00000000 // alu2 signature
	.long 0x00000000 // alui signature
	.long 0x00000000 // palu signature
	.long 0x00000000 // pvalu signature
	.long 0x00000000 // pvalu2 signature
	.long 0x00000000 // mac signature
	.long 0x00000000 // regs signature
	.long 0x00000000 // regseb signature
	.long 0x00000000 // regsebu signature
	.long 0x00000000 // regseh signature
	.long 0x00000000 // regsehu signature
	.long 0x00000000 // regsew signature
	.long 0x00000000 // regsbhw signature