presum = 0
sum = 0
previous = 0
b = 0
d = {
    'I'=>1,'V'=>5,'X'=>10,'L'=>50,'C'=>100,'D'=>500,'M'=>1000,
    }
    length = len(a)
    for i in range(0,length): 
        if a[i] == "M":
            sum += d[a[i]]
        elif a[i] == "D":
            sum += d[a[i]]
        elif a[i] == "C":
            sum += d[a[i]]
        elif a[i] == "L": 
            sum += d[a[i]]
        elif a[i] == "X":
            sum += d[a[i]]
        elif a[i] == "V":
            sum += d[a[i]]
        elif a[i] == "I":
            sum += d[a[i]]
        if d[a[i]] > previous and previous > 0:
            sum -= (previous + d[a[i]])
            diff = d[a[i]] - previous
            sum += abs(diff)
        else:
            sum = sum
        previous = d[a[i]]
    print("This is the roman numeral. "+ a)
    print("This is the number in numeral form. "+str(sum))

def call():
    string = "Input roman numerals that follow all the rules: "
    reading(string)