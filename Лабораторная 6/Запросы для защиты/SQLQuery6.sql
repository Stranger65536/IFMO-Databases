/*Какова максимальная разница объема продаж в предыдущем году и объем продаж с
начала года до настоящего времени для каждой территории продаж в еропе. 3 строки*/

SELECT MAX(SP.SalesLastYear - SP.SalesYTD), SP.TerritoryID
FROM Sales.SalesPerson SP JOIN Sales.SalesTerritory ST ON SP.TerritoryID = ST.TerritoryID
WHERE [Group] = 'Europe'
GROUP BY SP.TerritoryID

/*можно двумя способами*/

SELECT MAX(SP.SalesLastYear - SP.SalesYTD), SP.TerritoryID
FROM Sales.SalesPerson SP
WHERE SP.TerritoryID IN
(SELeCT ST.TerritoryID FROM Sales.SalesTerritory ST WHERE [Group] = 'Europe')
GROUP BY SP.TerritoryID