select A1.City
from Person.Address A1
where AddressID in
  ( select VA1.AddressID
   from Purchasing.VendorAddress VA1
   where 
	( select count(*)
	from Purchasing.VendorAddress VA2
	where VA1.VendorID = VA2.VendorID) = 1 )