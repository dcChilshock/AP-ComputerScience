.data
array: .word 3,6,8,15,22,7,10,33,44,18
array_size: .word 10
newline: .asciiz "\n"
.text
main:
la $t0,array
li $t1,0 
lw $t2, array_size
loop:
beq $t1,$t2,exit
#load array
mul $t3,$t1,4
add $t4,$t0,$t3
lw $t5,0($t4)
andi $t6,$t5,1
bnez $t6,skip
move $a0,$t5
li $v0,1
syscall
la $a0,newline
li $v0,4
syscall
skip:
addi $t1,$t1,1 #t1(index)++
j loop
exit:
li $v0,10
syscall