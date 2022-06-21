use AdventureWorksDW2017; 
SELECT
		d.FullDateAlternateKey as 'Date'
	,	count(1)   as actifs	
FROM DimDate d
LEFT JOIN	(SELECT  StartDate, EndDate FROM DimEmployee) e
	ON (d.FullDateAlternateKey between e.StartDate and ISNULL(e.EndDate,'3000-01-01'))
GROUP BY
		d.FullDateAlternateKey
ORDER BY
		Date