SELECT P.ProductID, P.LocationID, P.Quantity
FROM ProductInventory P
WHERE P.LocationID = 7 AND P.Quantity > 250
ORDER BY Quantity DESC