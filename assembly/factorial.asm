#for loop 
.text
main:
li $s0,1
li $t0,2
li $t1,6
loop:
mul $s0,$s0,$t0 #fact *= counter
addi $t0,$t0,1 #counter ++
#bne $t0,$t1,loop #if counter != limit goto loop
blt $t0,$t1,loop #if counter < limit goto loop 
exit:
li $v0,10
syscall
