module Lesson3 where
import Data.List

intList :: [Int]
intList = [1,2,3,4,5]
{--head (elsőt)
    tail (maradékot az első nélkül)
    product **************
    min 2 számra
    minimum listákra
    [1,2,3]!!0 indexel, eredmény 1
    (++) összefűz 2 listát  
    last ( utolsó elem lol)
    zipWith (,) or (*) [1,2,3][1,2,3]
--}

listEval :: [a]->Int
listEval [] = 0
listEval [_] = 1
listEval [a,_] = 2
listEval (x:xs) = 3

{--listagenerátor
--pl: [2*n|n <-[1..10]]
    2*n eredmény *2

    next: 

    [2*n|n <-[1..10],even n]
    minden páros pl
    [2*n|n <-[1..10],mod n 7==0]
    [n|n <-[1..10],mod n 7==0,even n]
    [n*m|n <-[1..10],m <-[1..10]]
    literally nested for loop
    --ZHBAN LISTAGENERÁTOROK
    
--}
--soroljuk fel az első 10 négyzetszám kétszeresét
f::[Int]
f=[n^2*2|n<-[1..10]]
--10 hosszúságú lista, ami felváltva tartalmaz false, true-t

fttt :: Int -> [Bool]
fttt x =[even n| n<-[1..x]]

--xor mirrorx 

xor :: Bool -> Bool -> Bool
xor True True  = False
xor False False = False
xor _ _ = True

mirrorX :: Num a => (a, a) -> (a, a)
mirrorX (a,b)=(a,-b)

listagener:: Int -> [Int]
listagener x = [n | n <- [1..x], mod n 2==0, mod n 3==0]





--1 mintaillesztés 1 generátoros
{--

típusváltozó? paraméter ?
prametrikus polimporfizmus
haskell szígoruan tipusos
tuple / lista
--Definiáljuk azt a függvényt, amely akkor ad vissza iga értéket ha paraméterül kapott 4 érték közül legalább 2 megegyezik
--logikai vagyok ések
--20p
--
--}













