/**��� �� ����������� ������� ������, ��� Amy Alberts. 17 �����*/
SELECT FirstName, LastName, MiddleName, HumanResources.Employee.Title, BirthDate
FROM HumanResources.Employee JOIN Person.Contact ON
HumanResources.Employee.ContactID = Person.Contact.ContactID
WHERE HumanResources.Employee.BirthDate < 
(SELECT HumanResources.Employee.BirthDate 
FROM HumanResources.Employee JOIN Person.Contact ON HumanResources.Employee.ContactID=Person.Contact.ContactID
WHERE LastName='Alberts' AND FirstName='Amy')
/*����� ������ ������������ ��� ��������� � ������������, ������ ������������ ������*/