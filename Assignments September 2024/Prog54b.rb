puts "First 3 digit number: "
a = gets.chomp
puts "Second 3 digit number: "
b = gets.chomp
puts "Third 3 digit number: "
c = gets.chomp
a = a.to_f
b = b.to_f 
c = c.to_f
sum = a + b + c
average = sum / 3
sum = sum.to_s
average = average.to_s

puts "The sum is: " + sum
puts "the average is:"+ average