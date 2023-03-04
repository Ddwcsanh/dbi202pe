SELECT C.CountryID,C.CountryName,C.RegionID
FROM Departments D LEFT JOIN Locations L ON D.LocationID = L.LocationID
	RIGHT JOIN Countries C ON L.CountryID = C.CountryID
WHERE D.DepartmentID IS NULL