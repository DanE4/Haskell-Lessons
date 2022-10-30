module Lesson7 where
    --lambda függvények
    --magasabb rendű függvények
    inc :: Int -> Int -> Int
    inc = (\x y -> x+y+1)
    --inc = (\x y-> x+y+1
    --map (even) [1,2,3,4,5,6]
    --pl in java : Predicate<String> p = s -> s.length() > 5;
    --filter (\x-> x>3)[1,2,3,4,5]
    --literally just a filter


    count :: (a->Bool) -> [a]->Int
    count f [] = 0
    count f (x:xs)
        | f x = 1 + count f xs  -- adott elemet átadja az adott functionnak f x 
        | otherwise = count f xs 
    
    map' :: (a->b) -> [a]->[b]
    map' f [] = []
    map' f (x:xs) = f x : map f xs

    --map f [1,2,4] = (f 1): (f 2) : map f[4] --> map f [] = []
    filter' :: (a -> Bool) -> [a] -> [a]
    filter' f [] = []
    filter' f (x:xs)
        | f x = x : filter' f xs   
        | otherwise = filter' f xs


    takeWhile' :: (a -> Bool) -> [a] -> [a]
    takeWhile' f [] = []
    takeWhile' f (x:xs)
        | f x = x : takeWhile' f xs
        | otherwise = []

    dropWhile' :: (a -> Bool) -> [a] -> [a] 
    dropWhile' f [] = []
    dropWhile' f (x:xs)
        | f (x) = dropWhile' f xs
        | otherwise = (x:xs) 

        --valamiért rossz xd
        {--
        | f x = []
        | otherwise = x : dropWhile' f xs 
    ????????????????
        dropWhile' f l@(x:xs)
        | f x = dropWhile' f xs
        | otherwise = l
        --}

    iterate' :: (a->a) -> a -> [a]
    iterate' f a = a : iterate' f(f a)

    --accumulators
    reverse' :: [a] -> [a]
    reverse' (x:xs) = reversehelp (x:xs) [] where        --where előtti [] accumulator list, ebbe gyűjtődnek az elementek 
        reversehelp :: [a] -> [a] -> [a]
        reversehelp [] acc = acc                         --kilépő feltétel ( ha ) 
        reversehelp (x:xs) acc = reversehelp xs (x:acc)  -- elejére fűzés 
    


    --span(>3) [6,5,4,3,2,1] lesz : (takeWhile f l, dropWhile f l) ([6,5,4],[3,2,1])
    span' :: (a -> Bool) -> [a] ->([a],[a])

    span' f l = spanhelp f [] l 0 where
        spanhelp f acc l 1 = (reverse acc, l)
        spanhelp f acc [] 0 = spanhelp f acc [] 1
        spanhelp f acc (x:xs) 0 
            | f x = spanhelp f (x:acc) xs 0
            | otherwise = spanhelp f acc (x:xs) 1









