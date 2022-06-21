use AdventureWorksDW2017; 


-- Affichage de la table DimProduct

select * FROM DimProduct


-- Affichage de la table DimProductSubcategory
select * FROM DimProductSubcategory 



-- Affichage du nom anglais des produits de la sous catégorie VTT

SELECT EnglishProductName as 'Nom anglais'
FROM DimProduct p
WHERE p.ProductSubcategoryKey IN
    (SELECT sc.ProductSubcategoryKey
     FROM DimProductSubcategory sc
     WHERE sc.FrenchProductSubcategoryName = 'VTT')


-- La même requête réalisée avec un join

SELECT EnglishProductName as 'Nom anglais'
FROM DimProduct p
inner join DimProductSubcategory sousCat on p.ProductSubcategoryKey =sousCat.ProductSubcategoryKey 
and sousCat.FrenchProductSubcategoryName = 'VTT'


-- La même requête réalisée avec EXISTS
SELECT EnglishProductName 'Nom anglais'
FROM DimProduct p
WHERE EXISTS
    (SELECT *   
     FROM DimProductSubcategory psc
     WHERE	p.ProductSubcategoryKey = psc.ProductSubcategoryKey
	 AND	psc.FrenchProductSubcategoryName = 'VTT')
