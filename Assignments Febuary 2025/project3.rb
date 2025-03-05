#unit converter
# Dictinary (cant spell)

#All unit conversions ill do, 1, decmial to octal, hex, binary and so for(I hope)
#the ones I must do are basic imperial and metric systems first(Length first, then weight)

#Starts the process for unit conversion
def convert(num, unit1, unit2):
    a = length[unit1]
    b = length[unit2]
    c = unit1.to_s #c = the inch like list ?
    if a > b #this means multipulcation
        num * unit1[unit2]
    elsif a < b #this means its division.
        num / unit1[unit2]

puts "Available unit conversions: Length, Mass, Time, Temperature"
#Length includes inch, foot, mile, kilometer, meter, centimeter
length = {centimeter => 1,inch => 2,meter =>3, feet => 4, mile => 5,kilometer => 6,} #length dictionary

inch = {centimeter => 2.54,feet => 12,meter => 39.37,mile => 63360,kilometer => 39370,}
centimeter = {inch => 2.54,feet => 30.48,meter => 100,mile => 160900,kilometer => 100000,}
feet = {centimeter => 30.48,inch => 12,meter => 3.281,mile =>5280,kilometer =>3281 ,}
mile = {centimeter => ,feet => ,meter => ,inch => ,kilometer => ,}
kilometer = {centimeter => ,feet => ,meter => ,mile => ,inch => ,}
meter = {centimeter => ,feet => ,inch => 39.37,mile => ,kilometer => ,}
temp name