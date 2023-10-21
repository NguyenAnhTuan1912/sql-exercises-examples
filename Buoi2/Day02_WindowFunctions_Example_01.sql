-- Get ranking by UnitPrice.
SELECT
	ProductID,
	ProductName,
	CategoryID,
	UnitPrice,
	RANK() OVER (
		ORDER BY UnitPrice DESC
	) as RANKING
FROM Products

-- Get ranking by UnitPrice depend on category.
SELECT
	ProductID,
	ProductName,
	CategoryID,
	UnitPrice,
	RANK() OVER (
		PARTITION BY CategoryID
		ORDER BY UnitPrice DESC
	) as RANKING
FROM Products