SELECT P.ProductID, P.Name AS ProductName, P.Color, P.Cost, P.Price, PIN.LocationID, L.Name AS LocationName, PIN.Shelf, PIN.Bin, PIN.Quantity
FROM Product P LEFT JOIN ProductInventory PIN ON P.ProductID = PIN.ProductID
	LEFT JOIN Location L ON PIN.LocationID = L.LocationID
WHERE P.Color = 'Yellow' AND P.Cost < 400