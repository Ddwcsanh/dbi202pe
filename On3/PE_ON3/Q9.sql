CREATE TRIGGER InsertProduct ON Product
	AFTER INSERT
AS 
	BEGIN
		SELECT i.ProductName, S.SubCategoryName 
		FROM inserted i LEFT JOIN SubCategory S ON I.SubCategoryID = S.ID
	END

DROP TRIGGER InsertProduct

INSERT INTO Product(ProductName, UnitPrice, SubCategoryID)
VALUES ('Craft paper', 0.5, 3)