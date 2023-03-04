SELECT PM.ModelID, PM.Name AS ModelName, COUNT(P.ProductID) AS NumberOfProducts
FROM ProductModel PM LEFT JOIN Product P ON P.ModelID = PM.ModelID
WHERE PM.Name LIKE 'Mountain%' OR PM.Name LIKE 'ML Mountain%'
GROUP BY PM.ModelID, PM.Name
ORDER BY NumberOfProducts DESC