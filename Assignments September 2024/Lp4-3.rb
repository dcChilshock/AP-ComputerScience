puts "Number of eggs purchased."
egg = gets.chomp.to_i

dozen = egg * 12.0
mod = egg % 12.0
dozen.round
price = 0.0
if dozen < 4
    price = 0.5
elsif dozen < 6
    price = 0.45
elsif dozen < 11
    price = 0.40
else
    price = 0.35
end

total = price * dozen
rem = price / 12.0
mod = rem * mod
total = total + mod
total = total * 0.01
total = total.round(2)
total.to_s
mod = mod.to_s
rem = rem.to_s 
puts "This is the remandier: " + mod + " and this " + rem
puts "The total cost is equal to " + total.to_s 