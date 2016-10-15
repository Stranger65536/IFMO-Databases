/*Вывести список названий и дентификационных номеров товаров, цена которых 
с учетом скидки больше 10000 млм коотрые были включены в заказ на сумму больше 200000. 60 строк*/

SELECT DISTINCT P.Name, P.ProductID
FROM Production.Product P JOIN Sales.SalesOrderDetail O ON P.ProductID=O.ProductID
JOIN Sales.SalesOrderHeader H ON H.SalesOrderID=O.SalesOrderID
WHERE (UnitPrice - UnitPriceDiscount) > 10000 OR SubTotal > 200000
ORDER BY P.ProductID

/*2 способа, можно использовать union*/
SELECT DISTINCT P.Name, P.ProductID
FROM Production.Product P
WHERE P.ProductID IN
(SELECT O.ProductID FROM Sales.SalesOrderDetail O WHERE O.SalesOrderID IN
(SELECT H.SalesOrderID FROM Sales.SalesOrderHeader H WHERE SubTotal >200000) OR (UnitPrice - UnitPriceDiscount) > 10000)