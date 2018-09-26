CREATE DATABASE Airport
GO
USE Airport
GO

CREATE TABLE Airport(

	AirportCode int				NOT NULL,
	City		varchar(30)		NOT NULL,
	State       char(2)			NOT NULL,
	Name		varchar(30)		NOT NULL

	CONSTRAINT PK_AirportCode	PRIMARY KEY (AirportCode)

)
GO

CREATE TABLE AirplaneType(

	Company		varchar(40)		NOT NULL,
	Type_Name	varchar(30)		NOT NULL,
	Max_Seats	int				NOT NULL

	CONSTRAINT PK_TypeName	PRIMARY KEY (Type_Name)


)
GO

CREATE TABLE Airplane(

	Airplane_ID		int		NOT NULL,
	TotalSeats		int		NOT NULL,

	CONSTRAINT PK_AirID	PRIMARY KEY(Airplane_ID)
)
GO

CREATE TABLE Flight(
	Number		int				NOT NULL,
	Airline		varchar(30)		NOT NULL,
	Weekdays	varchar(15)		NOT NULL,

	CONSTRAINT PK_Number PRIMARY KEY(Number)
)
GO

CREATE TABLE Flight_Leg(

	Leg_No		int			NOT NULL,
	Flight_Number	int		NOT NULL

	CONSTRAINT	PK_Flight	PRIMARY KEY(Flight_Number,Leg_No),
	CONSTRAINT  FK_Flight	FOREIGN KEY(Flight_Number) REFERENCES Flight (Number)
	ON UPDATE CASCADE
	ON DELETE CASCADE 

)
GO

CREATE TABLE Fare(

	Restrictions	varchar(30)		NOT NULL,
	Amount			int				NOT NULL,
	Code			int				NOT NULL,
	Flight_Number	int				NOT NULL


	CONSTRAINT PK_Flight_Fare	PRIMARY KEY(Code,Flight_Number),
	CONSTRAINT FK_Flight_Fare	FOREIGN KEY(Flight_Number) REFERENCES Flight (Number)
	ON UPDATE CASCADE
	ON DELETE CASCADE

)
GO

CREATE TABLE Leg_Instance(

	Date			date	NOT NULL,
	NumberOfSeats	int		NOT NULL,
	Leg_Number		int		NOT NULL,
	Flight_Leg_Number	int	NOT NULL

	CONSTRAINT PK_Flight_Leg PRIMARY KEY (Flight_Leg_Number,Leg_Number,Date),
	CONSTRAINT FK_Flight_Leg FOREIGN KEY (Flight_Leg_Number,Leg_Number)	REFERENCES Flight_Leg (Flight_Number,Leg_No)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)
GO

CREATE TABLE Seat(

	Seat_Number		int		NOT NULL,
	Leg_Instance_Flight_Number	int		NOT NULL,
	Leg_Instance_Leg_Number		int		NOT NULL,
	Leg_Instance_Date			date	NOT NULL

	CONSTRAINT PK_Leg_Instance	PRIMARY KEY (Seat_Number,Leg_Instance_Flight_Number,Leg_Instance_Leg_Number),
	CONSTRAINT FK_Leg_Instance FOREIGN KEY (Leg_Instance_Flight_Number,Leg_Instance_Leg_Number,Leg_Instance_Date) REFERENCES Leg_Instance (Flight_Leg_Number,Leg_Number,Date)
	ON UPDATE CASCADE 
	ON DELETE CASCADE

)
GO

ALTER TABLE Airplane
ADD Airplane_Type_Name	varchar(30)	NOT NULL
GO
ALTER TABLE Airplane
ADD CONSTRAINT FK_Airplane_TypeName FOREIGN KEY (Airplane_Type_Name) REFERENCES AirplaneType (Type_Name)
ON UPDATE CASCADE
ON DELETE NO ACTION
GO

ALTER TABLE Leg_Instance
ADD AirplaneID	int		NOT NULL
GO
ALTER TABLE Leg_Instance
ADD CONSTRAINT FK_AirplaneID FOREIGN KEY (AirplaneID) REFERENCES Airplane (Airplane_ID)
ON UPDATE CASCADE
ON DELETE NO ACTION
GO

ALTER TABLE Leg_Instance
ADD Airport_Code	int		
GO
ALTER TABLE Leg_Instance
ADD CONSTRAINT FK_Airport_Code FOREIGN KEY (Airport_Code) REFERENCES Airport (AirportCode)
ON UPDATE CASCADE
ON DELETE NO ACTION
GO

ALTER TABLE Leg_Instance
ADD	Arr_Time	time	NOT NULL, 
	Dep_Time	time	NOT NULL
GO

ALTER TABLE Flight_Leg
ADD		Scheduled_Depart_Time	time	NOT NULL,
		Scheduled_Arrival_Time	time	NOT NULL,
		Airport_Code			int		NOT NULL
GO

ALTER TABLE Flight_Leg
ADD CONSTRAINT FK_Code FOREIGN KEY (Airport_Code) REFERENCES Airport (AirportCode)
ON UPDATE NO ACTION
ON DELETE NO ACTION
GO

CREATE TABLE Can_Land(
	Airport_Code		int				NOT NULL,
	Type_Name			varchar(30)		NOT NULL

	CONSTRAINT PK_Can_Land	PRIMARY KEY (Airport_Code,Type_Name),

	CONSTRAINT FK_Can_Land_Airport	FOREIGN KEY (Airport_Code) REFERENCES Airport (AirportCode)
	ON UPDATE CASCADE
	ON DELETE CASCADE,

	CONSTRAINT FK_Can_Land_Airplane	FOREIGN KEY (Type_Name)	REFERENCES AirplaneType (Type_Name)
	ON UPDATE CASCADE
	ON DELETE CASCADE

)
GO

ALTER TABLE Seat
ADD		Customer_Name		varchar(30)		NOT NULL,
		Cphone				varchar(12)		NOT NULL
GO