#Project 1 is going to be a triva quiz game

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
    "|---|-------|---------|---------|---------|---|"
]

rule =[
    "|---|-------|---------|---------|---------|---|",
    "|------------- Here are the Rules ------------|",
    "|----Their are scores from 100-400 points.----|",
    "|---The more points the harder the question---|",
    "|--To pick a question type the column first.--|",
    "|------------ Then the row second. -----------|",
    "|----------Example: a1 = games 100.-----------|",
    "|---|-------|---------|---------|---------|---|",
]
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
    "|---|-------|---------|---------|---------|---|"
]
multi = [
    "Zero isnt an option you get no points. lol",
    "A:elden-ring B:TOTK C:GOWR D:Witcher", #Elden ring is right
    "A:1 year B:3 year C:10 year D:5 year", #Five years is correct
    "A:Knack B:Oblivion C:Fortnite D:WOW", #Oblivion is right
    "A: Pre-sequal B: BL 2 C: BL 1 D: BL 3", #400 - 4 #B is right
]
multi2 = [
    "Zero isnt an option you get no points. lol",
    "A: B: C: D:",
    "A: B: C: D:",
    "A: B: C: D:",
    "A: B: C: D:" #400 - 8
    ]
multi3 = [
    "Zero isnt an option you get no points. lol",
    "A: B: C: D:",
    "A: B: C: D:",
    "A: B: C: D:",
    "A: B: C: D:", #400 - 8
    ]
multi4 = [
    "Zero isnt an option you get no points. lol",
    "A: B: C: D:",
    "A: B: C: D:",
    "A: B: C: D:",
    "A: B: C: D:", #400 - 8
    ]
]
column = [
    "|---|-------|---------|---------|---------|---|",
    "|---|----| What column do you desire |----|---|",
    "|---|-------|---------|---------|---------|---|",
]
row = [
    "|---|-------|---------|---------|---------|---|",
    "|---|       What row do you desire        |---|",
    "|---|-------|---------|---------|---------|---|",
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
    "",
    "",
    "",
    ""
]
c = [
    "Zero is not a column", #0
    "",
    "",
    "",
    ""
]
d = [
    "Zero is not a column", #0
    "",
    "",
    "",
    ""
]
gameover = [
    "|---|-------|---------|---------|---------|---|",
    "|---|-------|  GAME.  |  OVER.  |---------|---|",
    "|---|-------|---------|---------|---------|---|"
]
puts intro
sleep 5
puts rule
answer = gets.chomp
if answer == "Y"
    puts y
    sleep 5
    puts rules
    sleep 5
    puts questions 
    sleep 5
elsif answer == "N"
    puts n
end

until amount == 16 do
    if amount > 1
        puts column
        var = gets.chomp #a
        puts row
        gar = gets.chomp.to_i
    else
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
                    if ask == a
                        score = score + 100
                        puts "|---|-------|-------RIGHT-------|---------|---|"
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                elsif gar == 2
                    if
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                elsif gar == 3
                    if
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                elsif gar == 4
                    if
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                end
            elsif var == "b"
                puts "|---|-------|---------|---------|---------|---|"
                puts a[gar]
                puts "|---|-------|---------|---------|---------|---|"
                puts "|-!-|-------|What is your answer|---------|-!-|"
                puts "|---|-------|---------|---------|---------|---|"
                puts "|---|" + multi[gar] + "|---|"
                puts "|---|-------|---------|---------|---------|---|"
                ask = gets.chomp
                if gar == 1
                    if ask == a
                        score = score + 100
                        puts "|---|-------|-------RIGHT-------|---------|---|"
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                elsif gar == 2
                    if
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                elsif gar == 3
                    if
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                elsif gar == 4
                    if
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                end
            elsif var == "c"
                puts "|---|-------|---------|---------|---------|---|"
                puts a[gar]
                puts "|---|-------|---------|---------|---------|---|"
                puts "|-!-|-------|What is your answer|---------|-!-|"
                puts "|---|-------|---------|---------|---------|---|"
                puts "|---|" + multi[gar] + "|---|"
                puts "|---|-------|---------|---------|---------|---|"
                ask = gets.chomp
                if gar == 1
                    if ask == a
                        score = score + 100
                        puts "|---|-------|-------RIGHT-------|---------|---|"
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                elsif gar == 2
                    if
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                elsif gar == 3
                    if
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                elsif gar == 4
                    if
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                end
            elsif var == "d"
                puts "|---|-------|---------|---------|---------|---|"
                puts a[gar]
                puts "|---|-------|---------|---------|---------|---|"
                puts "|-!-|-------|What is your answer|---------|-!-|"
                puts "|---|-------|---------|---------|---------|---|"
                puts "|---|" + multi[gar] + "|---|"
                puts "|---|-------|---------|---------|---------|---|"
                ask = gets.chomp
                if gar == 1
                    if ask == a
                        score = score + 100
                        puts "|---|-------|-------RIGHT-------|---------|---|"
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                elsif gar == 2
                    if
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                elsif gar == 3
                    if
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                elsif gar == 4
                    if
                    else
                        puts "|---|-------|-------WRONG-------|---------|---|"
                    end
                end
            end
        else
        end
        puts "|---|-------|-Score: " + score + " -------|---------|---|"
        amount = amount + 1
end