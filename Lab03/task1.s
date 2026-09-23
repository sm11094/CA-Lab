addi x10,x0,12 #x10=a
addi x11,x0,12 #x11=b
jal x1,sum #sum func is called
addi x11,x10,0
li x10,1
ecall
j exit

sum: #sum function
    add x10,x11,x10
    jalr x0,0(x1)

exit: