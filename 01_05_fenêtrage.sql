use AdventureWorksDW2017; 

-- Comparaison des moyennes des ventes par groupe et par pays
use AdventureWorksDW2017;
SELECT  		
		t.SalesTerritoryGroup
	,	t.SalesTerritoryCountry	 
	,	AVG(v.SalesAmount) OVER(PARTITION BY t.SalesTerritoryGroup ) as 'AvgGroup'		
	,	AVG(v.SalesAmount) OVER(PARTITION BY t.SalesTerritoryCountry ) as 'AvgCountry'	 
	
FROM FactInternetSales v
JOIN DimSalesTerritory t ON
	v.SalesTerritoryKey = t.SalesTerritoryKey



-- Comparaison des moyennes des ventes par groupe et par pays avec des valeurs uniques pour le couple (groupe/pays)
SELECT DISTINCT  		
		t.SalesTerritoryGroup
	,	t.SalesTerritoryCountry	 
	,	AVG(v.SalesAmount) OVER(PARTITION BY t.SalesTerritoryGroup ) as 'AvgGroup'		
	,	AVG(v.SalesAmount) OVER(PARTITION BY t.SalesTerritoryCountry ) as 'AvgCountry'
	 	
FROM FactInternetSales v
JOIN DimSalesTerritory t ON
	v.SalesTerritoryKey = t.SalesTerritoryKey



-- Comparaison des moyennes des ventes par groupe et par pays pour l'année 2012
SELECT   DISTINCT 		
		t.SalesTerritoryGroup
	,	t.SalesTerritoryCountry	 
	,	AVG(v.SalesAmount) OVER(PARTITION BY t.SalesTerritoryGroup ) as 'AvgGroup'		
	,	AVG(v.SalesAmount) OVER(PARTITION BY t.SalesTerritoryCountry ) as 'AvgCountry'
	 
	
FROM FactInternetSales v
JOIN DimSalesTerritory t ON
	v.SalesTerritoryKey = t.SalesTerritoryKey

WHERE
		YEAR(v.OrderDate) = 2012



-- Comparaison des moyennes des ventes par groupe et par pays pour l'année 2012 et affichage par ordre (Groupe, Pays)
SELECT   DISTINCT 		
		t.SalesTerritoryGroup
	,	t.SalesTerritoryCountry	 
	,	AVG(v.SalesAmount) OVER(PARTITION BY t.SalesTerritoryGroup ) as 'AvgGroup'		
	,	AVG(v.SalesAmount) OVER(PARTITION BY t.SalesTerritoryCountry ) as 'AvgCountry'
	 
	
FROM FactInternetSales v
JOIN DimSalesTerritory t ON
	v.SalesTerritoryKey = t.SalesTerritoryKey

WHERE
		YEAR(v.OrderDate) = 2012
ORDER BY
		1,2



-- Best Practice:  nommage des colonnes avec la clause Order By

SELECT   DISTINCT 		
		t.SalesTerritoryGroup
	,	t.SalesTerritoryCountry	 
	,	AVG(v.SalesAmount) OVER(PARTITION BY t.SalesTerritoryGroup ) as 'AvgGroup'		
	,	AVG(v.SalesAmount) OVER(PARTITION BY t.SalesTerritoryCountry ) as 'AvgCountry'
	 
	
FROM FactInternetSales v
JOIN DimSalesTerritory t ON
	v.SalesTerritoryKey = t.SalesTerritoryKey

WHERE
		YEAR(v.OrderDate) = 2012
ORDER BY
		t.SalesTerritoryGroup, t.SalesTerritoryCountry

	