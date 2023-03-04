SELECT J.JobID, JobTitle, COUNT(J.JobID) AS [NumberOfEmployees]
FROM Jobs J JOIN Employees E ON J.JobID = E.JobID
GROUP BY J.JobID, JobTitle
HAVING COUNT(J.JobID) = (
	SELECT MAX([count]) 
	FROM (
		SELECT COUNT(JobID) AS [count] 
		FROM Employees 
		GROUP BY JobID
		)d
	)

