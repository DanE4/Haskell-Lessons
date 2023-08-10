Házi feladat
============

A házi feladatot egy Homework2 nevű modulként kell beadni. Minden feladathoz megadok teszteseteket, ezeket a ghci-be bemásolva tesztelhetitek a megoldásotokat. Ha True értéket kaptok, akkor valószínűleg jó a megoldás, ha False, akkor valami hibát vétettetek.

Egyszerű mintaillesztés
-----------------------

Adjuk meg azt a függvényt, amely eldönti egy számról, hogy 5 és 15 közti prímszám-e (5,7,11,13)! Ezekre a számokra igazat, minden egyéb számra hamisat adjon vissza! `(isSmallPrime :: Int -> Bool)`

Tesztesetek:

isSmallPrime 5

isSmallPrime 7

isSmallPrime 11

isSmallPrime 13

not (isSmallPrime 1)

not (isSmallPrime 4)

not (isSmallPrime 6)

not (isSmallPrime 29)

not (isSmallPrime 53)

not (isSmallPrime 101)

A következő két feladathoz az alábbi linkeken megtaláljátok a műveletek igazságtábláit: [implikáció](https://miro.medium.com/max/952/1*RI1XC5JjtGjkrUfWTtOn2A.png), [ekvivalencia](https://miro.medium.com/max/1384/1*PytIuqVtWbvpD7GuoUx66g.png). Ezek alapján könnyedén megoldható a feladat.
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

### Adjuk meg azt a függvényt, amely eldönti két logikai változóról, hogy azok ekvivalensek-e!

`(equivalent :: Bool -> Bool -> Bool)`

Tesztesetek:

equivalent True True

equivalent False False

not $ equivalent True False

not $ equivalent False True

### Adjuk meg azt a függvényt, amely eldönti két logikai változóról, hogy az első implikálja-e a másodikat

`(implies :: Bool -> Bool -> Bool)`

Tesztesetek:

implies False True

implies False False

implies True True

not $ implies True False

Racionális számok
-----------------

Reprezentáljuk a racionális számokat rendezett párokkal! A pár első komponense legyen a számláló, a második pedig a nevező. A műveletek elvégzése után nem feltétlenül kell a legegyszerűbb formában megadni az eredményt (tehát nem kell egyszerűsíteni a törtet - bővíteni se bővítsük). Továbbá feltehetjük, hogy egyik szám nevezője sem nulla.

Definiáljuk a racionális összeadást! `(add :: (Int, Int) -> (Int, Int) -> (Int, Int))`

Tesztesetek:

add (5,5) (6,5) == (55,25)

add (10,5) (20,10) == (200,50)

add (1,3) (1,6) == (9,18)

Definiáljuk a racionális szorzást! `(multiply :: (Int, Int) -> (Int, Int) -> (Int, Int))`

Tesztesetek:

multiply (5,5) (6,5) == (30,25)

multiply (10,5) (20,10) == (200,50)

multiply (1,3) (1,6) == (1,18)

Definiáljuk a racionális osztást! Feltehetjük, hogy egyik szám számlálója sem nulla. `(divide :: (Int, Int) -> (Int, Int) -> (Int, Int))`

Tesztesetek:

divide (5,5) (6,5) == (25,30)

divide (10,5) (20,10) == (100,100)

divide (1,3) (1,6) == (6,3)