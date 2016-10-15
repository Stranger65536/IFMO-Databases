select CustomerID
from Sales.Customer
where CustomerID = any
  ( select CustomerID
   from Sales.SalesOrderHeader SOH
   join Person.Address A1
   on SOH.ShipToAddressID = A1.AddressID
	join Person.Address A2
	on SOH.BillToAddressID = A2.AddressID
	where A1.City <> A2.City)
