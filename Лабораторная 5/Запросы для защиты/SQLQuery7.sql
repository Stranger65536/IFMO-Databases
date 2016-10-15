select ProductID
from Production.Product
where Style <> all
  ( select Style
   from Production.Product
   where ProductSubcategoryID = 1 )