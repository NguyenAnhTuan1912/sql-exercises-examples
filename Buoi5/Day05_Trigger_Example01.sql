USE NORTHWND
GO

-- TRIGGER
-- Write a trigger to change name to uppercase.
SELECT *
FROM Customers
GO

CREATE TRIGGER InvokeWhenAddCustomer
ON Customers
AFTER INSERT
AS
BEGIN
  UPDATE Customers
  SET CompanyName = UPPER(I.CompanyName)
  FROM inserted as I
  WHERE I.CustomerID LIKE Customers.CustomerID
END
GO

DROP TRIGGER InvokeWhenAddCustomer

-- Remember to set up this SP first.
EXEC AddCustomer
  @CustomerID = 'TUANN',
  @CompanyName = 'Apple',
  @ContactName = 'Steve Job',
  @ContactTitle = 'Sales iPhone'
GO