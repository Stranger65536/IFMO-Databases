/*Найти служащих, работающих на территории Austeralia
и явялющихся плдчиненными других служвщих. 1 строка*/
SELECT E.Title, P.LastName, P.FirstName, P.Phone
FROM Person.Contact P 
JOIN HumanResources.Employee E ON P.ContactID = E.ContactID
JOIN Sales.SalesPerson SP ON E.EmployeeID = SP.SalesPersonID
JOIN Sales.SalesTerritory ST ON SP.TerritoryID = ST.TerritoryID
WHERE ST.Name = 'Australia' AND E.ManagerID IS NOT NULL

/*один способ, но часть объединений можно заменить подзапросами*/