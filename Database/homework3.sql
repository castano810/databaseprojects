CREATE DATABASE HomeWorkThree
GO

USE HomeWorkThree
GO
/* Question 1 */
CREATE TABLE Employees(
	ID			int				NOT NULL,
	FirstName	varchar(30),
	LastName	varchar(30),
)
GO
/*These pass */
INSERT INTO	Employees(ID,FirstName,LastName)
VALUES(9897, 'John', 'Doe'),
	  (9898, 'Sam','Sampson'),
	  (5645, 'Jacob','Castano')
GO
/*these fail*/
INSERT INTO	Employees(ID,FirstName,LastName)
VALUES(NULL, 'Kim', 'Dunn'),
	  (NULL, 'Hillary','Clinton'),
	  (NULL, 'Bernie','Sanders')
GO


/*Question 2 */

CREATE TABLE AirplaneTicket(
	FirstName			varchar(30)		NOT NULL,
	LastName			varchar(30)		NOT NULL,
	Age					int				NOT NULL,
	WeightOfPerson		float			NOT NULL,

	CONSTRAINT CK_Age CHECK (Age > 2),
	CONSTRAINT CK_AgeWeight	CHECK  ((Age > 5) AND (WeightOfPerson < 500))
)
GO
/*These pass */
INSERT INTO	AirplaneTicket(FirstName,LastName,Age,WeightOfPerson)
VALUES('John', 'Doe', 25, 255),
	  ( 'Sam','Sampson',36,165),
	  ( 'Jacob','Castano',21,180)
GO

/*these fail*/
INSERT INTO	AirplaneTicket(FirstName,LastName,Age,WeightOfPerson)
VALUES('Kim', 'Dunn',2,45),
	  ('Donald','Trump',3,1000),
	  ('Alex','Fieldman', 2, 30)
GO



/*Question 3 */
CREATE TABLE SSN(
	FirstName		varchar(30)		NOT NULL,
	LastName		varchar(30)		NOT NULL,
	SSN				int				NOT NULL,

	CONSTRAINT PK_SSN PRIMARY KEY (SSN ASC)

)
GO
/*These pass*/
INSERT INTO	SSN(FirstName,LastName,SSN)
VALUES('John', 'Doe', 222678978),
	  ( 'Sam','Sampson',333681234),
	  ( 'Jacob','Castano',654863256)
GO

/*These fail*/
INSERT INTO	SSN(FirstName,LastName,SSN)
VALUES('Bernie', 'Sanders', 555678978),
	  ( 'Tyrian','Lannister',789231478),
	  ( 'Jamie','Lannister',789231478)
GO

/*Question 4 */
CREATE TABLE BasketBallPlayersNickNames(
	FirstName		varchar(30)		NOT NULL,
	LastName		varchar(30)		NOT NULL,
	NickName		varchar(30)		NOT NULL,

	CONSTRAINT UK_NickName UNIQUE (NickName)

)
GO

INSERT INTO	BasketBallPlayersNickNames(FirstName,LastName,NickName)
VALUES('Kobe', 'Bryant', 'Black Mamba'),
	  ( 'Lebron','James','King James'),
	  ('Shaquille','Oneal','Black Mamba')
GO

/*Question 5 */
CREATE TABLE Students(
	FirstName		varchar(30)		NOT NULL,
	LastName		varchar(30)		NOT NULL,
	StudentID				int			    NOT NULL,
	CONSTRAINT PK_ID PRIMARY KEY (StudentID ASC)
)
GO

CREATE TABLE Classes(
	CourseName		varchar(40)		NOT NULL,
	CourseID	    int	            NOT NULL,
	CONSTRAINT PK_CourseID PRIMARY KEY (CourseID ASC)
)
GO

CREATE TABLE ClassRegistration(
	CourseID	int			NOT NULL,
	StudentID	int			NOT NULL,
	CONSTRAINT PK_ClassRegistration PRIMARY KEY (CourseID ASC,StudentID ASC),

	CONSTRAINT FK_ClassRegistration_Classes FOREIGN KEY (CourseID) 
		REFERENCES Classes (CourseID) ON DELETE NO ACTION,

	CONSTRAINT FK_ClassRegistration_Students FOREIGN KEY (StudentID)
		REFERENCES Students (StudentID) ON DELETE CASCADE
	
)
GO

INSERT INTO	Students(FirstName,LastName,StudentID)
VALUES('John', 'Doe', 1),
	  ( 'Sam','Sampson',2),
	  ( 'Jacob','Castano',3)
GO


INSERT INTO	Classes(CourseName,CourseID)
VALUES('Biology', 111),
	  ( 'Chemistry',222),
	  ( 'Physics',333)
GO


INSERT INTO	ClassRegistration(CourseID,StudentID)
VALUES(111,2),
	  ( 222,3),
	  ( 333,1)
GO