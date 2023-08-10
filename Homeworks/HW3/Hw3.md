Házi feladat
============

A házi feladatot egy Homework3 nevű modulként kell beadni. Minden definiálandó függvényhez adjuk meg a hozzá tartozó típus szignatúrát is! A feladatok után a zárójelben lévő név azt jelzi, milyen néven kell definiálni az adott függvényt, kifejezést. A feladatok megoldása során törekedjetek arra, hogy a gyakorlaton tanult módszereket, megoldási meneteket használjátok.

Lista konstrukció
-----------------

Adjuk meg azt a függvényt, amely a kapott paraméterét belerakja egy listába! A végeredmény egy egy elemű lista legyen, amelyben a kapott paraméter szerepel.

`putIntoList :: a -> [a]`

Adjuk meg azt a függvényt, amely két egész számot kap, és előállítja a köztük értelmezett intervallumot! Például interval 2 5 == \[2,3,4,5\]. Abban az esetben, ha az első argumentum nagyobb, mint a második, akkor üres listát adjon vissza!

`interval :: Int -> Int -> [Int]`

Lista dekonstrukció
-------------------

Adjuk meg azt a függvényt, amely egy rendezett párt állít elő egy listából. A pár első eleme a lista első eleme, a pár második eleme pedig a lista farok része legyen. (Emlékezzetek a listafuggvényekre amiket használtunk) Feltételezhetjük, hogy a lista nem üres.

`headTail :: [a] -> (a, [a])`

Adjuk meg azt a függvényt, amely kap két listát, és egy rendezett párt állít elő, amelynek első eleme az első lista első eleme, a második eleme a második lista első eleme! Feltételezhetjük, hogy a listák közül egyik sem üres.

`doubleHead :: [a] -> [b] -> (a, b)`

Listagenerátorok
----------------

Adjuk meg listagenerátorral az Összes számot 1-től 100-ig, mely 5-tel osztva 3 maradékot ad.

`list5rem3 :: [Int]`

Adjuk meg listagenerátor segítségével azt a függvényt, amely egy paraméterül kapott listából kiválogatja a páros számokat!

`evens :: [Int] -> [Int]`