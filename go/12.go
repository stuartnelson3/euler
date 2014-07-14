package main

import (
	"fmt"
	"math"
)

func numDivisors(n int) int {
	var c int
	sqrt := math.Sqrt(float64(n))
	for i := 1; i <= int(sqrt); i++ {
		if n%i == 0 {
			c += 2
		}
	}
	return c
}

func main() {
	var j int
	for i := 1; ; i++ {
		j += i
		if numDivisors(j) > 500 {
			break
		}
	}
	fmt.Println(j)
}
