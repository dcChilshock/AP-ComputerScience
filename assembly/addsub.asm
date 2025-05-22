.data
msg_sum: .asciiz "The sum of the 2 numbers is: "
msg_diff: .asciiz "\nThe differnce of the 2 numbers is:"
.text
main:
	li $t0,10
	li $t1,20
	add $t2,$t0,$t1 #t3 = t0 + t1
	la $a0,msg_sum
	li $v0,4
	syscall 
	
	move $a0, $t2
	li $v0,1
	syscall
	
	sub $t3,$t0,$t1
	
	la $a1,msg_diff
	li $v0,4
	syscall 
	
	move $a0, $t3
	li $v0,1
	syscall
exit:
	li $v0,10
	syscall
	