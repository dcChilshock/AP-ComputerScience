#unit converter
# Dictinary (cant spell)

#idea make function to seperate the unit and number and then read it.

#All unit conversions ill do, 1, decmial to octal, hex, binary and so for(I hope)
#the ones I must do are basic imperial and metric systems first(Length first, then weight)

#Starts the process for unit conversion
def convert_length(num,unit1,unit2,form):
    a = length[unit1]
    b = length[unit2]
    c = unit1 #c = the inch like list ?
    
    if form == "length": #option 1, is to do this for all conversions
        d = length[unit1]
        j = length1[d]
        x = j[unit2.to_s]
        #length.invert()
        #if d == 1
            #x = centimeter[unit2.to_s]
         #   j = length1[d]
          #  x = j[unit2.to_s]
        #elsif d == 2 
        #    #x = inch[unit2.to_s]
        #elsif d == 3
        #    #x = meter[unit2.to_s]
        #elsif d == 4
        #    #x = feet[unit2.to_s]
        #elsif d == 5
        #    #x = mile[unit2.to_s ]
        #elsif d == 6 
            #x = kilometer[unit2.to_s]
        #end 
    if a > b #this means multipulcation
        total = num * x
    elsif a < b #this means its division.
        total = num / x
    end 
    return total 
end

check = ["length"] #add to this list when you add more conversions like area or mass etc

#might need to change these from variables to strings idk if ill need to.
len = ["centimeter", "inch", "meter", "feet", "mile", "kilometer"]
length1 = [1=>centimeter,2=>inch,3=>meter,4=>feet,5=>mile,6=>kilometer] #test list to see if what i want to do is possible
#length dictionary for seeing * or / to use & just like easily telling whats what ig.
length = {"centimeter" => 1,"inch" => 2,"meter" => 3, "feet" => 4, "mile" => 5,"kilometer" => 6,} 
#dictionaries for unit converions. probably a better way to do it but I dont have that time.
inch = {"centimeter"=>2.54,"feet"=>12,"meter"=>39.37,"mile"=>63360,"kilometer"=>39370,}
centimeter = {"inch"=>2.54,"feet"=>30.48,"meter"=>100,"mile"=>160900,"kilometer"=>100000,}
feet = {"centimeter"=>30.48,"inch"=>12,"meter"=>3.281,"mile"=>5280,"kilometer"=>3281 ,}
mile = {"centimeter"=>160934,"feet"=>5280,"meter"=>1609,"inch"=>63360 ,"kilometer"=>1.609,}
kilometer = {"centimeter"=>100000,"feet"=>3280.84,"meter"=>1000,"mile"=>1.609,"inch"=>39370,}
meter = {"centimeter"=>100,"feet"=>3.28,"inch"=>39.37,"mile"=>1609,"kilometer"=>1000,}

def start():
    puts "Available unit conversions, length: More will be avaliable in time."
    answer = gets.chomp
    if answer in check == false
        puts "Input not compatible, please input again. Tip:spell it like its spelt in the opening message"
        while answer in check == false
            input = gets.chomp
            answer = input
        end
        form = answer
    else
        puts "Available conversions, " + form.to_s + ":" 
        l = check.length
        for i in 1..l-1 #might not work 
            v = 0 
            if form == check[v]
                print len #change this when adding more conversions.
            v = v + 1
            end
        end 
        puts "Pick a unit to convert from.(Do not include numbers)"
        unit1 = gets.chomp

        puts "Whats the numerical value?"
        num = gets.chomp 

        puts "Pick a unit to convert to."
        unit2 = gets.chomp

        convert_length(num,unit1,unit2,form) #change this when adding more conversions 

    end
end 




        
        


