# SQL gyakorlófeladatok – Diákverzió

## Importálandó SQL script

**Fájlnév:** `00_tanulok_alap.sql`

```sql
DROP DATABASE IF EXISTS sql_gyakorlas;
CREATE DATABASE sql_gyakorlas;

USE sql_gyakorlas;

CREATE TABLE tanulok (
    id INT PRIMARY KEY,
    nev VARCHAR(100) NOT NULL,
    osztaly VARCHAR(10) NOT NULL,
    eletkor INT NOT NULL,
    varos VARCHAR(50) NOT NULL,
    atlag DECIMAL(3,1) NOT NULL,
    hianyzas INT NOT NULL,
    osztondijas BOOLEAN NOT NULL,
    email VARCHAR(120)
);

INSERT INTO tanulok
(id, nev, osztaly, eletkor, varos, atlag, hianyzas, osztondijas, email)
VALUES
(1, 'Kiss Anna', '10.A', 16, 'Budapest', 4.7, 4, 1, 'anna@iskola.hu'),
(2, 'Nagy Péter', '10.B', 17, 'Érd', 3.9, 12, 0, NULL),
(3, 'Tóth Réka', '10.A', 16, 'Budapest', 4.4, 6, 1, 'reka@iskola.hu'),
(4, 'Szabó Márk', '11.A', 17, 'Szentendre', 3.2, 18, 0, 'mark@iskola.hu'),
(5, 'Varga Lili', '11.B', 18, 'Budapest', 4.9, 2, 1, NULL),
(6, 'Farkas Bence', '10.B', 16, 'Dunakeszi', 2.8, 25, 0, 'bence@iskola.hu'),
(7, 'Molnár Zsófi', '11.A', 18, 'Érd', 4.1, 8, 1, 'zsofi@iskola.hu'),
(8, 'Horváth Dávid', '11.B', 17, 'Budapest', 3.6, 14, 0, NULL);
```

# 4. Alap SQL-lekérdezések

### 4.1.
Listázd ki a `tanulok` tábla összes adatát!

### 4.2.
Listázd ki a tanulók nevét!

### 4.3.
Jelenítsd meg minden tanuló nevét és osztályát!

### 4.4.
Listázd ki a tanulók nevét, tanulmányi átlagát és hiányzásainak számát!

### 4.5.
Egy kapcsolattartási listához jelenítsd meg a tanulók azonosítóját, nevét, városát és e-mail-címét!

---

# 5. Szűrés és rendezés

### 5.1.
Listázd ki a 10.A osztály tanulóinak nevét!

### 5.2.
Listázd ki azokat a tanulókat, akiknek a tanulmányi átlaga legalább 4,0!

### 5.3.
Listázd ki, hogy mely településeken laknak a tanulók! Egy település csak egyszer jelenjen meg az eredményben!

### 5.4.
Listázd ki a tanulók nevét és átlagát átlag szerint csökkenő sorrendben!

### 5.5.
Listázd ki a budapesti tanulók nevét és átlagát! Az eredményt átlag szerint csökkenő sorrendben jelenítsd meg!

---

# 6. Logikai operátorok

### 6.1.
Listázd ki azokat a tanulókat, akik legalább 17 évesek és legalább 4,0 a tanulmányi átlaguk!

Jelenítsd meg a nevüket, életkorukat és átlagukat!

Az eredményt átlag szerint csökkenő sorrendben rendezd!

### 6.2.
Listázd ki a Budapesten vagy Érden lakó tanulókat!

Jelenítsd meg a nevüket és a városukat!

### 6.3.
Listázd ki azokat a tanulókat, akik nem a 10.A osztályba járnak!

Jelenítsd meg a nevüket és osztályukat!

### 6.4.
Listázd ki a 10.A vagy 10.B osztályba járó tanulók közül azokat, akiknek legalább 3,5 a tanulmányi átlaguk!

Jelenítsd meg a nevüket, osztályukat és átlagukat!

Az eredményt átlag szerint csökkenő sorrendben jelenítsd meg!

### 6.5.
Listázd ki azokat a tanulókat, akik:

- Budapesten vagy Érden laknak,
- legalább 4,0 a tanulmányi átlaguk,
- és nem a 11.B osztályba járnak.

Jelenítsd meg a nevüket, városukat, osztályukat és átlagukat!

Az eredményt átlag szerint csökkenő sorrendben rendezd!

---

# 7. Hiányzó adatok és adatmódosítás

## Importálandó SQL script

A feladatok elkezdése előtt importáld újra a:

`00_tanulok_alap.sql`

scriptet.

A **7.2–7.5. feladatokat egymás után**, ugyanazon az adatbázison hajtsd végre!

### 7.1.
Listázd ki azokat a tanulókat, akikhez nincs e-mail-cím megadva!

Jelenítsd meg az azonosítójukat, nevüket és e-mail-címüket!

### 7.2.
Vedd fel az adatbázisba az alábbi új tanulót:

- azonosító: `9`
- név: `Kovács Emma`
- osztály: `10.A`
- életkor: `16`
- város: `Budapest`
- tanulmányi átlag: `4.0`
- hiányzások száma: `3`
- nem ösztöndíjas
- e-mail-címe nincs megadva

A beszúrás után kérdezd le Kovács Emma teljes rekordját!

### 7.3.
Kovács Emma e-mail-címe elkészült:

`emma@iskola.hu`

Módosítsd az adatbázisban az e-mail-címét!

Ezután kérdezd le az azonosítóját, nevét és e-mail-címét!

### 7.4.
Kovács Emma tanulmányi átlaga `4.5`-re javult, és ösztöndíjas lett.

Módosítsd mindkét adatát **egyetlen SQL utasítással**!

Ezután jelenítsd meg a nevét, átlagát és ösztöndíjas státuszát!

### 7.5.
Kovács Emma elkerült az iskolából.

Töröld a rekordját az adatbázisból!

Ezután határozd meg, hány tanuló maradt a `tanulok` táblában!

---

# 8. Lekérdezések korlátozása

## Importálandó SQL script

Importáld újra:

`00_tanulok_alap.sql`

### 8.1.
Jelenítsd meg az első három tanulót azonosító szerint!

Csak az azonosítójuk és nevük jelenjen meg!

### 8.2.
Jelenítsd meg a három legjobb tanulmányi átlaggal rendelkező tanulót!

A név és az átlag jelenjen meg!

### 8.3.
Jelenítsd meg a két legkevesebbet hiányzó tanulót!

A név és a hiányzások száma jelenjen meg!

### 8.4.
Jelenítsd meg a három legjobb tanulmányi átlaggal rendelkező budapesti tanulót!

A név és az átlag jelenjen meg!

### 8.5.
A 11.A és 11.B osztály tanulói közül jelenítsd meg a két legjobb tanulmányi átlaggal rendelkező tanulót!

Jelenítsd meg:

- a nevüket,
- az osztályukat,
- a tanulmányi átlagukat.

---

# 9. Összesítő függvények

### 9.1.
Határozd meg, hány tanuló található a `tanulok` táblában!

### 9.2.
Határozd meg a legkisebb hiányzásszámot!

### 9.3.
Határozd meg az adatbázisban szereplő legjobb tanulmányi átlagot!

### 9.4.
Határozd meg, hogy a tanulóknak összesen hány hiányzásuk van!

### 9.5.
Határozd meg a Budapesten lakó tanulók tanulmányi átlagainak átlagát!

---

# 10. Összetett lekérdezések

### 10.1.
Jelenítsd meg a legalább 4,0 tanulmányi átlaggal rendelkező tanulók közül a három legjobb eredményű tanulót!

Jelenítsd meg:

- a nevüket,
- a tanulmányi átlagukat.

### 10.2.
Jelenítsd meg a három legjobb tanulmányi átlaggal rendelkező tanulót azok közül, akik:

- legalább 17 évesek,
- és Budapesten vagy Érden laknak.

Jelenítsd meg:

- a nevüket,
- életkorukat,
- városukat,
- tanulmányi átlagukat.

### 10.3.
Határozd meg, hány olyan tanuló van, aki:

- nem ösztöndíjas,
- és 10-nél több hiányzása van!

### 10.4.
Határozd meg azoknak a 10.A osztályos tanulóknak az átlagos tanulmányi eredményét, akiknek legfeljebb 6 hiányzásuk van!

### 10.5.
Az iskola két tanulót szeretne kiválasztani egy tanulmányi programra.

A kiválasztás feltételei:

- Budapesten vagy Érden lakjon,
- legalább 4,0 legyen a tanulmányi átlaga,
- legfeljebb 8 hiányzása legyen,
- ne a 11.B osztályba járjon.

A feltételeknek megfelelő tanulók közül jelenítsd meg a **két legjobb tanulmányi átlaggal rendelkező tanulót**!

Az eredményben szerepeljen:

- név,
- város,
- osztály,
- tanulmányi átlag,
- hiányzások száma.
