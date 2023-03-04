CREATE PROCEDURE CountProduct 
	@OrderID nvarchar(255),
	@NbProduct int output
AS
	SET @NbProduct = (
		SELECT COUNT(OD.OrderID)
		FROM OrderDetails OD
		WHERE OD.OrderID = @OrderID
		GROUP BY OD.OrderID
	)