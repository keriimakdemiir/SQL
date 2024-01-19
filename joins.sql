--The FULL OUTER JOIN keyword returns all records when there is a match in left (table1) or right (table2) table records.

select A.OgrenciNo, A.Ad, A.Soyad, A.KayitTarihi, B.AdresDetay, B.Sehir from Ogrenci A
		full join OgrenciAdres B
		on A.OgrenciNo = B.OgrenciNo


select A.OgrenciNo, A.Ad, A.Soyad, A.KayitTarihi, B.AdresDetay, B.Sehir from Ogrenci A
		full join OgrenciAdres B
		on A.OgrenciNo = B.OgrenciNo
		where A.OgrenciNo is null
		or B.OgrenciNo is null


--The INNER JOIN keyword selects records that have matching values in both tables.

select * from Ogrenci A 
	inner join OgrenciAdres B
	on A.OgrenciNo = B.OgrenciNo

select A.OgrenciNo, A.Ad, A.Soyad, A.KayitTarihi, B.AdresDetay, B.Sehir from Ogrenci A
		inner join OgrenciAdres B
		on A.OgrenciNo = B.OgrenciNo


select A.OgrenciNo, A.Ad, A.Soyad, B.MiktarTL from Ogrenci A
		inner join KantinKayitlari B
		on A.OgrenciNo = B.OgrenciNo


--with group by

select A.OgrenciNo, A.Ad, A.Soyad, B.MiktarTL from Ogrenci A
		inner join KantinKayitlari B
		on A.OgrenciNo = B.OgrenciNo
		group by A.OgrenciNo, A.Ad, A.Soyad, B.MiktarTL

--with order by

select A.OgrenciNo, A.Ad, A.Soyad, B.MiktarTL from Ogrenci A
		inner join KantinKayitlari B
		on A.OgrenciNo = B.OgrenciNo
		group by A.OgrenciNo, A.Ad, A.Soyad, B.MiktarTL
		order by OgrenciNo


--The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2). The result is 0 records from the right side, if there is no match.


select A.OgrenciNo, A.Ad, A.Soyad, A.KayitTarihi, B.AdresDetay, B.Sehir from Ogrenci A
		left join OgrenciAdres B
		on A.OgrenciNo = B.OgrenciNo


select A.OgrenciNo, A.Ad, A.Soyad, A.KayitTarihi, B.AdresDetay, B.Sehir from Ogrenci A
		left join OgrenciAdres B
		on A.OgrenciNo = B.OgrenciNo
		where B.OgrenciNo is null


select A.OgrenciNo, A.Ad, A.Soyad, sum(B.MiktarTL) from Ogrenci A
		left join KantinKayitlari B
		on A.OgrenciNo = B.OgrenciNo
		group by A.OgrenciNo, A.Ad, A.Soyad
		order by OgrenciNo

--The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left table (table1). The result is 0 records from the left side, if there is no match.

select A.OgrenciNo, A.Ad, A.Soyad, A.KayitTarihi, B.AdresDetay, B.Sehir from Ogrenci A
		right join OgrenciAdres B
		on A.OgrenciNo = B.OgrenciNo

select A.OgrenciNo, A.Ad, A.Soyad, A.KayitTarihi, B.AdresDetay, B.Sehir from Ogrenci A
		right join OgrenciAdres B
		on A.OgrenciNo = B.OgrenciNo
		where A.OgrenciNo is null

select A.OgrenciNo, A.Ad, A.Soyad, sum(B.MiktarTL) from Ogrenci A
		right join KantinKayitlari B
		on A.OgrenciNo = B.OgrenciNo
		group by A.OgrenciNo, A.Ad, A.Soyad
		order by OgrenciNo