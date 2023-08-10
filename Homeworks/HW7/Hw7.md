7\. Házi
========

Valósítsuk meg **explicit rekurzió használata nélkül** (magasabb rendű függvények használhatók) Az alábbi függvényeket:

_Tipp : (Használjuk a `map` ,`and`és `or` függvényeket)_

Definiáljuk újra az univerzális kvantort!
-----------------------------------------

`all' :: (a -> Bool) -> [a] -> Bool`

Tesztek:

    all even [2,4..10]
    not $ all even [1..10]
    not $ all even [1,3..10]
    

Definiáljuk újra az egzisztenciális kvantort!
---------------------------------------------

`any' :: (a -> Bool) -> [a] -> Bool`

Tesztek:

    any even [1..10] 
    any even [1,2]
    not $ any even [1,3..10]
    not $ any even [1,1,1,3,5,3,1,5,7,1]
    

Definiáljuk újra az elem függvényt (az `any` segítségével), amely megállapítja, hogy egy érték szerepel-e egy listában!
-----------------------------------------------------------------------------------------------------------------------

`elem' :: Eq a => a -> [a] -> Bool` Tesztek:

    elem 1 [1..10]
    not $ elem 0 [1..10]
    elem 5 [1,5,2,4]