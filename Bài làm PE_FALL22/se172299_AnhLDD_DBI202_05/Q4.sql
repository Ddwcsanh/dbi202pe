SELECT DISTINCT E.Fname, E.Lname
FROM EMPLOYEE E LEFT JOIN DEPENDENT D ON E.Ssn = D.Essn
WHERE E.Fname = D.Dependent_name AND E.Sex = D.Sex