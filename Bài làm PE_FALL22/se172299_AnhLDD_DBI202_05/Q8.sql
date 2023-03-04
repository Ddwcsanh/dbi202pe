CREATE PROCEDURE proc_CountEmp 
	@depNo int,
	@numOfEmps int output
AS 
	SET @numOfEmps = (
	SELECT COUNT(E.Dno) AS numOfEmps
	FROM EMPLOYEE E
	WHERE e.Dno = @depNo
	GROUP BY E.Dno
	)