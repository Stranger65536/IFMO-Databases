select VendorID
from Purchasing.Vendor
where not exists
  ( select *
   from Purchasing.ProductVendor
   where VendorID = Purchasing.Vendor.VendorID )