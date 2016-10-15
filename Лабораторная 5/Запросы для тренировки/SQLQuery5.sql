SELECT A.EmployeeID
FROM HumanResources.Employee A
WHERE SickLeaveHours <
(SELECT AVG(B.SickLeaveHours) FROM HumanResources.Employee B WHERE A.Title = B.Title)