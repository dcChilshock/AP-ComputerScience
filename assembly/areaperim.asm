#***prog52a***

.data
prompt1: .asciiz "Enter length:"
prompt2: .asciiz "Enter width:"
out1: .asciiz "Area:"
out2: .asciiz "\nPerimeter: "
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
	# calculate
	#mul $t4, $t0,$t1
	mult $t0, $t1 #area (lo) = length (t0) * width (t1)
	mflo $t4	#t4 = lo
	li $s2, 2
	mul $t8, $t0, $s2 #t8 (2*len) = t0 * 2
	mul $t9, $t1, $s2 #t9 (2*wid) = t1 *2
	add $t5, $t8, $t8 #perimeter (t5) = 2*length (t8) + 2*width (t9)
	#output
	#area
	la $a0,out1
	li $v0,4 #print int a0
	syscall
	move $a0, $t4
	li $v0,1
	syscall
	#perim
	la $a0, out2
	li $v0,4
	syscall
	move $a0,$t5
	li $v0,1 #print a0
	syscall
exit:
	li $v0,10
	syscall