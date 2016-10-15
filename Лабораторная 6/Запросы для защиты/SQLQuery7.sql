/*вывести список рекламных акций для товаров от компании. 1 строка*/

SELECT DISTINCT SOD.SpecialOfferID
FROM Sales.SalesOrderDetail SOD JOIN Purchasing.ProductVendor PV ON PV.ProductID = SOD.ProductID
JOIN Purchasing.Vendor V ON V.VendorID = PV.VendorID
WHERE V.Name = 'Vista Road Bikes'

/*2 способа*/
SELECT DISTINCT SOD.SpecialOfferID
FROM Sales.SalesOrderDetail SOD
WHERE SOD.ProductID IN
(SELECT PV.ProductID FROM Purchasing.ProductVendor PV WHERE PV.VendorID IN
(SELECT V.VendorID FROM Purchasing.Vendor V WHERE V.Name = 'Vista Road Bikes'))