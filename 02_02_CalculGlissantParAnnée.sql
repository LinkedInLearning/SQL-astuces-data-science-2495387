use AdventureWorksDW2017; 


SELECT
		SUM(ParMois) OVER (PARTITION BY Annee ORDER BY NumMois ROWS UNBOUNDED PRECEDING) as 'CumulAnnée'
	,	ParMois as 'ParMois'
	,	Annee
	,	NumMois
FROM (
	SELECT	SUM(v.SalesAmount) ParMois   
		,	MONTH(v.OrderDate) as NumMois
		,	year(v.OrderDate) as Annee
	FROM	FactInternetSales v
	GROUP BY
			MONTH(v.OrderDate)
		,	year(v.OrderDate)
	) AS v
GROUP BY
		NumMois, Annee, ParMois
ORDER BY
		Annee, NumMois ASC
 
 
 
 
 
 