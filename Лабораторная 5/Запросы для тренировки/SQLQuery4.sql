SELECT ProductID, SpecialOfferID
FROM Sales.SalesOrderDetail
WHERE SalesOrderID IN
(SELECT SalesOrderID FROM Sales.SalesOrderHeader WHERE Sales.SalesOrderDetail.SalesOrderID = Sales.SalesOrderHeader.SalesOrderID
AND OrderDate = '2004.27.07')