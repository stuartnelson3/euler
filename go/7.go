package main

import (
	"fmt"
)

func isPrime(n int) bool {
	for i := 2; i < n; i++ {
		if n%i == 0 {
			return false
		}
	}
	return true
}

func main() {
	var tally, prime int
	for i := 2; i < 104744; i++ {
		if isPrime(i) {
			tally += 1
			prime = i
		}
		if tally == 10001 {
			break
		}
	}
	fmt.Printf("Answer is %d\n", prime)
}
