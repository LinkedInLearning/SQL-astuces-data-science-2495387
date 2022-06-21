use AdventureWorksDW2017; 


-- Toutes les colonnes
select * from FactInternetSales;


-- Sélection de colonnes
SELECT  [SalesOrderNumber]  
      ,	[SalesOrderLineNumber] 
	  , [Productkey]  
      ,	[OrderQuantity]  
      ,	[UnitPrice]  
      ,	[SalesAmount]  
      ,	[TaxAmt]      
      ,	[OrderDate]        
FROM [dbo].[FactInternetSales]



-- Utilisation des aliases
SELECT  [SalesOrderNumber] as 'Ordre'
      ,	[SalesOrderLineNumber] as 'Ligne'
	  , [Productkey] as 'clé'
      ,	[OrderQuantity] as 'Quantité'
      ,	[UnitPrice] as 'Prix'
      ,	[SalesAmount] as 'Vente'
      ,	[TaxAmt] as 'Taxes'      
      ,	[OrderDate] as 'Date'      
FROM [dbo].[FactInternetSales]


-- Limitation des résultats
SELECT TOP 5
		[SalesOrderNumber] as 'Ordre'
      ,	[SalesOrderLineNumber] as 'Ligne'
	  , [Productkey] as 'clé'
      ,	[OrderQuantity] as 'Quantité'
      ,	[UnitPrice] as 'Prix'
      ,	[SalesAmount] as 'Vente'
      ,	[TaxAmt] as 'Taxes'      
      ,	[OrderDate] as 'Date'      
FROM [dbo].[FactInternetSales]