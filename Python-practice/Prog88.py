#Mini calculator
def variables():
    a = int(input("Input number A: "))
    b = int(input("Input number B: "))
    minicalc(a,b)
    
def minicalc(a, b):
    sum = a + b
    diff = a - b
    pro = a * b
    ave = sum / 2
    dis = abs(diff)

    if a > b:
        max = a
        min = b
    else:
        max = b
        min = a
    answer(sum, diff, pro, ave, dis, max, min)

def answer(sum, diff, pro, ave, dis, max, min):
    print("The sum is: " + str(sum))
    print("The difference is: " + str(diff))
    print("The product is: " + str(pro))
    print("The average is: " + str(ave))
    print("The distance is: " + str(dis))
    print("The maximum is: " + str(max))
    print("The minimum is: " + str(min))

c = input("Do you want to start calc? y/n ")
if c == "y":
    variables()
else:
    print("Fine then. Be that way.")