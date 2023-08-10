### Házi feladat

A házi feladatot egy `Homework9` nevű modulként kell beadni. Minden definiálandó függvényhez adjuk meg a hozzá tartozó típus szignatúrát is! A feladatok után a zárójelben lévő név azt jelzi, milyen néven kell definiálni az adott függvényt, kifejezést. Megjegyzés: a feladat megoldásához ne használjatok do, let, if-then-else konstrukciókat!

3D Vektor
---------

Definiáljuk a `Vector3` adattípust, mely 3 dimenziós vektorok ábrázolására lesz használatos. Az egyetlen adatkonstruktor legyen `V`, és legyen három `Int` adattagja, mint a három komponens. Kérjük a fordítótól a `Show` és `Eq` típusosztályok automatikus példányosítását. Más típusosztály automatikus példányosítását ne kérjük!

Komponensek összege
-------------------

Adjuk össze három komponensét egy vektornak! `componentSum :: Vector3 -> Int`

Vektoriális szorzat
-------------------

Számoljuk ki két, paraméterként kapott vektor vektoriális szorzatát! `crossProduct :: Vector3 -> Vector3 -> Vector3`

Két vektor vektoriális szorzata az alábbi formulából számolható:

    c1 = a2 * b3 - a3 * b2
    c2 = a3 * b1 - a1 * b3
    c3 = a1 * b2 - a2 * b1,
    Ahol a1, a2, a3 az első vektor komponensei, b1, b2, b3 a második vektor komponensei, c1, c2, c3 az eredmény vektor komponensei.
    

Vektor-lista összegzése
-----------------------

Adjuk össze a vektorokat egy listában! Két vektort úgy adunk össze, hogy az azonos komponenseit összeadjuk. A feladat megoldásához érdemes segédfüggvényt készíteni.

`vectorListSum :: [Vector3] -> Vector3`

Háttértár
---------

Definiáld a `Storage` adattípust, ami segítségével különböző háttértárakat tudunk jellemezni. Két konstruktora legyen, az egyik legyen a `HDD`. Az első adattagja a gyártójának neve legyen, a második a percenkénti fordulatszáma, `Int` típusú értékként tárolva, az utolsó adattagja pedig a kapacitása GB-ban mérve, ugyanúgy `Int` típusú értékként tárolva. A másik konstruktora az `SSD` legyen, ahol tároljuk a gyártóját és a kapacitását. Kérjük a fordítótól a `Show` típusosztály automatikus példányosítását. Más típusosztály automatikus példányosítását ne kérjük!

Kapacítás
---------

Írjunk egy függvényt, ami megadja egy háttértár kapacítását. `capacity :: Storage -> Int`

Tárhelyek listája
-----------------

Definiálj egy típusszinonimát a tárhelyek listájára! Legyen a neve: `StorageList`

Legnagyobbnál is nagyobbak
--------------------------

Adjuk meg azt a függvényt, ami egy háttértár listából visszaadja az összes olyan `HDD`\-t, aminek nagyobb a kapacítása, mint a legnagyobb kapacítású `SSD`\-nek. A feladat megoldásához érdemes segényfüggvényt használni.

U.I: A feladatot úgy oldjátok meg, hogy a `HDD`\-k sorrendje ne változzon a végeredményben!

`hugeHDDs :: StorageList -> StorageList`

### Tesztek:

    componentSum (V 4 6 7) == 17  
    componentSum  (V 0 0 0) == 0  
    componentSum  (V 1 1 1) == 3  
    componentSum  (V 1 (-3) 10) == 8  
    componentSum  (V 6 1 10) == 17  
    componentSum (V (-1) 45 (-55)) == (-11)  
    crossProduct (V 5 6 7) (V 3 4 5) == V 2 (-4) 2  
    crossProduct (V 1 2 3) (V 3 2 1) == V (-4) 8 (-4)  
    crossProduct (V 1 1 8) (V 0 2 1) == V (-15) (-1) 2  
    crossProduct (V 7 4 3) (V 8 3 1) == V (-5) 17 (-11)  
    vectorListSum [] == V 0 0 0  
    vectorListSum [V 1 2 3] == V 1 2 3  
    vectorListSum [V 1 1 1, V 0 0 0, V 2 2 3] == V 3 3 4  
    vectorListSum [V 0 2 4, V (-10) 4 2, V 0 0 0] == V (-10) 6 6  
    vectorListSum [V 0 0 0, V 0 0 0, V 0 0 0, V 0 0 0] == V 0 0 0  
    vectorListSum [V i (i*i) (i*i*i) | i <- [0..10]] == V 55 385 3025  
    capacity (HDD "Seagate" 5600 250) == 250  
    capacity (HDD "Verbatim" 7200 1000) == 1000  
    capacity (SSD "Samsung" 500) == 500  
    capacity (SSD "Samsung" 750) == 750  
    case hugeHDDs ([] :: StorageList) of [] -> True; _ -> False  
    case hugeHDDs ([HDD "Seagate" 5600 250, HDD "Verbatim" 7200 1000, SSD "Samsung" 500, SSD "Samsung" 750] :: StorageList) of [HDD "Verbatim" 7200 1000] -> True; _ -> False  
    case hugeHDDs ([HDD "Seagate" 5600 250, HDD "Verbatim" 7200 100, SSD "Samsung" 250, SSD "Samsung" 100] :: StorageList) of [] -> True; _ -> False  
    case hugeHDDs ([HDD "Seagate" 5600 1000, HDD "Verbatim" 7200 1500, SSD "Samsung" 250, SSD "Samsung" 500] :: StorageList) of [HDD "Seagate" 5600 1000,HDD "Verbatim" 7200 1500] -> True; _ -> False