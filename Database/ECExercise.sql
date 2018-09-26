CREATE DATABASE University
GO

USE University
GO

CREATE TABLE Students(
	StudentName		varchar(40)		NOT NULL

)
GO

ALTER TABLE Students
ADD StudentID	int		NOT NULL
GO

ALTER TABLE Students
ADD CONSTRAINT PK_Students PRIMARY KEY (StudentID)
GO

INSERT INTO Students(StudentName, StudentID)
VALUES ('Sam ',1),
		('Day',2),
		('Tyrian',3),
		('Hodor',4)
GO

EXEC SP_RENAME 'Students.StudentName','LastName'
GO


ALTER TABLE Students
ADD FirstName	varchar(40)		
GO

UPDATE Students
SET FirstName = 'Jacob'
WHERE StudentID = 1
GO

UPDATE Students
SET FirstName = 'Jason'
WHERE StudentID = 2
GO

UPDATE Students
SET FirstName = 'May'
WHERE StudentID = 3
GO

UPDATE Students
SET FirstName = 'Damian'
WHERE StudentID = 4
GO


ALTER TABLE Students
ADD FullName	varchar(80) 
GO

UPDATE Students
SET FullName = FirstName + ' ' + LastName
GO


CREATE TABLE Faculty(
	FacultyID		int			NOT NULL,
	FacultyName		varchar(30)		NOT NULL

	CONSTRAINT PK_Faculty PRIMARY KEY (FacultyID)
)
GO

CREATE TABLE Course(
	CourseID		varchar(15) 	NOT NULL,
	CourseName		varchar(30)		NOT NULL,

	CONSTRAINT PK_Course PRIMARY KEY (CourseID)


)

GO


CREATE TABLE Qualified(
	FacultyID		int		NOT NULL,
	CourseID		varchar(15)		NOT NULL,
	DateQualified	date		NOT NULL,

	CONSTRAINT PK_Qualified PRIMARY KEY (FacultyID, CourseID),

	CONSTRAINT FK_Qualified_FacultyID	FOREIGN KEY (FacultyID)
	REFERENCES Faculty(FacultyID)	ON DELETE CASCADE,

	CONSTRAINT FK_Qualified_CourseID	FOREIGN KEY (CourseID)
	REFERENCES Course(CourseID)	
)

GO


CREATE TABLE Section(
		SectionNo		int		NOT NULL,
		Semester  varchar(7)	NOT NULL,
		CourseID	varchar(15)	NOT NULL,


	CONSTRAINT PK_Section PRIMARY KEY (SectionNo,Semester, CourseID),

	CONSTRAINT FK_Section_Course	FOREIGN KEY (CourseID)
	REFERENCES Course(CourseID)	


)

GO



CREATE TABLE Registration(

	StudentID		int			NOT NULL,
	SectionNo		int			NOT NULL,
	Semester		varchar(7)	NOT NULL,
	CourseID		varchar(15)	NOT NULL,


	CONSTRAINT PK_Registration PRIMARY KEY (StudentID,SectionNo,Semester,CourseID),

	CONSTRAINT FK_Registration_Students	FOREIGN KEY (StudentID)
	REFERENCES Students(StudentID)	ON DELETE CASCADE,

	CONSTRAINT FK_Registration_Section FOREIGN KEY (SectionNo, Semester, CourseID)
	REFERENCES Section(SectionNo, Semester, CourseID)	ON DELETE CASCADE

)
GO






INSERT INTO Course(CourseID, CourseName)
VALUES (9999, 'Biology'),
		(8888, ' Chemistry'),
		(7777, 'Physics'),
		(6666, 'Database')
GO

INSERT INTO Section(SectionNo, Semester, CourseID)
VALUES (1333, 'l-2016', 9999),
		(1444, '1-2016',8888),
		(1555, '2-2017',7777),
		(1666, '2-2017',6666)
GO

INSERT INTO Registration(StudentID, SectionNo,Semester, CourseID)
VALUES  (1, 1333, 'l-2016',9999),
		(2, 1444, '1-2016', 8888),
		(3, 1555, '2-2017', 7777),
		(4, 1666, '2-2017', 6666)
GO


SELECT Students.FullName, Course.CourseID, Course.CourseName, 
Section.SectionNo, Section.Semester

FROM Students JOIN Registration ON Students.StudentID = Registration.StudentID

JOIN  Section ON Registration.SectionNo = Section.SectionNo

JOIN Course on Section.CourseID = Course.CourseID