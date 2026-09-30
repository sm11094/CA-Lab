main:
    addi x10, x0, 7
    jal x1, fact
end:
    j end
fact:
    addi x5, x0, 1
loop:
    bge x0, x10, done
    mul x5, x5, x10
    addi x10, x10, -1
    jal x0, loop
done:
    addi x10, x5, 0
    jalr x0, 0(x1)