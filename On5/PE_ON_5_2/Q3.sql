SELECT E.EmployeeID, E.FirstName, E.LastName, E.Salary, E.Commission_pct, E.HireDate
FROM Employees E
WHERE (E.Salary BETWEEN 4000 AND 10000) AND (E.Commission_pct > 0)
	AND (FirstName LIKE '%E%' OR FirstName LIKE '%e%')
ORDER BY HireDate DESC