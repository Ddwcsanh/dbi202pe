IF OBJECT_ID('tr_insert_Product_Subcategory') IS NOT NULL
DROP TRIGGER tr_insert_Product_Subcategory

--main
CREATE TRIGGER tr_insert_Product_Subcategory ON Product
	AFTER INSERT
AS 
	BEGIN
		SELECT I.ProductID, I.Name AS ProductName, I.SubcategoryID, PS.Name AS SubcategoryName, ps.Category
		FROM inserted I LEFT JOIN ProductSubcategory PS ON I.SubcategoryID = PS.SubcategoryID
	END
--Test
INSERT INTO Product(ProductID, Name, Cost, Price, SubcategoryID, SellStartDate)
VALUES (1005, 'Product Test', 12, 15, 1, '2021-10-25')

DELETE FROM Product
WHERE ProductID = 1005

SELECT * FROM Product