SELECT A.VendorID, A.AddressID, B.VendorID
FROM Purchasing.VendorAddress A
JOIN Purchasing.VendorAddress B
ON A.AddressID = B.AddressID
WHERE A.VendorID <> B.VendorID 