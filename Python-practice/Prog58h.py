#Computing interest

def computing_interest():
    a = float(input("How much Money: ")) #Amount
    b = float(input("Whats the interest rate: ")) #Rate
    c = float(input("For how long in days: ")) #Time / days at interest
    d = float(input("How many times compounded: ")) #Time   
    calculating_intereset(a,b,c,d)

def calculating_intereset(a, b, c, d):
    f = a * ((1+((0.01*b)/d))**((d*c)/365.0))
    g = f - a
    f = str(f)
    g = str(g)
    print("This is the total amount of interest earned wth your original savings: " + f)
    print("This is just the compound interest: " + g)

h = input("Do you want to compute interest? y/n: ")
if h == "y":
    computing_interest()
elif h == "n":
    print("Well were done here")