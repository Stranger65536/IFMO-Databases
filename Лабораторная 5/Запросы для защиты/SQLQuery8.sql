select PV.VendorID
from Purchasing.ProductVendor PV
join Production.Product P
on PV.ProductID = P.ProductID
where Style = 'W' and exists
  ( select P1.ProductID
   from Purchasing.ProductVendor PV1
   join Production.Product P1
   on PV1.ProductID = P1.ProductID
   where Style = 'M' and PV.VendorID = PV1.VendorID )