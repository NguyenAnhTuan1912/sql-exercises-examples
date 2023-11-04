USE NORTHWND
GO

-- Write a trigger to update new date when a record in Products is updated.
-- Copy to new table.
SELECT TOP(200) *
INTO Products_Test
FROM Products

SELECT *
FROM Products_Test
GO

-- Add LastModified
ALTER TABLE Products_Test
ADD LastModified Datetime
GO

CREATE TRIGGER UpdateLastModifiedOfProduct
ON Products
AFTER UPDATE
AS
BEGIN
  UPDATE Products_Test
  SET LastModified = GETDATE()
  FROM inserted AS I
  WHERE I.ProductID = Products_Test.ProductID
END
GO

-- Remember to set up this SP first.
EXEC UpdateUnitsInStockOfProductById
  @ProductID = 1,
  @NewUnitsInStock = 41
GO

-- DROP SOMETHING
DROP TRIGGER UpdateLastModifiedOfProduct
DROP TABLE Products_Test