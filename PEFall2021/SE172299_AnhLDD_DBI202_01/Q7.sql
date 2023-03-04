SELECT L.LocationID, L.Name AS LocationName, P.ProductID, P.Name AS ProductName, PIN.Quantity
FROM ProductInventory PIN JOIN Location L ON PIN.LocationID = L.LocationID
	JOIN Product P ON PIN.ProductID = P.ProductID
	LEFT JOIN (
		SELECT LocationID, MAX(Quantity) AS MaxQuantity
		FROM ProductInventory
		GROUP BY LocationID
	) M on pin.LocationID = M.LocationID
WHERE PIN.Quantity = M.MaxQuantity
ORDER BY LocationName ASC, ProductName DESC