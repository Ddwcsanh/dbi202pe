SELECT E.EmployeeID, E.FirstName, E.LastName, E.DepartmentID, D.DepartmentName,
CASE WHEN E1.NumberOfSubordinates IS NULL THEN 0 ELSE E1.NumberOfSubordinates END AS NumberOfSubordinates
FROM Employees E LEFT JOIN (
	SELECT E.ManagerID, COUNT(E.ManagerID) AS NumberOfSubordinates
	FROM Employees E
	GROUP BY E.ManagerID
) E1 ON E.EmployeeID = e1.ManagerID
	LEFT JOIN Departments D ON E.DepartmentID = D.DepartmentID
WHERE E1.NumberOfSubordinates IS NOT NULL OR D.DepartmentName = 'IT'
ORDER BY NumberOfSubordinates DESC