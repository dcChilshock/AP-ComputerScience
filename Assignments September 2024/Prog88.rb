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
sum = sum.to_s
difference = difference.to_s
product = product.to_s
average = average.to_s
absolute = absolute.to_s
max = max.to_s
min = min.to_s
puts "The sum is:" + sum
puts "The difference is:"+ difference
puts "The product is:"+ product
puts "The average is:"+ average
puts "The absolute is:"+ absolute
puts "The max is:"+ max 
puts "The min is:"+ min