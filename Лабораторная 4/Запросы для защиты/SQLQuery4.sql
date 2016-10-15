/*4. ���������, ������� ����� ����� �����������
 ����� � ������� com, net, org. ������� ����� 
 ����� � ��������� ���������������� ������.
*/
SELECT '.com', COUNT(*)
FROM Person.Contact
WHERE Person.Contact.EmailAddress LIKE '%.com%'
UNION
SELECT '.net', COUNT(*)
FROM Person.Contact
WHERE Person.Contact.EmailAddress LIKE '%.net%'
UNION
SELECT '.org', COUNT(*)
FROM Person.Contact
WHERE Person.Contact.EmailAddress LIKE '%.org%'