puts "Weight of package: "
a = gets.chomp.to_f
puts "Length of package: "
b = gets.chomp.to_f
puts "Width of package: "
c = gets.chomp.to_f
puts "Height of package: "
d = gets.chomp.to_f
e = (b * c) * d

if a > 27
    f = 1
elsif a < 27
    f = 2
end
if e > 100000
    g = 1
elsif e < 100000
    g = 2
end
a = a.to_s
b = b.to_s
c = c.to_s
d = d.to_s
puts "The weight is: " + a
puts "The length is: " + b
puts "The width is: " + c
puts "The height is: " + d
h = f + g
if h = 2
    puts "Too heavy and too big"
elsif h 
    puts "The package is too heavy"
elsif h
    puts "The package is too big"
else
    puts "The package fits"
end

