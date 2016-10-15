/**������������ ������ �����������, ��������� ����� � ����� ��������������
���������� � ������� 50% � ����� �� �� ������ ������ � ������ ���� �� ���������� �������. 1 ������*/

SELECT DISTINCT C.FirstName, C.MiddleName, C.LastName
FROM Person.Contact C
JOIN HumanResources.Employee E
ON E.ContactID = C.ContactID
JOIN Sales.SalesOrderHeader O
ON O.SalesPersonID = E.EmployeeID
WHERE O.TotalDue >= 0.5 * (SELECT SP.SalesYTD FROM Sales.SalesPerson SP WHERE SP.SalesPersonID=O.SalesPersonID)

/*����� ����� ���������*/