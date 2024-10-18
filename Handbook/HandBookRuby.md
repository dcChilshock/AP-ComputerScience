<h1>Handbook on Programming in ?????</h1>

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
```

Output should come to:

```
This is a string
This is also a string
10
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

* Arrays

Arrays are akin to lists, you can store many seperate variables.
Here is how you can use them in ruby. 
```ruby

array = ["megaman", "starwars", "godzilla"] 
#this array is 0, 1, 2

array.length #will return the number elements not the index

#3 ways to add elements 

array[3] = "whale" #this would be 3
array.push("Helloo") #4
array << "Book" #5
sharks.unshift("demon") #Add element to the beginning of the array. 

#demon, megaman, starwars, godzilla, whale, Helloo, Book

#also would increase the index for all the other elements by 1

#if you skip a index in the array it will create a "nil" in the index

#so if you enter "final" at index 7 the space between godzilla and final will be filled with nils

#print the last element in the array

print array[-1] 

#also, another way to get first and last of the array method

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

* Symbols
```ruby

```
Output
```ruby

```





___





# 3. Console I/O

???





___





# 4. Arithmetic Operations

???





___





# 5. Assignment Operations

???





___





# 6. Comments

???





___





# 7. Decision Structures

???





___





# 8. Conditional Operators

???





___





# 9. Logic Operators

???





___





# 10. Advanced Decision Structures

???





___





# 11. String Methods

???





___





# 12. Random Generation

???





___





# 13. Looping Structures

???





___





# 14. Functions/Methods

???





___





# 15. Elementary Data Structures

???





## 15.1 Arrays/Lists

???






## 15.2 Matrices

???





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
