main:
    addi x10, x0, 5
    jal x1, ntri
end:
    j end
ntri:
    addi sp, sp, -8
    sw x1, 4(sp)
    sw x10, 0(sp)
    addi x5, x0, 1
    bge x5, x10, base
    addi x10, x10, -1
    jal x1, ntri
    addi x6, x10, 0
    lw x10, 0(sp)
    lw x1, 4(sp)
    addi sp, sp, 8
    add x10, x10, x6
    jalr x0, 0(x1)
base:
    addi x10, x0, 1
    lw x1, 4(sp)
    addi sp, sp, 8
    jalr x0, 0(x1)