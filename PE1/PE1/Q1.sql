CREATE DATABASE Q1
USE  Q1

CREATE TABLE ProductPriceHistory (
	ProductID char(10),
	StartDate DATE,
	EndDate DATE,
	Price float
	CONSTRAINT PK_ProductPriceHistory PRIMARY KEY (ProductID, StartDate)
)

CREATE TABLE ProductCostHistory (
	ProductID char(10),
	StartDate DATE,
	EndDate DATE,
	Cost float
	CONSTRAINT PK_ProductCostHistory PRIMARY KEY (ProductID, StartDate)
)

CREATE TABLE Product (
	ProductID char(10) PRIMARY KEY,
	Name nvarchar(30),
	Color nvarchar(10),
	Cost numeric(8,2),
	Price numeric (8,2),
	SubcategoryID char(10),
	ModelID char(10),
	SellStartDate DATE,
	SellEndDate DATE
)

CREATE TABLE ProductSubcategory (
	SubcategoryID char(10) PRIMARY KEY,
	Category nvarchar(20),
	Name nvarchar(30)
)

CREATE TABLE ProductModel (
	ModelID char(10) PRIMARY KEY,
	Name nvarchar
)

CREATE TABLE ProductInventory (
	ProductID char(10),
	LocationID char(10),
	Shelf char(10),
	Bin char(10),
	Quantity int
	CONSTRAINT PK_ProductInventory PRIMARY KEY (ProductID, LocationID)
)

CREATE TABLE Location (
	LocationID char(10) PRIMARY KEY,
	Name nvarchar(20),
	CostRate float,
	Avaiability char(10)
)

ALTER TABLE ProductPriceHistory
ADD FOREIGN KEY (ProductID) REFERENCES Product(ProductID)

ALTER TABLE ProductCostHistory
ADD FOREIGN KEY (ProductID) REFERENCES Product(ProductID)

ALTER TABLE ProductInventory
ADD FOREIGN KEY (ProductID) REFERENCES Product(ProductID)

ALTER TABLE ProductInventory
ADD FOREIGN KEY (LocationID) REFERENCES Location(LocationID)

ALTER TABLE Product
ADD FOREIGN KEY (SubcategoryID) REFERENCES ProductSubcategory(SubcategoryID)

ALTER TABLE Product
ADD FOREIGN KEY (ModelID) REFERENCES ProductModel(ModelID)
