CREATE TABLE Salespersons (
	SalespersonID int PRIMARY KEY,
	Name varchar(100)
)

CREATE TABLE Cars (
	SerialNo int PRIMARY KEY,
	Price decimal(12),
	Model varchar(50),
	SalespersonID int FOREIGN KEY REFERENCES Salespersons(SalespersonID)
)

CREATE TABLE Options (
	OptionName varchar(100),
	Price Decimal(8),
	SerialNo int FOREIGN KEY REFERENCES Cars(SerialNo),
	PRIMARY KEY(OptionName, SerialNo)
)

CREATE TABLE Sales (
	SerialNo int FOREIGN KEY REFERENCES Cars(SerialNo),
	SalespersonID int FOREIGN KEY REFERENCES Salespersons(SalespersonID),
	Saledate date,
	PRIMARY KEY(SerialNo, SalespersonID)
)