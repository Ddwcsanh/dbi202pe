CREATE TRIGGER Tr2 On Departments
	AFTER UPDATE
AS
	BEGIN
		SELECT i.DepartmentID, i.DepartmentName, d.ManagerID as OldManagerID, i.ManagerID as NewManagerID
		FROM inserted i JOIN deleted d ON i.DepartmentID = d.DepartmentID 
	END