/*5. Получить пары поставщиков,
 располагающиеся в одном и том же
 городе, исключая повторяющиеся со-
 четания и сочетания с самим собой.
 Указать названия поставщиков и наз-
 вания городов.
*/
SELECT A.Name, D.Name, C.City
FROM (Purchasing.Vendor A
JOIN Purchasing.VendorAddress B
ON A.VendorID = B.VendorID
JOIN Person.Address C
ON B.AddressID = C.AddressID)
JOIN (Purchasing.Vendor D
JOIN Purchasing.VendorAddress E
ON D.VendorID = E.VendorID
JOIN Person.Address F
ON E.AddressID = F.AddressID)
ON C.City = F.City
WHERE A.Name < D.Name