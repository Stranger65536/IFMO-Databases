SELECT A.EmployeeID
FROM HumanResources.Employee A 
JOIN HumanResources.Employee B 
ON A.EmployeeID = B.ManagerID
WHERE A.MaritalStatus = 'S' AND B.MaritalStatus = 'S' AND A.Gender <> B.Gender
/*GROUP BY A.EmployeeID*/
/*Distinct: 28, without: 14*/