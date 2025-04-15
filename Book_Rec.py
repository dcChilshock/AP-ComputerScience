import pandas as pd
import numpy as np 

listgen = ["fantasy","fiction","science fiction"]
listauth = ["Janny Wurts"]
listrate = ["3"]
listread = ["spider's web"]
listyear = ["2000"]

ranking = []
books = []
dicton = {}

def start():
    print("<Start-End-Options> \n<Please Type one of the options provided into the console.>")
    answer = input()
    answer.lower()
    if answer.strip() == "start":
        l1,l2,l3,l4 = prefrence()
        read()
    elif answer.strip() == "all ready":
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
    b = ""
    c = ""
    d = ""
    print("Out of these options of genre which are you're favorite to read?")
    print("fantasy, adventure, fiction, nonfiction, mystery, sci-fi, history")
    print("Please write out done, if youre selection is complete. Please write your choices 1 at a time.")
    while b != "done":
        b = input()
        l += 1
        b.lower()
        b.strip()
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
    return lista,listb,listy,listg

def recommend(a,b,c,d):
    df = pd.read_csv("data/books.csv",header=0,nrows=1000)

def score(book,listid,listgen,listauth,listrate,listyear,listread):
    rt = {}
    t = len(book)
    r = len(listid)
    score = 1000
    ly = int(listyear[0])
    if book[5] in listgen:
            score += 250
    else:
        score -= 100
    if book[4] in listauth:
        score += 100
    else:
            score -= 50
    if float(book[8]) < ly:
            score -= 100
    else:
            score += 100
    if float(book[9]) >= int(listrate[0]):
            score += 150
    else:
            score -= 150
    if book[2] in listread:
            score -= 500
    else:
            score += 150
    for x in range(0,t):
         pass
    return score

def read():
    with pd.read_csv("data/books.csv",iterator=True,chunksize=6) as reader:
        diction = {}
        diction2 = {}
        listid = ["isbn13","isbn10","title","subtitle","authors","categories","thumbnail","description","published_year","average_rating","num_pages","ratings_count"]
        nc = 0
        f = 0
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
                    book.append(chunk.at[f,ind])
                    #add a dictionary function 
                    #where you can store every score to a list or the isbns to the list itself.
                    g += 1
                points= score(book,listid,listgen,listauth,listrate,listyear,listread)
                ranking.append(points)
                book.append(points)
                books.append(book)
                diction[f] = book
                diction2[f] = points
                f += 1
        ranked = sorted(diction2.items(), key=lambda x: x[1], reverse=True)
        results(diction,ranked)
            
def results(diction,ranked):
    print("Here are you're Book recommendations")
    print()
    k = 0
    a = 1
    y = 10
    y,k = page(y,ranked,diction,k)
    b = input()
    b = b.strip()
    list = ["1","2","3","4","5","6","7","8","9","10","next","back"]
    if b in list:
         b = b.lower()
         if b == "next" or b == "back":
              pass   
         else:
              b = int(b)
              b -= 1
              book_info(diction,ranked,b)
    else:
        print("Input is not handled please try again.")
        results(diction,ranked)

def page(y,ranked,diction,k):
    for i in range(k,y):
        r = []
        a = str(ranked[i])
        a = a.replace("(","")
        a = a.replace(")","")
        e = a.split(",")
        r = [s.strip() for s in e]
        if y > 10:
             p = "or back"
        else:
             p = " "
        o = int(r[0])
        diction[int(r[0])]
        title = diction[o][2]
        print(str(i+1)+": "+title)
        print(r[0])
        print(r[1])
    print("next "+p)
    print("Insert a number "+str(k)+"-"+str(y)+" to learn more about each book.")
    k += 10
    y += 10
    return y,k

def book_info(diction,ranked, an):
     r = []
     a = str(ranked[an])
     a = a.replace("(","")
     a = a.replace(")","")
     e = a.split(",")
     r = [s.strip() for s in e]
     o = int(r[0])
     print(str(ranked[1]))
     print("Isbn: "+str(diction[o][0]))
     print("Title: "+str(diction[o][2])+" "+str(diction[o][3]))
     print("Author: "+diction[o][4])
     print("Genres:"+diction[o][5])
     print("Description: "+diction[o][7])
     print("publish year: "+str(diction[o][8]))
     print("Average Rating: "+str(diction[o][9]))
     print("Number of Ratings: "+str(diction[o][10]))
     print("Number of pages: "+str(diction[o][11]))

print("<Welcome to the magnificent book finder.>")
print("<How can we Help you today?>") 

start()