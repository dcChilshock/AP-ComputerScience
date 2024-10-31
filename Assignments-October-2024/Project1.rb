#Project 1 is going to be a triva quiz game
def game
    score = 0
    amount = 0
    intro = [
        "|---|-------|---------|---------|---------|---|",
        "|---| Do You Wish to play, trivaMaster500?|---|",
        "|---|-------|    Y    |    N    |---------|---|",
        "|---|-------|---------|---------|---------|---|"
    ]
    y = [
        "|---|-------|---------|---------|---------|---|",
        "|---|-------|         Y         |---------|---|",
        "|---|-------|---------|---------|---------|---|",
        "|---|-------|---------|---------|---------|---|",
        "|---|   !   |  LET'S  |  PLAY   |    !    |---|",
        "|---|-------|---------|---------|---------|---|"
    ]
    n = [
        "|---|-------|---------|---------|---------|---|",
        "|---|-------|         N         |---------|---|",
        "|---|-------|---------|---------|---------|---|",
        "|---|-------|---------|---------|---------|---|",
        "|---|WHY ARE|   YOU   |EVEN HERE|  THEN?  |---|",
        "|---|-------|---------|---------|---------|---|"
    ]

    rules = [
        "|---|-------|---------|---------|---------|---|",
        "|-!-|               Rules                 |-!-|",
        "|-!-|  If you Forget the Rules then       |-!-|",
        "|-!-|     type RULES in the console.      |-!-|",
        "|-!-|             Have Fun                |-!-|",
        "|---|-------|---------|---------|---------|---|"]

    rule =[
        "|---|-------|---------|---------|---------|---|",#This 
        "|------------- Here are the Rules ------------|",
        "|----Their are scores from 100-400 points.----|",
        "|---The more points the harder the question---|",
        "|--To pick a question type the column first.--|",
        "|------------ Then the row second. -----------|",
        "|----------Example: a1 = games 100.-----------|",
        "|---|-------|---------|---------|---------|---|"]
    questions = [
        "|---|-------|---------|---------|---------|---|", #0
        "|---|-------|-----Questions-----|---------|---|",
        "|---|---a---|----b----|----c----|----d----|---|",
        "|-!-| Games | History | Culture | Pokemon |-!-|",
        "|---|-------|---------|---------|---------|---|", 
        "|-1-|  100  |   100   |   100   |   100   |-1-|", #5
        "|---|-------|---------|---------|---------|---|", 
        "|-2-|  200  |   200   |   200   |   200   |-2-|", #7
        "|---|-------|---------|---------|---------|---|", 
        "|-3-|  300  |   300   |   300   |   300   |-3-|", #9
        "|---|-------|---------|---------|---------|---|", 
        "|-4-|  400  |   400   |   400   |   400   |-4-|", #11
        "|---|-------|---------|---------|---------|---|"]
    multi = [
        "Zero isnt an option you get no points. lol",
        "A:elden-ring B:TOTK C:GOWR D:Witcher", #Elden ring is right
        "A:1 year B:3 year C:10 year D:5 year", #Five years is correct
        "A:Knack B:Oblivion C:Fortnite D:WOW", #Oblivion is right
        "A: Pre-sequal B: BL 2 C: BL 1 D: BL 3", #400 - 4 #B is right
        ]
    multi2 = [
        "Zero isnt an option you get no points. lol", #History 
        "A:Y2K B:DustBowl C:murder of Franz Ferdinand D:Vaporeon copypasta", #C is correct
        "A:Mark B:Pryamids C:Aliens D:Humans", #Mark/A is correct
        "A:Cannablism B:? C:Diddy D:Stabing", #Cannablism is correct 
        "A:20% B:99% C:60% D:70%" #4 #99% or A
        ]
    multi3 = [
        "Zero isnt an option you get no points. lol", #Culture 
        "A:Mistborn B:Harry potter C:WOK D:ACOTAR", #Mistborn is correct
        "A:Vaporeon copypasta B:solider copypasta C:bodypillow D:fedora", #Vaporeon copypasta
        "A:YES! B:NO:( C:Why D:ALL!", #Yes is correct
        "A:Why B:How C:How is this trivia? D:Help", #4 #D is correct
        ]
    multi4 = [
        "Zero isnt an option you get no points. lol", #Pokemon
        "A:incineroar B:incineroar C:incineroar D:ALL", #D/ALl is correct 
        "A:Vapeoren B:Typloshion C:Pikachu D:Munchlax", #B is correct
        "A:Metagross B:Dragonite C:Flygon D:Septile", #Flygon is correct
        "A:What B:death C:backflip D:strike", #4 #Death is correct
        ]

    column = [
        "|---|-------|---------|---------|---------|---|",
        "|---|----| What column do you desire |----|---|",
        "|---|-------|---------|---------|---------|---|"
    ]
    row = [
        "|---|-------|---------|---------|---------|---|",
        "|---|       What row do you desire        |---|",
        "|---|-------|---------|---------|---------|---|"
    ]
    a = [
        "Zero is not a column", #0
        "|-!-|-----What is Winner of GOTY 2022-----|-!-|", #Elden ring, 1
        "|-|How long has Silksong been in development|-|",
        "|First Video game to intro Mirco Transactions |",
        "|-!-|-- Which is the best Uncharted game--|-!-|"
    ]
    b = [
        "Zero is not a column", #0
        "|-!-|-------What event started a war.-----|-!-|",
        "|-!-|-------Who made the pyraminds.-------|-!-|",
        "|-!-|--What is mrbeast being accused of.--|-!-|",
        "|-!-|------Employment rate of skyrim------|-!-|"
    ]
    c = [
        "Zero is not a column", #0
        "|---|-----Whats the best fantasy book-----|---|",
        "|---|--------What is the weirdiest--------|---|",
        "|---|-----------Do a backflip-------------|---|",
        "|---|------------I am imploding-----------|---|"
    ]
    d = [
        "Zero is not a column", #0
        "|---|------What is the best pokemon.------|---|",
        "|---|----------Weirdest pokemon-----------|---|",
        "|---|----------The best pokemon-----------|---|",
        "|---|-----AHHHHHHHHHHHHHHHHHHHHHHHHHH-----|---|"
    ]
    gameover = [
        "|---|-------|---------|---------|---------|---|",
        "|---|-------|  GAME.  |  OVER.  |---------|---|",
        "|---|-------|---------|---------|---------|---|"
    ]
    def variable(var)
        if var == "a"
            
        elsif var == "b"
        
        elsif var == "c"
        
        elsif var == "d"
        end 

    puts intro
    sleep 5
    puts rule
    answer = gets.chomp
    if answer == "Y"
        puts y
    elsif answer == "N"
        puts n
    end

    until amount == 16 do
        puts questions
        sleep 5
        puts column
        var = gets.chomp #a
        puts row
        gar = gets.chomp.to_i
        if answer == "Y"
            if var == "a"
                puts "|---|-------|---------|---------|---------|---|"
                puts a[gar]
                puts "|---|-------|---------|---------|---------|---|"
                puts "|-!-|-------|What is your answer|---------|-!-|"
                puts "|---|-------|---------|---------|---------|---|"
                puts "|---|" + multi[gar] + "|---|"
                puts "|---|-------|---------|---------|---------|---|"
                ask = gets.chomp
                if gar == 1
                    if ask == "a"
                        score = score + 100
                        puts "|---|-------|-------RIGHT-------|---------|---|"
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                elsif gar == 2
                    if ask == "d"
                        score = score + 200
                        puts "|---|-------|-------RIGHT-------|---------|---|"
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                elsif gar == 3
                    if ask == "b"
                        score = score + 300
                        puts "|---|-------|-------RIGHT-------|---------|---|"
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                elsif gar == 4
                    if ask == "b"
                        score = score + 400
                        puts "|---|-------|-------RIGHT-------|---------|---|"
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                end
            elsif var == "b"
                puts "|---|-------|---------|---------|---------|---|"
                puts b[gar]
                puts "|---|-------|---------|---------|---------|---|"
                puts "|-!-|-------|What is your answer|---------|-!-|"
                puts "|---|-------|---------|---------|---------|---|"
                puts "|---|" + multi2[gar] + "|---|"
                puts "|---|-------|---------|---------|---------|---|"
                ask = gets.chomp
                if gar == 1
                    if ask == "c"
                        score = score + 100
                        puts "|---|-------|-------RIGHT-------|---------|---|"
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                elsif gar == 2
                    if ask == "a"
                        score = score + 200
                        puts "|---|-------|-------RIGHT-------|---------|---|"
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                elsif gar == 3
                    if ask == "a"
                        score = score + 300
                        puts "|---|-------|-------RIGHT-------|---------|---|"
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                elsif gar == 4
                    if ask == "b"
                        score = score + 400
                        puts "|---|-------|-------RIGHT-------|---------|---|"
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                end
            elsif var == "c"
                puts "|---|-------|---------|---------|---------|---|"
                puts c[gar]
                puts "|---|-------|---------|---------|---------|---|"
                puts "|-!-|-------|What is your answer|---------|-!-|"
                puts "|---|-------|---------|---------|---------|---|"
                puts "|---|" + multi3[gar] + "|---|"
                puts "|---|-------|---------|---------|---------|---|"
                ask = gets.chomp
                if gar == 1
                    if ask == "a"
                        score = score + 100
                        puts "|---|-------|-------RIGHT-------|---------|---|"
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                elsif gar == 2
                    if ask == "a"
                        score = score + 200
                        puts "|---|-------|-------RIGHT-------|---------|---|"
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                elsif gar == 3
                    if ask == "a"
                        score = score + 300
                        puts "|---|-------|-------RIGHT-------|---------|---|"
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                elsif gar == 4
                    if ask == "d"
                        score = score + 400
                        puts "|---|-------|-------RIGHT-------|---------|---|"
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                end
            elsif var == "d"
                puts "|---|-------|---------|---------|---------|---|"
                puts d[gar]
                puts "|---|-------|---------|---------|---------|---|"
                puts "|-!-|-------|What is your answer|---------|-!-|"
                puts "|---|-------|---------|---------|---------|---|"
                puts "|---|" + multi4[gar] + "|---|"
                puts "|---|-------|---------|---------|---------|---|"
                ask = gets.chomp
                if gar == 1
                    if ask == "d" 
                        score = score + 100
                        puts "|---|-------|-------RIGHT-------|---------|---|"
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                elsif gar == 2
                    if ask == "b"
                        score = score + 200
                        puts "|---|-------|-------RIGHT-------|---------|---|"
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                elsif gar == 3
                    if ask == "c"
                        score = score + 300
                        puts "|---|-------|-------RIGHT-------|---------|---|"
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                elsif gar == 4
                    if ask == "b"
                        score = score + 400
                        puts "|---|-------|-------RIGHT-------|---------|---|"
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                end
            end
        else
        end
        puts "|---|-------|-Score: " + score.to_s + " -------|---------|---|"
        amount = amount + 1
        puts "Do you desire to stop the game? yes or no?"
        r = gets.chomp
        if r == "yes"
            amount = 16
        else 
            amount = amount
        end 
        if score > 1000
            puts "You win!!"
        elsif score < 1000
            puts "Ha loser."
        end
    end
end
game