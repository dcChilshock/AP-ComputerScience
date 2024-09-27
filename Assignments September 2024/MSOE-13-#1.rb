puts "First resistence is"
one = gets.chomp.to_f
one = one / 100000
puts "Second resistence is"
two = gets.chomp.to_f
two = two / 100000
puts "Third resistence is"
three = gets.chomp.to_f
three = three / 100000
puts "Volatage: "
four = gets.chomp.to_f

resistence = one + two + three
r = four / resistence
puts "The resistence is: " + r.to_s 

