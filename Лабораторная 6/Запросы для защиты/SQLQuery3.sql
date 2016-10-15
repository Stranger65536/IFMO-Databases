/**Кто из сотрудников родился раньше, чем Amy Alberts. 17 строк*/
SELECT FirstName, LastName, MiddleName, HumanResources.Employee.Title, BirthDate
FROM HumanResources.Employee JOIN Person.Contact ON
HumanResources.Employee.ContactID = Person.Contact.ContactID
WHERE HumanResources.Employee.BirthDate < 
(SELECT HumanResources.Employee.BirthDate 
FROM HumanResources.Employee JOIN Person.Contact ON HumanResources.Employee.ContactID=Person.Contact.ContactID
WHERE LastName='Alberts' AND FirstName='Amy')
/*можно только подзапросами или подзапрос с объединением, только объединением нельзя*/