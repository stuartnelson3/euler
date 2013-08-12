evenlyDivisible x = 20 == length [ y | y <- [1..20], mod x y == 0]
take 1 [ x | x <- [1..], evenlyDivisible x]
