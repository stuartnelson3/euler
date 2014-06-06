package main

import "fmt"

// 8ms runtime
func main() {
	sum := 0
	fib_map := map[int]int{0: 0, 1: 1}
	for i := 0; i < 4000000; i++ {
		curr, prs := fib_map[i]
		if !prs {
			curr = fib_map[i-1] + fib_map[i-2]
			fib_map[i] = curr
		}
		if curr > 4000000 {
			break
		}
		if curr%2 == 0 {
			sum += curr
		}
	}
	fmt.Println("Sum is:", sum)
}
