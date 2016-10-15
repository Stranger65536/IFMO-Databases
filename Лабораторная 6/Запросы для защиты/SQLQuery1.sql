/*1. ������� ������ �������� (����������������� ������)
��������, ���������� � Germany. 32 ������*/
/*����� join*/
SELECT DISTINCT CustomerID
FROM Sales.SalesOrderHeader SOH
JOIN Sales.SalesPerson SP ON SOH.SalesPersonID=SP.SalesPersonID
JOIN Sales.SalesTerritory ST ON SP.TerritoryID=ST.TerritoryID
WHERE ST.Name='Germany'

/*����� ���������*/
SELECT DISTINCT CustomerID
FROM Sales.SalesOrderHeader SOH
WHERE SOH.SalesPersonID IN
(SELECT SP.SalesPersonID FROM Sales.SalesPerson SP WHERE SP.TerritoryID IN
SELECT ST.TerritoryID FROM Sales.SalesTerritory ST WHERE ST.Name='Germany'))