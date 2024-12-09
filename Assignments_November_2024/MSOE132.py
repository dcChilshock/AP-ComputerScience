
def alliteration(a):
    len1 = len(a)
    count = 0
    previous = ""
    mylist = [a]
    dic = {a[0]: 0,}
    for i in range(1,len1):
        current = a[0]
        if previous == " ":
            mylist.append(a[i])
        else:
            a += 0
    print(str(mylist))
    print(str(dic))            