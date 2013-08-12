isqrt :: Integer -> Integer
isqrt x = floor $ sqrt $ fromIntegral x
is_prime :: Integer -> Bool
is_prime k = null [ x | x <- [2..isqrt k], k `mod`x  == 0]
source = 600851475143
sq = isqrt source
maximum [ x | x <- [3..sq], is_prime x, source `mod` x == 0]
