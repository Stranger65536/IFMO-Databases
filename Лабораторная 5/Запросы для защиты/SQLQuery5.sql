select S.CustomerID, S.OrderDate, S.SalesOrderID
from Sales.SalesOrderHeader S
where OrderDate = 
  (select max (OrderDate)
   from Sales.SalesOrderHeader
   where CustomerID = S.CustomerID )
order by S.CustomerID, S.SalesOrderID