-- Calculate total of first N number with Recursion.
WITH TotalOfFirstNNumber AS (
	SELECT
		1 AS prev_n,
		1 AS n
	UNION ALL
	SELECT
		prev_n + 1 AS prev_n,
		(prev_n + 1) + n AS n
	FROM TotalOfFirstNNumber
)
SELECT prev_n, n
FROM TotalOfFirstNNumber
OPTION (MAXRECURSION 9)