.data
prompt:.asciiz "enter a integer:"
.text
main:
la,$a0,prompt
li $v0,4 #print prompt
syscall
li $v0,5 #read_int
syscall
move $a0,$v0 #a0=v0
jal square_num
move $t0,$v1 #v1 = square_num(a0)
exit:
li $v0,10
syscall
square_num: #a0 int -> v1 = a0 ** 2
mul $v1,$a0,$a0
jr $ra