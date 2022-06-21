use AdventureWorksDW2017; 
 
select *
from DimEmployee

 
-- Nombre d'employés toujours actifs et recrutés avant le 01/01/2011 
SELECT COUNT(1) as actifs
FROM DimEmployee emp
WHERE StartDate <= '2011-01-01'
AND EndDate > '2012-01-01'
	 

SELECT COUNT(1) as actifs
FROM DimEmployee emp
WHERE StartDate <= '2011-01-01'
AND	(EndDate > '2012-01-01'
	OR
		EndDate IS NULL)
	 