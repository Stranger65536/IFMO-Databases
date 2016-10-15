/*1. ¬ывести список клиентов (идентификационные номера)
служащих, работающих в Germany. 32 строки*/
/*через join*/
SELECT DISTINCT CustomerID
FROM Sales.SalesOrderHeader SOH
JOIN Sales.SalesPerson SP ON SOH.SalesPersonID=SP.SalesPersonID
JOIN Sales.SalesTerritory ST ON SP.TerritoryID=ST.TerritoryID
WHERE ST.Name='Germany'

/*через подзапрос*/
SELECT DISTINCT CustomerID
FROM Sales.SalesOrderHeader SOH
WHERE SOH.SalesPersonID IN
(SELECT SP.SalesPersonID FROM Sales.SalesPerson SP WHERE SP.TerritoryID IN
SELECT ST.TerritoryID FROM Sales.SalesTerritory ST WHERE ST.Name='Germany'))