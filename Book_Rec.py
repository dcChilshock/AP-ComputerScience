import pandas as pd
import numpy as np 
#headings in order 1: Index/Id, 2 title, 3 authors, 4 rating, 5 isbn, 6 isbn13, 7 language,  8 page_count, 
#--9 ratings count, 10 publication, 11 publisher 

#df = pd.read_csv("data/books.csv",nrows=1000)
#print(df)
#i = 0
#length = 11128
#for i in length:

#    i += 1



def start():
     #Possibly put intro text/lengthy explanations into a def
    #within a class(so inheriting it to every fucntion isnt so annoying at least I think it would fix that.)
    print("<Start-End-Options> \n<Please Type one of the options provided into the console.>")
    answer = input()
    answer.lower()
    if answer.strip() == "start": # lead further into program
        prefrence()
    elif answer.strip() == "options": #Possibility.
        pass
    elif answer.strip() == "end":
        exit()
    else:
        print("<Sorry, user input was unexpeteced. Please start again.>")
        start()

def prefrence():
    #ask about genre
    print("Out of a list of these options which are youre favorites to read?")
    #ask about authors
    #ask about books already read. 


print("<Welcome to the magnificent book finder.>")
print("<How can we Help you today?>") 
start()