module Homework6 where

mathFun :: Num a => [a] -> [a]
mathFun []=[]
mathFun (x:xs)= (x*x)*2:mathFun xs

multiplesInTriplets :: Num a => [a] -> [(a,a,a)]
multiplesInTriplets []=[]
multiplesInTriplets (x:xs) = (x,x*2,x*3) : multiplesInTriplets xs

dropFirst :: Eq a => a -> [a] -> [a]
dropFirst _ [] = []
dropFirst a (x:xs) 
    | a == x = xs
    | otherwise = x : dropFirst a xs
