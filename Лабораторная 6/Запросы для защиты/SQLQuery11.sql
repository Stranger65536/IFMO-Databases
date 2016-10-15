/*найти пары сотрудников, проживающих в одном городе. 2994 срок*/

SELECT A.EmployeeID, B.EmployeeID, C.City
FROM HumanResources.Employee A JOIN HumanResources.EmployeeAddress EA1
ON A.EmployeeID = EA1.EmployeeID
JOIN Person.Address C 
ON EA1.AddressID = C.AddressID
JOIN (HumanResources.Employee B
JOIN HumanResources.EmployeeAddress EA2 
ON B.EmployeeID = EA2.EmployeeID
JOIN Person.Address D 
ON EA2.AddressID = D.AddressID)
ON C.City = D.City
WHERE A.EmployeeID > B.EmployeeID
ORDER BY A.EmployeeID, B.EmployeeID
/*нельзя только подзапросом, можно некоторые объединения заменить на подзапросы*/