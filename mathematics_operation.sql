--avg

select avg(OgrenciNo) from Ogrenci

--count

select count(*) from Ogrenci
select count(Ad) from Ogrenci

select count(*) from Ogrenci where ErkekMi = 1

select count(*) from Ogrenci where DogumTarihi <= '1999-01-01'

--max

select max(OgrenciNo) from Ogrenci

--sum

select sum(FinalNotu) from Ogrenci