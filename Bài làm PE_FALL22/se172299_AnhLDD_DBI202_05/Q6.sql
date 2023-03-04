SELECT E.Fname, E.Lname, E.Salary, D.Dname
FROM EMPLOYEE E LEFT JOIN (
	SELECT e.Dno, MAX(E.Salary) AS MaxSalary
	FROM EMPLOYEE E
	GROUP BY E.Dno
) MAX ON E.Dno = MAX.Dno
LEFT JOIN DEPARTMENT D ON E.Dno = D.Dnumber
WHERE E.Salary = MAX.MaxSalary