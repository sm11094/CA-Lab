addi x23, x0, 4
addi x24, x0, 6
sb   x23, 0x100(x0)
sh   x24, 0x200(x0)
addi x23, x0, 7
addi x24, x0, 1
sb   x23, 0x101(x0)
sh   x24, 0x202(x0)
addi x23, x0, 12
addi x24, x0, 9
sb   x23, 0x102(x0)
sh   x24, 0x204(x0)
addi x23, x0, 1
addi x24, x0, 6
addi x0,x0,0
sb   x23, 0x103(x0)
sh   x24, 0x206(x0)
lb   x20, 0x100(x0)
lh   x21, 0x200(x0)
add  x22, x20, x21
sw   x22, 0x300(x0)
lb   x20, 0x101(x0)
lh   x21, 0x202(x0)
add  x22, x20, x21
sw   x22, 0x304(x0)
lb   x20, 0x102(x0)
lh   x21, 0x204(x0)
add  x22, x20, x21
sw   x22, 0x308(x0)
lb   x20, 0x103(x0)
lh   x21, 0x206(x0)
add  x22, x20, x21
sw   x22, 0x30C(x0)
done:
    j done
