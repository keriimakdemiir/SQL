--The SELECT statement is used to select data from a database.

select * from Ogrenci

select Ad, Soyad from Ogrenci


--The WHERE clause is used to filter records.

select * from Ogrenci where ErkekMi = 1

select * from Ogrenci where ad = 'Zeynep'

select OgrenciNo from Ogrenci where ad = 'Zeynep'

select * from Ogrenci where KayitTarihi <= '20230404'

select * from Ogrenci where DogumTarihi >= '19990130'