use AdventureWorksDW2017; 



WITH Ventes (Annee, NumWeek, VenteWeek)  
AS  
(  
    SELECT YEAR(OrderDate) as Annee, DATEPART(wk,OrderDate) as NumWeek, sum(SalesAmount) as VenteWeek
    FROM FactInternetSales  
    GROUP BY YEAR(OrderDate), DATEPART(wk,OrderDate) 
)  
SELECT *, CASE WHEN VenteWeek > 100000 THEN 'Oui' ELSE 'Non' END as 'Rentable'
FROM Ventes
ORDER BY Annee,NumWeek 
GO  



WITH Ventes (Annee, NumWeek, VenteWeek)  
AS  
(  
    SELECT YEAR(OrderDate) as Annee, DATEPART(wk,OrderDate) as NumWeek, sum(SalesAmount) as VenteWeek
    FROM FactInternetSales  
    GROUP BY YEAR(OrderDate), DATEPART(wk,OrderDate) 
)  
SELECT Annee, SUM(CASE WHEN VenteWeek > 100000 THEN 1 ELSE 0 END) as 'Rentable'
FROM Ventes
GROUP BY Annee
ORDER BY Annee
GO 