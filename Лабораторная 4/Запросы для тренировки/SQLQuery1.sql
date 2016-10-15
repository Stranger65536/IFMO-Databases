SELECT distinct A.ContactID, B.AddressLine1, C.AddressLine1
FROM Sales.SalesOrderHeader A
JOIN Person.Address B ON A.BillToAddressID = B.AddressID
JOIN Person.Address C ON A.ShipToAddressID = C.AddressID
WHERE A.BillToAddressID <> A.ShipToAddressID
/*Distinct: 35, without: 99*/