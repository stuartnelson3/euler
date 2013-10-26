package main

import (
    "fmt"
)

func main() {
    sum, sum_of_squares := 0, 0
    for i:=0;i<=100;i++{
        sum_of_squares += i*i
        sum += i
    }
    square_of_sums := sum*sum

    fmt.Println("Difference is:", square_of_sums - sum_of_squares)
}
