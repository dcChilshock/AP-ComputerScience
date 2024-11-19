#Radius of a circle
radius = int(input("what is the radius of the circle: "))
pi = 3.14159
circum = 2 * pi * radius
area = pi * (radius**2)
circum = round(circum, 2)
area = round(area, 2)
print("The radius of the circle is: " + str(radius))
print("The area of the circle is: "+str(area))
print("The circumfrence of the circle is: "+str(circum))