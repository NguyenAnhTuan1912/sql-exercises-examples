USE NORTHWND
GO

-- Write a SP to update remain (in stock) quantity of product by ID with new quantity.
SELECT *
FROM Products
GO

SELECT *
FROM Customers
GO

CREATE PROCEDURE UpdateUnitsInStockOfProductById
(
  @ProductID INT,
  @NewUnitsInStock INT
)
AS
BEGIN
  UPDATE Products
  SET UnitsInStock = @NewUnitsInStock
  WHERE ProductID = @ProductID
END
GO

EXEC UpdateUnitsInStockOfProductById
  @ProductID = 1,
  @NewUnitsInStock = 40
GO

-- Drop SP
DROP PROCEDURE UpdateUnitsInStockOfProductById