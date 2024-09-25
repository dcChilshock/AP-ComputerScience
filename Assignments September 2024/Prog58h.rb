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
intrest = saved * ((1+((0.01*intrest)/compound))**((compound*days)/365.0))
compound = intrest - saved
compound = compound.to_s
intrest = intrest.to_s
puts "Here is the total amount with intrest:" + intrest
puts "This is the compound intrest earned:" + compound
