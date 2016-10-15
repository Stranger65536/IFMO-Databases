SELECT VendorID, COUNT (ProductID)
FROM Purchasing.ProductVendor
GROUP BY VendorID
HAVING COUNT (ProductID) >
(SELECT COUNT (ProductID)
FROM Purchasing.ProductVendor
WHERE MaxOrderQty in
(SELECT MAX (MinOrderQty)
FROM Purchasing.ProductVendor ))