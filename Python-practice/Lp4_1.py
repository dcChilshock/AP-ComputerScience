
def pricing(x):
    if x > 99:
        y = 0.28 #Price
    elif x > 499:
        y = 0.27
    elif x >749:
        y = 0.26
    elif x > 1000:
        y = 0.25
    else:
        y = 0.30
    return y

def report(x, y):
    z = x * y
    print("Price for each copy: "+str(y)+"$.")
    print("Amount of copies requested: "+str(x)+"$.")
    print("Total cost for copies requested: "+str(z)+"$.")
    return z #so the total is avialable outside this function

a = int(input("How many copies do you want to print?"))
if a > 0:
    pricing(a) # type: ignore
else:
    print("what are you doing here then")

