.section .text
.global _sbst_pvalu
.type _sbst_pvalu, @function

_sbst_pvalu:

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


/////////////// Vector operations /////////////////////

	li                  x4,     0x3072c469
	li                  x1,     0x3643dc8c
	pv.add.h            x2,     x4,     x1
	add 				x31,    x31,    x2         //update signature

	li                  x14,    0x98cdb202
	li                  x23,    0x29df3349
	pv.add.h            x25,    x14,    x23
	add 				x31,    x31,    x25         //update signature

	li                  x0,     0x6eafe413
	li                  x16,    0xdaa2745d
	pv.add.h            x1,     x0,     x16
	add 				x31,    x31,    x1         //update signature

	li                  x0,     0xebcb4f53
	li                  x8,     0xe8bcb78
	pv.add.b            x14,    x0,     x8
	add 				x31,    x31,    x14         //update signature

	li                  x29,    0xe6aa4006
	li                  x2,     0xba67924b
	pv.add.b            x9,     x29,    x2
	add 				x31,    x31,    x9         //update signature

	li                  x28,    0x7b06b16f
	li                  x22,    0x6505480a
	pv.add.b            x8,     x28,    x22
	add 				x31,    x31,    x8         //update signature

	li                  x8,     0x5050916f
	li                  x27,    0x679fa540
	pv.add.sc.h         x30,    x8,     x27
	add 				x31,    x31,    x30         //update signature

	li                  x1,    0x2bcd30c4
	li                  x4,     0xa22014db
	pv.add.sc.h         x7,     x1,    x4
	add 				x31,    x31,    x7         //update signature

	li                  x28,    0xdf938a6b
	li                  x11,    0x2bc4c8fc
	pv.add.sc.h         x8,     x28,    x11
	add 				x31,    x31,    x8         //update signature

	li                  x21,    0x580e08e2
	li                  x4,     0x7b3e0780
	pv.add.sc.b         x28,    x21,    x4
	add 				x31,    x31,    x28         //update signature

	li                  x19,    0x6046695
	li                  x1,     0x9a28ea34
	pv.add.sc.b         x19,    x19,    x1
	add 				x31,    x31,    x19         //update signature

	li                  x2,     0x6ca89f05
	li                  x10,    0x972dd99c
	pv.add.sc.b         x10,    x2,     x10
	add 				x31,    x31,    x10         //update signature

	li                  x15,    0x47914c8d
	pv.add.sci.h        x11,    x15,    5
	add 				x31,    x31,    x11         //update signature

	li                  x23,    0xf1a4d52f
	pv.add.sci.h        x30,    x23,    11
	add 				x31,    x31,    x30         //update signature

	li                  x1,     0x4a0975a0
	pv.add.sci.h        x27,    x1,     6
	add 				x31,    x31,    x27         //update signature

	li                  x19,    0xf075d048
	pv.add.sci.b        x1,     x19,    24
	add 				x31,    x31,    x1         //update signature

	li                  x21,    0x3eb6d3da
	pv.add.sci.b        x24,    x21,    26
	add 				x31,    x31,    x24         //update signature

	li                  x2,     0x975200dc
	pv.add.sci.b        x2,     x2,     8
	add 				x31,    x31,    x2         //update signature

	li                  x24,    0xc981273b
	li                  x1,    0xd191adc4
	pv.sub.h            x18,    x24,    x1
	add 				x31,    x31,    x18         //update signature

	li                  x21,    0x55e8929e
	li                  x10,    0xa281dffe
	pv.sub.h            x14,    x21,    x10
	add 				x31,    x31,    x14         //update signature

	li                  x7,     0xba35cef
	li                  x5,     0x99c36470
	pv.sub.h            x2,     x7,     x5
	add 				x31,    x31,    x2         //update signature

	li                  x28,    0x9dfdc11
	li                  x9,     0x22e97e5b
	pv.sub.b            x29,    x28,    x9
	add 				x31,    x31,    x29         //update signature

	li                  x17,    0x26c8a9dc
	li                  x27,    0xf930bbf0
	pv.sub.b            x30,    x17,    x27
	add 				x31,    x31,    x30         //update signature

	li                  x11,    0xfb6088ac
	li                  x3,     0x61aeafb0
	pv.sub.b            x30,    x11,    x3
	add 				x31,    x31,    x11         //update signature

	li                  x24,    0x51ef010e
	li                  x24,    0x7b21fe7b
	pv.sub.sc.h         x11,    x24,    x24
	add 				x31,    x31,    x11         //update signature

	li                  x1,     0x3e5b5a55
	li                  x23,    0xab8df0e
	pv.sub.sc.h         x12,    x1,     x23
	add 				x31,    x31,    x12         //update signature

	li                  x1,     0x8c99ed88
	li                  x30,    0x94363e85
	pv.sub.sc.h         x4,     x1,     x30
	add 				x31,    x31,    x4         //update signature

	li                  x22,    0x31cdf90b
	li                  x12,    0x4ef90be8
	pv.sub.sc.b         x23,    x22,    x12
	add 				x31,    x31,    x23         //update signature

	li                  x5,     0x80f13b94
	li                  x27,    0x8398f591
	pv.sub.sc.b         x29,    x5,     x27
	add 				x31,    x31,    x29         //update signature

	li                  x15,    0x2627919c
	li                  x22,    0x718069f7
	pv.sub.sc.b         x5,     x15,    x22
	add 				x31,    x31,    x5         //update signature

	li                  x23,    0x409008d0
	pv.sub.sci.h        x19,    x23,    22
	add 				x31,    x31,    x19         //update signature

	li                  x30,    0x7f681732
	pv.sub.sci.h        x26,    x30,    11
	add 				x31,    x31,    x26         //update signature

	li                  x6,     0xfb2c6615
	pv.sub.sci.h        x13,    x6,     9
	add 				x31,    x31,    x13         //update signature

	li                  x30,    0xe50d6df5
	pv.sub.sci.b        x10,    x30,    0
	add 				x31,    x31,    x10         //update signature

	li                  x11,    0x37d03fe8
	pv.sub.sci.b        x12,    x11,    2
	add 				x31,    x31,    x12         //update signature

	li                  x19,    0xd9e5e062
	pv.sub.sci.b        x4,     x19,    6
	add 				x31,    x31,    x4         //update signature

	li                  x25,    0xb5f41e75
	li                  x13,    0xc758f168
	pv.avg.h            x22,    x25,    x13
	add 				x31,    x31,    x22         //update signature

	li                  x14,    0x218c7d40
	li                  x25,    0x4d804e17
	pv.avg.h            x14,    x14,    x25
	add 				x31,    x31,    x14         //update signature

	li                  x16,    0xdb689972
	li                  x12,    0xabc51b09
	pv.avg.h            x18,    x16,    x12
	add 				x31,    x31,    x18         //update signature

	li                  x14,    0xc1aa9ded
	li                  x7,     0xb27e026d
	pv.avg.b            x8,     x14,    x7
	add 				x31,    x31,    x8         //update signature

	li                  x9,     0x9fbf4e16
	li                  x2,     0x6df9be87
	pv.avg.b            x14,    x9,     x2
	add 				x31,    x31,    x14         //update signature

	li                  x16,    0xc0b35bf9
	li                  x22,    0x4beb3ef8
	pv.avg.b            x7,     x16,    x22
	add 				x31,    x31,    x7         //update signature

	li                  x27,    0x3d91fbc5
	li                  x3,     0x8090e3a
	pv.avg.sc.h         x16,    x27,    x3
	add 				x31,    x31,    x16         //update signature
	li                  x15,    0x9031243c
	li                  x11,    0x9b3feaf9
	pv.avg.sc.h         x22,    x15,    x11
	add 				x31,    x31,    x22         //update signature
	li                  x10,    0xb81bc9fb
	li                  x24,    0x75f173de
	pv.avg.sc.h         x10,    x10,    x24
	add 				x31,    x31,    x10         //update signature



	li                  x18,    0xc60d21ee
	li                  x28,    0x53d695f4
	pv.avg.sc.b         x24,    x18,    x28
	add 				x31,    x31,    x24         //update signature
	li                  x31,    0x4aad34f5
	li                  x12,    0x83e9e925
	pv.avg.sc.b         x6,     x31,    x12
	add 				x31,    x31,    x6         //update signature
	li                  x10,    0xc5278ddf
	li                  x4,     0x7fb7789b
	pv.avg.sc.b         x4,     x10,    x4
	add 				x31,    x31,    x4         //update signature

	li                  x16,    0x791a86df
	pv.avg.sci.h        x22,    x16,    0
	add 				x31,    x31,    x22         //update signature
	li                  x26,    0xd3279e0d
	pv.avg.sci.h        x29,    x26,    1
	add 				x31,    x31,    x29         //update signature
	li                  x2,     0x4ae9df9c
	pv.avg.sci.h        x8,     x2,     20
	add 				x31,    x31,    x8         //update signature

	li                  x24,    0xbc491788
	pv.avg.sci.b        x7,     x24,    6
	add 				x31,    x31,    x7         //update signature
	li                  x28,    0x8a0dad53
	pv.avg.sci.b        x29,    x28,    30
	add 				x31,    x31,    x29         //update signature
	li                  x1,     0xa379493f
	pv.avg.sci.b        x2,     x1,     10
	add 				x31,    x31,    x2         //update signature

	li                  x7,     0x6160d0bb
	li                  x18,    0x7898c91b
	pv.avgu.h           x13,    x7,     x18
	add 				x31,    x31,    x13         //update signature
	li                  x14,    0x893f1307
	li                  x28,    0x3ae4f0d4
	pv.avgu.h           x26,    x14,    x28
	add 				x31,    x31,    x26         //update signature
	li                  x29,    0xc137f832
	li                  x28,    0xe63e68ee
	pv.avgu.h           x11,    x29,    x28
	add 				x31,    x31,    x11         //update signature

	li                  x10,    0xf4aeb5f5
	li                  x30,    0xf6e3649a
	pv.avgu.b           x9,     x10,    x30
	add 				x31,    x31,    x9         //update signature
	li                  x14,    0xe526c65f
	li                  x8,     0x26aa6c18
	pv.avgu.b           x1,     x14,    x8
	add 				x31,    x31,    x1         //update signature
	li                  x29,    0x7aa6fed2
	li                  x27,    0x5f4e3717
	pv.avgu.b           x30,    x29,    x27
	add 				x31,    x31,    x30         //update signature

	li                  x3,     0xda0f685c
	li                  x3,     0xa3414d4a
	pv.avgu.sc.h        x20,    x3,     x3
	add 				x31,    x31,    x20         //update signature
	li                  x20,    0xdb6cfd06
	li                  x18,    0xd61ecd67
	pv.avgu.sc.h        x25,    x20,    x18
	add 				x31,    x31,    x25         //update signature
	li                  x23,    0x33c54696
	li                  x1,     0x45444f8d
	pv.avgu.sc.h        x20,    x23,    x1
	add 				x31,    x31,    x20         //update signature

	li                  x25,    0x7654ac5e
	li                  x24,    0xb99fe735
	pv.avgu.sc.b        x5,     x25,    x24
	add 				x31,    x31,    x5         //update signature
	li                  x10,    0x8d11f091
	li                  x6,     0x1c9f919
	pv.avgu.sc.b        x3,     x10,    x6
	add 				x31,    x31,    x3         //update signature
	li                  x1,    0x280e36b
	li                  x11,    0x2d1958d1
	pv.avgu.sc.b        x11,    x1,    x11
	add 				x31,    x31,    x11         //update signature

	li                  x5,     0x6e278269
	pv.avgu.sci.h       x20,    x5,     31
	add 				x31,    x31,    x20         //update signature
	li                  x4,     0x94dd8706
	pv.avgu.sci.h       x3,     x4,     14
	add 				x31,    x31,    x3         //update signature
	li                  x21,    0xf0804bbf
	pv.avgu.sci.h       x15,    x21,    27
	add 				x31,    x31,    x15         //update signature

	li                  x16,    0x56efcce8
	pv.avgu.sci.b       x1,     x16,    22
	add 				x31,    x31,    x1         //update signature
	li                  x5,     0x8949ff2d
	pv.avgu.sci.b       x9,     x5,     30
	add 				x31,    x31,    x9         //update signature
	li                  x18,    0xc30ac738
	pv.avgu.sci.b       x4,     x18,    17
	add 				x31,    x31,    x4         //update signature

	li                  x21,    0xb448275c
	li                  x3,     0x9201776f
	pv.min.h            x13,    x21,    x3
	add 				x31,    x31,    x13         //update signature
	li                  x0,     0x5d41ba78
	li                  x4,     0xcbeeab65
	pv.min.h            x3,     x0,     x4
	add 				x31,    x31,    x3         //update signature
	li                  x0,     0xa1619b7f
	li                  x0,     0x915b36f4
	pv.min.h            x20,    x0,     x0
	add 				x31,    x31,    x20         //update signature

	li                  x28,    0xf74313cf
	li                  x4,     0xf1050adb
	pv.min.b            x24,    x28,    x4
	add 				x31,    x31,    x24         //update signature
	li                  x16,    0x2172968d
	li                  x18,    0x5c89a37f
	pv.min.b            x20,    x16,    x18
	add 				x31,    x31,    x20         //update signature
	li                  x4,     0x3822446c
	li                  x17,    0xf71d12ca
	pv.min.b            x5,     x4,     x17
	add 				x31,    x31,    x5         //update signature

	li                  x4,     0x607a4396
	li                  x26,    0x38c819ed
	pv.min.sc.h         x24,    x4,     x26
	add 				x31,    x31,    x24         //update signature
	li                  x1,    0x5b7377d4
	li                  x2,     0x7fe6e89b
	pv.min.sc.h         x22,    x1,    x2
	add 				x31,    x31,    x22         //update signature
	li                  x17,    0x3ffcc588
	li                  x9,     0x10645bd1
	pv.min.sc.h         x29,    x17,    x9
	add 				x31,    x31,    x29         //update signature

	li                  x30,    0xcd914bcd
	li                  x24,    0xaa1e8544
	pv.min.sc.b         x2,     x30,    x24
	add 				x31,    x31,    x2         //update signature
	li                  x6,     0xc31796d3
	li                  x18,    0x883d930
	pv.min.sc.b         x21,    x6,     x18
	add 				x31,    x31,    x21         //update signature
	li                  x23,    0x76958407
	li                  x17,    0x264a3e36
	pv.min.sc.b         x22,    x23,    x17
	add 				x31,    x31,    x22         //update signature

	li                  x25,    0x2591411
	pv.min.sci.h        x6,     x25,    3
	add 				x31,    x31,    x6         //update signature
	li                  x25,    0xbafb6faa
	pv.min.sci.h        x11,    x25,    24
	add 				x31,    x31,    x11         //update signature
	li                  x5,     0xe108f234
	pv.min.sci.h        x17,    x5,     19
	add 				x31,    x31,    x17         //update signature

	li                  x9,     0x2dd7d0a
	pv.min.sci.b        x15,    x9,     25
	add 				x31,    x31,    x15         //update signature
	li                  x11,    0xedd457
	pv.min.sci.b        x16,    x11,    14
	add 				x31,    x31,    x16         //update signature
	li                  x10,    0xe2dc140d
	pv.min.sci.b        x9,     x10,    8
	add 				x31,    x31,    x9         //update signature

	li                  x10,    0xce1f6a2c
	li                  x2,     0x7bcaca77
	pv.minu.h           x16,    x10,    x2
	add 				x31,    x31,    x16         //update signature
	li                  x11,    0x9b10d351
	li                  x5,     0xadd97e44
	pv.minu.h           x6,     x11,    x5
	add 				x31,    x31,    x6         //update signature
	li                  x20,    0x492c0410
	li                  x21,    0x6230f5f6
	pv.minu.h           x29,    x20,    x21
	add 				x31,    x31,    x29         //update signature

	li                  x14,    0x22f1650c
	li                  x24,    0xccb4280c
	pv.minu.b           x24,    x14,    x24
	add 				x31,    x31,    x24         //update signature
	li                  x16,    0xb8297e77
	li                  x27,    0x5e617d4b
	pv.minu.b           x16,    x16,    x27
	add 				x31,    x31,    x16         //update signature
	li                  x17,    0xcc09122b
	li                  x11,    0xe247cd98
	pv.minu.b           x27,    x17,    x11
	add 				x31,    x31,    x27         //update signature

	li                  x24,    0xcca209a2
	li                  x10,    0x8462de85
	pv.minu.sc.h        x19,    x24,    x10
	add 				x31,    x31,    x19         //update signature
	li                  x7,     0xca6d35c7
	li                  x30,    0x4031636b
	pv.minu.sc.h        x15,    x7,     x30
	add 				x31,    x31,    x15         //update signature
	li                  x26,    0xe9ecfd80
	li                  x28,    0xb2e89224
	pv.minu.sc.h        x29,    x26,    x28
	add 				x31,    x31,    x29         //update signature

	li                  x27,    0x56f0e9ce
	li                  x15,    0xc2fd5599
	pv.minu.sc.b        x8,     x27,    x15
	add 				x31,    x31,    x8         //update signature
	li                  x22,    0x89bb60ab
	li                  x8,     0xbce370ec
	pv.minu.sc.b        x28,    x22,    x8
	add 				x31,    x31,    x28         //update signature
	li                  x25,    0x38899498
	li                  x14,    0xfae56b9
	pv.minu.sc.b        x13,    x25,    x14
	add 				x31,    x31,    x13         //update signature

	li                  x21,    0xf28b4c2c
	pv.minu.sci.h       x21,    x21,    11
	add 				x31,    x31,    x21         //update signature
	li                  x27,    0x4bc4af38
	pv.minu.sci.h       x1,    x27,    28
	add 				x31,    x31,    x1         //update signature
	li                  x25,    0x75f8f3ec
	pv.minu.sci.h       x16,    x25,    30
	add 				x31,    x31,    x16         //update signature

	li                  x3,     0xc5a07178
	pv.minu.sci.b       x6,     x3,     29
	add 				x31,    x31,    x6         //update signature
	li                  x5,     0x46569e7d
	pv.minu.sci.b       x8,     x5,     13
	add 				x31,    x31,    x8         //update signature
	li                  x1,     0xe1bd16fc
	pv.minu.sci.b       x11,    x1,     4
	add 				x31,    x31,    x11         //update signature

	li                  x13,    0xc793e903
	li                  x14,    0x76c50994
	pv.max.h            x11,    x13,    x14
	add 				x31,    x31,    x11         //update signature
	li                  x15,    0x2246fc5
	li                  x18,    0x6d012ab
	pv.max.h            x7,     x15,    x18
	add 				x31,    x31,    x7         //update signature
	li                  x13,    0xf804dec8
	li                  x9,     0x2138bf31
	pv.max.h            x20,    x13,    x9
	add 				x31,    x31,    x20         //update signature

	li                  x24,    0x94c427e5
	li                  x6,     0xbae700bc
	pv.max.b            x1,     x24,    x6
	add 				x31,    x31,    x1         //update signature
	li                  x9,     0xcccd8cf7
	li                  x29,    0x7c3c58dc
	pv.max.b            x1,     x9,     x29
	add 				x31,    x31,    x1         //update signature
	li                  x17,    0xc7de1698
	li                  x21,    0x13fb39c5
	pv.max.b            x12,    x17,    x21
	add 				x31,    x31,    x12         //update signature

	li                  x24,    0xa42cd57d
	li                  x28,    0x32bef2aa
	pv.max.sc.h         x19,    x24,    x28
	add 				x31,    x31,    x19         //update signature
	li                  x28,    0x22b04b77
	li                  x1,     0xf3aa1c72
	pv.max.sc.h         x29,    x28,    x1
	add 				x31,    x31,    x29         //update signature
	li                  x7,     0x5c92db78
	li                  x23,    0x716c40cd
	pv.max.sc.h         x16,    x7,     x23
	add 				x31,    x31,    x16         //update signature

	li                  x27,    0x28e1d269
	li                  x2,     0x607978d5
	pv.max.sc.b         x22,    x27,    x2
	add 				x31,    x31,    x22         //update signature
	li                  x1,     0xdf72aeeb
	li                  x30,    0x91182d99
	pv.max.sc.b         x16,    x1,     x30
	add 				x31,    x31,    x16         //update signature
	li                  x26,    0xce729572
	li                  x25,    0x73d377c3
	pv.max.sc.b         x9,     x26,    x25
	add 				x31,    x31,    x9         //update signature

	li                  x29,    0xe136ebf1
	pv.max.sci.h        x8,     x29,    26
	add 				x31,    x31,    x8         //update signature
	li                  x0,     0xd8396623
	pv.max.sci.h        x24,    x0,     11
	add 				x31,    x31,    x24         //update signature
	li                  x28,    0x799a2048
	pv.max.sci.h        x16,    x28,    25
	add 				x31,    x31,    x16         //update signature

	li                  x17,    0x192ebb8
	pv.max.sci.b        x23,    x17,    0
	add 				x31,    x31,    x23         //update signature
	li                  x24,    0x8a29deac
	pv.max.sci.b        x22,    x24,    22
	add 				x31,    x31,    x22         //update signature
	li                  x26,    0x96972f9a
	pv.max.sci.b        x13,    x26,    19
	add 				x31,    x31,    x13         //update signature

	li                  x26,    0x35c500b9
	li                  x22,    0xefab90d8
	pv.maxu.h           x25,    x26,    x22
	add 				x31,    x31,    x25         //update signature
	li                  x13,    0xf066f2a7
	li                  x10,    0x96e930cf
	pv.maxu.h           x6,     x13,    x10
	add 				x31,    x31,    x6         //update signature
	li                  x5,     0xadc868a1
	li                  x27,    0xe6d54e08
	pv.maxu.h           x12,    x5,     x27
	add 				x31,    x31,    x12         //update signature

	li                  x15,    0xd1a2699d
	li                  x5,     0x529de4ce
	pv.maxu.b           x13,    x15,    x5
	add 				x31,    x31,    x13         //update signature
	li                  x16,    0x343d22e
	li                  x26,    0x4c198f48
	pv.maxu.b           x17,    x16,    x26
	add 				x31,    x31,    x17         //update signature
	li                  x15,    0xf3bb3a86
	li                  x15,    0x6d69836
	pv.maxu.b           x29,    x15,    x15
	add 				x31,    x31,    x29         //update signature

	li                  x3,     0xd73cfae8
	li                  x27,    0xf10ed422
	pv.maxu.sc.h        x11,    x3,     x27
	add 				x31,    x31,    x11         //update signature
	li                  x25,    0x50c043d8
	li                  x17,    0x1ac4a0a9
	pv.maxu.sc.h        x28,    x25,    x17
	add 				x31,    x31,    x28         //update signature
	li                  x2,     0xe2035648
	li                  x27,    0x2687e473
	pv.maxu.sc.h        x8,     x2,     x27
	add 				x31,    x31,    x8         //update signature

	li                  x28,    0xff9f95
	li                  x0,     0x23e1a938
	pv.maxu.sc.b        x22,    x28,    x0
	add 				x31,    x31,    x22         //update signature
	li                  x11,    0x34648fee
	li                  x16,    0x89e33777
	pv.maxu.sc.b        x10,    x11,    x16
	add 				x31,    x31,    x10         //update signature
	li                  x25,    0xde1b7ad8
	li                  x19,    0xb70e3a4d
	pv.maxu.sc.b        x16,    x25,    x19
	add 				x31,    x31,    x16         //update signature

	li                  x10,    0xb5627fa1
	pv.maxu.sci.h       x7,     x10,    5
	add 				x31,    x31,    x7         //update signature
	li                  x20,    0x6eab020
	pv.maxu.sci.h       x15,    x20,    18
	add 				x31,    x31,    x15         //update signature
	li                  x17,    0xf569c1d0
	pv.maxu.sci.h       x5,     x17,    6
	add 				x31,    x31,    x5         //update signature

	li                  x11,    0x26959a49
	pv.maxu.sci.b       x17,    x11,    19
	add 				x31,    x31,    x17         //update signature
	li                  x27,    0xe531937a
	pv.maxu.sci.b       x20,    x27,    2
	add 				x31,    x31,    x20         //update signature
	li                  x20,    0xe43cc5ae
	pv.maxu.sci.b       x2,     x20,    22
	add 				x31,    x31,    x2         //update signature


	li                  x10,    0x20edfa5b
	li                  x14,    0xdb3d5186
	pv.srl.h            x10,    x10,    x14
	add 				x31,    x31,    x10         //update signature
	li                  x0,     0x4de3d3e8
	li                  x22,    0xbde981b7
	pv.srl.h            x26,    x0,     x22
	add 				x31,    x31,    x26         //update signature
	li                  x7,     0x34fb317b
	li                  x22,    0xc2220ed
	pv.srl.h            x1,    x7,     x22
	add 				x31,    x31,    x1         //update signature
	li                  x29,    0x5e260848
	li                  x2,     0x90e075a4
	pv.srl.b            x4,    x29,    x2
	add 				x31,    x31,    x4         //update signature
	li                  x18,    0x3f89a43a
	li                  x19,    0x64835485
	pv.srl.b            x15,    x18,    x19
	add 				x31,    x31,    x15         //update signature
	li                  x30,    0xbeb3db16
	li                  x27,    0x7a85dec5
	pv.srl.b            x21,    x30,    x27
	add 				x31,    x31,    x21         //update signature

	/****************
	li                  x7,     0x3bc8849c
	li                  x13,    0xb369a700
	pv.srl.sc.h         x14,    x7,     x13
	li                  x16,    0xcb99287
	li                  x27,    0x8476b7fc
	pv.srl.sc.h         x20,    x16,    x27
	li                  x7,     0x66be7959
	li                  x26,    0xc42a0edb
	pv.srl.sc.h         x24,    x7,     x26
	li                  x27,    0xcf33d3e8
	li                  x7,     0x3bb45405
	pv.srl.sc.b         x22,    x27,    x7
	li                  x5,     0x8316f9f2
	li                  x18,    0x21d80d63
	pv.srl.sc.b         x13,    x5,     x18
	li                  x17,    0x2cb5b33c
	li                  x11,    0x3ea3c03d
	pv.srl.sc.b         x29,    x17,    x11
	li                  x13,    0x9738ed08
	pv.srl.sci.h        x16,    x13,    17
	li                  x6,     0x3ccedb13
	pv.srl.sci.h        x10,    x6,     25
	li                  x21,    0x507c5610
	pv.srl.sci.h        x26,    x21,    8
	li                  x31,    0x39dbbf65
	pv.srl.sci.b        x22,    x31,    19
	li                  x13,    0x5d7509d
	pv.srl.sci.b        x26,    x13,    22
	li                  x13,    0x3c4d44a1
	pv.srl.sci.b        x3,     x13,    17
**************/


	li                  x29,    0x185c37dd
	li                  x29,    0xdc55b34a
	pv.sra.h            x16,    x29,    x29
	add 				x31,    x31,    x16         //update signature
	li                  x26,    0x5eb811a4
	li                  x7,     0xb0c7f2da
	pv.sra.h            x10,    x26,    x7
	add 				x31,    x31,    x10         //update signature
	li                  x26,    0x581274d
	li                  x30,    0x5c19cb75
	pv.sra.h            x9,     x26,    x30
	add 				x31,    x31,    x9         //update signature

	li                  x7,     0xbd8fcfcc
	li                  x13,    0x856277f8
	pv.sra.b            x5,     x7,     x13
	add 				x31,    x31,    x5         //update signature
	li                  x24,    0x41bfe8c6
	li                  x10,    0x2fe851fd
	pv.sra.b            x23,    x24,    x10
	add 				x31,    x31,    x23         //update signature
	li                  x19,    0xce1956b6
	li                  x13,    0x57aad494
	pv.sra.b            x28,    x19,    x13
	add 				x31,    x31,    x28         //update signature


	/***********
	li                  x17,    0x8d7c3548
	li                  x20,    0xb7f8caca
	pv.sra.sc.h         x29,    x17,    x20
	li                  x6,     0xdba5ed3d
	li                  x24,    0xc21bb60f
	pv.sra.sc.h         x23,    x6,     x24
	li                  x29,    0xb2f3f8dd
	li                  x19,    0x6cc20d41
	pv.sra.sc.h         x20,    x29,    x19
	li                  x31,    0xb6f1f81b
	li                  x23,    0x18fea43b
	pv.sra.sc.b         x6,     x31,    x23
	li                  x12,    0x298b3831
	li                  x20,    0xf47bb112
	pv.sra.sc.b         x22,    x12,    x20
	li                  x4,     0x5d8b6f0a
	li                  x26,    0x55879b
	pv.sra.sc.b         x15,    x4,     x26
	li                  x14,    0x3777af3b
	pv.sra.sci.h        x6,     x14,    16
	li                  x16,    0x16f4bd72
	pv.sra.sci.h        x22,    x16,    23
	li                  x20,    0x8743799d
	pv.sra.sci.h        x17,    x20,    28
	li                  x24,    0x195e988e
	pv.sra.sci.b        x22,    x24,    2
	li                  x19,    0x52f94564
	pv.sra.sci.b        x7,     x19,    18
	li                  x2,     0xe962db58
	pv.sra.sci.b        x9,     x2,     0

*****************/

	li                  x17,    0x8499a6b4
	li                  x15,    0x8dfff640
	pv.sll.h            x25,    x17,    x15
	add 				x31,    x31,    x25         //update signature
	li                  x19,    0x49e8fdfe
	li                  x7,     0xf61d0cc7
	pv.sll.h            x29,    x19,    x7
	add 				x31,    x31,    x29         //update signature
	li                  x29,    0xad0621e9
	li                  x5,     0xbd5d5a34
	pv.sll.h            x20,    x29,    x5
	add 				x31,    x31,    x20         //update signature
	li                  x14,    0xa1126ff2
	li                  x13,    0x3b689c03
	pv.sll.b            x27,    x14,    x13
	add 				x31,    x31,    x27         //update signature
	li                  x14,    0x531f3ef9
	li                  x5,     0x81e077da
	pv.sll.b            x21,    x14,    x5
	add 				x31,    x31,    x21         //update signature
	li                  x17,    0xcbee5361
	li                  x28,    0x4e22029
	pv.sll.b            x17,    x17,    x28
	add 				x31,    x31,    x17         //update signature

/***********************
	li                  x9,     0xc6e842a9
	li                  x31,    0x2ad2371d
	pv.sll.sc.h         x24,    x9,     x31
	li                  x19,    0x4872cb6f
	li                  x28,    0xea55680
	pv.sll.sc.h         x17,    x19,    x28
	li                  x31,    0x32e468c8
	li                  x20,    0x7f7142c9
	pv.sll.sc.h         x22,    x31,    x20
	li                  x6,     0xf81cb728
	li                  x17,    0x3b296f93
	pv.sll.sc.b         x12,    x6,     x17
	li                  x8,     0xc5f7967f
	li                  x6,     0xb55f011c
	pv.sll.sc.b         x6,     x8,     x6
	li                  x0,     0xbcde383e
	li                  x21,    0x2a56fb91
	pv.sll.sc.b         x8,     x0,     x21
	li                  x4,     0xacec2f6b
	pv.sll.sci.h        x3,     x4,     12
	li                  x22,    0x450cc8d9
	pv.sll.sci.h        x4,     x22,    16
	li                  x13,    0xbc0fe54
	pv.sll.sci.h        x21,    x13,    31
	li                  x0,     0xfe8415b8
	pv.sll.sci.b        x24,    x0,     0
	li                  x24,    0x1abe1058
	pv.sll.sci.b        x10,    x24,    4
	li                  x2,     0xddea0c90
	pv.sll.sci.b        x19,    x2,     6

**************************************/

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
     .global pvalu_test_result

     signature:
     .space 4

     loandst:
     .space 150

     save_regs:
     .space 0x7C
