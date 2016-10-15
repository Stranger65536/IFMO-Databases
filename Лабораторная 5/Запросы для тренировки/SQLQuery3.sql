SELECT COUNT(A.VendorID)
FROM Purchasing.Vendor A
JOIN Purchasing.VendorAddress B
ON A.VendorID = B.VendorID
WHERE B.AddressID IN
(SELECT AddressID FROM Person.Address WHERE City = 'New York')