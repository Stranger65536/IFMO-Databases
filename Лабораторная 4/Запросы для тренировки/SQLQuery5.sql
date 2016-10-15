SELECT '38-40', A.ProductID
FROM Production.Product A
JOIN Production.BillOfMaterials B
ON A.ProductID = B.ProductAssemblyID
WHERE B.PerAssemblyQty <= 40 AND B.PerAssemblyQty >= 38
UNION
SELECT '36-37', C.ProductID
FROM Production.Product C
JOIN Production.BillOfMaterials D
ON C.ProductID = D.ProductAssemblyID
WHERE D.PerAssemblyQty <= 37 AND D.PerAssemblyQty >= 36