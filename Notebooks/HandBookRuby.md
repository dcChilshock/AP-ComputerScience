<h1>Handbook on Programming in Ruby</h1>

**AP Computer Science Principles 2023-2024**

Nolan Denson - Childers

<!-- This is a comment (which will not be displayed in the live file);
replace all "???" with your own text. -->




___





<h1>Table of Contents</h1>

- [1. Compiling and Running](#1-compiling-and-running)
- [2. Data Types](#2-data-types)
- [3. Console I/O](#3-console-io)
- [4. Arithmetic Operations](#4-arithmetic-operations)
- [5. Assignment Operations](#5-assignment-operations)
- [6. Comments](#6-comments)
- [7. Decision Structures](#7-decision-structures)
- [8. Conditional Operators](#8-conditional-operators)
- [9. Logic Operators](#9-logic-operators)
- [10. Advanced Decision Structures](#10-advanced-decision-structures)
- [11. String Methods](#11-string-methods)
- [12. Random Generation](#12-random-generation)
- [13. Looping Structures](#13-looping-structures)
- [14. Functions/Methods](#14-functionsmethods)
- [15. Elementary Data Structures](#15-elementary-data-structures)
  - [15.1 Arrays/Lists](#151-arrayslists)
  - [15.2 Matrices](#152-matrices)
- [References](#references)

<!-- 
- [16. Major Keywords](#16-major-keywords)
- [17. Error Handling](#17-error-handling)
- [18. Working with Files](#18-working-with-files)
- [19. Major Language Features](#19-major-language-features)
  - [19.1 Classes](#191-classes)
  - [19.2 Inheritance](#192-inheritance)
  - [19.3 Generic Typing (Templates)](#193-generic-typing-templates)
  - [19.4 Pointers](#194-pointers)
- [20. Importing Local Libraries](#20-importing-local-libraries)
- [21. Working with Time](#21-working-with-time)
- [22. Importing Libaries from Package managers](#22-importing-libaries-from-package-managers)
- [23. Bitwise Operators](#23-bitwise-operators)
- [24. Common Data Structures](#24-common-data-structures)
- [25. Advanced Language Features](#25-advanced-language-features)
-->




___





# 1. Compiling and Running

For Ruby you need the filenames to end with:

filename **.rb**

You may need to import ruby into the program, depending what you are working in.

(Note to self: This feels incomplete work on it more)


___





# 2. Data Types

Data Types in ruby are: 
* Strings

Strings are defined as text, typed words or something to be printed out. There are two types of quotation marks that can will hold strings. The most common are double quotation marks, but single quotation marks do work but are different.
```ruby
var = 10 
var.to_s #Conversion to string 
#(var = var.to_s also works)

puts "This is a string" 
#Allows substitutions and backslash notation.

puts 'This is also a string' 
#Doesn't allow substitutions and backslash notation.
puts var
#shows how the conversion would work
puts var.length
```

Output should come to:

```
This is a string
This is also a string
10
#this is the length
2
```

* Integers and Floats

Integers holds data of numbers that don't go into fractions or decimals.

Floats holds data of numbers that have decimals, opposite of the integer data type. 

```ruby
vari = 10 #Integer
varf = 10.7 #Float
#Ints and Floats can be multiplied together 
#(makes the output a float)

var = vari * varf #10 * 10.7
puts "var = " + var.to_s
```

Output

```ruby
var = 107
```

* Booleans

Booleans only represent a tiny bit of information.

Basically just ones and zeros. True and false.

* Hashes

The simplest way to describe hashes is to assign a value to a key press. In ruby a hash is treated like a literal object and they are similar to arrays.

```ruby
#Hashes data type
#!/usr/bin/ruby
hsh  = colors = {"red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f}
hsh.each do |key, value| 
 print key, " is ", value, "\n"
end
#I do not know if this is correct at like at all.
```

Output

```
red is 3840
green is 240
blue is 15
```

* Symbols
Definded as a light weight string.
```ruby
domains = {:sk => "Hello", :no => "Hi", :hu => "Greetings"}
 
puts domains[:sk]
puts domains[:no]
puts domains[:hu]

```
Output
```ruby
Hello
Hi
Greetings
```





___





# 3. Console I/O

??? (I have no idea what this means, searching it up doesnt help)





___





# 4. Arithmetic Operations

Arithmetic operations or math in ruby is like many other coding languages.
Just a little different.

Addition / Subtraction

Input
```ruby
x = 10
y = 5
#Regular addition
z = x + y
puts z.to_s

#You can also do this
x = x + 5 
#Useful for loops or needing to update the variable using its current value
puts x.to_s # x = 10 + 5
```
Output
```ruby
15
15
```
Multiplication / Division

Input
```ruby
x = 10
y = 5

z = x * y #10 * 5
w = x / y #10 / 5
puts z.to_s
```
Output
```ruby
50
2
```
Modulus / Exponent 

Input
```ruby

x = 10
y = 2

#Exponent/power, exponenets do this to numbers. 

#10**2 also means 10 * 10. 10**4 means 10 * 10 * 10 * 10 and so on.
z = x ** 2 #This is x to the power of 2

#Modulus finds the remainder

w = 5 % 2 
#this finds the remainder, so 2 goes into 5, 2 times. But 1 is still left over, so mode = 1

puts z.to_s
puts w.to_s
```
Output
```ruby
1
100
```
___





# 5. Assignment Operations

Assignment Operations are used all the time in any coding language, and rubys arent that different from most languages.
```ruby
Operations

Equal operator
this means one thing is the same as another
= or == 
#<--this is used in if statements and things like it.(the rest of the operators can be used in if then statements and the like)

Add and operator
x += y
#This is the same as x = x + y to 

Subtract and operator
x -= y
#This is the same as x = x - y to 

Multiply and operator
x *= y
#This is the same as x = x * y to

Divide and operator
x /= y
#This is the same as x = x / y to 

Exponent and operator
x **= y
#This is the same as x = x ** y to 
```
___





# 6. Comments

Comments in programs are used to help you remeber what lines of code or a program does.

It also helps other programers who might want to use your code.

Comments are specifically ignored by the computer so what you write wont affect your code.

In ruby comments are done like this
```ruby
# This is a comment in ruby

#examples of how you would use comments
z = 13
y = 6
x = z + y #adds z and y into the variable x.
puts x.to_s
#This is a really simple example of how to use comments. But it is an effective one.
```
Output
```ruby
19
```




___





# 7. Decision Structures

decision structures are used to respond to something and make decisions, if this happens,then this will happen, type of thing.

if :
If statements are the simplist way to do it but the most limiting.
```ruby
x = 1
y = 0
if x = 1 #if - [statement]
   y = 5
end #Signals the program that this is the end of the sequence

puts y.to_s
```
output
```ruby
5
```
if else : If else statements are very alike to just if statements, but they have more conditions. 
```ruby
x = 2
y = 0
if x = 1 #since x doesnt equal 1 it does the else line 
   y = 5
else #else allows for two possible outcomes instead of just one.
   y = 1
end
puts y.to_s 
```
output
```ruby
1
```
if elsif : This decision structure just allows more possibilities.
```ruby
x = 1
z = 5
t = 9
y = 0
if x = 4
   y = 1
elsif z = 5
   y = 2
elsif t = 6
   y = 3
end

puts y.to_S

```
output
```ruby
2
```




___





# 8. Conditional Operators

< and >
```ruby
x = 5
y = 3
if x > y #If a number is greater than another number
  return true
else
  return false
end
#and vice versa
if x < y #If a number is less than another number 
  return true
else
  return false
```
output
```ruby
true
false
```
Less than or equal too and greater than or equal too
or in simplier terms.

<= and >=.
```ruby
x = 3
y = 3
if x >= y #If a number is greater than another or is EQUAL to each other 
   return true
else
   return false
end
#and vice versa
if x <= y #if a number is less than another number or is EQUAL to each other
  return true
else
  return false
end
```
output
```ruby
true
true
```
Equal ==
```ruby
x = 5
y = 3
if x == y #If a number is equal to each other 
   return true
else
   return false
end 
```
output
```ruby
false
```






___





# 9. Logic Operators

Logic operators are commonly called Boolean operators.
True and false statements are booleans.

The baics things that logic operators do are three things.

And. Or. Not.

And - &&
```ruby
x = 5
y = 3
if (x == 5) && (y == 3) #Only true if both sides of the equation is true 
   return true
else
   return false
end
```
output
```ruby
true
```

Or - ||
```ruby
x = 5
y = 3
if (x == 5) || (y == 4) #True if one of the statements are true. 
   return true
else
   return false
end
```
output
```ruby
true
```
Doesn't equal - !=
```ruby
x = 5
y = 3
if x != y #If a number is NOT equal to each other 
   return true
else
   return false
end
```
output
```ruby
true
```





___





# 10. Advanced Decision Structures

??? I have no idea, this is the same as another topic





___





# 11. String Methods

String methods are methods that deal with strings, here are some

```ruby
variable = "Hi"
name = "" #if there is even a space in the quote its still not technically 'empty'
name.empty? #this is true

"hello".slice(1,2) # gives "el"
"hello".slice(1..2) # gives "ell"
#or
#[] is interchangable with slice
"hello"[0] # gives "h" 

"hello".chars # gives ["h", "e", "l", "l", "o"]
variable.upcase #puts all chars to UPPER CASE
variable.downcase #Puts all chars to lower case
variable.capitalize #capitalizes the first char in the string
variable.swapcase #switches the lowercase with uppercase, and uppercase with lowercase, so Hello -> hELLO
"Hello, #{variable}!" #insert a variable into a string
#Or just do this ()"Hello, " + variable + "!")

#Even if we use capitalize, downcase and upcase. They dont modify the orgianl string, just modifies it in the instance its used I guess. 
#Use this is modify the orginal string
variable.upcase! #the '!' changes it 

```





___





# 12. Random Generation

Generating random numbers is random

```ruby
Random.rand(10...42)
#or
rand(10...42)
#This generates a random number between 10 and 42

#if this doesnt work then try these

rand #--> gives you a random number in a float

rand(max) #max = the highest value youd want to randomly generate.
Random.rand(max) #(is the correct way to use this)
#this is an example of using this 
10.times.map{ 20 + Random.rand(11) } #+20 allows the number to stay above a desired value, the 0-11 value is the random factor in this
#=> [26, 26, 22, 20, 30, 26, 23, 23, 25, 22]

```





___





# 13. Looping Structures

Looping structures are important to know in programming in general.

They help you do tasks that require the same actions over and over again.
So instead of copying and pasting the same code over and over again. Use a loop!

While loops

```ruby
x = 0 
while x != 5 do #While x does not equal 5 it will keep looping
  x += 1 #or x = x + 1
  puts "hi"
end
```

output

```ruby
hi #x = 0
hi #x = 1
hi #x = 2
hi #x = 3
hi #x = 4
```

For loops

```ruby
x = 0
for i in 1..20 do #1..20 is the same as range in other code
  x = x + 1 #or x += 1
  puts x.to_s
end
```

Output

```ruby
1
2
3
4
5
6
7
8
9
10
11
12
13
14
... #you get it.
```

Do while loop

```ruby
#This one confuses me
x = 0

loop do
  x += 1
  puts "69"
  if x == 5 #Boolean expression. Stops the code
    puts "haha" 
    break #Ends the loop?
  end
end
```

Output

```ruby
69
69
69
69
69
haha
```

Until Loop

```ruby
x = 0

until x == 5 do
  x += 1
  puts "AHAHHAHHAHAH"
end
```
Output
```ruby
AHAHHAHHAHAH
AHAHHAHHAHAH
AHAHHAHHAHAH
AHAHHAHHAHAH
AHAHHAHHAHAH
```




___





# 14. Functions/Methods

???





___





# 15. Elementary Data Structures

???





## 15.1 Arrays/Lists

Arrays and lists are the same thing. you can store many seperate variables.
Here is how you can use them in ruby. 
```ruby

array = ["megaman", "starwars", "godzilla"] 
#megaman index is = 0, starwars = 1, and so on 

array.length 
#will return the length of the array, the length is one less than the last index

#3 ways to add elements 

#specific element placement
array[3] = "whale" #this would be 3

#both would be add it to the back of the array
array.push("Helloo") #4
array << "Book" #5

sharks.unshift("demon") \
#Add element to the beginning of the array. 

#demon, megaman, starwars, godzilla, whale, Helloo, Book

#if you skip a index in the array it will create a "nil" in the index

#so if you enter "final" at index 8 the space between Book(index 6) and final will be filled with nils

#print the last element in the array
print array[-1] 

#how to get first and last elements of the array method
puts array.first
puts array.last

#find the placement of a certain element in the array
#if you try to find an element that does not exist it will return a nil

print array.index("starwars")

#delete things from arrays

array.delete("godzilla")
array.delete_at(0) #0 = first element
array.pop 
#will remove the last element in the array
array.shift 
#will remove the first element in the array
#arrays can hold other arrays aka nested arrays
puts "\n"
#megaman starwars, whale is left

array.each

array.each_do |array|
  put array
end


puts "\n"
nested =[
  [#array 1
    "kick",
    "punch",
  ],
  [#array 2
    "run",
    "jump",
  ]

  #to access values in nested arrays

  print nested[1][0]

  # [1] = the second array (since 0 is first)
  # [0] = the first element in the second array, run
  # [0][1] would be kick
  print array
]
```
Output of arrays
```ruby
3
"Book"
"demon"
"Book"
3

"megaman"
"starwars"
"whale"

"run"
["megaman", "starwars", "whale"]

```






## 15.2 Matrices

Matrices are grids of characters, kind of like an array.

```ruby

require 'matrix' #The matrix class is required to add matrix's

matrix = [ # this is a matrix using an array
#Best to show 2d data and a board game like chess
  [1,2,3],
  [4,5,6],
  [7,8,9],
]
                    
a = Matrix[[1,2,3], [4,5,6], [7,8,9]]  
b = Matrix[[1,2,3], [4,5,6], [7,8,9]] #These matrixs are the same as the grid from before just flattened out.

z = a + b #Matrix A + Matrix B, I assume it might work for other signs like **, *, /, -, % and the like.
puts z

#How to grab a individual value

puts a[0,1]#(might need to convert the int to string first) 
#0 = the first section. 1 = the second value of the first section

#if you were using the grid version
puts matrix[0][1] #Conversion to string might be neccesary

#Remeber bjects in a matrix can be chagned, a new matrix needs to be created to change a value 
```
Output
```ruby
Matrix[[2, 4, 6], [8, 10, 12], [14, 16, 18]]
2
2
```



___





<!-- 
EVERYTHING BELOW IS OPTIONAL; 
UNCOMMENT BY REMOVING THE ARROW TAGS SURROUNDING
(i.e., delete the "< !--" and "-- >" tags)

CHANGE THE SECTION NUMBERS AS DESIRED
-->

<!-- # 16. Major Keywords

???





___ -->





<!-- # 17. Error Handling

???





___ -->





<!-- # 18. Working with Files

???





___ -->





<!-- # 19. Major Language Features

???







## 19.1 Classes

???





## 19.2 Inheritance

???





## 19.3 Generic Typing (Templates)

???





## 19.4 Pointers

???





___ -->





<!-- # 20. Importing Local Libraries

???





___ -->





<!-- # 21. Working with Time

???





___ -->





<!-- # 22. Importing Libaries from Package managers

???





___ -->





<!-- # 23. Bitwise Operators

???





___ -->





<!-- # 24. Common Data Structures

???





___ -->





<!-- # 25. Advanced Language Features

???





___ -->





# References

* [Markdown Cheatsheet](https://gist.github.com/jonschlinkert/5854601)
* [description](http://example.com)
