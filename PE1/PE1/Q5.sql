SELECT L.LocationID, StreetAddress, City, StateProvince, CountryID, CASE WHEN L1.NumberOfDepartments IS NOT NULL THEN L1.NumberOfDepartments ELSE 0 END
FROM Locations L LEFT JOIN (SELECT LocationID, COUNT(LocationID) AS [NumberOfDepartments] FROM Departments GROUP BY LocationID) L1 
	ON L.LocationID = L1.LocationID
ORDER BY NumberOfDepartments DESC, LocationID ASC