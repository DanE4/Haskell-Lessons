{-

Konzi : pentek 14:00-16:00 (LD00-803)

-}

{-
több 
soros
komment
-}

-- egy soros komment



-- module mint fordítási egység, ez a szintaktikája (ghci-nél one module loaded)
module Lesson1 where
-- Minden fv. nincs valtozo , tisztan funkcionalis nyelv
 --Sima konstans fv.
one :: Int
one = 1

 --Sima konstans fv., melyben felhasználtunk egy másik kosntans fv.-t
two :: Int
two = 1 + one

--Paraméterezett fv. 
-- függvény mint leképezés: értelmezési tartomány -> értékkészlet , matekrol ismerös
inc :: Int -> Int
inc a = a + 1
 
--Zárojel szükséges, megfelelö mennyiségü paramétert kapjon minden fv.
incTwice :: Int -> Int
incTwice a = inc (inc a)

--Operátorok is írhatók prefix módon.
inc' :: Int -> Int
inc' a = (+) a 1

-- alapvető típus: Char
--import Data.Char
-- Char: toUpper, toLower
letterE :: Char
letterE = 'E'

-- alapvető típus: Bool
-- Bool: (&&), (||), not

okay :: Bool
okay = True

-- a függvények tudnak más értékre is képezni, mint a param
isEven :: Int -> Bool
isEven a = a `mod` 2 == 0 

-- nem kötelező 'a'-val jelölni a paramétert, más is lehet
isOdd :: Int -> Bool
isOdd x = x `mod` 2 /= 0 

-- kétszer majdnem ugyanazt írtuk le, elég nem menő
-- hogyan lehet szebb és olvashatóbb
betterIsOdd :: Int -> Bool
betterIsOdd a = not (isEven a)


-- nem kötelező az átvett sorrendben felhasználni
area :: Int -> Int -> Int
area a b = a * b
