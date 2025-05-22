.data
prompt: .asciiz "Enter an integer: " 

.text
main:
	# Print Prompt
	la $a0, prompt
	li $v0, 4
	syscall
	
	li $v0, 5 #syscall for read int; stores in Sv0
	syscall
	
	#print int
	move $a0, $v0 # Sa0 = Sv0 
	li $v0, 1     # Syscall for print int
exit:
	li $v0, 10
	syscall