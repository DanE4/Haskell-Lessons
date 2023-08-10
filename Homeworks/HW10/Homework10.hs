module  Homework10 where
import Data.Maybe hiding(catMaybes,mapMaybe)
import Data.List
---------------------------------------------------------------------------------
{--
smallLength [1..10] == Just 10
smallLength [1..88] == Just 88
smallLength [1..100] == Just 100
smallLength [1..111] == Nothing
smallLength [1..] == Nothing
--}
smallLength :: [a] -> Maybe Int
smallLength l = helper 0 l
 where
  helper :: Int -> [a] -> Maybe Int
  helper a [] = Just a
  helper a (x:xs)
   | a < 100 = helper (a+1) xs
   | otherwise = Nothing
---------------------------------------------------------------------------------
{--
catMaybes' []                         == []
catMaybes' [Nothing]                  == []
catMaybes' [Nothing, Nothing]         == []
catMaybes' [Nothing, Just 5, Nothing] == [5]
catMaybes' [Just 1, Just 5, Nothing]  == [1,5]
catMaybes' [Nothing, Just 5, Just 1]  == [5,1]
catMaybes' [Just 0, Just 5, Just 1]   == [0,5,1]
--}
catMaybes :: [Maybe a] -> [a]
catMaybes [] = []
catMaybes (Nothing:xs) = catMaybes xs
catMaybes (Just x:xs) = x : catMaybes xs
---------------------------------------------------------------------------------
{--
mapMaybe' Just [1..10] == [1..10]
mapMaybe' (const Nothing) [1..10] == []
mapMaybe' (\n -> if odd n then Just n else Nothing) [1..10] == [1,3..10]
--}
mapMaybe :: (a -> Maybe b) -> [a] -> [b]
mapMaybe f [] = []
mapMaybe f (x:xs) 
    | isNothing (f x) = mapMaybe f xs
    | otherwise = fromJust (f x) : mapMaybe f xs
---------------------------------------------------------------------------------

data Plant = Tree String Int | Flower String Int deriving (Show, Eq)

---------------------------------------------------------------------------------
{--
onlyFlowers [(Flower "Ibolya" 12) ,( Tree "Platan" 44) ,( Flower "Rozsa" 23)]  == Just 2
onlyFlowers [] == Nothing
onlyFlowers [( Tree "Platan" 44)] == Nothing 
--}
onlyFlowers :: [Plant] -> Maybe Int
onlyFlowers [] = Nothing
onlyFlowers l
    | length (filter isFlower l) == 0 = Nothing
    | otherwise = Just (length (filter isFlower l))
    where isFlower (Flower _ _) = True
          isFlower _ = False
---------------------------------------------------------------------------------
{--
tallestTree [(Flower "Ibolya" 12) ,( Tree "Platan" 44) ,( Flower "Rozsa" 23)]  == Nothing
tallestTree [(Flower "Ibolya" 12) ,( Tree "Platan" 44) ,( Flower "Rozsa" 23), (Tree "Tolgy" 102)]  == Just (Tree "Tolgy" 102)
tallestTree [(Tree "Tolgy" 101), (Tree "Bukk" 101)] == Just (Tree "Tolgy" 101)
--}
tallestTree :: [Plant] -> Maybe Plant
tallestTree [] = Nothing
tallestTree l
    | length (filter isTree l) == 0 = Nothing
    | otherwise = Just (head (filter isTree l))
    where isTree (Tree _ h) = h > 100
          isTree _ = False
---------------------------------------------------------------------------------