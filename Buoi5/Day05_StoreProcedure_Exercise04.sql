USE NORTHWND
GO

-- Write a SP to get customers depend on their Region or Country.
SELECT *
FROM Customers
GO

CREATE PROCEDURE GetCustomersByRegionOrCountry
(
  @RegionOrCountry NVARCHAR(50)
)
AS
BEGIN
  SELECT *
  FROM Customers AS C
  WHERE C.Country LIKE @RegionOrCountry OR C.Region LIKE @RegionOrCountry
END

EXEC GetCustomersByRegionOrCountry
  @RegionOrCountry = 'Canada'
GO

-- Drop SP
DROP PROCEDURE GetCustomersByRegionOrCountry