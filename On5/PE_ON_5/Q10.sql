DELETE FROM Locations
WHERE Locations.LocationID IN (SELECT L.LocationID
FROM Locations L LEFT JOIN Departments D ON L.LocationID = D.LocationID
WHERE DepartmentID IS NULL)