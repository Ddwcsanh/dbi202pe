CREATE TABLE Employees (
	EmployeeID int PRIMARY KEY,
	FullName nvarchar(50),
	OfficeNumber int
)

CREATE TABLE Offices (
	OfficeNumber int PRIMARY KEY,
	Address nvarchar(30),
	Phone varchar(15),
	DeptID varchar(15)
)

CREATE TABLE Departments (
	DeptID varchar(15) PRIMARY KEY,
	Name nvarchar(60)
)

CREATE TABLE WorkFor (
	[From] Date,
	Salary float,
	[To] Date,
	EmployeeID int,
	DeptID varchar(15)
	PRIMARY KEY (EmployeeID, DeptID)
)

ALTER TABLE Employees
ADD FOREIGN KEY (OfficeNumber) REFERENCES Offices(OfficeNumber)

ALTER TABLE Offices
ADD FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)

ALTER TABLE WorkFor
ADD FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)

ALTER TABLE WorkFor
ADD FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)