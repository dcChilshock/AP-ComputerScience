#check even or odd
.data
loss: .asciiz "Number is odd."
win: .asciiz "Number is even."
.text
main:
li $a1,2
li $a2,0
la $v0, 5 #user input
syscall
move $t0,$v0
div $t0,$a1
mfhi $t1
bne $t1,$a2,ne 
e:#even 
la $a0,win
li $v0,4
syscall
j exit 
ne: #not even 
la $a0,loss
li $v0,4
syscall
exit:
li $v0,10
syscall