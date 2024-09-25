puts "First time in military time"
a = gets.chomp.to_f
puts "Second time in military time"
b = gets.chomp.to_f
a = a / 100
b = b / 100
c = a - b

puts "Time difference is: " + c.to_s 