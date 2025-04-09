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
        lists = prefrence()
        #1 author, 2 book, 3 langauge, 4 publication

    elif answer.strip() == "options": #Possibility.
        pass
    elif answer.strip() == "end":
        exit()
    else:
        print("<Sorry, user input was unexpeteced. Please start again.>")
        start()

def prefrence():
    listg = [] # fill the lists so the recording can fit better
    lista = []
    listb = []
    listl = ["eng","enm","en-US","en-GB","en-US","en-CA"]
    listy = []
    a = 7
    l = 0
    print("Please select any additonal languages you are able to read.\n" \
    " Spanish(spa), Japanese(jpn),German(ger),Ancient Greek(grc),\n" \
    "French(fre), or Arabic(ara)") #eng,enm, en-US,GB,CA, mul, grc, spa
    print("Write them as the appreviations next to each language and write them 1 at a time")
    while c != "done":
        e = input()
        e.lower()
        e.strip()
        if len(listl) >= 8:
            listl.append("mul")
        listl.append(e)
    print("Out of these options of genre which are you're favorite to read?")
    print("fantasy, adventure, fiction, nonfiction, mystery, sci-fi, history")
    print("Please write out done, if youre selection is complete. Please write your choices 1 at a time.")
    for l in a:
        b = input()
        l += 1
        b.lower()
        b.strip()
        if input == "done":
            l == a
        else:
            listg.append(b)
    print("Input some of youre favorite books")
    print("Please write out done when done. Please write your choices 1 at a time.")
    while c != "done":
        c = input()
        c.lower()
        c.strip()
        listb.append(c)
    print("To make it as accurate as possible, please input youre favorite authors.")
    print("Please write out done when done. Please write your choices 1 at a time.")
    while d != "done":
        d = input()
        d.lower()
        d.strip()
        lista.append(d)
    
    print("Prefrence to the date a book was published?")
    r = input()
    if r =="yes":
        print("Input your prefrence as m/d/year (The date inputed will exclude all books before this date)")
        f = input()
        f.strip
        listy.append(f)
    else:
        pass
    return lista,listb,listl,listy #genre isnt used
#           1 author, 2 book, 3 langauge, 4 publication 

def recommend(a,b,c,d):
    df = pd.read_csv("data/books.csv",header=0,nrows=1000)

print("<Welcome to the magnificent book finder.>")
print("<How can we Help you today?>") 
#start()
#pd.options.display.max_rows = 9999
#df = pd.read_csv("data/books.csv",header=1,nrows =1)
#converts to dataframe 
chunksize = 1000
piece = pd.read_csv("data/books.csv",iterator=True,chunksize=1112)
#print(pd.options.display.max_rows) 
#print(df)
#print(df.loc["title"])
#print(df)

#for f in pd.read_csv("data/books.csv",iterator=True,chunksize=1112):
#    f = 1 
#    if str(f) in df.columns == True:
#        columnn_data = df[str(f)]
#        print("it works")
#    else: 
#        pass
#    f += 1
with pd.read_csv("data/books.csv",iterator=True,chunksize=6) as reader:
    list = ["bookID","title","authors","average_rating","isbn","isbn13","language_code"," num_pages","ratings_count","publication_date","publisher"]
    #11 
    for chunk in reader:

        reader.at['bookID']
df = pd.read_csv("data/books.csv",header=0,nrows=1000)
print(df.loc[1])
print(df.at[1,"bookID"])








#45625,A Viagem do Caminheiro da Alvorada (As Crónicas de Nárnia  #5),C.S. Lewis/Pauline Baynes/Ana Falcão Bastos,4.09,9722331329,9789722331326,por,176,161,14,9/1/2004,Editorial Presença
#45626,O Príncipe Caspian (As Crónicas de Nárnia  #4),C.S. Lewis/Pauline Baynes/Ana Falcão Bastos,3.97,9722330977,9789722330978,por,160,215,11,10/11/2003,Editorial Presença
#45630,Whores for Gloria,William T. Vollmann,3.69,0140231579,9780140231571,en-US,160,932,111,2/1/1994,Penguin Books
#45631,Expelled from Eden: A William T. Vollmann Reader,William T. Vollmann/Larry McCaffery/Michael Hemmingson,4.06,1560254416,9781560254416,eng,512,156,20,12/21/2004,Da Capo Press
#45633,You Bright and Risen Angels,William T. Vollmann,4.08,0140110879,9780140110876,eng,635,783,56,12/1/1988,Penguin Books
#45634,The Ice-Shirt (Seven Dreams #1),William T. Vollmann,3.96,0140131965,9780140131963,eng,415,820,95,8/1/1993,Penguin Books
#45639,Poor People,William T. Vollmann,3.72,0060878827,9780060878825,eng,434,769,139,2/27/2007,Ecco
#45641,Las aventuras de Tom Sawyer,Mark Twain,3.91,8497646983,9788497646987,spa,272,113,12,5/28/2006,Edimat Libros
#data cut out just to make clean division of groups.