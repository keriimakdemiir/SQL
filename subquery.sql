--A subquery is a query that appears inside another query statement. 
--Subqueries are also referred to as sub- SELECT s or nested SELECT s.

select * from Ogrenci where OgrenciNo in (select OgrenciNo from OgrenciAdres where Sehir = 35)