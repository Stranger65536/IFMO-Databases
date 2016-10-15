/*вывести список сотрудников, которые млпдше своих подчиненных, превышающих план продаж/ 2 строки*/
SELECT DISTINCT B.EmployeeID
FROM HumanResources.Employee B
JOIN HumanResources.Employee E ON E.ManagerID = B.EmployeeID
JOIN Sales.SalesPerson SP ON E.EmployeeID = SP.SalesPersonID
WHERE E.BirthDate > B.BirthDate AND SP.SalesYTD >= SP.SalesQuota

/*2 способа*/

SELECT DISTINCT B.EmployeeID
FROM HumanResources.Employee B
WHERE B.EmployeeID IN
(SELECT E.ManagerID FROM HumanResources.Employee E WHERE E.EmployeeID IN
(SELECT SP.SalesPersonID FROM Sales.SalesPerson SP WHERE E.BirthDate > B.BirthDate AND SP.SalesYTD >= SP.SalesQuota))