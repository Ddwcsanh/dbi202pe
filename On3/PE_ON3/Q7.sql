SELECT *
FROM (
	SELECT TOP 5 * 
	FROM Product
	ORDER BY UnitPrice DESC
) D
UNION
SELECT *
FROM (
	SELECT TOP 5 *
	FROM Product
	ORDER BY UnitPrice ASC
) D1
ORDER BY UnitPrice DESC