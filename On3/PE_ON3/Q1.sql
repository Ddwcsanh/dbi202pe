CREATE TABLE Students (
	StudentID int PRIMARY KEY,
	Name nvarchar(50),
	Address nvarchar(200),
	Gender char(1)
)

CREATE TABLE Classes (
	ClassID int PRIMARY KEY,
	year int,
	Semester char(10),
	NoCredit int,
	courseID char(6),
	GroupID char(6),
	TeacherID int
)

CREATE TABLE Attend (
	Date date,
	Slot int,
	Attend int,
	StudentID int,
	ClassID int,
	PRIMARY KEY(StudentID, ClassID)
)

CREATE TABLE Teachers (
	TeacherID int PRIMARY KEY,
	Name nvarchar(50),
	Address nvarchar(200),
	Gender char(1)
)

ALTER TABLE Attend
ADD FOREIGN KEY (StudentID) REFERENCES Students(StudentID)

ALTER TABLE Attend
ADD FOREIGN KEY (ClassID) REFERENCES Classes(ClassID)

ALTER TABLE Classes
ADD FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID)
