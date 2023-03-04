SELECT E.EmployeeID, E.FirstName, E.LastName, E.HireDate, E.JobID, E.DepartmentID, D.DepartmentName 
FROM Employees E JOIN Departments D ON E.DepartmentID = D.DepartmentID JOIN Jobs J ON E.JobID = J.JobID
WHERE YEAR(E.HireDate) = '2005' AND J.JobTitle = 'Stock Clerk'
