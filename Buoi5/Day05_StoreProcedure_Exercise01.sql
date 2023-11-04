USE NORTHWND
GO

-- Write a SP to get a list of orders by customer's name.
SELECT *
FROM Orders
GO

SELECT *
FROM Customers
GO

CREATE PROCEDURE GetOrdersByCustomerName
(
  @CustomerName NVARCHAR(30)
)
AS
BEGIN
  SELECT *
  FROM Orders AS O
  JOIN Customers AS C ON O.CustomerID LIKE C.CustomerID
  WHERE C.CompanyName = @CustomerName
END

EXEC GetOrdersByCustomerName
  @CustomerName = 'Alfreds Futterkiste'
GO