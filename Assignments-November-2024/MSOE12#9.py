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

string = input("input roman numerals")

def reading(a):
    array = []
    length = len(a)
    for i in range(0,length):
        array.append(a[i])
    print(array)

reading(string)


