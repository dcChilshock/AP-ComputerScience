#Roman numerals to arabic (decimal) converter

# I = 1 X = 10 C = 100 M = 1000
# V = 5 L = 50 D = 500 
#Written left to right in decesending value and the total value summed
# I = 1
# CXI = 110
#MCCLXXIII = 1273

#No 1 letter repeated more than 3 times in a row
# Subtraction = smaller number before larger number
# I (1) - X(10) = 9
i = 0
v = 0
x = 0
l = 0
c = 0
f = 0 #D
m = 0
string = input("input roman numerals: ")
def reading(a):
    presum = 0 
    sum = 0
    previous = 0
    b = 0
    d = {
        'I':1,'V':5,'X':10,'L':50,'C':100,'D':500,'M':1000,
         }
    delete = {}
    length = len(a)
    for i in range(0,length): 
        b += 1
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
        print(str(sum))
        print(str(presum))
        print(str(previous))
        print(str(d[a[i]]))
        print(">>>>>>>")
        if d[a[i]] > previous and previous > 0:
            print(str(sum))
            print(str(presum))
            print(str(previous))
            print(str(d[a[i]]))
            print("!!!!!!")
            sum -= (previous + d[a[i]])
            print(str(sum))
            diff = d[a[i]] - previous
            sum += abs(diff)
            print(str(sum))
            print(str(diff))
            #print(str(sum))
        else:
            sum = sum
        previous = d[a[i]]
        presum = sum 
        
    print(str(sum))
    print(previous)
    print("dfdjd")

reading(string)


