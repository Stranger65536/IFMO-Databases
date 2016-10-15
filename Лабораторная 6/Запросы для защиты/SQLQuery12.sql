/*����� �����������, ������� ���� �� ������ ����������. 22 ������*/

SELECT A.EmployeeID, A.BirthDate
FROM HumanResources.Employee A
WHERE EXISTS 
(SELECT B.BirthDate FROM HumanResources.Employee B WHERE A.EmployeeID<>B.EmployeeID AND A.BirthDate=B.BirthDate)

/*����� ����� ���������*/

SELECT A.EmployeeID, A.BirthDate, B.EmployeeID, B.BirthDate
FROM HumanResources.Employee A
JOIN HumanResources.Employee B
ON A.BirthDate = B.BirthDate
WHERE A.EmployeeID<>B.EmployeeID