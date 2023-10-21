-- Use recursive query to create a management structure of employees in "Employees" table.
-- "ReportsTo" is ID of Manager.
DECLARE @EmployeeId int
SET @EmployeeId = 2;

WITH Emp_CTE AS (
	SELECT
		EMP.EmployeeID,
		(EMP.LastName + ' ' + EMP.FirstName) AS FullName,
		EMP.ReportsTo AS ManagerId,
		0 AS Level
	FROM Employees AS EMP
	WHERE EMP.EmployeeID = @EmployeeId
	-- Merge query result.
	UNION ALL
	SELECT
		EMP1.EmployeeID,
		(EMP1.LastName + ' ' + EMP1.FirstName) AS FullName,
		EMP1.ReportsTo AS ManagerId,
		(Level + 1) AS Level
	FROM Employees AS EMP1
	JOIN Emp_CTE ON EMP1.ReportsTo = Emp_CTE.EmployeeID
)
SELECT *
FROM Emp_CTE
OPTION (MAXRECURSION 9)