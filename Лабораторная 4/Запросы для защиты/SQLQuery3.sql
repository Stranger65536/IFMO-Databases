/*3. Рассчитать новые премиальные для
 коммерческих представителей, кото-
 рые на текущий момент  уже перевы-
 полнили план ежегодных продаж: пе-
 первыполнили в 5-9,9 раз - к бону-
 су  дополнительно  начисляется  15
 процентов; перевыполнили в 10 - 15
 раз - к бонусу дополнительно начи-
 сляется 20 процентов.
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