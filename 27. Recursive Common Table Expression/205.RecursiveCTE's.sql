-- SQL - {}
-- Exercise: Write a Recursive CTE to print out a countdown of 3 to 1



-- solution

WITH RECURSIVE countdown(val) AS (
	SELECT 3 AS val
	UNION
	SELECT val-1 FROM countdown WHERE val > 1
)
SELECT *
FROM countdown