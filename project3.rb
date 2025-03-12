#unit converter

check = ["length"]
len = ["centimeter", "inch", "meter", "feet", "mile", "kilometer"]

#dictionaries/nested hash for unit converions. probably a better way to do it.
conversions = {"length"=>{"centimeter"=>{"inch"=>2.54,"feet"=>30.48,"meter"=>100,"mile"=>160900,"kilometer"=>100000,}, 
"inch"=>{"centimeter"=>2.54,"feet"=>12,"meter"=>39.37,"mile"=>63360,"kilometer"=>39370,},
"meter"=>{"centimeter"=>100,"feet"=>3.28,"inch"=>39.37,"mile"=>1609,"kilometer"=>1000,},
"feet"=>{"centimeter"=>30.48,"inch"=>12,"meter"=>3.281,"mile"=>5280,"kilometer"=>3281 ,},
"mile"=>{"centimeter"=>160934,"feet"=>5280,"meter"=>1609,"inch"=>63360 ,"kilometer"=>1.609,},
"kilometer"=>{"centimeter"=>100000,"feet"=>3280.84,"meter"=>1000,"mile"=>1.609,"inch"=>39370,}}}

order = {"length" => {"centimeter"=>1,"inch"=>2,"meter"=>3,"feet"=>4,"mile"=>5,"kilometer"=>6}}

def start(conversions,order,len,check) 
    check = ["length"]
    puts "Available unit conversions, #{check}"
    answer = gets.chomp
    form = answer
    if check.include?(answer) == false
        while check.include?(answer) == false
            puts "Input not compatible, please input again"
            puts "Available unit conversions, #{check}"
            input = gets.chomp
            answer = input
        end
    end
    puts "Available conversions, #{len}:" 
    puts "Pick a unit to convert from.(Do not include numbers)"
    unit1 = gets.chomp

    puts "Whats the numerical value?"
    num = gets.chomp 

    puts "Pick a avaliable unit to convert to."
    unit2 = gets.chomp

        result = convert_length(num,unit1,unit2,form,conversions,order) #change this when adding more conversions 
        puts result
end 

def convert_length(num,u1,u2,form,conversions,order)
    unit1 = order[form][u1]
    unit2 = order[form][u2]
    list = conversions[form][u2][u1] #number for conversion
    #make the math another function
    if unit1 > unit2
        total = num.to_i * list
    elsif unit1 < unit2
        total = num.to_i / list
        puts "hey"
    end 
    return total
end


#start the program
start(conversions, order, len, check)
        