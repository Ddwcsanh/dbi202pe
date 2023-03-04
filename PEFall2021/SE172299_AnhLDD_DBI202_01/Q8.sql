--For not being duplicated
IF OBJECT_ID('proc_product_quantity') IS NOT NULL
DROP PROCEDURE proc_product_quantity

--Main
CREATE PROCEDURE proc_product_quantity
	@productID int,
	@totalQuantity int output
AS 
	SET @totalQuantity = (
		SELECT SUM(PIN.Quantity) AS TotalQuantity
		FROM ProductInventory PIN
		WHERE PIN.ProductID = @productID
		GROUP BY PIN.ProductID
	)
--For testing
DECLARE @x int
EXEC proc_product_quantity 1, @x output
SELECT @x as TotalQuantity