SELECT P.SubCategoryID, S.SubCategoryName, COUNT(P.SubCategoryID) AS NumberOfProducts
FROM Product P LEFT JOIN SubCategory S ON P.SubCategoryID = S.ID
GROUP BY P.SubCategoryID, S.SubCategoryName
HAVING COUNT(P.SubCategoryID) > 100
ORDER BY NumberOfProducts DESC