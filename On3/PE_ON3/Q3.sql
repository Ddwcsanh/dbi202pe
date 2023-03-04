SELECT C.ID, C.CustomerName, C.Segment, C.Country, C.City, C.State, C.PostalCode, C.Region
FROM Customer C JOIN Orders O ON C.ID = O.CustomerID
WHERE CustomerName LIKE 'B%' AND (O.OrderDate >= '2017/12/1' AND O.OrderDate <= '2017/12/31') 
ORDER BY Segment DESC, CustomerName ASC