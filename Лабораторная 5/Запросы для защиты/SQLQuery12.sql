select SalesOrderID
from Sales.SalesOrderHeader
where OrderDate < any
  ( select OrderDate
   from Sales.SalesOrderHeader OH
   join Sales.SalesOrderDetail OD
   on OH.SalesOrderID = OD.SalesOrderID
   where OD.LineTotal > 20000)