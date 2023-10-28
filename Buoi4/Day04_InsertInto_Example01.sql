USE NORTHWND
GO

SELECT *
FROM Customers

-- Insert a record to Customers
INSERT INTO Customers (CustomerID, CompanyName, ContactName)
VALUES
  ('KHM1', 'Google', 'Nguyen Anh Tuan')

SELECT *
FROM Products

SELECT *
FROM Categories

SELECT *
FROM Suppliers

INSERT INTO Products
  (
    ProductName, SupplierID,
    CategoryID, QuantityPerUnit, UnitPrice,
    UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued
   )
VALUES
  (
    'Xuc xich', 4,
    6, '8 pies', 4.00,
    30, 10, 5, 0
   )