li x5, 5
li x6, 10
sw x5, 0x120(x0)
sw x6, 0x124(x0)
addi x10, x0, 0x100
addi x11, x0, 8
jal x1, swap
j exit
swap:
    slli x11, x11, 2
    add x10, x10, x11
    lw x9, 0(x10)
    lw x12, 4(x10)
    sw x12, 0(x10)
    sw x9, 4(x10)
    jalr x0, 0(x1)
exit: