puts "# of copies to print"
a = gets.chomp.to_i

if a > 99
    price = 0.28
elsif a > 499
    price = 0.27
elsif a > 749
    price = 0.26
elsif a > 1000
    price = 0.25
else 
    price = 0.30
end 

total = a * price
price = price.to_s
total = total.to_s
a = a.to_s
puts "The # of copies are: " + a
puts "The price per copy is: " + price
puts "The total cost will be is: " + total
