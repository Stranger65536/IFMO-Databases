/*7. �������� ���� ������������ ��������������,
 ���������� �� ����� � ��� �� ����������, ��������
 ������������� ��������� � ��������� � ����� �����.
 ������� ����������������� ������ �������������� �
 ����������
*/
SELECT A.SalesPersonID, 
	   C.SalesPersonID, 
	   B.TerritoryID
FROM (Sales.SalesPerson A 
JOIN Sales.SalesTerritory B 
ON A.TerritoryID = B.TerritoryID)
JOIN (Sales.SalesPerson C 
JOIN Sales.SalesTerritory D 
ON C.TerritoryID = D.TerritoryID) 
ON A.TerritoryID = C.TerritoryID
WHERE (A.SalesPersonID < C.SalesPersonID)
/*Distinct: 5, withot: 5*/