SELECT OD.ProductID, P.ProductName, OD.Quantity
FROM OrderDetails OD LEFT JOIN Product P ON OD.ProductID = P.ID
WHERE OD.Quantity = (
	SELECT MAX(Quantity)
	FROM OrderDetails
)
GROUP BY OD.ProductID, p.ProductName, Quantity
ORDER BY ProductID ASC