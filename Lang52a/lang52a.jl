

print("Enter Length: ")
length = readline()
print("Enter Width: ")
width = readline()
n1 = parse(Int64, width)
n2 = parse(Int64, length)
perimeter = n2 + n1 + n2 + n1
area = n1 * n2
println("This is the area: $area")
println("this is the perimeter: $perimeter")