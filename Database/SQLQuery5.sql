CREATE DATABASE ExerciseInClass
GO

USE ExerciseInClass
GO

CREATE TABLE Contacts(

	ID			int			NOT NULL,
	FirstName	varchar(30)		NOT NULL,
	LastName	varchar(30)		NOT NULL,
	PhoneNum	varchar(40),
	StreetAddr	varchar(40)		NOT NULL,
	City		varchar(20)		NOT NULL,
	St			varchar(2)		NOT NULL,
	Zip			int				NOT NULL


	CONSTRAINT Pk_ID PRIMARY KEY (ID)

)

INSERT INTO Contacts
VALUES(1, 'Fred','Jones','555-1212','123 Main St.','Charlotte','NC',28269)
GO
INSERT INTO Contacts
VALUES (2, 'Lisa', 'Smith','555-2376','3321 Cherry Lane','Cornelius','NC',28031)
GO
INSERT INTO Contacts
VALUES  (3, 'Bon', 'Thomas','555-8765','320 Sycamore Dr.','Davidson','NC',28036)
GO
INSERT INTO Contacts
VALUES  (4, 'George', 'Crawford',NULL,'21B Baker St','Huntersville','NC',28078)
GO
INSERT INTO Contacts
VALUES (5, 'Melanie', 'Grimes',NULL,'100 Madison Ave.','Mooresville','NC',28117)
GO

SELECT * FROM Contacts
GO

SELECT FirstName,LastName,PhoneNum FROM Contacts
GO

SELECT FirstName AS 'First Name', LastName AS 'Last Name', PhoneNum AS 'Phone Number'
FROM CONTACTS
GO

SELECT FirstName + ' ' + LastName as 'Full Name', PhoneNum AS 'Phone number', StreetAddr AS 'Street Address', City, St AS 'State', Zip AS 'ZipCode'
FROM Contacts
GO

SELECT FirstName + ' ' + LastName as 'Full Name', PhoneNum AS 'Phone number', StreetAddr + ','+  City + ',' + St + ',' +  CONVERT(varchar(20), Zip) AS 'Street Address'
FROM Contacts
GO