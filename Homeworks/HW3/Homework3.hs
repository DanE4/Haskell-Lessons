module Homework3 where
import Data.List
-----------------------------------------------------------------
putIntoList :: a -> [a]
putIntoList x = [x]
-----------------------------------------------------------------
interval :: Int -> Int -> [Int]
--hogyha az első arg nagyobb mint a 2. akkor alapból üres listát dob vissza
--interval x y =[x..y] ugyan ezt dobja vissza, interval 5 2 == [] ----> True
interval x y =if x>y then [] else [x..y]
-----------------------------------------------------------------
headTail :: [a] -> (a, [a])
headTail a = (head a, tail a)
-----------------------------------------------------------------
doubleHead :: [a] -> [b] -> (a, b)
doubleHead a b = (head a, head b)
-----------------------------------------------------------------
list5rem3 :: [Int]
list5rem3 = [n | n <- [1..100], mod n 5 == 3]
-----------------------------------------------------------------
evens :: [Int] -> [Int]
evens a = [n | n <- a, even n]  