# ***Prog54b***
.data
msg_sum: .asciiz "The sum of the four numbers is: "
msg_avg: .asciiz "\nThe average of the four numbers is:"

.text 
main:
	#assign numbers
	li $t0, 475
	li $t1, 821
	li $t2, 369
	li $t3, 562
	
	#calculate sum := t4 
	add $t4,$t0,$t1 # t4 = t0 + t1
	add $t4,$t4,$t2 # t4 = t4 + t2
	add $t4,$t4,$t3 # t4 = t4 + t3
	# print sum
	la $a0, msg_sum  #a0 = msg_sum
	li $v0,4 #print_str(a0)
	syscall
	
	move $a0, $t3 #a0 = t4
	li $v0,1 #print int(a0)
	syscall
	
	#calculate integer part of average := t6
	li $t5, 4 
	div $t4, $t5 #lo = int(t4/t5); hi = t4 % t5
	mflo $t6 #t6 = lo  
	#mfhi $t7 # t7 = hi (remainder)
	
	#print average
	la $a0, msg_avg # a0 = msg_avg
	li $v0, 4
	syscall
exit:
	li $v0,10 # return 0
	syscall
