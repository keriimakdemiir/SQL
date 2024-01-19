--The Northwind database is a sample database used by Microsoft to demonstrate the features of some of its products, including SQL Server and Microsoft Access.

--subquery

select * from Orders where CustomerID in (select CustomerID from Customers
						where Country = 'Germany')

select * from Orders where CustomerID in (select CustomerID from Customers
						 where Country = 'Germany'
							or Country = 'UK')

select * from Orders where CustomerID in (select CustomerID from Customers
						where Country = 'Germany'
						or Country = 'UK')
					and OrderDate >= '1998-01-01'


--datediff

select datediff(year, '2017/08/25', '2022/08/21') as datediff

select datediff(month, '2017/08/25', '2022/08/21') as datediff

select datediff(week, '2017/08/25', '2022/08/21') as datediff


--getdate()

select FirstName, LastName, TitleOfCourtesy, 
datediff(year, BirthDate, GetDate()) as 'Age'
from Employees


--groupby

select Shippers.CompanyName, count(*)
from Orders
inner join Shippers
on Orders.ShipVia = Shippers.ShipperID
group by Shippers.CompanyName

--orderby

select Orders.OrderID, Orders.CustomerID, 
	Customers.ContactTitle, Customers.ContactName, 
	Shippers.CompanyName 
from Orders
join Customers
on Orders.CustomerID = Customers.CustomerID
join Shippers 
on Orders.ShipVia = Shippers.ShipperID
order by Customers.ContactTitle


--join

select Orders.OrderID, Orders.CustomerID, 
	Customers.ContactTitle, Customers.ContactName, 
	Shippers.CompanyName 
from Orders
join Customers
on Orders.CustomerID = Customers.CustomerID
join Shippers 
on Orders.ShipVia = Shippers.ShipperID


--count

select Employees.EmployeeID, count(*)
from Orders
inner join Employees
on Orders.EmployeeID = Employees.EmployeeID
group by Employees.EmployeeID
having count(*) > 100


--view

create view view_ulkeye_ve_tarihe_gore_siparisler
 as 
select * from Orders where CustomerID in (select CustomerID from Customers
						where Country = 'Germany'
							or Country = 'UK')
					and OrderDate >= '1998-01-01'


select * from view_ulkeye_ve_tarihe_gore_siparisler