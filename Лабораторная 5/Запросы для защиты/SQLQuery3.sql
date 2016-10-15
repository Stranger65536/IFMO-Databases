SELECT Name, AccountNumber
FROM Purchasing.Vendor
WHERE VendorID IN
(SELECT VendorID
FROM Purchasing.ProductVendor
WHERE ProductID in
(SELECT ProductID
FROM Production.Product
WHERE Name = 'Minipump' ))