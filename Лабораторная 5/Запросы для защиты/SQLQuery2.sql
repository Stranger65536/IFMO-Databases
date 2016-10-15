SELECT C.FirstName, C.MiddleName, C.LastName
FROM Person.Contact C
WHERE C.ContactID IN
(SELECT VC.ContactID
FROM Purchasing.VendorContact VC
JOIN Purchasing.VendorContact VC1
ON VC.VendorID = VC1.VendorID
WHERE C.ContactID = VC.ContactID)