fib 0 = 0
fib 1 = 1
fib n = fib(n-1) + fib(n-2)
sum $ takeWhile (<4000000) [ fib x | x <- [1..], even $ fib x ]
