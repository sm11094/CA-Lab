addi x21,x0,0 #a
addi x22, x0,10 #b
addi x23,x0,20 #c
addi x20,x0,2 #x
addi x24,x0,1 
addi x25,x0,2
addi x26,x0,3
addi x27,x0,4


beq x20,x24,case1
beq x20,x25,case2
beq x20,x26,case3
beq x20,x27,case4
beq x0,x0,exit
case1:
add x21,x22,x23
beq x0,x0,exit
case2:
sub x21,x22,x23
beq x0,x0,exit
case3:
slli x21, x22, 1
beq x0,x0,exit
case4:
srli x21,x22,1
beq x0,x0,exit

exit: