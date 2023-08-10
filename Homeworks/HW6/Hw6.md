6.Házi
======

### Egy kis matematika

Definiáld a `mathFun` függvényt, mely egy lista összes elemét négyzetre emeli, majd megszorozza kettövel!

    mathFun :: Num a => [a] -> [a]
    -- tesztek:
    mathFun [] == []
    mathFun [1,2,5] == [2,8,50]
    
    

### Hárman párban

Definiáld az `multiplesInTriplets` függvényt, amely egy listát kapva visszaadja olyan rendezett hármasok listáját, melyben minden eredeti elem szerepel kétszeresével és háromszorosával együtt.

    multiplesInTriplets :: Num a => [a] -> [(a,a,a)]
    
    -- tesztek:
    multiplesInTriplets [1] == [(1,2,3)]
    multiplesInTriplets [1,3] == [(1,2,3),(3,6,9)]
    

### Elsö elem elhagyása

Definiáld a `dropFirst` függvényt, amely egy listából elhagyja az elsö, a paraméterül kapott értékkel egyező elemet!

    dropFirst :: Eq a => a -> [a] -> [a]
    
    -- tesztek:
    dropFirst 12 [1,2,3] == [1,2,3]
    dropFirst 3 [1..5] == [1,2,4,5]
    take 5  (dropFirst 15 [1,8..]) == [1,8,22,29,36]
    dropFirst 2 [1,2,3,2,1] == [1,3,2,1]