select A1.City
from Person.Address A1
where exists
  (select *
   from Purchasing.Vendor V
   join Purchasing.VendorAddress VA
   on V.VendorID = VA.VendorID
	join Person.Address A2
	on VA.AddressID = A2.AddressID
	where A2.AddressID = A1.AddressID and V.CreditRating = 5 )