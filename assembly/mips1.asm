#***prog52a***

.data
prompt1 .asciiz "Enter length:"
prompt2: .asciiz "Enter width:"
out1 .asciiz "Area:"
out2 .asciiz "\nPerimeter: "
.text
main:
	# === input length ===
	la $a0, prompt1 #a0 = primpt 1
	li $v0, 4 #print str(a0)
	syscall
	li $v0, 5 #v0 = read_int()
	syscall
	move $t0, $v0 #t0 = v0
	#input width
	la $a0, prompt2 # a0 = prompt2
	li $v0, 4 #print str a0
	syscall
	li $v0, 5 #v0 = read_int()
	syscall
	move $t1, $v0 #t1 = v0