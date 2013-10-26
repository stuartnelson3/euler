package main

import "fmt"

// 144ms runtime
func fib(n int) int {
    if n == 0 || n == 1 {
        return n
    } else {
        return fib(n-1) + fib(n-2)
    }
}

func main() {
    sum := 0
    for i:=0;i<4000000;i++{
        x := fib(i)
        if x > 4000000 { break }
        if x%2==0 { sum += x }
    }
    fmt.Println("Sum is:", sum)
}
