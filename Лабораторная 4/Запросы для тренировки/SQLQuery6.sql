SELECT '1-3', COUNT(*)
FROM Sales.SalesOrderDetail A
WHERE A.OrderQty >= 1 AND A.OrderQty <= 3
UNION
SELECT '4-6', COUNT(*)
FROM Sales.SalesOrderDetail B
WHERE B.OrderQty >= 4 AND B.OrderQty <= 6 