use AdventureWorksDW2017;


SELECT  SalesOrderNumber as 'Commande'
      ,	SalesOrderLineNumber as 'Ligne'
	  , Productkey as 'clé'
      ,	OrderQuantity as 'Quantité'
      , UnitPrice as 'Prix'
      ,	SalesAmount as 'Vente'
      ,	TaxAmt as 'Taxe'      
      ,	OrderDate as 'Date'      
FROM FactInternetSales

 

select * from DimProduct


SELECT  SalesOrderNumber as 'Commande'
      ,	SalesOrderLineNumber as 'Ligne'
	  , Vente.Productkey as 'clé'
      ,	OrderQuantity as 'Quantité'
      , UnitPrice as 'Prix'
      ,	SalesAmount as 'Vente'
      ,	TaxAmt as 'Taxe'      
      ,	OrderDate as 'Date' 
	  , EnglishProductName 'Nom_Anglais'

FROM FactInternetSales Vente

inner join DimProduct Produit on Vente.ProductKey = Produit.ProductKey



select distinct EnglishProductName from DimProduct



 



SELECT  SalesOrderNumber as 'Commande'
      ,	SalesOrderLineNumber as 'Ligne'
	  , Vente.Productkey as 'clé'
      ,	OrderQuantity as 'Quantité'
      , UnitPrice as 'Prix'
      ,	SalesAmount as 'Vente'
      ,	TaxAmt as 'Taxe'      
      ,	OrderDate as 'Date' 
	  , EnglishProductName 'Nom_Anglais'

FROM FactInternetSales Vente

right join DimProduct Produit on Vente.ProductKey = Produit.ProductKey



 

SELECT  SalesOrderNumber as 'Commande'
      ,	SalesOrderLineNumber as 'Ligne'
	  , Vente.Productkey as 'clé'
      ,	OrderQuantity as 'Quantité'
      , UnitPrice as 'Prix'
      ,	SalesAmount as 'Vente'
      ,	TaxAmt as 'Taxe'      
      ,	OrderDate as 'Date' 
	  , EnglishProductName 'Nom_Anglais'

FROM FactInternetSales Vente

right join DimProduct Produit on Vente.ProductKey = Produit.ProductKey
and	produit.StartDate > '2012-07-07'
 
