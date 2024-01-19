--What is a Stored Procedure?

--A stored procedure is a prepared SQL code that you can save, so the code can be reused over and over again.

--So if you have an SQL query that you write over and over again, save it as a stored procedure, and then just call it to execute it.

--You can also pass parameters to a stored procedure, so that the stored procedure can act based on the parameter value(s) that is passed.


create procedure sehiregoreogrencilistesi(@il int)
	as

select * from Ogrenci where OgrenciNo 
	in 
	(select OgrenciNo from OgrenciAdres where Sehir = @il)



create procedure adresegoreogrencilistesi(@detay varchar(20))
	as

select * from Ogrenci where OgrenciNo 
	in 
	(select OgrenciNo from OgrenciAdres where AdresDetay like @detay)

