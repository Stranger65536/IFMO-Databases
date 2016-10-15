/*������ ������������ ������� ������ ������ � ���������� ���� � ����� ������ �
������ ���� �� ���������� ������� ��� ������ ���������� ������ � �����. 3 ������*/

SELECT MAX(SP.SalesLastYear - SP.SalesYTD), SP.TerritoryID
FROM Sales.SalesPerson SP JOIN Sales.SalesTerritory ST ON SP.TerritoryID = ST.TerritoryID
WHERE [Group] = 'Europe'
GROUP BY SP.TerritoryID

/*����� ����� ���������*/

SELECT MAX(SP.SalesLastYear - SP.SalesYTD), SP.TerritoryID
FROM Sales.SalesPerson SP
WHERE SP.TerritoryID IN
(SELeCT ST.TerritoryID FROM Sales.SalesTerritory ST WHERE [Group] = 'Europe')
GROUP BY SP.TerritoryID