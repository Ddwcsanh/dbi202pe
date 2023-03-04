SELECT * FROM ProductInventory
order by LocationID asc

DELETE FROM ProductInventory
WHERE LocationID = (
	SELECT LocationID
	FROM Location
	WHERE Location.Name LIKE 'Tool Crib'
	)