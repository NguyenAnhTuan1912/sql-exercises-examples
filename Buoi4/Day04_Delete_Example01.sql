USE NORTHWND
GO

-- Create new test table
SELECT *
INTO Test_Products
FROM Products as P
GO

SELECT *
INTO Test_Orders
FROM Orders as O
GO

-- DELETE
DELETE FROM Test_Orders
WHERE Test_Orders.OrderID = 10248

DELETE FROM Test_Products
WHERE Test_Products.UnitsInStock = 0

DROP TABLE Test_Orders, Test_Products