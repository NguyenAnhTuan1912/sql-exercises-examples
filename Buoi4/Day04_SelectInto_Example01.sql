USE NORTHWND
GO

-- SELECT INTO
/*
  Copy all records that match the condition and paste to new
  table named [Temp_HighValueProducts]
*/ 
SELECT *
INTO HighValueProducts
FROM Products as P
WHERE P.UnitPrice > 50

/*
  Select and copy P.ProductID, P.ProductName, S.CompanyName, C.CategoryName
  from Products, Suppliers and Categories respectively that satisfy the
  condition and paste to table named [Temp_Products].
*/
SELECT P.ProductID, P.ProductName, S.CompanyName, C.CategoryName
INTO Test_Products
FROM Products as P, Suppliers as S, Categories as C
WHERE P.CategoryID = C.CategoryID AND S.SupplierID = P.SupplierID

/*

*/

SELECT *
FROM Customers

SELECT *
FROM Orders

SELECT *
INTO CustomersInLondon
FROM Customers as C
WHERE C.City LIKE 'London'

-- Drop tables
DROP TABLE CustomersInLondon, HighValueProducts, Test_Products