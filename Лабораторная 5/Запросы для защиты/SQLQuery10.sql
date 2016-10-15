select max(P1.DaysToManufacture), P1.ProductLine
from Production.Product P1
group by P1.ProductLine
having max (P1.DaysToManufacture) <
  ( select max (P2.DaysToManufacture)
   from Production.Product P2
   where Style = 'U' )