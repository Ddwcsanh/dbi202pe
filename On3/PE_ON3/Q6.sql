SELECT O.CustomerID, C.CustomerName, COUNT(O.CustomerID) AS NumberOfOrders
FROM Orders O LEFT JOIN Customer C ON O.CustomerID = C.ID
GROUP BY O.CustomerID, C.CustomerName
HAVING COUNT(O.CustomerID) = (
	SELECT MAX(C.NumberOfOrders)
	FROM (
		SELECT COUNT(O.CustomerID) AS NumberOfOrders
		FROM Orders O
		GROUP BY O.CustomerID
	) C
)
