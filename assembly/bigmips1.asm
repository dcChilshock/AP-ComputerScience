########################################################################
# Description:
# Compute (1000 - 200 + 30), multiply by 2, and display the result
#
# Arguments:
#
# Returns:
########################################################################
.data
msg_res: .asciiz "Result of (1000-200+30)*2 is: "
.text
main:
	li $t0,1000
	li $t1,200
	li $t2,30
	li $t3,2
	sub $t4,$t0,$t1
	add $t5,$t4,$t2
	mul $t6,$t5,$t3
	la $a0, msg_res
	li $v0,4 
	syscall
	move $a0, $t6
	li $v0,1
	syscall 