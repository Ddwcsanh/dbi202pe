SELECT *
FROM (
	SELECT TOP 5 *
	FROM Product
	ORDER BY UnitPrice DESC
) D
UNION
SELECT * FROM (
	SELECT TOP 5 *
	FROM Product
	ORDER BY UnitPrice ASC
) D
ORDER BY UnitPrice DESC