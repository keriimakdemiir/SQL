--The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.

ALTER TABLE table_name ADD column_name datatype;

ALTER TABLE Ogrenci ALTER COLUMN DogumTarihi date NOT NULL


--The CREATE TABLE statement is used to create a new table in a database.

CREATE TABLE Ogrenci (
	OgrenciNo int NOT NULL,
	Ad varchar(30),
	Soyad varchar(30),
	TCKimlikNo char(11),
	KayitTarihi date,
	ErkekMi bit)


--The DELETE statement is used to delete existing records in a table.

delete from Ogrenci where Ad = 'Damla'


--The INSERT INTO statement is used to insert new records in a table.

insert into Ogrenci values(925, 'Batu', 'Alp', '78978978989', '20230909', 1, '19950515', 70, 0, 0)

insert into Ogrenci (OgrenciNo, Ad, Soyad, TCKimlikNo, KayitTarihi, ErkekMi, DogumTarihi) 
			values(980, 'Damla', 'Acar', '24824824824', '20231010', 0, '19980808')


--The UPDATE statement is used to modify the existing records in a table.

update Ogrenci set SinavNotu1 = 100 where Ad = 'Hande' and Soyad = 'Baladın'

update Ogrenci set SinavNotu2 = 80 where ErkekMi = 1

update Ogrenci set SinavNotu2 = 85, FinalNotu = 87 where ErkekMi = 0 and OgrenciNo <= 900



