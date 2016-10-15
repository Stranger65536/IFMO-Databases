/*Вывести названия территорий, для которых средний процент выполнения
плана сотрудников превысил 1000%. 5 строк*/
SELECT ST.Name
FROM Sales.SalesTerritory ST
WHERE EXISTS (SELECT AVG ((SP.SalesYTD/SP.SalesQuota)*100)
FROM Sales.SalesPerson SP WHERE ST.TerritoryID=SP.TerritoryID
GROUP BY SP.TerritoryID HAVING AVG ((SP.SalesYTD/SP.SalesQuota)*100) >1000)

/*можно отлько подзапросом*/