select SalesOrderID
from Sales.SalesOrderHeader
where OrderDate > ALL
  ( select OH.OrderDate
   from Sales.SalesOrderHeader OH
   join Sales.SalesOrderDetail OD
   on OH.SalesOrderID = OD.SalesOrderID
   where OD.LineTotal > 1000 )