CREATE PROCEDURE CountProduct 
	@OrderID nvarchar(255),
	@NbProduct int output
AS 
	SET @NbProduct = (
		SELECT COUNT(OrderID)
		FROM OrderDetails
		GROUP BY OrderID
		HAVING OrderID = @OrderID
	)