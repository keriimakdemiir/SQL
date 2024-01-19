--Clustered indexes sort and store the data rows in the table or view based on their key values.

create clustered index CI_1 on Musteri (MusteriId)


--SQL scripts are the series of SQL commands used to make changes in the database.

declare @i int = 0
while @i<100000
begin
   insert Musteri
	select @i, 'Yazılım Teknolojileri' + cast(@i as varchar(10)), 'Akademisi' + cast(@i as varchar(10)
   set @i = @i + 1
end
go	


--statistics

set statistics io on
set statistics time on
select * from Musteri where MusteriId = 89345


set statistics io off
set statistics time off

--Identity Specification

--An Identity column is a unique column that can create a numeric sequence for you based on Identity Seed and Identity Increment.