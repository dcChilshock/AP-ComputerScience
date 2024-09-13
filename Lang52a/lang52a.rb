puts "Enter length:"
length = gets.chomp
puts "Enter Width:"
width = gets.chomp
length = length.to_f
width = width.to_f
area = length * width
perimeter = (length*2) + (width*2)
perimeter = perimeter.to_s
area = area.to_s
puts "The area is " + area
puts "The perimeter is: " + perimeter