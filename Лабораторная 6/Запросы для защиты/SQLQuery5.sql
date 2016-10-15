/*������� ������ �������� � ���������������� ������� �������, ���� ������� 
� ������ ������ ������ 10000 ��� ������� ���� �������� � ����� �� ����� ������ 200000. 60 �����*/

SELECT DISTINCT P.Name, P.ProductID
FROM Production.Product P JOIN Sales.SalesOrderDetail O ON P.ProductID=O.ProductID
JOIN Sales.SalesOrderHeader H ON H.SalesOrderID=O.SalesOrderID
WHERE (UnitPrice - UnitPriceDiscount) > 10000 OR SubTotal > 200000
ORDER BY P.ProductID

/*2 �������, ����� ������������ union*/
SELECT DISTINCT P.Name, P.ProductID
FROM Production.Product P
WHERE P.ProductID IN
(SELECT O.ProductID FROM Sales.SalesOrderDetail O WHERE O.SalesOrderID IN
(SELECT H.SalesOrderID FROM Sales.SalesOrderHeader H WHERE SubTotal >200000) OR (UnitPrice - UnitPriceDiscount) > 10000)