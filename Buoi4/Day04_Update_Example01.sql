USE NORTHWND
GO

-- Create new table
SELECT *
INTO Test_Customers
FROM Customers as C
GO

SELECT *
FROM Test_Customers

-- UPDATE
UPDATE Test_Customers
SET Country = 'Pháp'
WHERE City LIKE 'Paris'

-- Drop tables
DROP TABLE Test_Customers