
def race(a,b):
    if "car" in a:
        a1 = "car"
        b1 = "bus"
    elif "bus" in a:
        a1 = "bus"
        b1 = "car"
    len1 = len(a)
    len2 = len(b)
    if a[-1] == ".":
        return print(b1 + " wins")
    elif b[-1] == ".":
        return print(a1 + " wins")
    elif a[-1] == "." and b[-1] == ".":
        return print("scratch")
    else:
        if len1 > len2:
            return print(a1 + " wins")
        elif len1 < len2:
            return print(b1 + " wins")
        elif len1 == len2:
            return print("Tie")
    