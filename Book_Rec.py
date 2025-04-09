import pandas as pd
import numpy as np 
#headings in order 1: isbn13,isbn10,title,subtitle,authors,categories,thumbnail,description,published_year,average_rating,num_pages,ratings_count
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
    listid = ["isbn13","isbn10","title","subtitle","authors","categories","thumbnail","description","published_year","average_rating","num_pages","ratings_count"]
    #12 
    f = 0
    g = 0
    t = len(listid)
    for chunk in reader:
        for row in chunk.iterrows():
            for x in listid:
                ind = listid[g]
                print(chunk.at[f,ind])
                f +=1 
            g += 1
            f == 0
    
print(str(t))
#df = pd.read_csv("data/books.csv",header=0,nrows=1000)
#print(df.loc[1])
#print(df.at[1,"isbn13"])
