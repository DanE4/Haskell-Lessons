module Lesson4 where
import Data.List    
-----------------------------------------------------------------
head' :: [a]-> a
head' (x:xs) = x
-----------------------------------------------------------------
tail' :: [a] -> [a]
tail' (x:xs) = xs
-----------------------------------------------------------------
fact :: Integer -> Integer
fact 1=1
fact n = n * fact n -1

    --önnmagát hivogatva 
-----------------------------------------------------------------
fib:: Integer ->Integer
fib 0=1
fib 1=1
fib n = fib(n-1) + fib(n-2)
-----------------------------------------------------------------
length' :: [a]->Integer
length' []=0
length' (x:xs) = 1 + length' xs
-----------------------------------------------------------------
sum' :: Num a => [a] -> a
sum' []=0
sum' (x:xs)= x + sum' xs
-----------------------------------------------------------------
--last
--init
--minimum
--merge

last' :: [a] -> a
last' (x:xs) = min x (minimum xs)




