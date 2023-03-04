CREATE TABLE Employees (
	EmployeeID int PRIMARY KEY,
	FullName nvarchar(50),
	OfficeNumber int foreign key references Offices(OfficeNumber)
)

create table Offices (
	OfficeNumber int primary key,
	Address nvarchar(50),
	Phone varchar(15),
	DeptID int foreign key references Departments(DeptID)
)

create table Departments (
	DeptID int primary key,
	Name nvarchar(60)
)

create table WorkFor (
	[From] date,
	Salary float,
	[To] date,
	EmployeeID int foreign key references Employees(EmployeeID),
	DeptID int foreign key references Departments(DeptID)
	PRIMARY KEY (EmployeeID, DeptID)
)