#*** lp 4-9***
.data
prompt: .asciiz "Enter a Number between 1 & 20"
prtcpu: .asciiz "\nCPUs #: "
prtusr: .asciiz "\nYour #: "
prtwin: .asciiz "\nYou win!"
prtlos: .asciiz "\nYou Lose!"

.text
main:
	#gen number 1-20 using syscall 
	li $a1,20 	#a1 max = 2-
	li $v0,42 	#a0 = randint(0,a1) [exlusive]
	syscall
	add $s0,$a0,1 #$s0 = a0 +1 (min)
	#user input
	la $a0,prompt
	li $v0,4 	#printstr prompt
	syscall
	li $v0,5
	syscall 	#v0 = readint
	move $t0,$v0 #t0 = v0
	#show cpu num
	la $a0,prtcpu
	li $v0,4 	#printstr prompt
	syscall
	move $a0,$s0
	li $v0,1
	syscall
	#show user number 	
	la $a0,prtusr
	li $v0,4 	#printstr prompt
	syscall
	move $a0,$t0
	li $v0,1
	syscall  
	bne $t0,$s0,lose 
win:
	la $a0,prtwin
	li $v0,4
	syscall
	j exit
lose:
	la $a0,prtlos
	li $v0,4
	syscall
exit:
	li $v0,10
	syscall 