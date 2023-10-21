-- Get information of Orders with total of price and ratio of total and freight
-- WITH NORMAL SOLUTION
SELECT
	OrderID,
	OrderDate,
	Freight,
	(
		SELECT SUM(OD.Quantity * OD.UnitPrice)
		FROM [Order Details] AS OD
		WHERE OD.OrderID = O.OrderID
	) as Total,
	(
		SELECT SUM(OD.Quantity * OD.UnitPrice)
		FROM [Order Details] AS OD
		WHERE OD.OrderID = O.OrderID
	) / O.Freight as Ratio
FROM Orders AS O
;

-- WITH CTE
WITH TotalOfOrders AS (
	SELECT OrderID, SUM(OD.Quantity * OD.UnitPrice) as Total
	FROM [Order Details] AS OD
	GROUP BY OrderID
)
SELECT
	O.OrderID,
	O.CustomerID,
	O.ShipName,
	O.ShipAddress,
	O.ShipCountry,
	O.Freight,
	TOO.Total,
	(TOO.Total / O.Freight) AS Ratio
FROM Orders AS O
JOIN TotalOfOrders AS TOO ON O.OrderID = TOO.OrderID
;