--What are SQL Transactions? 
--A SQL transaction is a grouping of one or more SQL statements that interact with a database. 
--A transaction in its entirety can commit to a database as a single logical unit or rollback (become undone) as a single logical unit

begin transaction
update BankKart set Bakiye = Bakiye -50 where OgrenciNo = 650
update BankKart set Bakiye = Bakiye +50 where OgrenciNo = 900 
commit transaction