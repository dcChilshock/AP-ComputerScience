puts "Insert number 1-13"
a = gets.chomp.to_i
puts "Insert number 13-20"
b = gets.chomp.to_i
puts "Origin numbers are: " + a.to_s + " and " + b.to_s
sum = a + b
difference = a - b
product = a * b
average = sum / 2
absolute = (a - b)
if absolute < 0
    absolute = absolute * -1
else 
    absolute = absolute * 1
end
if a > b
    max = a
    min = b
else
    max = b
    min = a
end
puts "The sum is:" + sum.to_s
puts "The difference is:"+ difference.to_s
puts "The product is:"+ product.to_s
puts "The average is:"+ average.to_s
puts "The absolute is:"+ absolute.to_s
puts "The max is:"+ max.to_s
puts "The min is:"+ min.to_s