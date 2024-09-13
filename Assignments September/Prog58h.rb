puts "Amount Saved?"
saved = gets.chomp
puts "Intrest Rate?"
intrest = gets.chomp
puts "# of times compounded per year?"
compound = gets.chomp 
puts "Number of days of intrest?"
days = gets.chomp
saved = saved.to_f
intrest = intrest.to_f
compound = compound.to_f
days = days.to_f
intrestearned = 10,000 * ((1+(16.5/(100*365)))**(0.246*365))
hehehe = intrestearned - 10,000
hehehe = hehehe.to_s
intrestearned = intrestearned.to_s
puts "Here is the total amount with intrest:" + intrestearned
puts "This is the compound intrest earned:" + hehehe
