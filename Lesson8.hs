module Lesson8 where
---------------------------------------------------------------------------------
    --http://lambda.inf.elte.hu/Higherorder.xml
    --http://lambda.inf.elte.hu/Composition.xml#feladat-1-31-331-3331
    filters :: Eq a => [a] -> [a] -> [a]
    filters a b = filter(flip notElem a) b

    zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
    zipWith' f - [] = []
    zipWith' f [] _ = []
    zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys
---------------------------------------------------------------------------------

    --pl differences [0,1,4,9,16] = [1, 3, 5, 7]
    differences :: Num a => [a] -> [a]
    differences (x:xs) = zipWith (-) xs (x:xs)
    -- == [2,3,4,5] [1,2,3,4,5] -> 2 - 1 : 3 - 2...
    --magasabbrendű függvények valszeg + függvénykompozíció ON ZHHHHHHHHHH



---------------------------------------------------------------------------------
    group :: Eq a => [a]{-véges-} -> [[a]]
    group [] = []
    group (x:xs) = grouphelp  [x] x xs
    where
        group loop acc c [] = [acc]
        group loop acc c (x:xs)
            | c == x = group loop (acc ++ [x]) c xs
            | otherwise = acc : group loop [x] x xs
    {--

        pl: group [1,1,2,2,3,3,1,1,2] == [[1,1],[2,2],[3,3],[1,1],[2]]
        [1,2,3]
        [[1],[2],[3]]
    
    --}
---------------------------------------------------------------------------------
    {--

    függvénykompozíció
     :t (.)
    (3+) ((2*) 5)
    függvénykommpal: 
    
    --}
---------------------------------------------------------------------------------    
    numbersMadeOfThreesAndOne :: [Integer]
    numbersMadeOfThreesAndOne = iterate ((+2).(*10).(+1)) 1
    --numbersMadeOfThreesAndOne = iterate (\x->((x+2)*10 +1)) 1
    --take 4 numbersMadeOfThreesAndOne
    dropSpaces :: String -> String
    dropSpaces l = dropWhile (==' ') l
    --dropSpaces "   hi  h i " 
---------------------------------------------------------------------------------    
    trim' :: String -> String
    trim l = reverse (dropSpaces (reverse (dropSpaces l)))
    --trim = reverse.dropSpaces.reverse.dropSpaces
    trim l = reverse.dropSpaces.reverse.dropSpaces $l
---------------------------------------------------------------------------------
    maximumOfMinimums :: Ord a => [[a]] -> a
    maximumOfMinimums (x:xs)= maximum (map minimum (x:xs))
    --maximumOfMinimums l= maximum (map minimum l)
    --maximumOfMinimums l = maximum.map minimum $l
    --dollár van utoljára mert annak a legkisebb a precedenciája
---------------------------------------------------------------------------------
    mapMap :: (a -> b) -> [[a]] -> [[b]]
    mapMap l= map(map l)
    --mapMap = map.map
---------------------------------------------------------------------------------


    

