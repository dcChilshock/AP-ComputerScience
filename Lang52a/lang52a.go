package main

import (
  "fmt"
)
func main() {
	fmt.Print("Enter length:")
	var length int
	fmt.Scanln(&length)
	fmt.Print("Enter width:")
	var width int
	fmt.Scanln(&width)
	var area = length * width
	var perimeter = (length + width) * 2
	var A = fmt.Sprint(area)
	var P = fmt.Sprint(perimeter)
	fmt.Println("This is the area:", A)
	fmt.Println("This is the perimeter:", P)
}



