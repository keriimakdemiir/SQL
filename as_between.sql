--The AS command is used to rename a column or table with an alias.

select SinavNotu1, SinavNotu2, FinalNotu as Ortalama from Ogrenci

select OgrenciNo, Ad, Soyad, SinavNotu1, SinavNotu2, FinalNotu, 
(SinavNotu1+SinavNotu2+FinalNotu)/3 as Ortalama from Ogrenci



--The BETWEEN command is used to select values within a given range. The values can be numbers, text, or dates.

select * from Ogrenci where OgrenciNo between 400 and 800 and ErkekMi = 0

select * from Ogrenci where DogumTarihi between '1995-01-01' and '1999-01-01'