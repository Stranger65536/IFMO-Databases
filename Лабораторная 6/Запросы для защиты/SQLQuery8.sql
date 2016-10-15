/*получить названи€ продуктов и компаний, их поставл€ющих, которые продавались
по нескольким различным акци€м. 58 строк, 2 способа*/
SELECT DISTINCT P.Name, V.Name
FROM (Sales.SpecialOfferProduct SOD 
JOIN
Sales.SpecialOfferProduct SOD1
ON 
SOD.ProductID = SOD1.ProductID
JOIN Production.Product P
ON P.ProductID = SOD.ProductID
JOIN Purchasing.ProductVendor PV
ON P.ProductID = PV.ProductID
JOIN Purchasing.Vendor V
ON V.VendorID = PV.VendorID)
WHERE SOD.SpecialOfferID > SOD1.SpecialOfferID

/*можно чисто объединенеи и объединение с подзапросом*/
SELECT pro.Name, ven.Name
FROM Production.Product pro
JOIN Purchasing.ProductVendor proven
ON proven.ProductID = pro.ProductID
JOIN Purchasing.Vendor ven
ON ven.VendorID = proven.VendorID
WHERE pro.ProductID IN
(SELECT a.ProductID FROM Sales.SpecialOfferProduct a JOIN Sales.SpecialOfferProduct b 
ON a.ProductID=b.ProductID AND a.SpecialOfferID <> b.SpecialOfferID)
