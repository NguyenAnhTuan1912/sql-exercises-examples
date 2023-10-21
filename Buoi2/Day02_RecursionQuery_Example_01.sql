-- Calculate factorial with Recursion.
WITH GiaiThua AS (
	SELECT 1 as prev_n, 1 as n
	UNION ALL
	SELECT prev_n + 1 as prev_n, (prev_n + 1) * n as n
	FROM GiaiThua
)
SELECT prev_n, n
FROM GiaiThua
OPTION (MAXRECURSION 9)