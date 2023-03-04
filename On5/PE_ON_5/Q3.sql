SELECT E.EmployeeID, E.FirstName, E.LastName, E.Salary, E.Commission_pct, E.HireDate
FROM Employees E
WHERE (E.Salary BETWEEN 4000 AND 10000) AND (E.Commission_pct > 0) AND (E.FirstName LIKE '%E%' OR E.FirstName LIKE '%e%')
ORDER BY E.HireDate DESC