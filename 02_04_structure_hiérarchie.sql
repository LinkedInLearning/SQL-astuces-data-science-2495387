use AdventureWorksDW2017; 

WITH Table_Relation (ManagerID, EmployeeID, Title, DeptID, Level)
AS
(
 
    SELECT e.ParentEmployeeKey, e.EmployeeKey, e.Title, e.DepartmentName, 
        0 AS Level
    FROM DimEmployee AS e
    WHERE e.ParentEmployeeKey IS NULL
    UNION ALL
 
    SELECT e.ParentEmployeeKey, e.EmployeeKey, e.Title, e.DepartmentName,
        Level + 1
    FROM DimEmployee AS e
    INNER JOIN Table_Relation AS d
        ON e.ParentEmployeeKey = d.EmployeeID
)
 
SELECT ManagerID, EmployeeID, Title, DeptID, Level
FROM Table_Relation
-- WHERE DeptID = 'Information Services' OR Level = 0
GO
