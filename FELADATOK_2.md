# SQL gyakorlófeladatok – Mozi

## Importálandó SQL script

**Fájlnév:** `01_mozi_alap.sql`

```sql
DROP DATABASE IF EXISTS mozi_gyakorlas;
CREATE DATABASE mozi_gyakorlas;

USE mozi_gyakorlas;

CREATE TABLE filmek (
    id INT PRIMARY KEY,
    cim VARCHAR(120) NOT NULL,
    mufaj VARCHAR(50) NOT NULL,
    megjelenes_eve INT NOT NULL,
    hossz_perc INT NOT NULL,
    korhatar INT NOT NULL,
    ertekeles DECIMAL(3,1) NOT NULL,
    jegyar INT NOT NULL,
    magyar_szinkron BOOLEAN NOT NULL,
    rendezo VARCHAR(100)
);

INSERT INTO filmek
(id, cim, mufaj, megjelenes_eve, hossz_perc, korhatar, ertekeles, jegyar, magyar_szinkron, rendezo)
VALUES
(1, 'Csillagkapu', 'Sci-fi', 1994, 121, 12, 7.1, 2200, 1, 'Roland Emmerich'),
(2, 'A nagy szökés', 'Háborús', 1963, 172, 12, 8.2, 1800, 0, 'John Sturges'),
(3, 'Éjszakai járat', 'Thriller', 2005, 85, 16, 6.5, 2100, 1, 'Wes Craven'),
(4, 'Interstellar', 'Sci-fi', 2014, 169, 12, 8.7, 2900, 1, 'Christopher Nolan'),
(5, 'Whiplash', 'Dráma', 2014, 106, 16, 8.5, 2500, 0, 'Damien Chazelle'),
(6, 'Paddington', 'Családi', 2014, 95, 6, 7.3, 1900, 1, 'Paul King'),
(7, 'Dűne', 'Sci-fi', 2021, 155, 12, 8.0, 3200, 1, 'Denis Villeneuve'),
(8, 'A számolás joga', 'Dráma', 2016, 127, 12, 7.8, 2300, 1, 'Theodore Melfi'),
(9, '1917', 'Háborús', 2019, 119, 16, 8.2, 2700, 1, 'Sam Mendes'),
(10, 'Coco', 'Animáció', 2017, 105, 6, 8.4, 2000, 1, NULL),
(11, 'Tőrbe ejtve', 'Krimi', 2019, 130, 12, 7.9, 2600, 1, 'Rian Johnson'),
(12, 'A néma tanú', 'Krimi', 2008, 112, 16, 6.9, 1900, 0, NULL);
```

> **Megjegyzés:** ahol a feladat nem határoz meg rendezést, ott az eredmény sorainak sorrendje eltérhet. A megjelenített adatoknak azonban meg kell egyezniük.

---

# 4. Alap SQL-lekérdezések

## 4.1.

Jelenítsd meg az adatbázisban található filmek:

* címét,
* műfaját,
* értékelését!

### Várható kimenet

| cim             | mufaj    | ertekeles |
| --------------- | -------- | --------: |
| Csillagkapu     | Sci-fi   |       7.1 |
| A nagy szökés   | Háborús  |       8.2 |
| Éjszakai járat  | Thriller |       6.5 |
| Interstellar    | Sci-fi   |       8.7 |
| Whiplash        | Dráma    |       8.5 |
| Paddington      | Családi  |       7.3 |
| Dűne            | Sci-fi   |       8.0 |
| A számolás joga | Dráma    |       7.8 |
| 1917            | Háborús  |       8.2 |
| Coco            | Animáció |       8.4 |
| Tőrbe ejtve     | Krimi    |       7.9 |
| A néma tanú     | Krimi    |       6.9 |

---

## 4.2.

Készíts listát, amelyből kiderül minden film:

* azonosítója,
* címe,
* megjelenési éve,
* hossza!

### Várható kimenet

| id | cim             | megjelenes_eve | hossz_perc |
| -: | --------------- | -------------: | ---------: |
|  1 | Csillagkapu     |           1994 |        121 |
|  2 | A nagy szökés   |           1963 |        172 |
|  3 | Éjszakai járat  |           2005 |         85 |
|  4 | Interstellar    |           2014 |        169 |
|  5 | Whiplash        |           2014 |        106 |
|  6 | Paddington      |           2014 |         95 |
|  7 | Dűne            |           2021 |        155 |
|  8 | A számolás joga |           2016 |        127 |
|  9 | 1917            |           2019 |        119 |
| 10 | Coco            |           2017 |        105 |
| 11 | Tőrbe ejtve     |           2019 |        130 |
| 12 | A néma tanú     |           2008 |        112 |

---

## 4.3.

Egy moziműsor összeállításához jelenítsd meg a filmek:

* címét,
* korhatár-besorolását,
* jegyárát!

### Várható kimenet

| cim             | korhatar | jegyar |
| --------------- | -------: | -----: |
| Csillagkapu     |       12 |   2200 |
| A nagy szökés   |       12 |   1800 |
| Éjszakai járat  |       16 |   2100 |
| Interstellar    |       12 |   2900 |
| Whiplash        |       16 |   2500 |
| Paddington      |        6 |   1900 |
| Dűne            |       12 |   3200 |
| A számolás joga |       12 |   2300 |
| 1917            |       16 |   2700 |
| Coco            |        6 |   2000 |
| Tőrbe ejtve     |       12 |   2600 |
| A néma tanú     |       16 |   1900 |

---

## 4.4.

Jelenítsd meg minden film címét és rendezőjét!

### Várható kimenet

| cim             | rendezo           |
| --------------- | ----------------- |
| Csillagkapu     | Roland Emmerich   |
| A nagy szökés   | John Sturges      |
| Éjszakai járat  | Wes Craven        |
| Interstellar    | Christopher Nolan |
| Whiplash        | Damien Chazelle   |
| Paddington      | Paul King         |
| Dűne            | Denis Villeneuve  |
| A számolás joga | Theodore Melfi    |
| 1917            | Sam Mendes        |
| Coco            | NULL              |
| Tőrbe ejtve     | Rian Johnson      |
| A néma tanú     | NULL              |

---

## 4.5.

Készíts teljes filmkatalógust a `filmek` tábla minden adatának megjelenítésével!

### Várható kimenet

| id | cim             | mufaj    | megjelenes_eve | hossz_perc | korhatar | ertekeles | jegyar | magyar_szinkron | rendezo           |
| -: | --------------- | -------- | -------------: | ---------: | -------: | --------: | -----: | --------------: | ----------------- |
|  1 | Csillagkapu     | Sci-fi   |           1994 |        121 |       12 |       7.1 |   2200 |               1 | Roland Emmerich   |
|  2 | A nagy szökés   | Háborús  |           1963 |        172 |       12 |       8.2 |   1800 |               0 | John Sturges      |
|  3 | Éjszakai járat  | Thriller |           2005 |         85 |       16 |       6.5 |   2100 |               1 | Wes Craven        |
|  4 | Interstellar    | Sci-fi   |           2014 |        169 |       12 |       8.7 |   2900 |               1 | Christopher Nolan |
|  5 | Whiplash        | Dráma    |           2014 |        106 |       16 |       8.5 |   2500 |               0 | Damien Chazelle   |
|  6 | Paddington      | Családi  |           2014 |         95 |        6 |       7.3 |   1900 |               1 | Paul King         |
|  7 | Dűne            | Sci-fi   |           2021 |        155 |       12 |       8.0 |   3200 |               1 | Denis Villeneuve  |
|  8 | A számolás joga | Dráma    |           2016 |        127 |       12 |       7.8 |   2300 |               1 | Theodore Melfi    |
|  9 | 1917            | Háborús  |           2019 |        119 |       16 |       8.2 |   2700 |               1 | Sam Mendes        |
| 10 | Coco            | Animáció |           2017 |        105 |        6 |       8.4 |   2000 |               1 | NULL              |
| 11 | Tőrbe ejtve     | Krimi    |           2019 |        130 |       12 |       7.9 |   2600 |               1 | Rian Johnson      |
| 12 | A néma tanú     | Krimi    |           2008 |        112 |       16 |       6.9 |   1900 |               0 | NULL              |

---

# 5. Szűrés és rendezés

## 5.1.

Listázd ki azokat a filmeket, amelyek **2015 után** jelentek meg!

Jelenjen meg:

* cím,
* megjelenési év.

A legújabb film kerüljön előre!

### Várható kimenet

| cim             | megjelenes_eve |
| --------------- | -------------: |
| Dűne            |           2021 |
| 1917            |           2019 |
| Tőrbe ejtve     |           2019 |
| Coco            |           2017 |
| A számolás joga |           2016 |

---

## 5.2.

Keress olyan filmeket, amelyek hossza **120 percnél rövidebb**!

Jelenítsd meg:

* cím,
* hossz.

A legrövidebb filmmel kezdődjön a lista!

### Várható kimenet

| cim            | hossz_perc |
| -------------- | ---------: |
| Éjszakai járat |         85 |
| Paddington     |         95 |
| Coco           |        105 |
| Whiplash       |        106 |
| A néma tanú    |        112 |
| 1917           |        119 |

---

## 5.3.

Határozd meg, milyen különböző műfajú filmek szerepelnek az adatbázisban!

Egy műfaj csak egyszer jelenjen meg.

### Várható kimenet

| mufaj    |
| -------- |
| Sci-fi   |
| Háborús  |
| Thriller |
| Dráma    |
| Családi  |
| Animáció |
| Krimi    |

---

## 5.4.

Listázd ki a filmeket jegyár szerint növekvő sorrendben!

Jelenjen meg:

* cím,
* jegyár.

### Várható kimenet

| cim             | jegyar |
| --------------- | -----: |
| A nagy szökés   |   1800 |
| Paddington      |   1900 |
| A néma tanú     |   1900 |
| Coco            |   2000 |
| Éjszakai járat  |   2100 |
| Csillagkapu     |   2200 |
| A számolás joga |   2300 |
| Whiplash        |   2500 |
| Tőrbe ejtve     |   2600 |
| 1917            |   2700 |
| Interstellar    |   2900 |
| Dűne            |   3200 |

---

## 5.5.

Listázd ki azokat a filmeket, amelyek értékelése **7,5 és 8,5 közötti**, a két határértéket is beleértve!

Jelenítsd meg:

* címet,
* műfajt,
* értékelést.

Az eredményt értékelés szerint csökkenő sorrendben jelenítsd meg!

### Várható kimenet

| cim             | mufaj    | ertekeles |
| --------------- | -------- | --------: |
| Whiplash        | Dráma    |       8.5 |
| Coco            | Animáció |       8.4 |
| A nagy szökés   | Háborús  |       8.2 |
| 1917            | Háborús  |       8.2 |
| Dűne            | Sci-fi   |       8.0 |
| Tőrbe ejtve     | Krimi    |       7.9 |
| A számolás joga | Dráma    |       7.8 |

---

# 6. Logikai operátorok és összetettebb szűrések

## 6.1.

Listázd ki azokat a filmeket, amelyek:

* `Sci-fi` vagy `Dráma` műfajúak,
* és legalább `7.5` az értékelésük!

Jelenjen meg:

* cím,
* műfaj,
* értékelés.

### Várható kimenet

| cim             | mufaj  | ertekeles |
| --------------- | ------ | --------: |
| Interstellar    | Sci-fi |       8.7 |
| Whiplash        | Dráma  |       8.5 |
| Dűne            | Sci-fi |       8.0 |
| A számolás joga | Dráma  |       7.8 |

---

## 6.2.

Keress olyan filmeket, amelyek korhatára **nem 16 év**!

Jelenítsd meg:

* címet,
* korhatárt.

A korhatár szerint növekvő sorrendben rendezd az eredményt!

### Várható kimenet

| cim             | korhatar |
| --------------- | -------: |
| Paddington      |        6 |
| Coco            |        6 |
| Csillagkapu     |       12 |
| A nagy szökés   |       12 |
| Interstellar    |       12 |
| Dűne            |       12 |
| A számolás joga |       12 |
| Tőrbe ejtve     |       12 |

---

## 6.3.

Listázd ki azokat a filmeket, amelyek `2010` és `2020` között jelentek meg!

Jelenjen meg:

* cím,
* megjelenési év.

### Várható kimenet

| cim             | megjelenes_eve |
| --------------- | -------------: |
| Interstellar    |           2014 |
| Whiplash        |           2014 |
| Paddington      |           2014 |
| A számolás joga |           2016 |
| Coco            |           2017 |
| 1917            |           2019 |
| Tőrbe ejtve     |           2019 |

---

## 6.4.

Keress olyan filmeket, amelyek címe tartalmazza az `a` betűt!

Jelenítsd meg:

* címet,
* műfajt.

### Várható kimenet

| cim             | mufaj    |
| --------------- | -------- |
| Csillagkapu     | Sci-fi   |
| A nagy szökés   | Háborús  |
| Éjszakai járat  | Thriller |
| Interstellar    | Sci-fi   |
| Whiplash        | Dráma    |
| Paddington      | Családi  |
| A számolás joga | Dráma    |
| A néma tanú     | Krimi    |

---

## 6.5.

A mozi kedvezményes vetítést szervez.

Listázd ki azokat a filmeket, amelyek:

* jegyára legfeljebb `2500 Ft`,
* magyar szinkronnal rendelkeznek,
* és korhatáruk legfeljebb `12 év`.

Jelenjen meg:

* cím,
* korhatár,
* jegyár,
* értékelés.

A legjobb értékelésű film kerüljön előre!

### Várható kimenet

| cim             | korhatar | jegyar | ertekeles |
| --------------- | -------: | -----: | --------: |
| Coco            |        6 |   2000 |       8.4 |
| A számolás joga |       12 |   2300 |       7.8 |
| Paddington      |        6 |   1900 |       7.3 |
| Csillagkapu     |       12 |   2200 |       7.1 |

---

# 7. Hiányzó adatok és adatmódosítás

## Importálandó SQL script

A feladatok megkezdése előtt importáld újra:

`01_mozi_alap.sql`

A **7.2–7.5. feladatokat egymás után**, ugyanazon az adatbázison hajtsd végre!

---

## 7.1.

Keress olyan filmeket, amelyekhez nincs rendező megadva!

Jelenjen meg:

* azonosító,
* cím,
* rendező.

### Várható kimenet

| id | cim         | rendezo |
| -: | ----------- | ------- |
| 10 | Coco        | NULL    |
| 12 | A néma tanú | NULL    |

---

## 7.2.

Új film érkezett a mozi kínálatába.

Vedd fel az alábbi adatokat:

* azonosító: `13`
* cím: `Mars-expedíció`
* műfaj: `Sci-fi`
* megjelenési év: `2026`
* hossz: `138` perc
* korhatár: `12`
* értékelés: `7.6`
* jegyár: `3100 Ft`
* magyar szinkron: nincs
* rendező: nincs megadva

A beszúrás után jelenítsd meg az új film teljes rekordját!

### Várható kimenet

| id | cim            | mufaj  | megjelenes_eve | hossz_perc | korhatar | ertekeles | jegyar | magyar_szinkron | rendezo |
| -: | -------------- | ------ | -------------: | ---------: | -------: | --------: | -----: | --------------: | ------- |
| 13 | Mars-expedíció | Sci-fi |           2026 |        138 |       12 |       7.6 |   3100 |               0 | NULL    |

---

## 7.3.

Kiderült, hogy a `Mars-expedíció` rendezője:

`Nagy Viktor`

Módosítsd a megfelelő rekordot!

Ezután jelenítsd meg:

* a film címét,
* rendezőjét.

### Várható kimenet

| cim            | rendezo     |
| -------------- | ----------- |
| Mars-expedíció | Nagy Viktor |

---

## 7.4.

A film értékelése időközben `8.1` lett, és elkészült hozzá a magyar szinkron is.

A két adatot **egyetlen SQL utasítással** módosítsd!

Ezután jelenítsd meg:

* címet,
* értékelést,
* magyar szinkron státuszát.

### Várható kimenet

| cim            | ertekeles | magyar_szinkron |
| -------------- | --------: | --------------: |
| Mars-expedíció |       8.1 |               1 |

---

## 7.5.

A mozi végül levette a `Mars-expedíció` című filmet a kínálatból.

Töröld a rekordját!

Ezután SQL-lekérdezéssel ellenőrizd, hogy található-e még ilyen című film az adatbázisban!

### Várható kimenet

```text
0 sor
```

A `Mars-expedíció` című film már nem található a táblában.

---

# 8. Lekérdezések korlátozása

## Importálandó SQL script

Importáld újra:

`01_mozi_alap.sql`

---

## 8.1.

Jelenítsd meg a **négy legújabb filmet**!

Jelenjen meg:

* cím,
* megjelenési év.

### Várható kimenet

| cim         | megjelenes_eve |
| ----------- | -------------: |
| Dűne        |           2021 |
| 1917        |           2019 |
| Tőrbe ejtve |           2019 |
| Coco        |           2017 |

---

## 8.2.

Jelenítsd meg a **három legdrágább jegyárú filmet**!

Jelenjen meg:

* cím,
* jegyár.

### Várható kimenet

| cim          | jegyar |
| ------------ | -----: |
| Dűne         |   3200 |
| Interstellar |   2900 |
| 1917         |   2700 |

---

## 8.3.

Keresd meg a **két legrövidebb olyan filmet**, amelynek korhatára legfeljebb 12 év!

Jelenjen meg:

* cím,
* hossz,
* korhatár.

### Várható kimenet

| cim        | hossz_perc | korhatar |
| ---------- | ---------: | -------: |
| Paddington |         95 |        6 |
| Coco       |        105 |        6 |

---

## 8.4.

Jelenítsd meg a **három legjobb értékelésű, magyar szinkronnal rendelkező filmet**!

Jelenjen meg:

* cím,
* értékelés.

### Várható kimenet

| cim          | ertekeles |
| ------------ | --------: |
| Interstellar |       8.7 |
| Coco         |       8.4 |
| 1917         |       8.2 |

---

## 8.5.

A `Sci-fi`, `Dráma` és `Krimi` műfajú filmek közül jelenítsd meg a **négy legolcsóbbat**!

Jelenítsd meg:

* címet,
* műfajt,
* jegyárat.

### Várható kimenet

| cim             | mufaj  | jegyar |
| --------------- | ------ | -----: |
| A néma tanú     | Krimi  |   1900 |
| Csillagkapu     | Sci-fi |   2200 |
| A számolás joga | Dráma  |   2300 |
| Whiplash        | Dráma  |   2500 |

---

# 9. Összesítő függvények

## 9.1.

Határozd meg, hány film rendelkezik magyar szinkronnal!

### Várható kimenet

| filmek_szama |
| -----------: |
|            9 |

---

## 9.2.

Határozd meg a filmek átlagos hosszát percben!

### Várható kimenet

| atlagos_hossz |
| ------------: |
|      124.6667 |

---

## 9.3.

Határozd meg a legdrágább jegy árát!

### Várható kimenet

| legdragabb_jegyar |
| ----------------: |
|              3200 |

---

## 9.4.

Határozd meg a `Sci-fi` műfajú filmek átlagos értékelését!

### Várható kimenet

| atlagos_ertekeles |
| ----------------: |
|            7.9333 |

---

## 9.5.

Határozd meg, összesen mennyibe kerülne egy-egy jegyet vásárolni az összes `12` éves korhatárú filmre!

### Várható kimenet

| osszes_jegyar |
| ------------: |
|         15000 |

---

# 10. Összetett lekérdezések

## 10.1.

A mozi egy rövidebb esti programot szeretne összeállítani.

Jelenítsd meg azt a **három legjobb értékelésű filmet**, amelyek:

* legfeljebb `130` percesek,
* legalább `7.0` értékelésűek.

Jelenjen meg:

* cím,
* hossz,
* értékelés.

### Várható kimenet

| cim      | hossz_perc | ertekeles |
| -------- | ---------: | --------: |
| Whiplash |        106 |       8.5 |
| Coco     |        105 |       8.4 |
| 1917     |        119 |       8.2 |

---

## 10.2.

A családi hétvégére olyan filmeket keresnek, amelyek:

* korhatára legfeljebb `12`,
* magyar szinkronnal rendelkeznek,
* jegyáruk nem több `2500 Ft`-nál.

A megfelelő filmeket:

1. először értékelés szerint csökkenő,
2. azonos értékelés esetén jegyár szerint növekvő

sorrendben jelenítsd meg!

Jelenjen meg:

* cím,
* korhatár,
* értékelés,
* jegyár.

### Várható kimenet

| cim             | korhatar | ertekeles | jegyar |
| --------------- | -------: | --------: | -----: |
| Coco            |        6 |       8.4 |   2000 |
| A számolás joga |       12 |       7.8 |   2300 |
| Paddington      |        6 |       7.3 |   1900 |
| Csillagkapu     |       12 |       7.1 |   2200 |

---

## 10.3.

Határozd meg, hány olyan film van, amely:

* `2014` után jelent meg,
* legalább `120` perces,
* és legalább `7.5` értékelésű!

### Várható kimenet

| filmek_szama |
| -----------: |
|            3 |

---

## 10.4.

Határozd meg azoknak a filmeknek az **átlagos jegyárát**, amelyek:

* `Sci-fi`, `Dráma` vagy `Krimi` műfajúak,
* és legalább `7.5` értékelést kaptak!

### Várható kimenet

| atlagos_jegyar |
| -------------: |
|      2700.0000 |

---

## 10.5.

A mozi két filmet szeretne kiválasztani egy **Prémium Filmest** programhoz.

A film akkor kerülhet be, ha:

* legalább `7.8` az értékelése,
* `2010` után jelent meg,
* hossza legfeljebb `160` perc,
* nem `16` éves korhatárú,
* és van hozzá magyar szinkron.

A feltételeknek megfelelő filmek közül válaszd ki a **két legjobb értékelésűt**!

Ha két film értékelése azonos, akkor az **olcsóbb jegyárú** kerüljön előrébb.

Az eredmény tartalmazza:

* cím,
* műfaj,
* megjelenési év,
* hossz,
* értékelés,
* jegyár.

### Várható kimenet

| cim  | mufaj    | megjelenes_eve | hossz_perc | ertekeles | jegyar |
| ---- | -------- | -------------: | ---------: | --------: | -----: |
| Coco | Animáció |           2017 |        105 |       8.4 |   2000 |
| Dűne | Sci-fi   |           2021 |        155 |       8.0 |   3200 |
