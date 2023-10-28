USE AdventureWorks2022
GO

-- Index

SELECT COUNT(*) FROM [Sales].[SalesOrderDetail]

SET STATISTICS IO ON

-- Select data
SELECT * 
FROM [Sales].[SalesOrderDetail]
WHERE [CarrierTrackingNumber]='1B2B-492F-A9';

-- Index
CREATE INDEX IX_CarrierTrackingNumber
ON [Sales].[SalesOrderDetail] ([CarrierTrackingNumber])
