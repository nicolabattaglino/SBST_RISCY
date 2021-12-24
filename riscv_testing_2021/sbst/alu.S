	.section .text
	.global _sbst_alu
	.type _sbst_alu, @function

_sbst_alu:

     add x31, x0, x0          //initialize signature

     li x5, 0xcafe
     li x6, 0xbeef
     li x28, 4

     //ADD
     add x7, x5, x6

     add x31, x31, x7          //update signature

     //SUB
     sub x7, x5, x6

     add x31, x31, x7          //update signature

     //SLT
     slt x7, x5, x28

     add x31, x31, x7          //update signature

     //AND
     and x7, x5, x6

     add x31, x31, x7          //update signature

     //OR
     or x7, x5, x6

     add x31, x31, x7          //update signature

     //XOR
     xor x7, x5, x6

     add x31, x31, x7          //update signature

     //SLL
     sll x7, x5, x28

     add x31, x31, x7          //update signature

     //SRL
     srl x7, x5, x28

     add x31, x31, x7          //update signature

     //SRA
     sra x7, x5, x28

     add x31, x31, x7          //update signature

///////////////////  OTHER INSTRUCTIONS MUST BE ADDED  /////////////////

     //STORE SIGNATURE
     la x30, signature
     sw x31, 0(x30)

     ret

// -------------------------------------
	.section ".TEST_DATA", "aw"
	.global alu_test_result

signature:
	.space 4
