package main

import "fmt"

func fib() func(n int) int {
    fib_map := make(map[int]int)
    fib_map[0], fib_map[1] = 0, 1
    return func(n int) int {
        curr, prs := fib_map[n]
        if !prs {
            curr = fib_map[n-1] + fib_map[n-2]
            fib_map[n] = curr
        }
        return curr
    }
}

// 8ms runtime
func main() {
    sum, fib_func := 0, fib()
    for i:=0;i<4000000;i++{
        curr := fib_func(i)
        if curr > 4000000 { break }
        if curr%2==0 { sum += curr }
    }
    fmt.Println("Sum is:", sum)
}
