--Auto-increment allows a unique number to be generated automatically when a new record is inserted into a table.

--Often this is the primary key field that we would like to be created automatically every time a new record is inserted.

insert into OgrenciLog (OgrenciSayisi, Tarih) values (121, getdate())