package main

import (
	"fmt"
	"math"
)

func is_prime(n int) bool {
	for j := 2; j < n; j++ {
		if n%j == 0 {
			break
		} else if j == n-1 {
			return true
		}
	}
	return false
}

func main() {
	target := 600851475143
	max := int(math.Floor(math.Sqrt(600851475143)))
	var candidate int
	for i := 1; i < max; i++ {
		if target%i == 0 {
			if is_prime(i) {
				candidate = i
			}
		}
	}
	fmt.Println("Winner is:", candidate)
}
