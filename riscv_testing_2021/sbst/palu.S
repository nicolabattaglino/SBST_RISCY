.section .text
.global _sbst_palu
.type _sbst_palu, @function

_sbst_palu:

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

// ALU extensions
li                  x2,     0x73c743f8
p.extract           x22,    x2,     2,      19
add 				x31,    x31,    x22         //update signature
li                  x27,    0x5d4ff2a
p.extract           x18,    x27,    23,     24
add 				x31,    x31,    x18         //update signature
li                  x11,    0xd020f499
p.extract           x15,    x11,    22,     24
add 				x31,    x31,    x15         //update signature

li                  x21,    0x34cac0b1
p.extractu          x15,    x21,    4,      19
add 				x31,    x31,    x15         //update signature
li                  x13,    0xddd93e55
p.extractu          x14,    x13,    25,     9
add 				x31,    x31,    x14         //update signature
li                  x21,    0x69b3ff69
p.extractu          x6,     x21,    15,     21
add 				x31,    x31,    x6         //update signature

li                  x23,    0xfa1a4639
p.insert            x16,    x23,    15,     24
add 				x31,    x31,    x16         //update signature
li                  x8,     0x627fc817
p.insert            x27,    x8,     27,     15
add 				x31,    x31,    x27         //update signature
li                  x29,    0x9e7119be
p.insert            x1,     x29,    31,     17
add 				x31,    x31,    x1         //update signature

li                  x20,    0x86b3bb77
p.bclr              x30,    x20,    4,      29
add 				x31,    x31,    x30         //update signature
li                  x23,    0x974dc86c
p.bclr              x20,    x23,    29,     20
add 				x31,    x31,    x20         //update signature
li                  x2,     0x26a4eee1
p.bclr              x26,    x2,     11,     4
add 				x31,    x31,    x26         //update signature

li                  x7,     0x747e255c
p.bset              x1,     x7,     20,     20
add 				x31,    x31,    x1         //update signature
li                  x0,     0x4b94d62
p.bset              x7,     x0,     28,     11
add 				x31,    x31,    x7         //update signature
li                  x15,    0x161edd8d
p.bset              x24,    x15,    3,      14
add 				x31,    x31,    x24         //update signature

li                  x16,    0xe59bed68
li                  x30,    0xdef2f384
p.extractr          x22,    x16,    x30
add 				x31,    x31,    x22         //update signature
li                  x12,    0x561c7e2f
li                  x28,    0x4153227d
p.extractr          x11,    x12,    x28
add 				x31,    x31,    x11         //update signature
li                  x15,    0xbcd37397
li                  x14,    0x1d113ed1
p.extractr          x21,    x15,    x14
add 				x31,    x31,    x21         //update signature

li                  x16,    0xb7cec589
li                  x5,     0xcbe45195
p.extractur         x2,     x16,    x5
add 				x31,    x31,    x2         //update signature
li                  x22,    0x5de97b7e
li                  x21,    0xf9591578
p.extractur         x24,    x22,    x21
add 				x31,    x31,    x24         //update signature
li                  x29,    0x69eee2a0
li                  x8,     0x530bc1d3
p.extractur         x15,    x29,    x8
add 				x31,    x31,    x15         //update signature

li                  x4,     0x23355901
li                  x2,     0x6570e037
p.insertr           x6,     x4,     x2
add 				x31,    x31,    x6         //update signature
li                  x4,     0x2da9b41d
li                  x28,    0x4edb798d
p.insertr           x27,    x4,     x28
add 				x31,    x31,    x27         //update signature
li                  x18,    0x3feb473f
li                  x6,     0x47f9c7b
p.insertr           x1,     x18,    x6
add 				x31,    x31,    x1         //update signature

li                  x18,    0xe44c43f7
li                  x28,    0x647877b9
p.bclrr             x3,     x18,    x28
add 				x31,    x31,    x3         //update signature
li                  x15,    0xcfcfb808
li                  x10,    0x9c19a6bb
p.bclrr             x10,    x15,    x10
add 				x31,    x31,    x10         //update signature
li                  x16,    0x244a6411
li                  x20,    0xc4d9d86
p.bclrr             x21,    x16,    x20
add 				x31,    x31,    x21         //update signature

li                  x17,    0x65da2412
li                  x15,    0xa371b4a5
p.bsetr             x1,     x17,    x15
add 				x31,    x31,    x1         //update signature
li                  x30,    0x91c7eb9b
li                  x12,    0xf40c3c53
p.bsetr             x28,    x30,    x12
add 				x31,    x31,    x28         //update signature
li                  x30,    0xf43c736
li                  x17,    0x1255713b
p.bsetr             x20,    x30,    x17
add 				x31,    x31,    x20         //update signature

li                  x8,     0x37dce2b9
li                  x19,    0x59204480
p.ror               x8,     x8,     x19
add 				x31,    x31,    x8         //update signature
li                  x6,     0x90997d6f
li                  x17,    0xc7fb8880
p.ror               x13,    x6,     x17
add 				x31,    x31,    x13         //update signature
li                  x22,    0xcdd68940
li                  x1,     0xa0bfab0a
p.ror               x14,    x22,    x1
add 				x31,    x31,    x14         //update signature

li                  x18,    0xc17cbc20
li                  x28,    0xba199d9
p.slet              x20,    x18,    x28
add 				x31,    x31,    x20         //update signature
li                  x3,     0xa5711264
li                  x25,    0x2750b356
p.slet              x27,    x3,     x25
add 				x31,    x31,    x27         //update signature
li                  x13,    0xaf283302
li                  x29,    0x636a7247
p.slet              x8,     x13,    x29
add 				x31,    x31,    x8         //update signature

li                  x24,    0xd4da8d47
li                  x23,    0xed964d6e
p.sletu             x26,    x24,    x23
add 				x31,    x31,    x26         //update signature
li                  x9,     0x316457cd
li                  x14,    0x624305e0
p.sletu             x1,     x9,     x14
add 				x31,    x31,    x1         //update signature
li                  x9,     0x78518e1a
li                  x0,     0xc4a7afe0
p.sletu             x10,    x9,     x0
add 				x31,    x31,    x10         //update signature

li                  x13,    0xabff463
li                  x1,     0xf6488ddb
p.min               x2,     x13,    x1
add 				x31,    x31,    x2         //update signature
li                  x6,     0xd2154453
li                  x8,     0xbed44c56
p.min               x30,    x6,     x8
add 				x31,    x31,    x30         //update signature
li                  x24,    0x54db3498
li                  x6,     0xea281515
p.min               x1,     x24,    x6
add 				x31,    x31,    x1         //update signature

li                  x30,    0xa32126d
li                  x30,    0x7e4bfe74
p.minu              x2,     x30,    x30
add 				x31,    x31,    x2         //update signature
li                  x17,    0xf331b089
li                  x26,    0x62bd87b4
p.minu              x15,    x17,    x26
add 				x31,    x31,    x15         //update signature
li                  x11,    0x39540150
li                  x9,     0xe3dca581
p.minu              x10,    x11,    x9
add 				x31,    x31,    x10         //update signature

li                  x22,    0x109d1dec
li                  x28,    0xc5faace
p.max               x3,     x22,    x28
add 				x31,    x31,    x3         //update signature
li                  x26,    0xd013ffc5
li                  x0,     0xeaa498b6
p.max               x1,     x26,    x0
add 				x31,    x31,    x1         //update signature
li                  x30,    0x47a7f048
li                  x12,    0xc260b60f
p.max               x24,    x30,    x12
add 				x31,    x31,    x24         //update signature

li                  x1,     0x627d517a
li                  x2,     0xde5ce0b7
p.maxu              x30,    x1,     x2
add 				x31,    x31,    x30         //update signature
li                  x3,     0x2b1fd326
li                  x29,    0x1fc4caf8
p.maxu              x14,    x3,     x29
add 				x31,    x31,    x14         //update signature
li                  x5,     0x685ade30
li                  x13,    0x15283a5e
p.maxu              x15,    x5,     x13
add 				x31,    x31,    x15         //update signature

li                  x23,    0x9f7c9267
li                  x18,    0x11ac8367
p.clipr             x16,    x23,    x18
add 				x31,    x31,    x16         //update signature
li                  x20,    0x3d8de10b
li                  x11,    0x18635fe7
p.clipr             x1,     x20,    x11
add 				x31,    x31,    x1         //update signature
li                  x13,    0x4a99181b
li                  x3,     0x60df7be9
p.clipr             x3,     x13,    x3
add 				x31,    x31,    x3         //update signature

li                  x5,     0x7af6a5cb
li                  x16,    0x8088deab
p.clipur            x22,    x5,     x16
add 				x31,    x31,    x22         //update signature
li                  x22,    0x751eedef
li                  x21,    0xc29823b7
p.clipur            x28,    x22,    x21
add 				x31,    x31,    x28         //update signature
li                  x13,    0x7779e2b0
li                  x8,     0x5854583d
p.clipur            x29,    x13,    x8
add 				x31,    x31,    x29         //update signature

li                  x0,     0x25fd2d85
li                  x15,    0x111d7607
p.addNr             x19,    x0,     x15
add 				x31,    x31,    x19         //update signature
li                  x2,     0x88e74a7d
li                  x21,    0x282c130e
p.addNr             x3,     x2,     x21
add 				x31,    x31,    x3         //update signature
li                  x27,    0x64cdb658
li                  x15,    0x3a746280
p.addNr             x14,    x27,    x15
add 				x31,    x31,    x14         //update signature

li                  x8,     0xa4259f20
li                  x15,    0x674a3a56
p.adduNr            x4,     x8,     x15
add 				x31,    x31,    x4         //update signature
li                  x4,     0x73e5e7c6
li                  x23,    0x8f4805eb
p.adduNr            x11,    x4,     x23
add 				x31,    x31,    x11         //update signature
li                  x6,     0xe4c1eb8b
li                  x21,    0xd43d0958
p.adduNr            x20,    x6,     x21
add 				x31,    x31,    x20         //update signature

li                  x7,     0x42fe42a0
li                  x21,    0xb028330a
p.addRNr            x20,    x7,     x21
add 				x31,    x31,    x20         //update signature
li                  x11,    0xf885cc04
li                  x12,    0xe00f7e51
p.addRNr            x16,    x11,    x12
add 				x31,    x31,    x16         //update signature
li                  x22,    0x51429a95
li                  x4,     0x99cf7569
p.addRNr            x12,    x22,    x4
add 				x31,    x31,    x12         //update signature

li                  x6,     0x642c8346
li                  x11,    0x8f18b578
p.adduRNr           x4,     x6,     x11
add 				x31,    x31,    x4         //update signature
li                  x21,    0x20813687
li                  x0,     0x1ad0c0e3
p.adduRNr           x21,    x21,    x0
add 				x31,    x31,    x21         //update signature
li                  x17,    0xefcdd2f6
li                  x10,    0x50e27161
p.adduRNr           x27,    x17,    x10
add 				x31,    x31,    x27         //update signature

li                  x2,     0xd4e17b4a
li                  x2,     0xcbe73d64
p.subNr             x15,    x2,     x2
add 				x31,    x31,    x15         //update signature
li                  x5,     0x8bc6e443
li                  x26,    0xe6681e11
p.subNr             x15,    x5,     x26
add 				x31,    x31,    x15         //update signature
li                  x16,    0xb38a427f
li                  x2,     0xe0480a7b
p.subNr             x29,    x16,    x2
add 				x31,    x31,    x29         //update signature

li                  x11,    0x4ad50389
li                  x21,    0xdad741a5
p.subuNr            x25,    x11,    x21
add 				x31,    x31,    x25         //update signature
li                  x21,    0x7f46efb
li                  x9,     0x7f030023
p.subuNr            x12,    x21,    x9
add 				x31,    x31,    x12         //update signature
li                  x12,    0x56cc933e
li                  x22,    0xab42a802
p.subuNr            x8,     x12,    x22
add 				x31,    x31,    x8         //update signature

li                  x19,    0xe550752
li                  x7,     0x6db64017
p.subRNr            x14,    x19,    x7
add 				x31,    x31,    x14         //update signature
li                  x1,     0xd88a33d5
li                  x17,    0xeb176721
p.subRNr            x7,     x1,     x17
add 				x31,    x31,    x7         //update signature
li                  x2,     0x9532a93c
li                  x3,     0xd39d8c23
p.subRNr            x24,    x2,     x3
add 				x31,    x31,    x24         //update signature

li                  x19,    0x3567b5f1
li                  x1,     0x6fc3cb4d
p.subuRNr           x25,    x19,    x1
add 				x31,    x31,    x25         //update signature
li                  x18,    0xa3ab55fe
li                  x9,     0x35b53d8c
p.subuRNr           x14,    x18,    x9
add 				x31,    x31,    x14         //update signature
li                  x1,     0xcda76035
li                  x26,    0xb836d35f
p.subuRNr           x1,     x1,    x26
add 				x31,    x31,    x1         //update signature

li                  x19,    0x1a8fbb20
p.ff1               x1,    x19
add 				x31,    x31,    x1         //update signature
li                  x29,    0x58cd7142
p.ff1               x21,    x29
add 				x31,    x31,    x21         //update signature
li                  x9,     0x567ddd59
p.ff1               x19,    x9
add 				x31,    x31,    x19         //update signature

li                  x11,    0xd98f5228
p.fl1               x1,     x11
add 				x31,    x31,    x11         //update signature
li                  x4,     0xb8ff805a
p.fl1               x29,    x4
add 				x31,    x31,    x29         //update signature
li                  x1,     0x8d06d7a8
p.fl1               x10,    x1
add 				x31,    x31,    x10         //update signature

li                  x2,     0x46180829
p.clb               x30,    x2
add 				x31,    x31,    x30         //update signature
li                  x20,    0x665f6bbd
p.clb               x27,    x20
add 				x31,    x31,    x27         //update signature
li                  x15,    0x5003c0a1
p.clb               x5,     x15
add 				x31,    x31,    x5         //update signature

li                  x21,    0x458d89c6
p.cnt               x7,     x21
add 				x31,    x31,    x7         //update signature
li                  x25,    0x2503eb47
p.cnt               x8,     x25
add 				x31,    x31,    x8         //update signature
li                  x28,    0x7c4e400
p.cnt               x23,    x28
add 				x31,    x31,    x23         //update signature

li                  x26,    0x95b60e3
p.abs               x4,     x26
add 				x31,    x31,    x4         //update signature
li                  x28,    0x11a3c641
p.abs               x22,    x28
add 				x31,    x31,    x22         //update signature
li                  x19,    0x98a68cd4
p.abs               x15,    x19
add 				x31,    x31,    x15         //update signature

li                  x16,    0xa127bf61
p.exths             x11,    x16
add 				x31,    x31,    x11         //update signature
li                  x19,    0x796a33fc
p.exths             x8,     x19
add 				x31,    x31,    x8         //update signature
li                  x8,     0xa2e0694b
p.exths             x1,    x8
add 				x31,    x31,    x1         //update signature

li                  x12,    0x3a91f1d0
p.exthz             x20,    x12
add 				x31,    x31,    x20         //update signature
li                  x8,     0xd1b59e7b
p.exthz             x13,    x8
add 				x31,    x31,    x13         //update signature
li                  x27,    0x14a90a8d
p.exthz             x8,     x27
add 				x31,    x31,    x8         //update signature

li                  x26,    0xe3f4829a
p.extbs             x10,    x26
add 				x31,    x31,    x10         //update signature
li                  x0,     0xcb3a512c
p.extbs             x23,    x0
add 				x31,    x31,    x23         //update signature
li                  x25,    0xa9f3f7be
p.extbs             x21,    x25
add 				x31,    x31,    x21         //update signature

li                  x3,     0xecc86775
p.extbz             x15,    x3
add 				x31,    x31,    x15         //update signature
li                  x9,     0x7f171a7
p.extbz             x22,    x9
add 				x31,    x31,    x22         //update signature
li                  x11,    0x55327e3
p.extbz             x14,    x11
add 				x31,    x31,    x14         //update signature

li                  x9,     0x1406b3f9
p.clip              x16,    x9,     22
add 				x31,    x31,    x16         //update signature
li                  x17,    0x36c3b6fc
p.clip              x13,    x17,    10
add 				x31,    x31,    x13         //update signature
li                  x7,     0xf05c9629
p.clip              x2,     x7,     23
add 				x31,    x31,    x2         //update signature

li                  x22,    0x65b84fe9
p.clipu             x1,     x22,    12
add 				x31,    x31,    x1         //update signature
li                  x10,    0x8c431bf5
p.clipu             x7,     x10,	 2
add 				x31,    x31,    x7         //update signature
li                  x30,    0xe403732c
p.clipu             x6,     x30,    2
add 				x31,    x31,    x6         //update signature

p.addN              x25,    x11,    x1,     2
add 				x31,    x31,    x25         //update signature
p.addN              x9,     x27,    x28,    13
add 				x31,    x31,    x9         //update signature
p.addN              x4,     x8,     x11,    23
add 				x31,    x31,    x4         //update signature

p.adduN             x17,    x18,    x15,    28
add 				x31,    x31,    x17         //update signature
p.adduN             x16,    x10,    x1,     21
add 				x31,    x31,    x16         //update signature
p.adduN             x12,    x27,    x25,    22
add 				x31,    x31,    x12         //update signature

p.addRN             x18,    x24,    x1,    13
add 				x31,    x31,    x18         //update signature
p.addRN             x24,    x19,    x0,     13
add 				x31,    x31,    x24         //update signature
p.addRN             x22,    x4,     x20,    17
add 				x31,    x31,    x22         //update signature

p.adduRN            x27,    x9,     x13,    24
add 				x31,    x31,    x27         //update signature
p.adduRN            x2,     x22,    x26,    1
add 				x31,    x31,    x2         //update signature
p.adduRN            x29,    x14,    x12,    18
add 				x31,    x31,    x29         //update signature

p.subN              x9,     x25,    x15,    12
add 				x31,    x31,    x9         //update signature
p.subN              x3,     x22,    x15,    6
add 				x31,    x31,    x3         //update signature
p.subN              x18,    x10,    x4,     25
add 				x31,    x31,    x18         //update signature

p.subuN             x19,    x16,    x28,    20
add 				x31,    x31,    x19         //update signature
p.subuN             x24,    x17,    x16,    15
add 				x31,    x31,    x24         //update signature
p.subuN             x1,     x13,    x17,    11
add 				x31,    x31,    x1         //update signature

p.subRN             x11,    x20,    x1,     1
add 				x31,    x31,    x11         //update signature
p.subRN             x19,    x13,    x4,     26
add 				x31,    x31,    x19         //update signature
p.subRN             x19,    x16,    x22,    30
add 				x31,    x31,    x19         //update signature

p.subuRN            x25,    x0,     x29,    30
add 				x31,    x31,    x25         //update signature
p.subuRN            x13,    x28,    x25,    30
add 				x31,    x31,    x13         //update signature
p.subuRN            x18,    x22,    x15,    13
add 				x31,    x31,    x18         //update signature


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
.global palu_test_result

signature:
.space 4

loandst:
.space 150

save_regs:
.space 0x7C
