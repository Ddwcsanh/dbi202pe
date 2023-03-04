SELECT P.SubCategoryID, S.SubCategoryName, COUNT(P.SubCategoryID) NumberOfProducts
FROM Product P JOIN SubCategory S ON P.SubCategoryID = S.ID
GROUP BY P.SubCategoryID, S.SubCategoryName
HAVING COUNT(P.SubCategoryID) > 100
ORDER BY NumberOfProducts DESC