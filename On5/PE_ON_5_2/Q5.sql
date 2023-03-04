SELECT E.JobID, J.JobTitle, COUNT(E.JobID) AS NumberOfEmployees
FROM Employees E JOIN Jobs J ON E.JobID = J.JobID
GROUP BY E.JobID, J.JobTitle
ORDER BY NumberOfEmployees DESC