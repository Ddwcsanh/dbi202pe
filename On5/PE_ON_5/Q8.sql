CREATE PROCEDURE proc2 
	@fromDate Date,
	@toDate Date,
	@numberOfEmployees int output
AS 
	SET @numberOfEmployees = (
		SELECT COUNT(*) 
		FROM Employees E
		WHERE E.HireDate BETWEEN @fromDate AND @toDate
	)
