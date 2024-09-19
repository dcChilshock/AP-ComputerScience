puts "Enter radius: "
r = gets.chomp
r = r.to_f
pi = 3.14159
circumfrence = 2 * pi * r
area = pi * r ** 2
area = area.to_s
circumfrence = circumfrence.to_s
puts "Circumfrence is: " + circumfrence
puts "Area is: " + area
