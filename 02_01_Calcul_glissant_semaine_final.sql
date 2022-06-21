use AdventureWorksDW2017; 

SELECT	AVG(v.SalesAmount) VenteWeek 
	,	DATEPART(ww, v.OrderDate) as NumWeek
FROM	FactInternetSales v
WHERE	YEAR(v.OrderDate) = 2012
GROUP BY
		DATEPART(ww, v.OrderDate)
ORDER BY
		NumWeek ASC

-- calcul sur les trois dernières semaines 
SELECT
		AVG(VenteWeek) OVER (ORDER BY NumWeek ROWS BETWEEN 3 PRECEDING AND CURRENT ROW) as Moyenne_3_Semaines
	,	VenteWeek as SemaineEnCours
	,	NumWeek
FROM (
	SELECT	SUM(v.SalesAmount) as VenteWeek 
		,	DATEPART(ww, v.OrderDate) as NumWeek
	FROM	FactInternetSales v
	WHERE	YEAR(v.OrderDate) = 2012
	GROUP BY
			DATEPART(ww, v.OrderDate)
	) AS sub
GROUP BY
		NumWeek, VenteWeek