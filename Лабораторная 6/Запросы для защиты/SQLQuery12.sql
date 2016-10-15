/*найти сотрудников, имебщих хотя бы одного сверстника. 22 строки*/

SELECT A.EmployeeID, A.BirthDate
FROM HumanResources.Employee A
WHERE EXISTS 
(SELECT B.BirthDate FROM HumanResources.Employee B WHERE A.EmployeeID<>B.EmployeeID AND A.BirthDate=B.BirthDate)

/*Можно двумя способами*/

SELECT A.EmployeeID, A.BirthDate, B.EmployeeID, B.BirthDate
FROM HumanResources.Employee A
JOIN HumanResources.Employee B
ON A.BirthDate = B.BirthDate
WHERE A.EmployeeID<>B.EmployeeID