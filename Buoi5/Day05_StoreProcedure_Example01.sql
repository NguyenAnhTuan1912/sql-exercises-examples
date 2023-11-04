USE NORTHWND
GO

-- STORED PROCEDURE
-- Write a procedure to get product by name.
SELECT *
FROM Products
GO

CREATE PROCEDURE GetProductByName
(
  @ProductName NVARCHAR(100)
)
AS
BEGIN
  SELECT *
  FROM Products as P
  WHERE P.ProductName LIKE @ProductName
END
GO

DECLARE @Name NVARCHAR(100) = 'Chai'
EXEC GetProductByName @ProductName = @Name
GO

-- Write a procedure to calculate total of sale of employee by id.
SELECT *
FROM Orders
GO

CREATE PROCEDURE GetEmployeeSalesTotalByID
(
  @EmployeeID INT
)
AS
BEGIN
  SELECT SUM(OD.UnitPrice * OD.Quantity) as Total
  FROM Orders as O
  JOIN [Order Details] as OD ON O.OrderID = OD.OrderID
  WHERE O.EmployeeID LIKE @EmployeeID
END
GO

DECLARE @EmpID INT = 2
EXEC GetEmployeeSalesTotalByID @EmployeeID = @EmpID
GO

-- Write a procedure to calculate total of sale of employee by id in year.
CREATE PROCEDURE GetEmployeeSalesTotalInYearByID
(
  @EmployeeID INT,
  @Year INT
)
AS
BEGIN
  SELECT SUM(OD.UnitPrice * OD.Quantity) as Total
  FROM Orders as O
  JOIN [Order Details] as OD ON O.OrderID = OD.OrderID
  WHERE O.EmployeeID = @EmployeeID AND YEAR(O.ShippedDate) = @Year
END
GO

DECLARE @EmpID INT = 2
DECLARE @Year INT = 1996
EXEC GetEmployeeSalesTotalInYearByID
  @EmployeeID = @EmpID,
  @Year = @Year
GO

-- Write a procedure to add a customer with ID, Company's name, contact's name and contact's title.
-- Company's name and contact's name will be in upper case.
SELECT *
FROM Customers
GO

CREATE PROCEDURE AddCustomer
(
  @CustomerID NVARCHAR(5),
  @CompanyName NVARCHAR(40),
  @ContactName NVARCHAR(30),
  @ContactTitle NVARCHAR(30)
)
AS
BEGIN
  INSERT INTO Customers (CustomerID, CompanyName, ContactName, ContactTitle)
  VALUES (@CustomerID, UPPER(@CompanyName), UPPER(@ContactName), @ContactTitle)
END
GO

EXEC AddCustomer
  @CustomerID = 'TUNAN',
  @CompanyName = 'Apple',
  @ContactName = 'Steve Job',
  @ContactTitle = 'Sales Macbook'
GO