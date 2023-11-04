USE NORTHWND
GO

-- Write a trigger to check that if customer has order, then doesn't allow to delete this customer
-- else delete.
-- Copy Customers
SELECT *
INTO Customers_Test
FROM Customers
GO

SELECT *
FROM Customers_Test
GO

SELECT C.CustomerID, CompanyName, OrderID
FROM Customers_Test AS C
JOIN Orders AS O ON O.CustomerID LIKE C.CustomerID
GO

-- Create trigger
CREATE TRIGGER CheckOrderExistWhenDeleteCustomer
ON Customers_Test
INSTEAD OF DELETE
AS
BEGIN
  DECLARE @ORDERID NVARCHAR(10)

  -- Get ID of deleted customer with SELECT Statement
  SELECT @ORDERID = O.OrderID
  FROM Orders AS O
  JOIN deleted as D ON D.CustomerID LIKE O.CustomerID

  -- 
  IF(@ORDERID is NULL)
    BEGIN
      DELETE FROM Customers_Test
      WHERE CustomerID LIKE @ORDERID
      RETURN
    END
  ELSE
    BEGIN
      print 'Cannot delete this customer because there are orders of this customer in database.'
      RETURN
    END
END

-- Delete a customer who has orders.
DELETE FROM Customers_Test
WHERE CustomerID LIKE 'ALFKI'

-- Create new customer to test.
INSERT INTO Customers_Test (CustomerID, CompanyName, ContactName, ContactTitle)
  VALUES ('TEST1', 'Nguyen Anh Tuan', 'Apple', 'Produce iPhone')

DELETE FROM Customers_Test
WHERE CustomerID LIKE 'TEST1'

-- DROP SOMETHING
DROP TRIGGER CheckOrderExistWhenDeleteCustomer
DROP TABLE Customers_Test