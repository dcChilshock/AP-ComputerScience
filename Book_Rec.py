import pandas as pd
import numpy as np 

#PREFRENCES
listgen = ["fantasy","fiction","science fiction"]
listauth = [""] #not neccesarily needed.
listrate = ["3"] # 3 stars or higher
listread = []
listyear = ["2000"]

def start():
     #Possibly put intro text/lengthy explanations into a def
    #within a class(so inheriting it to every fucntion isnt so annoying at least I think it would fix that.)
    print("<Start-End-Options> \n<Please Type one of the options provided into the console.>")
    answer = input()
    answer.lower()
    if answer.strip() == "start": # lead further into program
        lists = prefrence()
        #1 author, 2 book, 3 langauge, 4 publication

    elif answer.strip() == "options":
        pass
    elif answer.strip() == "end":
        exit()
    else:
        print("<Sorry, user input was unexpeteced. Please start again.>")
        start()

def prefrence():
    listg = []
    lista = []
    listb = []
    listy = []
    a = 7
    l = 0
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
    return lista,listb,listy,listg

def recommend(a,b,c,d):
    df = pd.read_csv("data/books.csv",header=0,nrows=1000)

print("<Welcome to the magnificent book finder.>")
print("<How can we Help you today?>") 

with pd.read_csv("data/books.csv",iterator=True,chunksize=6) as reader:
    listid = ["isbn13","isbn10","title","subtitle","authors","categories","thumbnail","description","published_year","average_rating","num_pages","ratings_count"]
    nc = 0
    f = 0
    isbns = []
    titles = []
    subt = []
    auth = []
    genre = [] 
    link = [] 
    des = [] 
    year = []
    nump = []
    rate_av = []
    rate_co = []
    t = len(listid)
    for chunk in reader:
        x = 0
        g = 0
        nc += 1
        for row in chunk.iterrows():
            book = []
            for x in range(0,t):
                x +=1
                if g >= t:
                    g = 0
                ind = listid[g]
                if g == 0:
                    isbns.append(chunk.at[f,ind])
                elif g == 2:
                    titles.append(chunk.at[f,ind])
                elif g == 3:
                    subt.append(chunk.at[f,ind])
                elif g == 4:
                    auth.append(chunk.at[f,ind])
                elif g == 5:
                    genre.append(chunk.at[f,ind])
                elif g == 6:
                    link.append(chunk.at[f,ind])
                elif g == 7:
                    des.append(chunk.at[f,ind])
                elif g == 8:
                    year.append(chunk.at[f,ind])
                elif g == 9:
                    nump.append(chunk.at[f,ind])
                elif g ==10:
                    rate_av.append(chunk.at[f,ind])
                elif g ==11:
                    rate_co.append(chunk.at[f,ind])
                book.append(chunk.at[f,ind]) #add a dictionary function 
                #where you can store every score to a list or the isbns to the list itself.

                #points=score(book,listid,listgen,listrate,listauth,listread)
                g +=1
            f += 1

def score(book,listid,listgen,listauth,listrate,listyear): #potentially add a database/csv file of user books read. but
    # that would be a lot of wokr this late into the project.
    # needs lists of userers prefrences
    t = len(book)
    r = len(listid)
    x = 0
    score = 1000 #less than
    ly = int(listyear)
    for x in range(0,t):
        cur = book[x]
        if book[5] in listgen: #might need more sophisticated methods of comparing the two.
            score += 250
        else:
            score -= 100
        if book[4] in listauth:
            score += 100
        else:
            score -= 50
        if book[10] < ly:
            score -=

            

        x += 1
