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
intrestearned = saved * ((1+((0.01*intrest)/compound))**((compound*days)/365.0))
hehehe = intrestearned - saved
hehehe = hehehe.to_s
intrestearned = intrestearned.to_s
puts "Here is the total amount with intrest:" + intrestearned
puts "This is the compound intrest earned:" + hehehe
