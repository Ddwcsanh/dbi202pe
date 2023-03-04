DELETE FROM Locations
WHERE LocationID IN (
	SELECT L.LocationID
	FROM Locations L LEFT JOIN Departments D ON L.LocationID = D.LocationID
	WHERE D.DepartmentID IS NULL
)