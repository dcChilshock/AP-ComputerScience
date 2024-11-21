#area under a curve / riemann sum
#f(x) = h(f(a)+f(a+h)+f(a+2h)+f(a+3h))
#This represents/generalizes INSERT COMPLICATED FORMULA
#PROBLEM WITH THIS APPROACH: Is that h has to be small enough or n has to be big enough to aviod estimation errors
#However if H is too small it takes to long

print "X bound for a "
a = gets.chomp.to_f
print "X bound for b "
b = gets.chomp.to_f
print "number of panels"
n = gets.chomp.to_f


#h = (b - a)/n
#x = h(f(a)+f(a+h)+f(a+(2*h))+f(a+(3*h)))
#f = a + (i*h)
def f(x)
    return Math.exp(-x*x/2)/Math.sqrt(2*3.14159)
end
#print f(x)
sum = 0.0
h = (b - a)/n
for i in 0..n do #n = 4
    sum += f(a + (i*h))
    #x = h(f(a)+f(a+h)+f(a+(2*h))+f(a+(3*h)))
end
puts (sum * h).to_s