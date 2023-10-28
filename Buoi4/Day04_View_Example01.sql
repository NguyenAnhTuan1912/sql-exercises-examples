USE NORTHWND
GO

-- VIEW
CREATE VIEW MonthlySales AS
SELECT
  YEAR(OrderDate) as 'Năm',
  MONTH(OrderDate) as 'Tháng',
  COUNT(OrderID) as 'Số lượng đơn hàng'
FROM Orders
GROUP BY
  YEAR(OrderDate), MONTH(OrderDate)
GO

SELECT *
FROM MonthlySales
GO