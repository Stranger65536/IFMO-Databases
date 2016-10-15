/*8. Получить фамилии, имена и отчества
 сотрудников-мужчин и их подчиненных-
 женщин
*/
SELECT A.FirstName, A.MiddleName, A.LastName,
       C.FirstName, C.MiddleName, C.LastName
FROM (Person.Contact A
JOIN HumanResources.Employee B
ON A.ContactID = B.ContactID)
JOIN (Person.Contact C
JOIN HumanResources.Employee D
ON C.ContactID = D.ContactID)
ON B.EmployeeID = D.ManagerID
WHERE D.Gender = 'F' AND B.Gender = 'M'