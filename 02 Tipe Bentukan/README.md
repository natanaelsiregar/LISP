## Tipe Bentukan
* [Tipe bentukan point](/Tipe%20Bentukan/)

Function:
```
    - isOnSbY(P): melakukan pengecekan apakah titik P berada pada sumbu Y.
    - isEqual(P1, P2): melakukan pengecekan apakah titik P1 sama dengan titik P2.
    - translasiSbY(P,N): mengembalikan sebuah titik hasil translasi titik P, searah sumbu Y, sejauh N.
    - jarak(P1, P2): mengembalikan sebuah nilai real, merupakan jarak antara titik P1 dan P2.
```
<br ><br >
* [Tipe bentukan pecahan](/02%20Tipe%20Bentukan/pecahan.lisp)
1. Konstruktor:
```
    makeP(a, b), untuk membentuk pecahan dari dua buah bilangan bulat.
```
2. Selektor:
```
    (a) pemb(P), untuk mengembalikan nilai pembilang (a) dari pecahan P.
    (b) peny(P), untuk mengembalikan nilai penyebut (b) dari pecahan P.
```
3. Operator terhadap pecahan:
```
    (a) addP(P1, P2), untuk menambahkan dua pecahan, (P1 + P2).
    (b) subP(P1, P2), untuk mengurangkan dua pecahan, (P1−P2).
    (c) mulP(P1, P2), untuk mengalikan dua pecahan, (P1* P2).
    (d) divP(P1, P2), untuk mengalikan dua pecahan, (P1/P2).
```
4. Predikat (operator relasional pecahan):
```
    (a) isEqP(P1, P2), untuk membandingkan, apakah kedua pecahan sama nilainya.
    (b) isLtP(P1, P2), untuk membandingkan, apakah P1 lebih kecil dari P2.
```
<br ><br >
* [Tipe bentukan date](/02%20Tipe%20Bentukan/date.lisp)
1. Konstruktor: 
```
    makeDate(DD,MM,YY), untuk membentuk DATE, dari hari DD, bulan MM, dan tahun YY.
```
2. Selektor:
```
    (a) Day(D), untuk mengembalikan nilai hari (DD) dari DATE D.
    (b) Month(D), untuk mengembalikan nilai bulan (MM) dari DATE D.
    (c) Year(D), untuk mengembalikan nilai tahun (YY) dari DATE D.
```
3. Operator terhadap DATE:
```
    (a) nextDay(D), untuk menentukan tanggal berikutnya dari D. Harus diperhatikan jumlah hari pada setiap bulan 
    dan juga memperhatikan tahun kabisat. contoh test case yang harus diuji adalah:
    (b) yesterday(D), untuk menentukan tanggal sebelumnya dari D.
```
4. Predikat (operator relasional DATE):
```
    (a) isEqD(D1, D2), untuk membandingkan, apakah kedua DATE sama.
    (b) isBefore(D1, D2), mengembalikan nilai TRUE jika D1 adalah sebelum D2.
```
| Input (dd mm yy) | Output (dd mm yy) | Keterangan |
| :---: | :---: | :---: | 
| 21 4 2006 | 21 4 2006 | penambahan biasa |
| 15 2 2016 | 16 2 2016 | penambahan biasa |
| 15 2 2016 | 29 2 2016 | tahun kabisat |
| 28 2 2015 | 1 2 2015 | bukan tahun kabisat |
| 28 2 2015 | 1 1 2016 | akhir tahun |
| 31 1 2016 | 1 2 2016 | bulan dengan 31 hari |
| 30 11 2016 | 1 12 2016 | bulan dengan 30 hari |
