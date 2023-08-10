module Homework4 where
import Data.List
-----------------------------------------------------------------
lucas :: Integer -> Integer
lucas 0 = 2
lucas 1 = 1
lucas x = lucas (x-1) + lucas (x-2)
-----------------------------------------------------------------
hasZero :: [Int] -> Bool
hasZero [] = False
hasZero (x:xs) = x==0 || hasZero xs
-----------------------------------------------------------------
doubleAll :: [Int] -> [Int]
doubleAll [] = []
doubleAll (x:xs) = x*2 : doubleAll xs
-----------------------------------------------------------------
isLonger :: [a] -> [b] -> Bool
isLonger [] [] = False
isLonger x [] = True
isLonger [] x = False
isLonger (x:xs) (y:ys) = isLonger xs ys
