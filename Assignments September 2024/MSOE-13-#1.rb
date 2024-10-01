puts "First resistence is"
a = gets.chomp.to_f
puts "Second resistence is"
b = gets.chomp.to_f
puts "Third resistence is"
c = gets.chomp.to_f
puts "Volatage: "
d = gets.chomp.to_f
three = d / a
two = d / b
one = d / c 
resistence = one + two + three
r = d / resistence
puts "The resistence is: " + r.to_s 
puts one.to_s
puts two.to_s
puts three.to_s

