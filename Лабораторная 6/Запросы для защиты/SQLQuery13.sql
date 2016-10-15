/*������� ������ �������� � id �������, ���� ������� ��������� 10000 ��� ������� ���� �������� �� �����
������ 25000 �  ���� �����. 3 ������*/

SELECT P.Name, P.ProductID
FROM Production.Product P
JOIN Sales.SalesOrderDetail O
ON P.ProductID=O.ProductID
WHERE UnitPrice > 10000 OR LineTotal > 25000

/*����� ����� ���������, ������ � union*/

SELECT P.Name, P.ProductID
FROM Production.Product P
WHERE P.ProductID IN
(SELECT O.ProductID FROM Sales.SalesOrderDetail O WHERE UnitPrice > 10000 UNION SELECT O.ProductID FROM Sales.SalesOrderDetail O WHERE LineTotal > 25000)