# 1. Házi feladat

A megoldásotokat (a .hs file-t) csomagoljátok ZIP formátumba, más formátumot a TMS nem kedvel annyira.

A házi feladatot egy Homework1 nevű modulként kell beadni. Minden definiálandó függvényhez adjuk meg a hozzá tartozó típusszignatúrát is! A feladatok után a zárójelben lévő név azt jelzi, milyen néven kell definiálni az adott függvényt, kifejezést. A forrásfáljban ügyeljetek arra, hogy minden kifejezés rendelkezzen helyes típusszignatúrával!

## Kifejezések

Adjunk meg három különböző Int típusú kifejezést! (`intExpr1`, `intExpr2`, `intExpr3`)

Adjunk meg három különböző Bool típusú kifejezést! (`boolExpr1`, `boolExpr2`, `boolExpr3`)

## Malacok

Józsinak van **27 malaca és 4 disznóólja**. Adjunk meg egy-egy olyan kifejezést, amely megválaszolja a következő két kérdést, tudván hogy **egy ólba több malac is elfér**, és **minden ólban ugyanannyi malacnak kell lennie**. Segítség: használjuk a `div` és `mod` függvényeket. (A `div` függvény a `mod`-hoz hasonló, de az az osztás egész részét adja vissza.)

- El tudja e szállásolni az összes malacát Józsi? (`canFitAll`)
- Hány malac marad szállás nélkül? (`homelessPigs`)

## 21

Az órán definiált `inc` függvényhez hasonlóan írjuk meg a `double` és `triple` függvényeket, amelyek egy paraméterül kapott értéket megdupláznak, illetve megtripláznak. Kizárólag ezt a három függvényt és a 1-es értéket felhasználva, adjunk meg öt különböző kifejezést, amely a 21-et állítja elő! (`twentyone1`, `twentyone2`, `twentyone3`, `twentyone4`, `twentyone5`)

(Példa: a 25-et például így lehet előállítani: `inc (triple(double (double (double 1))))` Számokkal leírva: `(3*(2*(2*(2*1))))+1)`)

## Osztási maradék

Adjuk meg azt a függvényt, amely eldönti, hogy egy szám 7-tel osztva több maradékot ad-e, mint 11-tel osztva! (`cmpRem7Rem11`)

## Típusszignatúra

Adjunk meg a `foo` függvényt, amely a következő típusszignatúrával rendelkezik: `Bool -> Int -> Bool`!
Az előző függvény használatával adjuk meg azt a "legegyszerűbb" függvényt, amely a következő típusszignatúrával rendelkezik: `Int -> Bool -> Bool`! (`bar`)

_Tipp: A két típusszignatúrában a paraméterek típusa megegyezik, csak más a sorrend._
