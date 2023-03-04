SELECT E.EmployeeID, E.FirstName, E.LastName, E.DepartmentID,  D.DepartmentName,
	CASE WHEN E1.NumberOfSubordinates IS NOT NULL THEN E1.NumberOfSubordinates ELSE 0 END AS NumberOfSubordinates
FROM Employees E LEFT JOIN ( 
	SELECT E.ManagerID, COUNT(E.ManagerID) AS NumberOfSubordinates
	FROM Employees E
	GROUP BY E.ManagerID
) E1 ON E.EmployeeID = E1.ManagerID LEFT JOIN Departments D ON E.DepartmentID = D.DepartmentID
WHERE NumberOfSubordinates > 0 OR D.DepartmentName = 'IT'
ORDER BY NumberOfSubordinates DESC, D.LocationID ASC