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

exit:
li $v0,10
syscall

