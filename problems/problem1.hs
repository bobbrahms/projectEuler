

-- https://projecteuler.net/problem=1

-- list the sum of all the natural numbers below 1000 that are multiples
-- of three or five.

problem1 :: Integer
problem1 = sum [x | x <- [1..999], (mod x 3) == 0 || (mod x 5) == 0] 
