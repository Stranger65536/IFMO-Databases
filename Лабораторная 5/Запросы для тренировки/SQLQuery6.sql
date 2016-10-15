select count (ProductID), OrderQty
from Sales.SalesOrderDetail
group by OrderQty
having OrderQty >
  ( select avg (OrderQty)
   from Sales.SalesOrderDetail
   where SpecialOfferID = 1 )
order by OrderQty