#area under a curve / riemann sum
#f(x) = h(f(a)+f(a+h)+f(a+2h)+f(a+3h))
#This represents/generalizes INSERT COMPLICATED FORMULA
#PROBLEM WITH THIS APPROACH: Is that h has to be small enough or n has to be big enough to aviod estimation errors
#However if H is too small it takes to long

print "X bound for a please"
a = gets.chomp
print "X bound for b pretty please"
b = gets.chomp
print "I NEED THE NUMBER OF PANELS OR I WILL HAVE YOUR SOUL. PLease"
n = gets.chomp.to_i

math = h(f(a)+f(a+h)+f(a+2h)+f(a+3h))

h = (b- a)/n

f = #TO DO LATER ASK TEACHER.