/*1. Получить фамилии, имена и отчества 
 сотрудников-женщин и их  не женатых 
 подчиненных-мужчин
*/ 
SELECT A.FirstName, A.MiddleName, 
	   A.LastName, C.FirstName, 
	   C.MiddleName, C.LastName
FROM (Person.Contact A 
JOIN HumanResources.Employee B 
ON A.ContactID = B.ContactID)
JOIN 
(Person.Contact C 
JOIN HumanResources.Employee D 
ON C.ContactID = D.ContactID) 
ON B.EmployeeID = D.ManagerID
WHERE D.Gender = 'M' 
  AND B.Gender = 'F' 
  AND D.MaritalStatus = 'S'
/*12*/