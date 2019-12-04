// 1180300105 吴雨伦
// 作业题：7.6 7.8 7.10 7.12

// 7.6
/*
symbol  in_symtab   type        module  section
--------------------------------------------------------
buf     true        external    m       .data
bufp0   true        global      swap    .data
bufp1   true        local       swap    .bss
swap    true        global      swap    .text
temp    false       -           -       -
incr    true        local       swap    .text
count   true        local       swap    .bss
*/

// 7.8
// A:
//    (a) main.1
//    (b) main.2
// B:
//    (a) unknown
//    (b) unknown
// C:
//    (a) error
//    (b) error

// 7.10
// A: gcc p.o libx.a
// B: gcc p.o libx.a liby.a libx.a
// C: gcc p.o libx.a liby.a libx.a libz.a

// 7.12
// A: 0x4004f8 + (-4) - 0x4004ea = 0xa
// B: 0x400500 + (-4) - 0x4004da = 0x22