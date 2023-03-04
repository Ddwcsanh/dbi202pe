SELECT EmployeeID, FirstName, LastName, Salary, DepartmentName, StateProvince, C.CountryID
FROM Employees E JOIN Departments D ON E.DepartmentID = D.DepartmentID
	JOIN Locations L ON D.LocationID = L.LocationID
	JOIN Countries C ON L.CountryID = C.CountryID
WHERE Salary > 3000 AND StateProvince = 'Washington' AND C.CountryID = 'US'