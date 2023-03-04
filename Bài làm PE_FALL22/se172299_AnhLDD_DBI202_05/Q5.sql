SELECT D.Dnumber, D.Dname, D1.NumOfEmployee
FROM EMPLOYEE E JOIN DEPARTMENT D ON E.Dno = D.Dnumber 
	LEFT JOIN (
		SELECT Dno, COUNT(*) AS NumOfEmployee
		FROM EMPLOYEE
		WHERE Salary > 40000
		GROUP BY Dno) D1 ON D.Dnumber = D1.Dno
GROUP BY D.Dnumber, D.Dname, D1.NumOfEmployee
HAVING COUNT(E.Dno) > 5