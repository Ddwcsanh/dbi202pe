SELECT OD.ProductID, P.ProductName, Quantity
FROM OrderDetails OD LEFT JOIN Product P ON OD.ProductID = P.ID
WHERE Quantity = (
	SELECT MAX(OD.Quantity)
	FROM OrderDetails OD
)