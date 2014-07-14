package main

import (
	"fmt"
)

func countSteps(n int) int {
	var i int
	for i = 1; ; i++ {
		if n == 1 {
			break
		}
		if n%2 == 0 {
			n = n / 2
		} else {
			n = 3*n + 1
		}
	}
	return i
}

func main() {
	var max, start int
	for i := 1; i < 1000000; i++ {
		steps := countSteps(i)
		if steps > max {
			max = steps
			start = i
		}
	}
	fmt.Println(start)
}
