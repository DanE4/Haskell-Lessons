module Homework9 where

data Vector3 = V Int Int Int deriving (Show, Eq)

componentSum :: Vector3 -> Int
componentSum (V a b c) = a + b + c
crossProduct :: Vector3 -> Vector3 -> Vector3
crossProduct (V a b c) (V d e f) = V (b*f - c*e) (c*d - a*f) (a*e - b*d)

vectorListSum :: [Vector3] -> Vector3
vectorListSum [] = V 0 0 0
vectorListSum (x:xs) = V (a + a') (b + b') (c + c')
    where
        (V a b c) = x
        (V a' b' c') = vectorListSum xs

data Storage = HDD String Int Int | SSD String Int deriving (Show)
capacity :: Storage -> Int
capacity (HDD _ _ c) = c
capacity (SSD _ c) = c

type StorageList = [Storage]

hugeHDDs :: StorageList -> StorageList
hugeHDDs l = filter (\x -> capacity x > maxSSD) (filter (\x -> isHDD x) l)
    where
        maxSSD = maximum (map (\x -> capacity x) (filter (\x -> isSSD x) l))
        isHDD (HDD _ _ _) = True
        isHDD _ = False
        isSSD (SSD _ _) = True
        isSSD _ = False