puts "Weight of package: "
a = gets.chomp.to_f
puts "Length of package: "
b = gets.chomp.to_f
puts "Width of package: "
c = gets.chomp.to_f
puts "Height of package: "
d = gets.chomp.to_f
e = (b * c) * d

puts "The weight is: " + a.to_s + " cm"
puts "The length is: " + b.to_s + " cm"
puts "The width is: " + c.to_s + " cm"
puts "The height is: " + d.to_s + " cm"
puts "The size of the package is: " + e.to_s + " cm"

if a > 27
    puts "The package is too heavy"   
elsif a < 27
    puts "The packages weight is within limits."
end

if e > 100000
    puts "The package is too big"
elsif e < 100000
    puts "The package fits within the size requirements"
end
