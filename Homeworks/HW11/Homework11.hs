module Homework11 where
import Data.List
import Data.Char
import Data.Maybe

data INode = File String Int | Directory String Int 

instance Eq INode where
  (File _ i) == (File _ j) = i == j
  (Directory _ i) == (Directory _ j) = i == j
  _ == _ = False
instance Ord INode where
  (File _ i) <= (File _ j) = i <= j
  (Directory _ i) <= (Directory _ j) = i <= j
  (File _ _) <= (Directory _ _) = True
  (Directory _ _) <= (File _ _) = False
instance Show INode where
  show (File s i) = s ++ " " ++ show i
  show (Directory s i) = s ++ " " ++ show i

type INodes = [INode]

--LELTÁR
countAllFiles :: INodes -> Integer
countAllFiles [] = 0
countAllFiles (x:xs) = (count x) + countAllFiles xs
    where count (File _ _) = 1
          count (Directory _ n) = fromIntegral n

--KERESÉS
searchFolder :: INodes -> String -> Maybe INode
searchFolder [] _ = Nothing
searchFolder (x:xs) name 
    | name == (getName x) = Just x
    | otherwise = searchFolder xs name
    where isFolder (Directory _ _) = True
          isFolder _ = False
          getName (Directory name _) = name
          getName (File name _) = name

--LEGNAGYOBB FÁJL
largestFile :: INodes -> Maybe INode
largestFile [] = Nothing
largestFile (x:xs) 
    | isFile x = Just (largestFile' (x:xs) x)
    | otherwise = largestFile xs
    where isFile (File _ _) = True
          isFile _ = False
          largestFile' [] max = max
          largestFile' (x:xs) max 
            | isFile x && (getSize x) > (getSize max) = largestFile' xs x
            | otherwise = largestFile' xs max
          getSize (File _ size) = size
          getSize (Directory _ _) = 0
