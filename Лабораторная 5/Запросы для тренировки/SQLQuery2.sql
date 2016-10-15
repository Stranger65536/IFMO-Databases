SELECT Name
FROM Production.Product
WHERE ProductID IN
(SELECT ProductID FROM Purchasing.ProductVendor WHERE VendorID = 90)
ORDER BY Name