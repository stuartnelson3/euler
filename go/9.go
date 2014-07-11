package main

import "fmt"

func main() {
	var product int
	for x := 0; x < 998; x++ {
		for y := x + 1; y < 998; y++ {
			for z := y + 1; z < 998; z++ {
				if x+y+z == 1000 && x*x+y*y == z*z {
					product = x * y * z
				}
			}
		}
	}
	fmt.Println(product)
}
