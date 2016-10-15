SELECT A.CustomerID, D.CustomerID, C.City
FROM (Sales.Customer A
JOIN Sales.CustomerAddress B
ON A.CustomerID = B.CustomerID
JOIN Person.Address C
ON B.AddressID = C.AddressID)
JOIN (Sales.Customer D
JOIN Sales.CustomerAddress E
ON D.CustomerID = E.CustomerID
JOIN Person.Address F
ON E.AddressID = F.AddressID)
ON C.City = F.City
WHERE A.CustomerID < D.CustomerID
/*WARNING! VERY SLOW!*/