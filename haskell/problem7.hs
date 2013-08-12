isqrt :: Integer -> Integer
isqrt x = floor $ sqrt $ fromIntegral x
is_prime :: Integer -> Bool
is_prime k = null [ x | x <- [2..isqrt k], k `mod` x == 0]
main = print $ last $ take 10001 [ x | x <- [2..], is_prime x ]
