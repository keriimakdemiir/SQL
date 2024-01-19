--The ORDER BY keyword is used to sort the result-set in ascending or descending order.

select * from Ogrenci order by Ad

--ascending
select * from Ogrenci order by FinalNotu asc

--descending 
select * from Ogrenci order by OgrenciNo desc


select * from Ogrenci order by ErkekMi, Ad



--The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of customers in each country".

select ErkekMi, count(*) from Ogrenci group by ErkekMi

select ErkekMi, count(*) as OgrenciSayisi from Ogrenci group by ErkekMi

select ErkekMi, count(*) as OgrenciSayisi, avg(SinavNotu1) as SinavOrt from Ogrenci group by ErkekMi



select ErkekMi, count(*) as OgrenciSayisi, 
				avg(SinavNotu1) as Sinav1Ort,
				avg(SinavNotu2) as Sinav2Ort,
				avg(FinalNotu) as FinalOrt,
				max(OgrenciNo) as EnYuksek from Ogrenci group by ErkekMi

