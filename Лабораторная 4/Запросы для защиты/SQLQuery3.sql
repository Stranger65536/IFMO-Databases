/*3. ���������� ����� ����������� ���
 ������������ ��������������, ����-
 ��� �� ������� ������  ��� ������-
 ������� ���� ��������� ������: ��-
 ������������ � 5-9,9 ��� - � ����-
 ��  �������������  �����������  15
 ���������; ������������� � 10 - 15
 ��� - � ������ ������������� ����-
 ������� 20 ���������.
*/  
SELECT A.SalesPersonID, A.SalesQuota,
	   A.SalesYTD, A.Bonus,
	   A.Bonus + A.Bonus * 0.15, '+15%'
FROM Sales.SalesPerson A
WHERE A.SalesYTD >= A.SalesQuota * 5 
  AND A.SalesYTD <= A.SalesQuota * 9.9
UNION
SELECT A.SalesPersonID, A.SalesQuota,
	   A.SalesYTD, A.Bonus,
	   A.Bonus + A.Bonus * 0.2, '+20%'
FROM Sales.SalesPerson A
WHERE A.SalesYTD >= A.SalesQuota * 10
  AND A.SalesYTD <= A.SalesQuota * 15