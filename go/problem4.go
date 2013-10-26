package main

import(
    "fmt"
    "strconv"
)

func reverse(s string) string {
    b := make([]byte, len(s))
    j := len(s) - 1
    for i := 0; i <= j; i++ {
        b[j-i] = s[i]
    }

    return string(b)
}

func main() {
    pal := 0
    for i:=999;i>900;i--{
        for j:=999;j>900;j--{
            if k:=i*j;strconv.Itoa(k)==reverse(strconv.Itoa(k))&&k>pal{
                pal = k
            }
        }
    }
    fmt.Println("Palindrome:", pal)
}
