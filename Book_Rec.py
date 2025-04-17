import pandas as pd

listgen = ["fantasy","fiction","science fiction"]
listauth = ["Janny Wurts"]
listrate = ["4"]
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
        for i in range(0,len(l4)):
            listgen.append(l4[i])
        for i in range(0,len(l1)):
            listauth.append(l1[i])
        for i in range(0,len(l3)):
            listyear.append(l3[i])
        for i in range(0,len(l2)):
            listread.append(l2[i])
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
    print("Insert Book genres you like!")
    print("Please write out done, if you're selection is complete. Please write your choices 1 at a time.")
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
        print("Input your prefrence as m/d/year (The date inputed will essentially exclude all books before this date)")
        f = input()
        f.strip()
        listy.append(f)
    return lista,listb,listy,listg

def score(book,listid,listgen,listauth,listrate,listyear,listread):
    rt = {}
    t = len(book)
    r = len(listid)
    score = 1000
    ly = int(listyear[0])
    for i in range(0,len(book)):
        if i == 5:
            if book[i] in listgen:
                for x in range(0,listgen):
                     if book[i] in listgen[x]:
                          score += 250
            else:
                score -= 100
        if i == 4:
            if book[i] in listauth:
                score += 100
            else:
                    score -= 50
        if i == 8:
            if float(book[i]) < ly:
                    score -= 100
            else:
                    score += 100
        if i == 9:
            if float(book[i]) >= int(listrate[0]):
                    score += 150
            else:
                    score -= 150
        if i == 2:
            if book[i] in listread:
                    score -= 500
            else:
                    score += 150
        return score

def read():
    with pd.read_csv("data/books.csv",iterator=True,chunksize=6) as reader:
        diction = {}
        diction2 = {}
        listid = ["isbn13","isbn10","title","subtitle","authors","categories","thumbnail","description",
                  "published_year","average_rating","num_pages","ratings_count"]
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
    page(y,ranked,diction,k)
    b = input()
    b = b.strip()
    list = ["1","2","3","4","5","6","7","8","9","10","next","back"]
    if b in list:
         b = b.lower()
         if b == "next" or b == "back":
             if b =="next":
                 y += 10
                 k += 10
                 page(y,ranked,diction,k)
             elif b == "back":
                 y -= 10
                 k -= 10
                 page(y,ranked,diction,k)
         else:
              b = int(b)
              b -= 1
              book_info(diction,ranked,b)
              print("Put done or contiune")
              i = input()
              i = i.strip()
              i = i.lower()
              if i == "done":
                   exit()
              elif i == "continue":
                   results(diction,ranked)
              else:
                   print("unhandled input, trying again.")
                   results(diction,ranked)
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
        title = diction[o][2]
        print(str(i+1)+": "+title)
    print("next "+p)
    print("Insert a number "+str(k)+"-"+str(y)+" to learn more about each book.")

def book_info(diction,ranked, an):
     r = []
     a = str(ranked[an])
     a = a.replace("(","")
     a = a.replace(")","")
     e = a.split(",")
     r = [s.strip() for s in e]
     o = int(r[0])
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
