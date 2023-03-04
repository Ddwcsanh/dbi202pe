SELECT TOP 1 P.ProductID, P.Name, SUM(PIN.Quantity) AS TotalQuantity
FROM Product P JOIN ProductInventory PIN ON P.ProductID = PIN.ProductID
GROUP BY P.ProductID, P.Name
ORDER BY TotalQuantity DESC

SELECT P.ProductID, P.Name, SUM(PIN.Quantity) AS TotalQuantity
FROM Product P JOIN ProductInventory PIN ON P.ProductID = PIN.ProductID
GROUP BY P.ProductID, P.Name
HAVING SUM(PIN.Quantity) = (
	SELECT MAX(a.SumOfQuantty)
	FROM (SELECT PIN.ProductID, SUM(PIN.Quantity) AS SumOfQuantty
	FROM ProductInventory PIN
	GROUP BY PIN.ProductID) a
)