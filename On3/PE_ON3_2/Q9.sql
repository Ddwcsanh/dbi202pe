CREATE TRIGGER InsertProduct ON Product
	AFTER INSERT
AS
	BEGIN
		SELECT I.ProductName, S.SubCategoryName
		FROM inserted I JOIN SubCategory S ON I.SubCategoryID = S.ID
	END