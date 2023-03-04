CREATE TRIGGER tr_checkWage ON EMPLOYEE
	AFTER INSERT
AS 
	BEGIN
		SELECT (CASE WHEN I.Salary > EM.Salary THEN 'High salary' else 'Nomal salary' END) AS [Salary level]
		FROM inserted I JOIN EMPLOYEE E ON I.Ssn = E.Ssn 
			JOIN EMPLOYEE EM ON E.Super_ssn = EM.Ssn
	END