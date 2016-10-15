select ProductID
from Production.Product
where Size > any
  ( select Size
   from Production.Product P
   join Purchasing.ProductVendor PV
   on P.ProductID = PV.ProductID
   where VendorID = 90)