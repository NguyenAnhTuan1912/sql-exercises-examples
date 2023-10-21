-- Use LAG() to get information of Order and the previous Order of each customer.
SELECT
	CustomerID,
	OrderID,
	OrderDate,
	LAG(OrderDate) OVER(
		PARTITION BY CustomerID
		ORDER BY OrderDate DESC
	) as PreviousOrderDate
FROM Orders
ORDER BY CustomerID, OrderDate