--An SQL trigger allows you to specify SQL actions that should be executed automatically
--when a specific event occurs in the database. 
--For example, you can use a trigger to automatically update a record in one table whenever a record is inserted into another table.

create trigger mytrigger1
on Ogrenci
after insert
as
begin
	insert into OgrenciLog (OgrenciSayisi, Tarih) 
	values ((select count(OgrenciNo) from Ogrenci), getdate())
end



create trigger mytrigger2
on Ogrenci
after delete
as
begin
	insert into OgrenciLog (OgrenciSayisi, Tarih) 
	values ((select count(OgrenciNo) from Ogrenci), getdate())
end