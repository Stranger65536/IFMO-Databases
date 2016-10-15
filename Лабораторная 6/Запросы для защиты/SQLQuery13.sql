/*вывести список названий и id товатор, цена которых превышает 10000 или которых было заказано на сумму
больше 25000 в  один заказ. 3 строки*/

SELECT P.Name, P.ProductID
FROM Production.Product P
JOIN Sales.SalesOrderDetail O
ON P.ProductID=O.ProductID
WHERE UnitPrice > 10000 OR LineTotal > 25000

/*можно двумя способами, второй с union*/

SELECT P.Name, P.ProductID
FROM Production.Product P
WHERE P.ProductID IN
(SELECT O.ProductID FROM Sales.SalesOrderDetail O WHERE UnitPrice > 10000 UNION SELECT O.ProductID FROM Sales.SalesOrderDetail O WHERE LineTotal > 25000)