/*6. ѕолучить данные о том, сколько сотрудников,
 заказчиков и поставщиков желают получать рассыл-
 ку по электронной почте. ¬ывести число людей с
 указанием соответствующего статуса.
*/
SELECT 'Employee', COUNT(*)
FROM Person.Contact A 
JOIN HumanResources.Employee B 
ON B.ContactID = A.ContactID
WHERE A.EmailPromotion = 1
UNION
SELECT 'Vendor', COUNT(*)
FROM Person.Contact C
JOIN Purchasing.VendorContact D 
ON D.ContactID = C.ContactID
WHERE C.EmailPromotion = 1
UNION
SELECT 'Customer', COUNT(*)
/*4667*/
FROM Person.Contact E
JOIN Sales.SalesOrderHeader F 
ON F.ContactID = E.ContactID
WHERE E.EmailPromotion = 1
/*61, 45, 8018*/