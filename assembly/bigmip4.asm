########################################################################
# Description:
# Loops 4 times, adding 20 to a total variable set to 40, if the total 
# is greater than 100, subtract 100, then move the total into a 
# register and print.
#
# Arguments:
#
# Returns:
########################################################################
.data
t: .asciiz "Total is: "
.text
main:
li $t0, 40 #variable is set to 40
li $t1,100
li $t2, 20 #add to t0 4 times
li $t3,0 #cound
li $t4,1 
li $t5,4
loop:
add $t0,$t2,$t0
add $t3,$t4,$t3
bgt $t0,$t1,subt
blt $t3,$t5,loop
subt:
sub $t0,$t0,$t1
la $a0,t
li $v0,4
syscall
move $a0,$t0
li $v0,1
syscall 
exit:
li $v0,10 #exit
syscall

