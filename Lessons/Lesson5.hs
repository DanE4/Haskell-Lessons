--mindent importol csak a zipet nem
module Lesson5 where
import Data.Char
import Prelude hiding(zip,drop,elem,take)

zip :: [a] -> [b] -> [(a,b)]
zip _ [] = []
zip [] _ = []
zip (x:xs) (y:ys) = (x,y) : zip xs ys

--isprefixof
isPrefixOf :: Eq a => [a] -> [a] -> Bool
isPrefixOf [] [] = True
isPrefixOf _ [] = False
isPrefixOf [] _ = False
isPrefixOf (x:xs)(y:ys) = x==y && isPrefixOf xs ys
--elem

elem :: Eq a => a -> [a] -> Bool
elem _ [] = False
elem a (x:xs) = a==x || elem a xs

--(++)
{--
(++) :: [a] -> [a] -> [a]
(++) [] [] = []
(++) [] a = a
(++) a [] = a
(++) (x:xs) (y:ys) = x : (++) xs (y:ys)
--}

--listagenerálás+rekurzió
primes :: [Int]
primes =filterPrime [2..]
    where filterPrime (p:xs) = p : filterPrime [x | x <- xs, mod x p/=0 ]
                -- p==2
                -- xs a számok végtelenségig
                -- p-t átadjuk, rekurzívan filterPrime, ami mint egy for ciklus megvizsgálja az első
                -- elemet, hogy prím-e 


--ESET SZÉTVÁLASZTÁS GUARDS      
upperLower :: Char -> Char
upperLower a
    | isLower a = toUpper a
    | otherwise = toLower a        
--import Data.Char


isGreaterThanFive :: Int -> Bool
isGreaterThanFive a
    | a > 5  = True
    | otherwise = False

--drop n után a maradék
--take n előtt 
drop :: Int -> [a] -> [a]
drop _ [] = []
drop n (x:xs)
    | n>0 = drop (n-1) xs
    | otherwise = (x:xs)
    













