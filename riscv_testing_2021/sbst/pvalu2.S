.section .text
.global _sbst_pvalu2
.type _sbst_pvalu2, @function

_sbst_pvalu2:

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


//////////////////////////////////////////////////////

	li                  x13,    0x8e1f0cd0
	li                  x3,     0x59d89291
	pv.or.h             x14,    x13,    x3
	add 				x31,    x31,    x14         //update signature
	li                  x6,     0xd6db06c6
	li                  x21,    0x227463dd
	pv.or.h             x2,     x6,     x21
	add 				x31,    x31,    x2         //update signature
	li                  x10,    0x160960d0
	li                  x1,    0xcf69e6d2
	pv.or.h             x6,     x10,    x1
	add 				x31,    x31,    x6         //update signature
	li                  x7,     0xd7d181f
	li                  x4,     0x6c145f5d
	pv.or.b             x27,    x7,     x4
	add 				x31,    x31,    x27         //update signature
	li                  x19,    0x72c38717
	li                  x3,     0xc2951290
	pv.or.b             x1,     x19,    x3
	add 				x31,    x31,    x1         //update signature
	li                  x25,    0x9b358f9e
	li                  x25,    0x1404e55c
	pv.or.b             x6,     x25,    x25
	add 				x31,    x31,    x6         //update signature

/***************************
	li                  x14,    0x88d85cf7
	li                  x0,     0x6a6e185f
	pv.or.sc.h          x13,    x14,    x0
	li                  x0,     0xf765abcb
	li                  x21,    0x33cac2b7
	pv.or.sc.h          x24,    x0,     x21
	li                  x25,    0xf5bc3dc4
	li                  x14,    0x78cc275c
	pv.or.sc.h          x19,    x25,    x14
	li                  x7,     0xaac5fb17
	li                  x13,    0x6c8f93a1
	pv.or.sc.b          x26,    x7,     x13
	li                  x6,     0x1596c695
	li                  x18,    0xca274dac
	pv.or.sc.b          x20,    x6,     x18
	li                  x15,    0x79f7efa4
	li                  x18,    0x7b99c0fc
	pv.or.sc.b          x16,    x15,    x18
	li                  x20,    0x1272fd6c
	pv.or.sci.h         x10,    x20,    17
	li                  x27,    0x7af3137c
	pv.or.sci.h         x22,    x27,    16
	li                  x0,     0x35800813
	pv.or.sci.h         x2,     x0,     12
	li                  x23,    0x36092a65
	pv.or.sci.b         x23,    x23,    3
	li                  x22,    0xf784b83
	pv.or.sci.b         x3,     x22,    18
	li                  x29,    0xb9b14b41
	pv.or.sci.b         x11,    x29,    15
**********************/

	li                  x7,     0x4b529f54
	li                  x27,    0x4d45be23
	pv.xor.h            x24,    x7,     x27
	add 				x31,    x31,    x24         //update signature
	li                  x9,     0xaef593fb
	li                  x17,    0x4ab6c122
	pv.xor.h            x1,    x9,     x17
	add 				x31,    x31,    x1         //update signature
	li                  x8,     0xfd170320
	li                  x3,     0x4d0033f3
	pv.xor.h            x27,    x8,     x3
	add 				x31,    x31,    x27         //update signature
	li                  x18,    0x2f943d6
	li                  x21,    0xd0a63754
	pv.xor.b            x30,    x18,    x21
	add 				x31,    x31,    x30         //update signature
	li                  x21,    0x5839ee82
	li                  x19,    0x790f4845
	pv.xor.b            x30,    x21,    x19
	add 				x31,    x31,    x30         //update signature
	li                  x16,    0x21609dda
	li                  x26,    0x98a7c229
	pv.xor.b            x21,    x16,    x26
	add 				x31,    x31,    x21         //update signature

/***********************************************
	li                  x30,    0xc0eba426
	li                  x22,    0xd881f6b2
	pv.xor.sc.h         x28,    x30,    x22
	li                  x11,    0x70b60281
	li                  x20,    0xcd16d53c
	pv.xor.sc.h         x1,     x11,    x20
	li                  x26,    0x6ae8e464
	li                  x3,     0xa6571ff6
	pv.xor.sc.h         x29,    x26,    x3
	li                  x31,    0x7e2f1fa3
	li                  x3,     0x35db8920
	pv.xor.sc.b         x3,     x31,    x3
	li                  x11,    0xd681b01d
	li                  x10,    0xa5751393
	pv.xor.sc.b         x19,    x11,    x10
	li                  x11,    0x51011947
	li                  x28,    0x37d90213
	pv.xor.sc.b         x17,    x11,    x28
	li                  x12,    0xc8e566d1
	pv.xor.sci.h        x25,    x12,    19
	li                  x27,    0x77d97dcf
	pv.xor.sci.h        x20,    x27,    27
	li                  x20,    0x1b565397
	pv.xor.sci.h        x10,    x20,    6
	li                  x3,     0xb8b2a17d
	pv.xor.sci.b        x21,    x3,     11
	li                  x29,    0x73bc3240
	pv.xor.sci.b        x5,     x29,    5
	li                  x3,     0x1dadf3c4
	pv.xor.sci.b        x31,    x3,     28

***********************/

	li                  x29,    0x551b7417
	li                  x26,    0xf826a7fc
	pv.and.h            x26,    x29,    x26
	add 				x31,    x31,    x26         //update signature
	li                  x3,     0xbbb63399
	li                  x30,    0xc6ef3e7c
	pv.and.h            x16,    x3,     x30
	add 				x31,    x31,    x16         //update signature
	li                  x0,     0x7088c9db
	li                  x25,    0xb4744850
	pv.and.h            x3,     x0,     x25
	add 				x31,    x31,    x3         //update signature
	li                  x14,    0xc7b78a01
	li                  x5,     0x73597b79
	pv.and.b            x3,     x14,    x5
	add 				x31,    x31,    x3         //update signature
	li                  x28,    0x55af91ef
	li                  x26,    0xe9b8436b
	pv.and.b            x22,    x28,    x26
	add 				x31,    x31,    x22         //update signature
	li                  x3,     0x8c11d8d
	li                  x22,    0xa3ceb1da
	pv.and.b            x9,     x3,     x22
	add 				x31,    x31,    x9         //update signature

/*********************************************************
	li                  x21,    0x623e79fc
	li                  x29,    0xeefd7f20
	pv.and.sc.h         x12,    x21,    x29
	li                  x3,     0xeebce873
	li                  x8,     0xe85dc01c
	pv.and.sc.h         x18,    x3,     x8
	li                  x27,    0x684600d5
	li                  x5,     0xe3602ba9
	pv.and.sc.h         x9,     x27,    x5
	li                  x15,    0x66e3f69f
	li                  x18,    0xaa963be8
	pv.and.sc.b         x30,    x15,    x18
	li                  x17,    0xbbe7cb59
	li                  x3,     0x279c50fb
	pv.and.sc.b         x28,    x17,    x3
	li                  x17,    0x99e58a5c
	li                  x5,     0x70189e71
	pv.and.sc.b         x31,    x17,    x5
	li                  x14,    0x4f10e26
	pv.and.sci.h        x6,     x14,    30
	li                  x5,     0x2f251c51
	pv.and.sci.h        x10,    x5,     17
	li                  x22,    0x831538ed
	pv.and.sci.h        x18,    x22,    1
	li                  x17,    0x425e2c43
	pv.and.sci.b        x10,    x17,    23
	li                  x0,     0x9e31cf16
	pv.and.sci.b        x15,    x0,     25
	li                  x23,    0x40c93055
	pv.and.sci.b        x6,     x23,    31

************************/


	li                  x19,    0x5fb5aa21
	li                  x23,    0xd62e85f9
	pv.dotusp.h         x12,    x19,    x23
	add 				x31,    x31,    x12         //update signature
	li                  x16,    0xbe4a298a
	li                  x10,    0x2ccebb34
	pv.dotusp.h         x8,     x16,    x10
	add 				x31,    x31,    x8         //update signature
	li                  x6,     0x6b5b932c
	li                  x19,    0x5ee1951
	pv.dotusp.h         x5,     x6,     x19
	add 				x31,    x31,    x5         //update signature
	li                  x13,    0xaee03d84
	li                  x23,    0xdf084248
	pv.dotusp.b         x18,    x13,    x23
	add 				x31,    x31,    x18         //update signature
	li                  x11,    0xe5d124b0
	li                  x6,     0x4ef8a33
	pv.dotusp.b         x30,    x11,    x6
	add 				x31,    x31,    x30         //update signature
	li                  x27,    0x79b04830
	li                  x21,    0x5d792972
	pv.dotusp.b         x16,    x27,    x21
	add 				x31,    x31,    x16         //update signature

/****************************************************
	li                  x24,    0xef288fcf
	li                  x25,    0xde4913ac
	pv.dotusp.sc.h      x13,    x24,    x25
	li                  x18,    0x2bd83452
	li                  x17,    0xeb6e0789
	pv.dotusp.sc.h      x24,    x18,    x17
	li                  x0,     0x49692c73
	li                  x23,    0xa08bf4a4
	pv.dotusp.sc.h      x14,    x0,     x23
	li                  x27,    0x235df397
	li                  x15,    0x58e92462
	pv.dotusp.sc.b      x23,    x27,    x15
	li                  x4,     0x674168d9
	li                  x6,     0x4974d058
	pv.dotusp.sc.b      x29,    x4,     x6
	li                  x14,    0x1f1053c3
	li                  x17,    0x1510b70e
	pv.dotusp.sc.b      x29,    x14,    x17
	li                  x30,    0xb197e5dd
	pv.dotusp.sci.h     x29,    x30,    29
	li                  x16,    0x28dfa07a
	pv.dotusp.sci.h     x13,    x16,    1
	li                  x12,    0xcdda54d8
	pv.dotusp.sci.h     x19,    x12,    19
	li                  x18,    0x87c09213
	pv.dotusp.sci.b     x2,     x18,    4
	li                  x27,    0x8df7f77c
	pv.dotusp.sci.b     x12,    x27,    11
	li                  x15,    0xac88da03
	pv.dotusp.sci.b     x21,    x15,    1

**********************************/

	li                  x6,     0x4d9a168e
	li                  x1,     0xfbc8b7fe
	pv.dotsp.h          x11,    x6,     x1
	add 				x31,    x31,    x11         //update signature
	li                  x18,    0x188f364
	li                  x13,    0x6af1d1b2
	pv.dotsp.h          x29,    x18,    x13
	add 				x31,    x31,    x29         //update signature
	li                  x30,    0xc92ad851
	li                  x16,    0xbf374d33
	pv.dotsp.h          x27,    x30,    x16
	add 				x31,    x31,    x27         //update signature
	li                  x12,    0x266b4e62
	li                  x6,     0xf9e2fb8c
	pv.dotsp.b          x13,    x12,    x6
	add 				x31,    x31,    x13         //update signature
	li                  x3,     0x123889fd
	li                  x0,     0x105bb7a7
	pv.dotsp.b          x12,    x3,     x0
	add 				x31,    x31,    x12         //update signature
	li                  x12,    0x9c5771ad
	li                  x10,    0x506a9d90
	pv.dotsp.b          x13,    x12,    x10
	add 				x31,    x31,    x13         //update signature

/********************************************
	li                  x13,    0xaf73c7f4
	li                  x1,     0xd1aa2cdf
	pv.dotsp.sc.h       x21,    x13,    x1
	li                  x17,    0xf541bb08
	li                  x10,    0xb7321bb0
	pv.dotsp.sc.h       x14,    x17,    x10
	li                  x9,     0x3b46bf01
	li                  x16,    0x539ea59
	pv.dotsp.sc.h       x11,    x9,     x16
	li                  x16,    0x135d22d4
	li                  x16,    0xf969106a
	pv.dotsp.sc.b       x6,     x16,    x16
	li                  x2,     0xc78af64b
	li                  x5,     0x5aa68d63
	pv.dotsp.sc.b       x8,     x2,     x5
	li                  x26,    0xb0d60860
	li                  x31,    0x21e736bb
	pv.dotsp.sc.b       x25,    x26,    x31
	li                  x1,     0xdf5889dc
	pv.dotsp.sci.h      x12,    x1,     0
	li                  x28,    0xe0194c05
	pv.dotsp.sci.h      x8,     x28,    7
	li                  x15,    0x640e4fb5
	pv.dotsp.sci.h      x20,    x15,    11
	li                  x30,    0x7cae5fff
	pv.dotsp.sci.b      x6,     x30,    26
	li                  x5,     0xd6d4eae5
	pv.dotsp.sci.b      x5,     x5,     22
	li                  x10,    0x54113531
	pv.dotsp.sci.b      x19,    x10,    11

*****************************/

	li                  x13,    0x7c1c468e
	li                  x16,    0xddba2907
	pv.sdotup.h         x4,     x13,    x16
	add 				x31,    x31,    x4         //update signature
	li                  x30,    0x48e9ffec
	li                  x13,    0x78214510
	pv.sdotup.h         x4,     x30,    x13
	add 				x31,    x31,    x4         //update signature
	li                  x12,    0xa7ad860c
	li                  x16,    0xa66b98ad
	pv.sdotup.h         x8,     x12,    x16
	add 				x31,    x31,    x8         //update signature
	li                  x25,    0x608e05e0
	li                  x26,    0x476a490e
	pv.sdotup.b         x1,    x25,    x26
	add 				x31,    x31,    x1         //update signature
	li                  x21,    0xed0cb6aa
	li                  x14,    0x40a083e8
	pv.sdotup.b         x26,    x21,    x14
	add 				x31,    x31,    x26         //update signature
	li                  x6,     0x3a8dae64
	li                  x19,    0x303638b3
	pv.sdotup.b         x12,    x6,     x19
	add 				x31,    x31,    x12         //update signature

/******************************************************
	li                  x24,    0x1992550e
	li                  x9,     0x1471b30d
	pv.sdotup.sc.h      x3,     x24,    x9
	li                  x8,     0x7634f1f9
	li                  x25,    0xc462679d
	pv.sdotup.sc.h      x21,    x8,     x25
	li                  x17,    0xff4968fd
	li                  x8,     0xbbcccb95
	pv.sdotup.sc.h      x7,     x17,    x8
	li                  x20,    0xdac6b2e9
	li                  x2,     0x2ae851a8
	pv.sdotup.sc.b      x24,    x20,    x2
	li                  x0,     0xe467e937
	li                  x14,    0x56d219c3
	pv.sdotup.sc.b      x30,    x0,     x14
	li                  x31,    0x1ca2dc5e
	li                  x8,     0xd45e39b9
	pv.sdotup.sc.b      x18,    x31,    x8
	li                  x1,     0x2c5bdfec
	pv.sdotup.sci.h     x2,     x1,     1
	li                  x9,     0xb1df5dbe
	pv.sdotup.sci.h     x3,     x9,     26
	li                  x7,     0x8ebaf117
	pv.sdotup.sci.h     x20,    x7,     28
	li                  x12,    0x4753d3a2
	pv.sdotup.sci.b     x12,    x12,    5
	li                  x19,    0xd453b3e2
	pv.sdotup.sci.b     x14,    x19,    23
	li                  x18,    0x12cd7fc2
	pv.sdotup.sci.b     x3,     x18,    7

************************************************/
	li                  x17,    0x65caf322
	li                  x17,    0x4c782d4b
	pv.sdotusp.h        x20,    x17,    x17
	add 				x31,    x31,    x20         //update signature
	li                  x21,    0x59cd6606
	li                  x12,    0xb88d5daa
	pv.sdotusp.h        x25,    x21,    x12
	add 				x31,    x31,    x25         //update signature
	li                  x8,     0xb739417f
	li                  x27,    0xf7e3388
	pv.sdotusp.h        x13,    x8,     x27
	add 				x31,    x31,    x13         //update signature
	li                  x16,    0xe8158b72
	li                  x24,    0xe2548ee3
	pv.sdotusp.b        x4,     x16,    x24
	add 				x31,    x31,    x4         //update signature
	li                  x29,    0xd52eac44
	li                  x4,     0xae5ba487
	pv.sdotusp.b        x11,    x29,    x4
	add 				x31,    x31,    x11         //update signature
	li                  x13,    0x71d3346b
	li                  x8,     0x5bba7fd
	pv.sdotusp.b        x10,    x13,    x8
	add 				x31,    x31,    x10         //update signature

/**************************************************
	li                  x18,    0x6fdca42a
	li                  x4,     0x30e106e1
	pv.sdotusp.sc.h     x13,    x18,    x4
	li                  x13,    0xd054d1e7
	li                  x29,    0x7b388d9d
	pv.sdotusp.sc.h     x1,     x13,    x29
	li                  x12,    0xf6d758c2
	li                  x23,    0xeabf258e
	pv.sdotusp.sc.h     x5,     x12,    x23
	li                  x19,    0xec2a6cef
	li                  x11,    0xffbe9cbe
	pv.sdotusp.sc.b     x31,    x19,    x11
	li                  x0,     0xccdbef0d
	li                  x8,     0xb2ed8282
	pv.sdotusp.sc.b     x28,    x0,     x8
	li                  x8,     0x8a963cb3
	li                  x23,    0xcc956f10
	pv.sdotusp.sc.b     x31,    x8,     x23
	li                  x2,     0xb45aceb
	pv.sdotusp.sci.h    x12,    x2,     4
	li                  x1,     0xe012e0fc
	pv.sdotusp.sci.h    x11,    x1,     11
	li                  x22,    0xbc09d41e
	pv.sdotusp.sci.h    x3,     x22,    12
	li                  x23,    0x6fede260
	pv.sdotusp.sci.b    x10,    x23,    13
	li                  x4,     0xc004a4fb
	pv.sdotusp.sci.b    x15,    x4,     23
	li                  x2,     0x65a7e22
	pv.sdotusp.sci.b    x17,    x2,     21

**************************************************/

	li                  x4,     0x27f7905f
	li                  x19,    0x78f596e2
	pv.sdotsp.h         x7,     x4,     x19
	add 				x31,    x31,    x7         //update signature
	li                  x6,     0xdc43876b
	li                  x7,     0x73ce850
	pv.sdotsp.h         x21,    x6,     x7
	add 				x31,    x31,    x21         //update signature
	li                  x25,    0x87ff8449
	li                  x9,     0x7ecfefb9
	pv.sdotsp.h         x25,    x25,    x9
	add 				x31,    x31,    x25         //update signature
	li                  x24,    0xff7c49b8
	li                  x8,     0xab713c18
	pv.sdotsp.b         x25,    x24,    x8
	add 				x31,    x31,    x25         //update signature
	li                  x15,    0x80ccada0
	li                  x6,     0xefb3880c
	pv.sdotsp.b         x8,     x15,    x6
	add 				x31,    x31,    x8         //update signature
	li                  x15,    0x50129d3c
	li                  x21,    0x9114f22f
	pv.sdotsp.b         x27,    x15,    x21
	add 				x31,    x31,    x27         //update signature

/******************************************************
	li                  x17,    0x8033837f
	li                  x22,    0xcc701367
	pv.sdotsp.sc.h      x20,    x17,    x22
	li                  x12,    0x90ed3b92
	li                  x6,     0xbfbf2400
	pv.sdotsp.sc.h      x28,    x12,    x6
	li                  x1,     0xaa1d8ad9
	li                  x7,     0xe6fef817
	pv.sdotsp.sc.h      x23,    x1,     x7
	li                  x24,    0xc89d3044
	li                  x14,    0xa9cec901
	pv.sdotsp.sc.b      x25,    x24,    x14
	li                  x4,     0x700a9afc
	li                  x4,     0x572aaa0c
	pv.sdotsp.sc.b      x12,    x4,     x4
	li                  x23,    0x31fdcb86
	li                  x23,    0x5aafd027
	pv.sdotsp.sc.b      x21,    x23,    x23
	li                  x14,    0xa7b05658
	pv.sdotsp.sci.h     x20,    x14,    7
	li                  x16,    0x278a17bf
	pv.sdotsp.sci.h     x16,    x16,    31
	li                  x15,    0xb1a0e57d
	pv.sdotsp.sci.h     x27,    x15,    13
	li                  x6,     0x8ddb886
	pv.sdotsp.sci.b     x24,    x6,     26
	li                  x3,     0x3bbdfa2a
	pv.sdotsp.sci.b     x20,    x3,     10
	li                  x20,    0x20829435
	pv.sdotsp.sci.b     x12,    x20,    10

***************************************************/



// some compare op

	li                  x21,    0xba2a07e8
	li                  x21,    0x428f716d
	pv.cmpeq.h          x14,    x21,    x21
	add 				x31,    x31,    x14         //update signature
	li                  x19,    0xfdf6ee07
	li                  x19,    0x9acdb8aa
	pv.cmpeq.h          x12,    x19,    x19
	add 				x31,    x31,    x12         //update signature
	li                  x11,    0x5698e324
	li                  x11,    0x4f3f44aa
	pv.cmpeq.h          x13,    x11,    x11
	add 				x31,    x31,    x13         //update signature
	li                  x6,     0xd4601d9c
	li                  x1,     0x7614eb6f
	pv.cmpeq.b          x5,     x6,     x1
	add 				x31,    x31,    x5         //update signature
	li                  x20,    0x2749c528
	li                  x5,     0x6e862e5
	pv.cmpeq.b          x8,     x20,    x5
	add 				x31,    x31,    x8         //update signature
	li                  x28,    0x1080c124
	li                  x5,     0xaf07a0cd
	pv.cmpeq.b          x9,     x28,    x5
	add 				x31,    x31,    x9         //update signature


/*************************************************************
	li                  x14,    0x1fd6b4aa
	li                  x4,     0x5d1314c4
	pv.cmpeq.sc.h       x23,    x14,    x4
	li                  x26,    0xb2d577b3
	li                  x6,     0x81b4d6d1
	pv.cmpeq.sc.h       x7,     x26,    x6
	li                  x18,    0x1583d968
	li                  x26,    0x77354788
	pv.cmpeq.sc.h       x30,    x18,    x26
	li                  x13,    0x1ab43a36
	li                  x5,     0x8b3723d
	pv.cmpeq.sc.b       x7,     x13,    x5
	li                  x11,    0x86dfe175
	li                  x9,     0xb880470f
	pv.cmpeq.sc.b       x20,    x11,    x9
	li                  x6,     0xfcf5f64f
	li                  x8,     0x693823c1
	pv.cmpeq.sc.b       x22,    x6,     x8
	li                  x13,    0x5eee5c50
	pv.cmpeq.sci.h      x18,    x13,    23
	li                  x15,    0xa7448b5
	pv.cmpeq.sci.h      x9,     x15,    0
	li                  x26,    0x414f45a2
	pv.cmpeq.sci.h      x11,    x26,    27
	li                  x3,     0xab2d3cbd
	pv.cmpeq.sci.b      x26,    x3,     13
	li                  x24,    0x6440cbe2
	pv.cmpeq.sci.b      x21,    x24,    31
	li                  x8,     0xce9840df
	pv.cmpeq.sci.b      x24,    x8,     11
	li                  x1,     0x5641d0c9
	li                  x0,     0x2a90992
	pv.cmpne.h          x31,    x1,     x0
	li                  x7,     0xec248285
	li                  x16,    0x3defa3d8
	pv.cmpne.h          x7,     x7,     x16
	li                  x23,    0x9309870c
	li                  x22,    0xda429d1
	pv.cmpne.h          x29,    x23,    x22
	li                  x23,    0xb51839f9
	li                  x11,    0xcb05f467
	pv.cmpne.b          x19,    x23,    x11




















	li                  x31,    0xcc2bc58c
	li                  x8,     0x70aea0c
	pv.cmpne.b          x26,    x31,    x8
	li                  x31,    0x10365a
	sw                  x26,    0(x31)
	li                  x26,    0xa3074c55
	li                  x5,     0xa1b05d44
	pv.cmpne.b          x3,     x26,    x5
	li                  x31,    0x107d56
	sw                  x3,     0(x31)
	li                  x22,    0x6592b49b
	li                  x16,    0x3289ab95
	pv.cmpne.sc.h       x6,     x22,    x16
	li                  x31,    0x1058b2
	sw                  x6,     0(x31)
	li                  x1,     0x149f2659
	li                  x11,    0xa08e56bf
	pv.cmpne.sc.h       x29,    x1,     x11
	li                  x31,    0x101588
	sw                  x29,    0(x31)
	li                  x25,    0x3894fd3c
	li                  x29,    0x4206f39f
	pv.cmpne.sc.h       x24,    x25,    x29
	li                  x31,    0x107dcc
	sw                  x24,    0(x31)
	li                  x20,    0x1be1b421
	li                  x3,     0x6dc2cb7a
	pv.cmpne.sc.b       x9,     x20,    x3
	li                  x31,    0x100c3e
	sw                  x9,     0(x31)
	li                  x4,     0x322bc2b0
	li                  x23,    0x60902af0
	pv.cmpne.sc.b       x16,    x4,     x23
	li                  x31,    0x101379
	sw                  x16,    0(x31)
	li                  x12,    0x16f4a936
	li                  x9,     0x944d4390
	pv.cmpne.sc.b       x14,    x12,    x9
	li                  x31,    0x105c5f
	sw                  x14,    0(x31)
	li                  x3,     0xda70e724
	pv.cmpne.sci.h      x24,    x3,     6
	li                  x31,    0x1021d3
	sw                  x24,    0(x31)
	li                  x11,    0xe615887e
	pv.cmpne.sci.h      x16,    x11,    29
	li                  x31,    0x100a62
	sw                  x16,    0(x31)
	li                  x14,    0x5bc32e40
	pv.cmpne.sci.h      x29,    x14,    9
	li                  x31,    0x104ab1
	sw                  x29,    0(x31)
	li                  x26,    0x534b5062
	pv.cmpne.sci.b      x29,    x26,    23
	li                  x31,    0x10752d
	sw                  x29,    0(x31)
	li                  x28,    0xe144ba55
	pv.cmpne.sci.b      x15,    x28,    1
	li                  x31,    0x100790
	sw                  x15,    0(x31)
	li                  x30,    0xfec3e1d4
	pv.cmpne.sci.b      x31,    x30,    20
	li                  x31,    0x10692c
	sw                  x31,    0(x31)
	li                  x5,     0x55ccee87
	li                  x27,    0x54a82161
	pv.cmpgt.h          x14,    x5,     x27
	li                  x31,    0x107e7e
	sw                  x14,    0(x31)
	li                  x16,    0xbe00925e
	li                  x23,    0x7f9faedb
	pv.cmpgt.h          x20,    x16,    x23
	li                  x31,    0x10266f
	sw                  x20,    0(x31)
	li                  x8,     0x8f102b5b
	li                  x4,     0x40f72620
	pv.cmpgt.h          x21,    x8,     x4
	li                  x31,    0x105f61
	sw                  x21,    0(x31)
	li                  x27,    0x8c3870e5
	li                  x28,    0x284adf68
	pv.cmpgt.b          x27,    x27,    x28
	li                  x31,    0x100a98
	sw                  x27,    0(x31)
	li                  x30,    0x97dfa054
	li                  x10,    0x92040835
	pv.cmpgt.b          x17,    x30,    x10
	li                  x31,    0x10539f
	sw                  x17,    0(x31)
	li                  x15,    0x6b193245
	li                  x9,     0x2828bc09
	pv.cmpgt.b          x19,    x15,    x9
	li                  x31,    0x10357b
	sw                  x19,    0(x31)
	li                  x21,    0x12d9bfa6
	li                  x19,    0x364cc164
	pv.cmpgt.sc.h       x30,    x21,    x19
	li                  x31,    0x103838
	sw                  x30,    0(x31)
	li                  x5,     0xb09d43cc
	li                  x10,    0x5211b1e6
	pv.cmpgt.sc.h       x28,    x5,     x10
	li                  x31,    0x100975
	sw                  x28,    0(x31)
	li                  x1,     0x1adcd254
	li                  x5,     0x5b9c4e42
	pv.cmpgt.sc.h       x26,    x1,     x5
	li                  x31,    0x101f44
	sw                  x26,    0(x31)
	li                  x8,     0x2e0329a8
	li                  x25,    0x66644cb3
	pv.cmpgt.sc.b       x20,    x8,     x25
	li                  x31,    0x1033a1
	sw                  x20,    0(x31)
	li                  x15,    0x6b2b9ade
	li                  x3,     0x9bc5d38f
	pv.cmpgt.sc.b       x14,    x15,    x3
	li                  x31,    0x104f8d
	sw                  x14,    0(x31)
	li                  x6,     0xad9f5cfb
	li                  x30,    0xf8936eec
	pv.cmpgt.sc.b       x27,    x6,     x30
	li                  x31,    0x1009e3
	sw                  x27,    0(x31)
	li                  x5,     0x88c83704
	pv.cmpgt.sci.h      x3,     x5,     26
	li                  x31,    0x10097a
	sw                  x3,     0(x31)
	li                  x7,     0x8d10b43
	pv.cmpgt.sci.h      x16,    x7,     29
	li                  x31,    0x1012a2
	sw                  x16,    0(x31)
	li                  x14,    0x14e88704
	pv.cmpgt.sci.h      x15,    x14,    31
	li                  x31,    0x105ad5
	sw                  x15,    0(x31)
	li                  x23,    0xce48144c
	pv.cmpgt.sci.b      x5,     x23,    0
	li                  x31,    0x1029d2
	sw                  x5,     0(x31)
	li                  x30,    0xe68efdcf
	pv.cmpgt.sci.b      x15,    x30,    20
	li                  x31,    0x1077bf
	sw                  x15,    0(x31)
	li                  x23,    0xa13680f2
	pv.cmpgt.sci.b      x9,     x23,    11
	li                  x31,    0x107b33
	sw                  x9,     0(x31)
	li                  x13,    0x74e6e078
	li                  x7,     0x6b8f0099
	pv.cmpge.h          x12,    x13,    x7
	li                  x31,    0x10752c
	sw                  x12,    0(x31)
	li                  x15,    0x881a9dc6
	li                  x1,     0x7f9f98cb
	pv.cmpge.h          x31,    x15,    x1
	li                  x31,    0x106104
	sw                  x31,    0(x31)
	li                  x3,     0x2a8bd430
	li                  x13,    0xe866dc6d
	pv.cmpge.h          x21,    x3,     x13
	li                  x31,    0x102321
	sw                  x21,    0(x31)
	li                  x21,    0x33a0214b
	li                  x4,     0x3150990c
	pv.cmpge.b          x17,    x21,    x4
	li                  x31,    0x107b5f
	sw                  x17,    0(x31)
	li                  x25,    0x585c88bc
	li                  x19,    0xf8b9e6bc
	pv.cmpge.b          x7,     x25,    x19
	li                  x31,    0x100477
	sw                  x7,     0(x31)
	li                  x23,    0xc1c5a426
	li                  x23,    0xc50e56f1
	pv.cmpge.b          x16,    x23,    x23
	li                  x31,    0x103412
	sw                  x16,    0(x31)
	li                  x22,    0x8f5123d0
	li                  x17,    0x54cf6573
	pv.cmpge.sc.h       x28,    x22,    x17
	li                  x31,    0x107e09
	sw                  x28,    0(x31)
	li                  x14,    0x54ac58b5
	li                  x21,    0x2c49bfb1
	pv.cmpge.sc.h       x15,    x14,    x21
	li                  x31,    0x1023fb
	sw                  x15,    0(x31)
	li                  x13,    0x9e3817a9
	li                  x28,    0xb46cdb74
	pv.cmpge.sc.h       x24,    x13,    x28
	li                  x31,    0x107868
	sw                  x24,    0(x31)
	li                  x5,     0x9a596857
	li                  x28,    0xbcb55ce0
	pv.cmpge.sc.b       x17,    x5,     x28
	li                  x31,    0x10435c
	sw                  x17,    0(x31)
	li                  x22,    0xe804f257
	li                  x5,     0x723190ab
	pv.cmpge.sc.b       x12,    x22,    x5
	li                  x31,    0x102154
	sw                  x12,    0(x31)
	li                  x5,     0xe56a0fe0
	li                  x11,    0x999008c8
	pv.cmpge.sc.b       x25,    x5,     x11
	li                  x31,    0x106f73
	sw                  x25,    0(x31)
	li                  x5,     0x879f0641
	pv.cmpge.sci.h      x22,    x5,     29
	li                  x31,    0x102b9a
	sw                  x22,    0(x31)
	li                  x10,    0x37dab2b2
	pv.cmpge.sci.h      x7,     x10,    0
	li                  x31,    0x10340d
	sw                  x7,     0(x31)
	li                  x11,    0xc1fa6c98
	pv.cmpge.sci.h      x24,    x11,    22
	li                  x31,    0x10368b
	sw                  x24,    0(x31)
	li                  x29,    0x27396018
	pv.cmpge.sci.b      x12,    x29,    2
	li                  x31,    0x104247
	sw                  x12,    0(x31)
	li                  x9,     0xc6563f9e
	pv.cmpge.sci.b      x27,    x9,     15
	li                  x31,    0x100ee4
	sw                  x27,    0(x31)
	li                  x17,    0x2cc36759
	pv.cmpge.sci.b      x30,    x17,    1
	li                  x31,    0x103c24
	sw                  x30,    0(x31)
	li                  x28,    0x8b7e64c7
	li                  x28,    0x6fec4850
	pv.cmplt.h          x13,    x28,    x28
	li                  x31,    0x10548a
	sw                  x13,    0(x31)
	li                  x10,    0xb607580d
	li                  x26,    0x4302f7f1
	pv.cmplt.h          x5,     x10,    x26
	li                  x31,    0x101ee5
	sw                  x5,     0(x31)
	li                  x30,    0xe891e35c
	li                  x21,    0xd62349b5
	pv.cmplt.h          x9,     x30,    x21
	li                  x31,    0x1075cc
	sw                  x9,     0(x31)
	li                  x21,    0x75165d8c
	li                  x27,    0x9ec2d818
	pv.cmplt.b          x6,     x21,    x27
	li                  x31,    0x106d1c
	sw                  x6,     0(x31)
	li                  x26,    0x7ebf1655
	li                  x14,    0x29d3eb6b
	pv.cmplt.b          x4,     x26,    x14
	li                  x31,    0x102e45
	sw                  x4,     0(x31)
	li                  x28,    0xf98d45cf
	li                  x3,     0xd53e4532
	pv.cmplt.b          x12,    x28,    x3
	li                  x31,    0x105b1c
	sw                  x12,    0(x31)
	li                  x25,    0xa795c011
	li                  x1,     0x80e4051a
	pv.cmplt.sc.h       x25,    x25,    x1
	li                  x31,    0x103602
	sw                  x25,    0(x31)
	li                  x7,     0xdd1caf0c
	li                  x17,    0xd88f5f9d
	pv.cmplt.sc.h       x18,    x7,     x17
	li                  x31,    0x1012ff
	sw                  x18,    0(x31)
	li                  x11,    0xdd86b520
	li                  x7,     0x77df54cd
	pv.cmplt.sc.h       x26,    x11,    x7
	li                  x31,    0x10107d
	sw                  x26,    0(x31)
	li                  x1,     0x7d23dce9
	li                  x0,     0x891217e1
	pv.cmplt.sc.b       x19,    x1,     x0
	li                  x31,    0x105fd1
	sw                  x19,    0(x31)
	li                  x30,    0x556d4c56
	li                  x8,     0x477e7875
	pv.cmplt.sc.b       x10,    x30,    x8
	li                  x31,    0x106c81
	sw                  x10,    0(x31)
	li                  x22,    0xf39b426c
	li                  x8,     0x55c6bd02
	pv.cmplt.sc.b       x19,    x22,    x8
	li                  x31,    0x10289c
	sw                  x19,    0(x31)
	li                  x0,     0x48443031
	pv.cmplt.sci.h      x2,     x0,     29
	li                  x31,    0x1023dd
	sw                  x2,     0(x31)
	li                  x10,    0xae75f492
	pv.cmplt.sci.h      x20,    x10,    12
	li                  x31,    0x10614e
	sw                  x20,    0(x31)
	li                  x28,    0xa7d85f2
	pv.cmplt.sci.h      x30,    x28,    26
	li                  x31,    0x1014f9
	sw                  x30,    0(x31)
	li                  x21,    0x41b5b684
	pv.cmplt.sci.b      x19,    x21,    24
	li                  x31,    0x1048a9
	sw                  x19,    0(x31)
	li                  x8,     0xbb047959
	pv.cmplt.sci.b      x7,     x8,     20
	li                  x31,    0x101a8d
	sw                  x7,     0(x31)
	li                  x13,    0xbe87905e
	pv.cmplt.sci.b      x2,     x13,    27
	li                  x31,    0x104e2b
	sw                  x2,     0(x31)
	li                  x28,    0xfe9ca0e4
	li                  x4,     0x68ba394c
	pv.cmple.h          x1,     x28,    x4
	li                  x31,    0x1020c4
	sw                  x1,     0(x31)
	li                  x14,    0xbf71ed49
	li                  x16,    0x7aa6919a
	pv.cmple.h          x9,     x14,    x16
	li                  x31,    0x1068bf
	sw                  x9,     0(x31)
	li                  x14,    0x9bd87d71
	li                  x22,    0x14044c90
	pv.cmple.h          x18,    x14,    x22
	li                  x31,    0x101ef1
	sw                  x18,    0(x31)
	li                  x20,    0x6f4fcb4e
	li                  x5,     0x37043c9e
	pv.cmple.b          x18,    x20,    x5
	li                  x31,    0x104a7a
	sw                  x18,    0(x31)
	li                  x27,    0xa764ae0c
	li                  x27,    0xddb4612b
	pv.cmple.b          x11,    x27,    x27
	li                  x31,    0x10364e
	sw                  x11,    0(x31)
	li                  x28,    0xd2a61af3
	li                  x9,     0xb66ceaae
	pv.cmple.b          x28,    x28,    x9
	li                  x31,    0x10651b
	sw                  x28,    0(x31)
	li                  x28,    0x386b84cd
	li                  x12,    0x47c114d
	pv.cmple.sc.h       x26,    x28,    x12
	li                  x31,    0x1018cb
	sw                  x26,    0(x31)
	li                  x7,     0xcb6361af
	li                  x19,    0xf6692303
	pv.cmple.sc.h       x12,    x7,     x19
	li                  x31,    0x105296
	sw                  x12,    0(x31)
	li                  x15,    0xc46f1a60
	li                  x25,    0x2b0afed8
	pv.cmple.sc.h       x18,    x15,    x25
	li                  x31,    0x101de7
	sw                  x18,    0(x31)
	li                  x31,    0x55188db5
	li                  x27,    0x14a130cd
	pv.cmple.sc.b       x30,    x31,    x27
	li                  x31,    0x100c9e
	sw                  x30,    0(x31)
	li                  x31,    0x8b15d4ac
	li                  x11,    0x857f6bf9
	pv.cmple.sc.b       x24,    x31,    x11
	li                  x31,    0x106613
	sw                  x24,    0(x31)
	li                  x18,    0x4f295705
	li                  x23,    0x5c8db82a
	pv.cmple.sc.b       x14,    x18,    x23
	li                  x31,    0x106899
	sw                  x14,    0(x31)
	li                  x3,     0x4c0b48e6
	pv.cmple.sci.h      x29,    x3,     20
	li                  x31,    0x106921
	sw                  x29,    0(x31)
	li                  x12,    0xbac7e108
	pv.cmple.sci.h      x21,    x12,    24
	li                  x31,    0x1052fc
	sw                  x21,    0(x31)
	li                  x20,    0xdb11c076
	pv.cmple.sci.h      x12,    x20,    10
	li                  x31,    0x10458f
	sw                  x12,    0(x31)
	li                  x17,    0xcfd38e8c
	pv.cmple.sci.b      x9,     x17,    3
	li                  x31,    0x10594d
	sw                  x9,     0(x31)
	li                  x19,    0x222b4643
	pv.cmple.sci.b      x28,    x19,    17
	li                  x31,    0x102dca
	sw                  x28,    0(x31)
	li                  x29,    0xc6be6a1f
	pv.cmple.sci.b      x10,    x29,    1
	li                  x31,    0x1024ab
	sw                  x10,    0(x31)
	li                  x20,    0x3a4f289b
	li                  x6,     0xccfb2947
	pv.cmpgtu.h         x1,     x20,    x6
	li                  x31,    0x1038c2
	sw                  x1,     0(x31)
	li                  x22,    0x404c35f8
	li                  x29,    0x5bd40e2
	pv.cmpgtu.h         x14,    x22,    x29
	li                  x31,    0x10016f
	sw                  x14,    0(x31)
	li                  x25,    0x584b7ae0
	li                  x5,     0x944f1855
	pv.cmpgtu.h         x17,    x25,    x5
	li                  x31,    0x10011b
	sw                  x17,    0(x31)
	li                  x2,     0xa5679d99
	li                  x26,    0x64fe179a
	pv.cmpgtu.b         x21,    x2,     x26
	li                  x31,    0x1023be
	sw                  x21,    0(x31)
	li                  x31,    0xfcf507b3
	li                  x6,     0x1ce57b80
	pv.cmpgtu.b         x5,     x31,    x6
	li                  x31,    0x101c9f
	sw                  x5,     0(x31)
	li                  x31,    0x53465fbe
	li                  x15,    0xf782c367
	pv.cmpgtu.b         x10,    x31,    x15
	li                  x31,    0x107d33
	sw                  x10,    0(x31)
	li                  x10,    0xb80bd735
	li                  x13,    0x7090051b
	pv.cmpgtu.sc.h      x3,     x10,    x13
	li                  x31,    0x106338
	sw                  x3,     0(x31)
	li                  x26,    0x3852c38a
	li                  x9,     0xbb5ba54e
	pv.cmpgtu.sc.h      x30,    x26,    x9
	li                  x31,    0x104059
	sw                  x30,    0(x31)
	li                  x19,    0x57611cc6
	li                  x0,     0x1e191180
	pv.cmpgtu.sc.h      x20,    x19,    x0
	li                  x31,    0x1015e8
	sw                  x20,    0(x31)
	li                  x22,    0xe0b76a81
	li                  x15,    0x6ddadd0a
	pv.cmpgtu.sc.b      x4,     x22,    x15
	li                  x31,    0x106e9c
	sw                  x4,     0(x31)
	li                  x29,    0x475795e2
	li                  x21,    0xf06b66d0
	pv.cmpgtu.sc.b      x8,     x29,    x21
	li                  x31,    0x10529d
	sw                  x8,     0(x31)
	li                  x31,    0xcc807571
	li                  x31,    0xeb07c70e
	pv.cmpgtu.sc.b      x27,    x31,    x31
	li                  x31,    0x1007d1
	sw                  x27,    0(x31)
	li                  x20,    0x70a0ebbe
	pv.cmpgtu.sci.h     x7,     x20,    16
	li                  x31,    0x104d8b
	sw                  x7,     0(x31)
	li                  x18,    0xbf33b4ca
	pv.cmpgtu.sci.h     x6,     x18,    13
	li                  x31,    0x101ee0
	sw                  x6,     0(x31)
	li                  x27,    0xead16af8
	pv.cmpgtu.sci.h     x12,    x27,    22
	li                  x31,    0x106f24
	sw                  x12,    0(x31)
	li                  x20,    0xaef9f415
	pv.cmpgtu.sci.b     x23,    x20,    7
	li                  x31,    0x102df1
	sw                  x23,    0(x31)
	li                  x15,    0xd5075c1d
	pv.cmpgtu.sci.b     x13,    x15,    31
	li                  x31,    0x101a68
	sw                  x13,    0(x31)
	li                  x5,     0x88baf9c9
	pv.cmpgtu.sci.b     x23,    x5,     31
	li                  x31,    0x1055a8
	sw                  x23,    0(x31)
	li                  x27,    0xa6a507e4
	li                  x30,    0xf900b32c
	pv.cmpgeu.h         x1,     x27,    x30
	li                  x31,    0x10447a
	sw                  x1,     0(x31)
	li                  x28,    0x24fb1204
	li                  x11,    0xc5a9ee78
	pv.cmpgeu.h         x30,    x28,    x11
	li                  x31,    0x106ec2
	sw                  x30,    0(x31)
	li                  x21,    0xaf58d9a7
	li                  x28,    0x86085490
	pv.cmpgeu.h         x21,    x21,    x28
	li                  x31,    0x105dc4
	sw                  x21,    0(x31)
	li                  x16,    0xd785e748
	li                  x13,    0xb8387b28
	pv.cmpgeu.b         x5,     x16,    x13
	li                  x31,    0x103d50
	sw                  x5,     0(x31)
	li                  x22,    0x60e34c67
	li                  x29,    0xc0c0c411
	pv.cmpgeu.b         x20,    x22,    x29
	li                  x31,    0x104913
	sw                  x20,    0(x31)
	li                  x18,    0xf156e86b
	li                  x17,    0xa6a54544
	pv.cmpgeu.b         x2,     x18,    x17
	li                  x31,    0x1050b4
	sw                  x2,     0(x31)
	li                  x29,    0xec3936f8
	li                  x20,    0xb6d4da46
	pv.cmpgeu.sc.h      x20,    x29,    x20
	li                  x31,    0x107f4b
	sw                  x20,    0(x31)
	li                  x30,    0x6bcd3b02
	li                  x4,     0xb7139bbf
	pv.cmpgeu.sc.h      x4,     x30,    x4
	li                  x31,    0x105b2c
	sw                  x4,     0(x31)
	li                  x18,    0x9be6a85
	li                  x9,     0x3d805d2c
	pv.cmpgeu.sc.h      x16,    x18,    x9
	li                  x31,    0x102f8c
	sw                  x16,    0(x31)
	li                  x12,    0x7270bb1b
	li                  x18,    0xd7cb9464
	pv.cmpgeu.sc.b      x16,    x12,    x18
	li                  x31,    0x10596a
	sw                  x16,    0(x31)
	li                  x24,    0x2a602c51
	li                  x8,     0x8049caee
	pv.cmpgeu.sc.b      x1,     x24,    x8
	li                  x31,    0x100a20
	sw                  x1,     0(x31)
	li                  x30,    0x52b3304d
	li                  x19,    0xfb5d8af6
	pv.cmpgeu.sc.b      x14,    x30,    x19
	li                  x31,    0x102c3d
	sw                  x14,    0(x31)
	li                  x24,    0xa42b95ca
	pv.cmpgeu.sci.h     x28,    x24,    22
	li                  x31,    0x100f4f
	sw                  x28,    0(x31)
	li                  x5,     0x98772226
	pv.cmpgeu.sci.h     x5,     x5,     30
	li                  x31,    0x100d0f
	sw                  x5,     0(x31)
	li                  x15,    0xe2fa2615
	pv.cmpgeu.sci.h     x15,    x15,    26
	li                  x31,    0x10390f
	sw                  x15,    0(x31)
	li                  x3,     0x22aced53
	pv.cmpgeu.sci.b     x25,    x3,     17
	li                  x31,    0x10172b
	sw                  x25,    0(x31)
	li                  x19,    0x1b6e339a
	pv.cmpgeu.sci.b     x21,    x19,    28
	li                  x31,    0x105e68
	sw                  x21,    0(x31)
	li                  x22,    0xcdcda567
	pv.cmpgeu.sci.b     x12,    x22,    19
	li                  x31,    0x100141
	sw                  x12,    0(x31)
	li                  x30,    0xbcdcb2
	li                  x1,     0xf8cf7e5d
	pv.cmpltu.h         x17,    x30,    x1
	li                  x31,    0x106772
	sw                  x17,    0(x31)
	li                  x22,    0x778aa1c
	li                  x8,     0xc936ff1b
	pv.cmpltu.h         x20,    x22,    x8
	li                  x31,    0x1027a8
	sw                  x20,    0(x31)
	li                  x13,    0xa5b2d450
	li                  x13,    0x5a18b643
	pv.cmpltu.h         x6,     x13,    x13
	li                  x31,    0x105f4c
	sw                  x6,     0(x31)
	li                  x1,     0xe0e8bc79
	li                  x30,    0x17edaa66
	pv.cmpltu.b         x31,    x1,     x30
	li                  x31,    0x100661
	sw                  x31,    0(x31)
	li                  x16,    0x20fcf8d1
	li                  x21,    0x9a6dd70e
	pv.cmpltu.b         x25,    x16,    x21
	li                  x31,    0x100483
	sw                  x25,    0(x31)
	li                  x4,     0x7e02ea1
	li                  x31,    0x28a3b204
	pv.cmpltu.b         x22,    x4,     x31
	li                  x31,    0x103274
	sw                  x22,    0(x31)
	li                  x18,    0x2bb603c2
	li                  x27,    0xb286d039
	pv.cmpltu.sc.h      x2,     x18,    x27
	li                  x31,    0x104233
	sw                  x2,     0(x31)
	li                  x16,    0x29a99daf
	li                  x29,    0xd3c8b3a1
	pv.cmpltu.sc.h      x24,    x16,    x29
	li                  x31,    0x1072d7
	sw                  x24,    0(x31)
	li                  x24,    0xe5be9e7c
	li                  x31,    0xe1947895
	pv.cmpltu.sc.h      x25,    x24,    x31
	li                  x31,    0x101e5f
	sw                  x25,    0(x31)
	li                  x19,    0x8718c6a0
	li                  x5,     0x43971657
	pv.cmpltu.sc.b      x22,    x19,    x5
	li                  x31,    0x1076cb
	sw                  x22,    0(x31)
	li                  x24,    0x4a64c92e
	li                  x21,    0xfe4535cd
	pv.cmpltu.sc.b      x3,     x24,    x21
	li                  x31,    0x10319c
	sw                  x3,     0(x31)
	li                  x15,    0x99b9ff4b
	li                  x29,    0xa193c174
	pv.cmpltu.sc.b      x3,     x15,    x29
	li                  x31,    0x10204d
	sw                  x3,     0(x31)
	li                  x18,    0x796b3d65
	pv.cmpltu.sci.h     x18,    x18,    14
	li                  x31,    0x1005ba
	sw                  x18,    0(x31)
	li                  x17,    0x84be1091
	pv.cmpltu.sci.h     x7,     x17,    20
	li                  x31,    0x105c72
	sw                  x7,     0(x31)
	li                  x30,    0x70dd1109
	pv.cmpltu.sci.h     x11,    x30,    13
	li                  x31,    0x1076e2
	sw                  x11,    0(x31)
	li                  x18,    0x4e48ca34
	pv.cmpltu.sci.b     x7,     x18,    24
	li                  x31,    0x104a04
	sw                  x7,     0(x31)
	li                  x4,     0xd52c5411
	pv.cmpltu.sci.b     x22,    x4,     14
	li                  x31,    0x104b38
	sw                  x22,    0(x31)
	li                  x6,     0x1f1585d3
	pv.cmpltu.sci.b     x2,     x6,     24
	li                  x31,    0x10091e
	sw                  x2,     0(x31)
	li                  x27,    0xc46b0cfd
	li                  x25,    0x28683684
	pv.cmpleu.h         x4,     x27,    x25
	li                  x31,    0x103d3a
	sw                  x4,     0(x31)
	li                  x18,    0xf3687caa
	li                  x1,     0x19c5cdc
	pv.cmpleu.h         x26,    x18,    x1
	li                  x31,    0x101761
	sw                  x26,    0(x31)
	li                  x26,    0xece0266c
	li                  x16,    0x90c59d23
	pv.cmpleu.h         x14,    x26,    x16
	li                  x31,    0x1055c6
	sw                  x14,    0(x31)
	li                  x26,    0xb9d56d4a
	li                  x28,    0x198e2825
	pv.cmpleu.b         x9,     x26,    x28
	li                  x31,    0x104d62
	sw                  x9,     0(x31)
	li                  x26,    0x26b78cdf
	li                  x17,    0x2b7992f0
	pv.cmpleu.b         x30,    x26,    x17
	li                  x31,    0x100e79
	sw                  x30,    0(x31)
	li                  x14,    0xf4688a1
	li                  x7,     0x250d2a34
	pv.cmpleu.b         x1,     x14,    x7
	li                  x31,    0x103663
	sw                  x1,     0(x31)
	li                  x15,    0x6f0901b8
	li                  x16,    0xd9a7bb0e
	pv.cmpleu.sc.h      x25,    x15,    x16
	li                  x31,    0x1038a5
	sw                  x25,    0(x31)
	li                  x14,    0x886bdd97
	li                  x27,    0x7550606b
	pv.cmpleu.sc.h      x7,     x14,    x27
	li                  x31,    0x104a25
	sw                  x7,     0(x31)
	li                  x4,     0x1bff38f
	li                  x10,    0x8c7af029
	pv.cmpleu.sc.h      x21,    x4,     x10
	li                  x31,    0x100427
	sw                  x21,    0(x31)
	li                  x10,    0xa1233de5
	li                  x19,    0xf3fe4270
	pv.cmpleu.sc.b      x13,    x10,    x19
	li                  x31,    0x104e3e
	sw                  x13,    0(x31)
	li                  x12,    0x29f59b17
	li                  x1,     0x2f8ec17b
	pv.cmpleu.sc.b      x4,     x12,    x1
	li                  x31,    0x102678
	sw                  x4,     0(x31)
	li                  x9,     0x52e418bb
	li                  x19,    0x7b2ab729
	pv.cmpleu.sc.b      x29,    x9,     x19
	li                  x31,    0x104f28
	sw                  x29,    0(x31)
	li                  x26,    0x45dd380c
	pv.cmpleu.sci.h     x26,    x26,    13
	li                  x31,    0x102710
	sw                  x26,    0(x31)
	li                  x2,     0xce2e28cf
	pv.cmpleu.sci.h     x6,     x2,     4
	li                  x31,    0x107545
	sw                  x6,     0(x31)
	li                  x22,    0x6cb8ba57
	pv.cmpleu.sci.h     x13,    x22,    2
	li                  x31,    0x107488
	sw                  x13,    0(x31)
	li                  x15,    0xc2fa6529
	pv.cmpleu.sci.b     x2,     x15,    4
	li                  x31,    0x10404f
	sw                  x2,     0(x31)
	li                  x8,     0x10c3abc8
	pv.cmpleu.sci.b     x15,    x8,     10
	li                  x31,    0x102cc1
	sw                  x15,    0(x31)
	li                  x4,     0x23733d70
	pv.cmpleu.sci.b     x14,    x4,     31
	li                  x31,    0x107f23
	sw                  x14,    0(x31)



***************************************************************/

///////////////////// shuffle //////////////////////////
	li                  x22,    0xecbc611a
	li                  x8,     0x68943b6b
	pv.shuffle.h        x23,    x22,    x8
	add 				x31,    x31,    x23         //update signature
	li                  x13,    0x2ed75f9c
	li                  x19,    0x14d4aa5e
	pv.shuffle.h        x2,     x13,    x19
	add 				x31,    x31,    x2         //update signature
	li                  x12,    0x18b44472
	li                  x1,    0x199e3a3a
	pv.shuffle.h        x6,     x12,    x1
	add 				x31,    x31,    x6         //update signature
	li                  x11,    0xd696c40
	pv.shuffle.sci.h    x5,     x11,    51
	add 				x31,    x31,    x5         //update signature
	li                  x27,    0x683282ca
	pv.shuffle.sci.h    x21,    x27,    48
	add 				x31,    x31,    x21         //update signature
	li                  x13,    0x311b7ef3
	pv.shuffle.sci.h    x6,     x13,    0
	add 				x31,    x31,    x6         //update signature
	li                  x11,    0x5c2bdff7
	li                  x11,    0x1dbd728b
	pv.shuffle.b        x8,     x11,    x11
	add 				x31,    x31,    x8         //update signature
	li                  x10,    0x9f13bc4c
	li                  x6,     0x589f0a98
	pv.shuffle.b        x30,    x10,    x6
	add 				x31,    x31,    x30         //update signature
	li                  x21,    0x3f8dde1e
	li                  x20,    0x4e638bfa
	pv.shuffle.b        x19,    x21,    x20
	add 				x31,    x31,    x19         //update signature
	li                  x20,    0x3dda26f3
	pv.shuffleI0.sci.b  x15,    x20,    19
	add 				x31,    x31,    x15         //update signature
	li                  x11,    0xf07e04bd
	pv.shuffleI0.sci.b  x26,    x11,    32
	add 				x31,    x31,    x26         //update signature
	li                  x22,    0x214a3a0d
	pv.shuffleI0.sci.b  x9,     x22,    50
	add 				x31,    x31,    x9         //update signature


/********************************************************************
	li                  x15,    0xed10312a
	pv.shuffleI1.sci.b  x29,    x15,    63
	li                  x31,    0x1078ab
	sw                  x29,    0(x31)
	li                  x6,     0xe44a03e2
	pv.shuffleI1.sci.b  x6,     x6,     48
	li                  x31,    0x10329d
	sw                  x6,     0(x31)
	li                  x28,    0x4af3ff1c
	pv.shuffleI1.sci.b  x27,    x28,    41
	li                  x31,    0x103281
	sw                  x27,    0(x31)
	li                  x19,    0x89891405
	pv.shuffleI2.sci.b  x8,     x19,    5
	li                  x31,    0x107f8f
	sw                  x8,     0(x31)
	li                  x25,    0x40873f2e
	pv.shuffleI2.sci.b  x28,    x25,    17
	li                  x31,    0x100e55
	sw                  x28,    0(x31)
	li                  x15,    0x4786a71
	pv.shuffleI2.sci.b  x8,     x15,    48
	li                  x31,    0x105ba4
	sw                  x8,     0(x31)
	li                  x7,     0xb465ec7b
	pv.shuffleI3.sci.b  x25,    x7,     1
	li                  x31,    0x1044cb
	sw                  x25,    0(x31)
	li                  x25,    0x12432b56
	pv.shuffleI3.sci.b  x9,     x25,    40
	li                  x31,    0x101750
	sw                  x9,     0(x31)
	li                  x11,    0xca127ed5
	pv.shuffleI3.sci.b  x26,    x11,    61
	li                  x31,    0x105bb3
	sw                  x26,    0(x31)
	li                  x6,     0x36d25aad
	li                  x1,     0xf3399597
	pv.shuffle2.h       x11,    x6,     x1
	li                  x31,    0x101f9a
	sw                  x11,    0(x31)
	li                  x24,    0x899f2da2
	li                  x3,     0x1d8695b0
	pv.shuffle2.h       x12,    x24,    x3
	li                  x31,    0x1023db
	sw                  x12,    0(x31)
	li                  x24,    0xd4efbb3d
	li                  x15,    0x35d98536
	pv.shuffle2.h       x13,    x24,    x15
	li                  x31,    0x106110
	sw                  x13,    0(x31)
	li                  x5,     0x4db5d843
	li                  x10,    0xfd6f0ea8
	pv.shuffle2.b       x17,    x5,     x10
	li                  x31,    0x1049dc
	sw                  x17,    0(x31)
	li                  x9,     0x14f65ce3
	li                  x16,    0x99da819
	pv.shuffle2.b       x23,    x9,     x16
	li                  x31,    0x104b73
	sw                  x23,    0(x31)
	li                  x28,    0x155ab3b1
	li                  x26,    0x746bb147
	pv.shuffle2.b       x13,    x28,    x26
	li                  x31,    0x104517
	sw                  x13,    0(x31)
************************************************************************/

///////////////////// pack ///////////////////////
	li                  x1,     0x8baa7b75
	li                  x12,    0xef8566c4
	pv.pack.h           x13,    x1,     x12
	add 				x31,    x31,    x13         //update signature
	li                  x2,     0xaa8d2ea7
	li                  x26,    0x8029380b
	pv.pack.h           x13,    x2,     x26
	add 				x31,    x31,    x13         //update signature
	li                  x2,     0x30b5dd9d
	li                  x15,    0xd52957fb
	pv.pack.h           x16,    x2,     x15
	add 				x31,    x31,    x16         //update signature
	li                  x3,     0x779d4749
	li                  x25,    0x1b7518b8
	pv.packhi.b         x12,    x3,     x25
	add 				x31,    x31,    x12         //update signature
	li                  x21,    0x129a4d54
	li                  x6,     0x4e8ea25e
	pv.packhi.b         x1,    x21,    x6
	add 				x31,    x31,    x1         //update signature
	li                  x16,    0xd040c14b
	li                  x29,    0xb766e5e5
	pv.packhi.b         x11,    x16,    x29
	add 				x31,    x31,    x11         //update signature
	li                  x18,    0x16505a02
	li                  x9,     0xbc0038c6
	pv.packlo.b         x13,    x18,    x9
	add 				x31,    x31,    x13         //update signature
	li                  x13,    0xdf9fcd45
	li                  x2,     0x4fccea53
	pv.packlo.b         x9,     x13,    x2
	add 				x31,    x31,    x9         //update signature
	li                  x16,    0x59688381
	li                  x10,    0x4b622e36
	pv.packlo.b         x26,    x16,    x10
	add 				x31,    x31,    x26         //update signature


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
     .global pvalu2_test_result

     signature:
     .space 4

     loandst:
     .space 150

     save_regs:
     .space 0x7C
