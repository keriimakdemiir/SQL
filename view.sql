--In SQL, a view is a virtual table based on the result-set of an SQL statement.

alter view Ogrenciview1
as
select * from Ogrenci where ErkekMi = 1


create view Ogrenciview1
as
select * from Ogrenci


create view Ogrenciview2
as
select OgrenciNo, Ad, Soyad, ErkekMi from Ogrenci



select * from Ogrenciview1