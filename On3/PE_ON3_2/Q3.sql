SELECT C.ID, C.CustomerName, C.Segment, C.Country, C.City, C.State, C.PostalCode, C.Region
FROM Customer C JOIN Orders O ON C.ID = O.CustomerID 
WHERE CustomerName LIKE 'B%' AND MONTH(O.OrderDate) = 12 AND YEAR(O.OrderDate) = 2017
ORDER BY C.Segment DESC, C.CustomerName ASC