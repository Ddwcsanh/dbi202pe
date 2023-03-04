SELECT EmployeeID, FirstName, LastName, Salary, D.DepartmentID, DepartmentName, NumberOfSubordinates = CASE WHEN NumberOfSubordinates > 0 THEN NumberOfSubordinates ELSE 0 END
FROM Employees E JOIN Departments D ON E.DepartmentID = D.DepartmentID 
	LEFT JOIN (SELECT ManagerID, COUNT(ManagerID) AS [NumberOfSubordinates] FROM Employees GROUP BY ManagerID) M ON E.EmployeeID = M.ManagerID
WHERE Salary > 10000 OR NumberOfSubordinates > 0 
ORDER BY NumberOfSubordinates DESC, LastName ASC