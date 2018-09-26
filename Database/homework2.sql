/* HOMEWORK #2 TEMPLATE */

/*
  Use this template to format your submission for homework #2.  Be sure
  to put your SQL statements in the areas indicated below.
  See the homework assignment for specific directions on what is needed.
  Please follow the format specified.  This is necessary to make grading
  easier and more efficient.  Failure to follow this template will result
  in a deduction to your grade for this assignment.
*/

/********  SECTION FOR DATABASE # 1  ******************************************/
/* Put the SQL code to create Database #1 just after this comment */
	CREATE DATABASE Pokemon
	GO

	USE Pokemon
	GO

/* Put the SQL code to create the 1st table for Database #1 just after this comment */
CREATE TABLE Pokemons(
	Name			 varchar(30)		NOT NULL,
	PowerLevel	     int				NOT NULL,
	PrimaryAbility   varchar(30)		NOT NULL,
	DateCaught		date				NOT NULL
)
GO



/* Put the SQL code to insert data into the the 1st table for Database #1 just after this comment */
INSERT INTO Pokemons(Name, PowerLevel, PrimaryAbility, DateCaught)
VALUES ('Bulbasuar', 18, 'Grass', '09/12/2016'),
	   ('oddish', 12, 'Grass', '01/24/2016'),
	   ('Squirtle', 25, 'water','03/15/2015'),
	   ('Charmander', 30, 'fire', '05/25/2016')
GO


/* Put the SQL code to create the 2nd table for Database #1 just after this comment */
CREATE TABLE GymLeaders(
	Name			 varchar(30)		NOT NULL,
	PowerLevel	     int				NOT NULL,
	Badges			  int				NOT NULL,
	City			varchar(20)			NOT NULL
)
GO


/* Put the SQL code to insert data into the the 2nd table for Database #1 just after this comment */


INSERT INTO GymLeaders(Name, PowerLevel, Badges, City)
VALUES ('Brock', 55, 3, 'Pewter City'),
		('Misty', 89, 10, 'Cerulean City'),
		('Erika', 55, 3, 'Ash City')
	  
GO

/* Put the SQL code to create the 3rd table for Database #1 just after this comment */
CREATE TABLE Items(
	ItemName		 varchar(40)		NOT NULL,
	Amount			 int				NOT NULL,
	Descrip			 text				DEFAULT 'RANDOM FIND'
)
GO


/* Put the SQL code to insert data into the the 3rd table for Database #1 just after this comment */

INSERT INTO Items(ItemName, Amount, Descrip)
VALUES ('Master Ball', 1, 'Can catch any Pokemon. The most powerful ball ever made'),
		('HP Potion', 20, 'Can heal any Pokemon for 20 hp'),
		('Berries', 35, 'A berry that every Pokemon desires')
GO



/********  SECTION FOR DATABASE # 2  ******************************************/
/* Put the SQL code to create Database #2 just after this comment */
CREATE DATABASE McDonalds
GO

USE McDonalds
GO
/* Put the SQL code to create the 1st table for Database #2 just after this comment */
CREATE TABLE Employees(

	FirstName     varchar(20)   NOT NULL,
	LastName	  varchar(20)	NOT NULL,
	DateOfHire	  date			NOT NULL,
	Position	  text			NOT NULL,
	Pay			  float			DEFAULT '7.25',
) 
GO


/* Put the SQL code to insert data into the the 1st table for Database #2 just after this comment */
INSERT INTO Employees(FirstName, LastName, DateOfHire, Position, Pay)
VALUES('Jason','Dun','January 5 2016', 'Cashier and Cook',9.00),
	  ('James','McHenry','August 5 2015', 'Cashier',8.25),
	  ('Kayla','Hathoway','June 23 2014', 'Assistant Manager',15.00)

GO



/* Put the SQL code to create the 2nd table for Database #2 just after this comment */

CREATE TABLE FoodSupplies(
	Name	    char(10)	NOT NULL,
	Amount      float		NOT NULL,
	FoodID	    int			NOT NULL,
	Expiration	date		NOT NULL,
)
GO


/* Put the SQL code to insert data into the the 2nd table for Database #2 just after this comment */
INSERT INTO FoodSupplies(Name, Amount,FoodID, Expiration)
VALUES('Nuggets', 2500, 10105, 'September 20 2016'),
	  ('Tomatoes', 1000, 10105, 'November 01 2016'),
	  ('Potatoes', 1500, 10105, 'October 15 2016'),
	  ('Nuggets', 500, 10105, 'September 20 2016')
GO

/* Put the SQL code to create the 3rd table for Database #2 just after this comment */
CREATE TABLE Pay(
	Name	    char(20)		NOT NULL,
	HoursWorked float			NOT NULL,
	PayPerHour  float			NOT NULL,
)
GO

/* Put the SQL code to insert data into the the 3rd table for Database #2 just after this comment */
INSERT INTO Pay(Name, HoursWorked,PayPerHour)
VALUES('John Doe', 23.5, 9.5),
	  ('Maria Haswell', 45.5, 10),
	  ('Luke Skywalker', 33.0, 20.0),
	  ('Jermaine Cole', 38, 12.5)
GO

/********  SECTION FOR DATABASE # 3  ******************************************/
/* Put the SQL code to create Database #3 just after this comment */
CREATE DATABASE AnimalShelter
GO

USE AnimalShelter
GO

/* Put the SQL code to create the 1st table for Database #3 just after this comment */
CREATE TABLE Animal(
	OwnerName		varchar(30)		NOT NULL,
	AnimalID		int				NOT NULL,
	TypeOfAnimal	text			NOT NULL,
	EntryDate		date			NOT NULL,
)
GO

/* Put the SQL code to insert data into the the 1st table for Database #3 just after this comment */
INSERT INTO Animal(OwnerName, AnimalID, TypeOfAnimal, EntryDate)
VALUES ('Jamison Charles', 20392, 'A SIberian Husky mix with pit', 'January 7 2016'),
	   ('Kelly Dillard', 24564, 'Persian Cat', 'January 20 2016'),
	   ('Graham Needs', 25643,'Pitbull mix with Boxer','February 3 2016')
GO


/* Put the SQL code to create the 2nd table for Database #3 just after this comment */
CREATE TABLE MedicalSupplier(
		SupplierName	varchar(50)		NOT NULL,
		ID				int					NOT NULL,
		City			varchar(50)			NOT NULL,
		Phone			varchar(20)			NOT NULL
)
GO

/* Put the SQL code to insert data into the the 2nd table for Database #3 just after this comment */
INSERT INTO MedicalSupplier(SupplierName,ID,City,Phone)
VALUES ('Animal Medicals' , 1233, 'Boston', '(617) 234-1234'),
	    ('Rescue Bank' , 1234, 'Raleigh', '(919) 586-2879'),
		('Humane Society' , 1235, 'San Diego', '(619) 157-7896')
GO

/* Put the SQL code to create the 3rd table for Database #3 just after this comment */
CREATE TABLE Adoption(
	AnimalID    int		NOT NULL,
	ExitDate	date	NOT NULL,
	NewOwner	varchar(30)	NOT NULL
)


/* Put the SQL code to insert data into the the 3rd table for Database #3 just after this comment */

INSERT INTO Adoption(AnimalID,ExitDate,NewOwner)
VALUES (1243, 'February 28 2015', 'Terry Charles'),
		(1233, 'May 12 2015', 'Samuel Sams'),
		(1243, 'July 23 2016', 'Bo Jackson')
GO


/********  SECTION FOR DATABASE # 4  ******************************************/
/* Put the SQL code to create Database #4 just after this comment */
CREATE DATABASE BasketBallGame
GO

USE BasketBallGame
GO

/* Put the SQL code to create the 1st table for Database #4 just after this comment */
CREATE TABLE Tickets(
	
	TeamsPlaying	text		NOT NULL,
	NumSeats		int			NOT NULL,
	PriceOfEachSeat float		NOT NULL
)


/* Put the SQL code to insert data into the the 1st table for Database #4 just after this comment */
INSERT INTO Tickets(TeamsPlaying, NumSeats, PriceOfEachSeat)
VALUES ('Atlanta Hawks @ Charlotte Hornets', 14000, 25.00),
	   ('Boston Celtics @ Pacers', 15000, 55.00),
	   ('Cleveland Cavaliers @ Golden State', 18000, 85.25)
	 GO


/* Put the SQL code to create the 2nd table for Database #4 just after this comment */

CREATE TABLE Customer(
	Name			    varchar(40)		NOT NULL,
	TicketLocation	    text			NOT NULL,
	NumberOfTickets		int		     	NOT NULL,
	DateOfGame			date			NOT NULL
)

/* Put the SQL code to insert data into the the 2nd table for Database #4 just after this comment */
INSERT INTO Customer(Name, TicketLocation, NumberOfTickets, DateOfGame)
VALUES('John Smith', ' Cleveland Stadium near hwy 5 the Quicken Loans Arena', 2, 'October 28 2016'),
	  ('Giovanni Jones', ' Boston is the TD Garden Stadium', 4, 'November 13 2016'),
	  ('Sasha Sampson', ' Charlotte the time warner cable arena', 10,'December 5 2016')

	  GO


/* Put the SQL code to create the 3rd table for Database #4 just after this comment */
CREATE TABLE Employees(
		Name			 char(20)	NOT NULL,
		JobDescription   text		NOT NULL,
		AmtPay			float		NOT NULL
)
GO


/* Put the SQL code to insert data into the the 3rd table for Database #4 just after this comment */
INSERT INTO Employees(Name, JobDescription,AmtPay)
VALUES ('Joe Campbell', 'Security around the arena', 255.5),
	   ('Jacob Castano', 'Floor Dryer', 65.5),
	   ('Audrey Samuels' , 'Cleaner' , 55.8)

	   GO


/********  SECTION FOR DATABASE # 5  ******************************************/
/* Put the SQL code to create Database #5 just after this comment */
CREATE DATABASE AmazonWarehouse
GO


USE AmazonWarehouse
GO


/* Put the SQL code to create the 1st table for Database #5 just after this comment */

CREATE TABLE Orders(
	
	CustomerName		  varchar(30)		NOT NULL,
	Location			  text				NOT NULL,
	Payment				  float				NOT NULL,
	ItemName			  text			    NOT NULL,
	OrderDate			  date				NOT NULL,
	Instock				  char(15)			DEFAULT 'Not in stock'
)

/* Put the SQL code to insert data into the the 1st table for Database #5 just after this comment */
INSERT INTO Orders(CustomerName, Location, Payment, ItemName, OrderDate, Instock)
VALUES ('Sam Winchester', '234 jameson dr charlotte, nc 28262', 234.54, 'Dean Winchester Action Figure', 'August 10 2016', 'In Stock'),
		('Tyrian Lannister', '177 Casterly Rock Westeros 59856', 565.78, 'Jamie Lannister Poster', 'September 12 2016', 'In Stock'),
		('Bruce Wayne', '1007 Mountain Drive, Gotham', 2568.45, 'Superman toothbrush', 'July 2 2016', 'In Stock')
GO


/* Put the SQL code to create the 2nd table for Database #5 just after this comment */
CREATE TABLE ItemReturns(
		Name	varchar(30)		NOT NULL,
		OrderId	int				NOT NULL,
		OrderDate	date		NOT NULL,
		Reason	text			NOT NULL
)
GO


/* Put the SQL code to insert data into the the 2nd table for Database #5 just after this comment */

INSERT INTO ItemReturns(Name, OrderId, OrderDate, Reason)
VALUES ('Jackson Martinez', 124321, 'June 12 2016', 'Broken and didnt work'),
		('James Rodriguez', 124254, 'March 27 2016','Was not what I wanted'),
		('Carlos Bacca', 124324,'April 21 2015', 'Broken')

GO

/* Put the SQL code to create the 3rd table for Database #5 just after this comment */
CREATE TABLE Employees(
		FirstName varchar(20)	NOT NULL,
		LastName  varchar(20)	 NOT NULL,
		IDNumber  int			NOT NULL,
		Phone	 varchar(15)	NOT NULL		

)
GO


/* Put the SQL code to insert data into the the 3rd table for Database #5 just after this comment */
INSERT INTO Employees(FirstName,LastName,IDNumber,Phone)
VALUES ('Paul', 'Pogba', 658, '(435) 324-2312'),
	   ('Wayne', 'Rooney', 678, '(333) 789-9875'),
       ('Zlatan', 'Ibrahimovic', 789, '(895) 328-2725')

GO