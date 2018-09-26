CREATE DATABASE Pokemon
GO

USE Pokemon
GO


CREATE TABLE LeafType(
	Name			 varchar(30)		NOT NULL,
	PowerLevel	     int				NOT NULL,
	PrimaryAbility   varchar(30)		NOT NULL,
	SecondaryAbility varchar(30)		NOT NULL,
)
GO

INSERT INTO LeafType(Name, PowerLevel, PrimaryAbility, SecondaryAbility)
VALUES ('Bulbasuar', 18, 'Grass','Poison'),
	   ('oddish', 12, 'Grass','Poison'),
	   ('Exeggcute', 25, 'Grass','Psychic'),
	   ('Mega Sceptile', 30, 'Grass','Dragon')
GO

CREATE TABLE FireType(
	Name			 varchar(30)		NOT NULL,
	PowerLevel	     int				NOT NULL,
	PrimaryAbility   varchar(30)		NOT NULL,
	SecondaryAbility varchar(30)		NOT NULL,
)
GO

INSERT INTO FireType(Name, PowerLevel, PrimaryAbility, SecondaryAbility)
VALUES ('Charmander', 16, 'Fire','Poison'),
	   ('Ho-Oh', 67, 'Fire','Flying'),
	   ('Blaziken', 32, 'Fire','Fighting'),
	   ('Houndour', 22, 'Dark','Fire')
GO

CREATE TABLE WaterType(
	Name			 varchar(30)		NOT NULL,
	PowerLevel	     int				NOT NULL,
	PrimaryAbility   varchar(30)		NOT NULL,
	SecondaryAbility varchar(30)		NOT NULL,
)
GO

INSERT INTO WaterType(Name, PowerLevel, PrimaryAbility, SecondaryAbility)
VALUES ('Squirtle', 11, 'Water','Poison'),
	   ('Slowbro', 54, 'Water','Psychic'),
	   ('Cloyster', 78, 'Water','Ice'),
	   ('Lotad', 22, 'Water','Grass')
GO



