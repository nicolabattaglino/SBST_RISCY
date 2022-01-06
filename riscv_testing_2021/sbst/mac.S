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
