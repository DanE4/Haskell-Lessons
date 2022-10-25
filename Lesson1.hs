module Lesson1 where
    szam1=1
    szam2=2

    randomFunc=szam1+szam2;
    
    one::Int
    one=1
    {-
        :t(+)
        leír mindent is lol
    -}
    inc :: Int -> Int
    inc a = a + 1;

    {-  már megírt function felhasználása, a != inc a -}
    inc2x :: Int -> Int
    inc2x a = inc (inc a);

    inc' :: Int->Int
    inc' a= (+) a 1

    letterE :: Char 
    letterE ='E'

    bul :: Bool
    bul = True

    isEven :: Int -> Bool
    isEven a = mod a 2 ==0
    {- 
    
    alternatíva: 
    a `mod` 2 == 0

    -}

    isOdd :: Int-> Bool
    {-
        /= not equals 
    -}
    isOdd a= mod a 2/=0

    betterIsOdd :: Int -> Bool
    betterIsOdd a = not (isEven a)
    {- literally " not True || not False-}

    
    {-  Több paraméteres functionok   -}
    returnFirst :: Char -> Int-> Char
    returnFirst a b = a 

    area::Int->Int->Int
    area a b = b*a

    {-
        ????????????????   int a ->[a] ,   arr
    -}
    fact :: (Num a, Enum a) => a -> [a]
    fact n = [1..n]

    replicate :: (Num i, Ord i, Enum i)=> i -> a -> [a]
    replicate 0 y = []
    replicate x y = [y | z <- [1..x]]
    





