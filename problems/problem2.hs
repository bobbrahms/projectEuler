-- Problem 2
-- https://projecteuler.net/problem=2
-- Find the sum of all even terms of fibonacci sequence below 4 million.

fibsForever ::  [Integer]
fibsForever = 1:1:2:(fibs 1 2)
  where
    fibs p l = (p + l) : fibs l (p+l)

sum [x | x <- takeWhile (<4000000) (fibsForever), mod x 2 == 0]

-- some interesting properties observed in the discussion.
-- https://projecteuler.net/overview=002
-- one of which being, every third fib is even.

everyThird :: [Integer] -> [Integer]
everyThird (_:_:it:theRest) =
  it : everyThird theRest

-- so this also works
sum [x | x <- takeWhile (<4000000) (everyThird fibsForever)]


