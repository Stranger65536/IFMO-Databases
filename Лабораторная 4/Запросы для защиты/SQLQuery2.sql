/*2. Получить идентификационные 
 номера поставщиков и заказчиков,
 находящихся в городе New York с
 указанием соответствующего статуса
*/
SELECT 'Customer', A.CustomerID 
FROM Sales.CustomerAddress A
JOIN Person.Address B
ON A.AddressID = B.AddressID
WHERE B.City = 'New York'
UNION
SELECT 'Vendor', C.VendorID
FROM Purchasing.VendorAddress C
JOIN Person.Address D
ON C.AddressID = D.AddressID
WHERE D.City = 'New York'