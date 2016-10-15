SELECT VendorID
FROM Purchasin.ProductVendor
WHERE ProductID IN
(SELECT ProductID FROM Production.Product WHERE ProductLine = 'M')
ORDER BY VendorID