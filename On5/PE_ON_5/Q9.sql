CREATE TRIGGER Tr2 ON Departments
	AFTER UPDATE
AS
	BEGIN
		SELECT i.DepartmentID, i.DepartmentName, d.ManagerID as OldManagerID, i.ManagerID as NewManagerID 
		FROM inserted i join deleted d on i.DepartmentID = d.DepartmentID
	END
