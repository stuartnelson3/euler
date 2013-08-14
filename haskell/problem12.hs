isqrt :: Integer -> Integer
isqrt x = floor $ sqrt $ fromIntegral x
-- multiply length by two since the divisor has to be multiplied by something
divisors x = 2 * length [ y | y <- [1..isqrt x], x `mod` y == 0]

take 1 [ x | x <- scanl1 (+) [0..], divisors x > 500]
