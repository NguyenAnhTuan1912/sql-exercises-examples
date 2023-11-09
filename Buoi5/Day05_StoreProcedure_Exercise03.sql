USE NORTHWND
GO

-- Write a SP to get products by category and get its quantity in limit
SELECT *
FROM Products
GO

SELECT *
FROM Categories
GO

CREATE PROCEDURE GetProductsInLimitByCategoryName
(
  @CategoryName NVARCHAR(50),
  @LimitOfQuantity INT
)
AS
BEGIN
  SELECT
    TOP(@LimitOfQuantity) *
  FROM Products AS P
  JOIN Categories AS C ON C.CategoryID = P.CategoryID
  WHERE C.CategoryName LIKE @CategoryName
END

EXEC GetProductsInLimitByCategoryName
  @CategoryName = 'Beverages',
  @LimitOfQuantity = 10
GO

-- Drop SP
DROP PROCEDURE GetProductsInLimitByCategoryName