#Military time.
a = int(input("insert start time: "))
b = int(input("Insert end time: "))
c = a / 100
d = b / 100

if a > b:
    diff = c - d #1730 - 900 = 830 need to translate to 8:30
    print("The time difference is: " + str(diff) + " Hours")
elif a < b:
    diff = d - c
    print("The time difference is: " + str(diff) + " Hours")