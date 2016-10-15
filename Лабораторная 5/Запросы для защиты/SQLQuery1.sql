SELECT EmployeeID
FROM HumanResources.Employee
WHERE BirthDate > ANY
(SELECT BirthDate
FROM HumanResources.Employee
WHERE ContactID in
(SELECT ContactID
FROM Person.Contact
WHERE AdditionalContactInfo IS NULL))