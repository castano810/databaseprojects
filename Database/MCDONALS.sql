CREATE DATABASE McDonalds
GO

USE McDonalds
GO

CREATE TABLE Employees(

	FirstName     varchar(20)   NOT NULL,
	LastName	  varchar(20)	NOT NULL,
	DateOfHire	  date			NOT NULL,
	Position	  text			NOT NULL,
	Pay			  float			DEFAULT '7.25',
)
GO

INSERT INTO Employees(FirstName, LastName, DateOfHire, Position, Pay)
VALUES('Jason','Dun','January 5 2016', 'Cashier and Cook',9.00),
	  ('James','McHenry','August 5 2015', 'Cashier',8.25),
	  ('Kayla','Hathoway','June 23 2014', 'Assistant Manager',15.00)

GO


CREATE TABLE FoodSupplies(
	Name	    char(10)	NOT NULL,
	Amount      float		NOT NULL,
	FoodID	    int			NOT NULL,
	Expiration	date		NOT NULL,
)
GO

INSERT INTO FoodSupplies(Name, Amount,FoodID, Expiration)
VALUES('Nuggets', 2500, 10105, 'September 20 2016'),
	  ('Tomatoes', 1000, 10105, 'November 01 2016'),
	  ('Potatoes', 1500, 10105, 'October 15 2016'),
	  ('Nuggets', 500, 10105, 'September 20 2016')
GO

CREATE TABLE Pay(
	Name	    char(20)		NOT NULL,
	HoursWorked float			NOT NULL,
	PayPerHour  float			NOT NULL,
)
GO

INSERT INTO Pay(Name, HoursWorked,PayPerHour)
VALUES('John Doe', 23.5, 9.5),
	  ('Maria Haswell', 45.5, 10),
	  ('Luke Skywalker', 33.0, 20.0),
	  ('Jermaine Cole', 38, 12.5)
GO