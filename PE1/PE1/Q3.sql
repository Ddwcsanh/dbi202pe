SELECT JobID, JobTitle, min_salary
FROM Jobs
WHERE JobTitle LIKE '%MANAGER%' AND min_salary > 5000
ORDER BY min_salary DESC, JobTitle ASC