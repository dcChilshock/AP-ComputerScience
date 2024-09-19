puts "First time in military time"
a = gets.chomp
puts "Second time in military time"
b = gets.chomp
a = a.to_f
b = b.to_f
c = a - b
d = c / 60
d = d * -1
d = d.to_s
puts "Time difference is: " + d