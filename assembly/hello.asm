.data
hello: .asciiz "Hello, World!"

.text
main:
	la $a0, hello 	# Load Address of string into $a0
	li $v0, 4     	# syscall for print string
	syscall       	# Perform syscall
exit:
	li $v0, 10		# Syscall for exit
	syscall