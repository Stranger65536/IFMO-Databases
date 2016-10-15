/*9. Если у поставщика указаны разные адреса,
 то получить пары этих адресов. Указать иден-
 тификационный номер поставщика и идентифика-
 ционные номера адресов.
*/
SELECT A.VendorID, A.AddressID, B.VendorID
FROM (Purchasing.VendorAddress A 
JOIN Purchasing.VendorAddress B 
ON A.AddressID = B.AddressID)
JOIN (Person.Address C
JOIN Purchasing.VendorAddress D
ON D.AddressID = C.AddressID)
ON B.VendorID = D.VendorID
WHERE A.VendorID <> B.VendorID
/*Distinct: 0, without: 0*/