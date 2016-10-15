select distinct V.VendorID
from Purchasing.ProductVendor V
where 
  ( select count (PV.ProductID)
   from Purchasing.ProductVendor PV
   join Production.Product P
   on PV.ProductID = P.ProductID
    where PV.VendorID = V.VendorID and P.ProductLine = 'R') > 1