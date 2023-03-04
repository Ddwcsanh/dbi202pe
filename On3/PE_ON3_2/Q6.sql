SELECT O.CustomerID, C.CustomerName, COUNT(O.CustomerID) AS NumberOfOrders
FROM Orders O JOIN Customer C ON O.CustomerID = C.ID
GROUP BY O.CustomerID, C.CustomerName
HAVING COUNT(O.CustomerID) = (
	SELECT MAX(O1.NumberOfOrders)
	FROM (
		SELECT O.CustomerID, COUNT(O.CustomerID) AS NumberOfOrders
		FROM Orders O
		GROUP BY O.CustomerID
	) O1
)