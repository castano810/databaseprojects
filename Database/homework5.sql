USE AutoDealer3
GO
/* Problem 1 */
SELECT FirstName,LastName, AppointmentDate, count(AppointmentDate) AS '# of Appointments'
FROM Mechanics JOIN ServiceAppointments ON Mechanics.ID = ServiceAppointments.MechanicID 
GROUP BY FirstName,LastName,AppointmentDate
GO

/* Problem 2*/

SELECT FirstName, LastName,Manufacturer,Year,Model, AppointmentDate, AppointmentTime
FROM Customers JOIN ServiceAppointments ON Customers.ID = ServiceAppointments.CustomerID JOIN Cars ON Cars.VehicleID = ServiceAppointments.VehicleID
GROUP BY FirstName, LastName, Manufacturer,Year,Model  ,AppointmentDate, AppointmentTime
ORDER BY AppointmentTime
GO
/* Problem 3*/
SELECT ServiceName, count(ServiceName) AS '# Times Performed', SUM(Services.Cost) AS 'Total Cost'
FROM AppointmentServices JOIN ServiceAppointments ON AppointmentServices.AppointmentID = ServiceAppointments.AppointmentID JOIN Services ON Services.ServiceID = AppointmentServices.ServiceID
GROUP BY ServiceName 
ORDER BY [Total Cost] DESC
GO
/* Problem 4*/

SELECT FirstName, LastName, count(AppointmentDate) AS '# Services Performed', SUM(Services.Cost) AS 'Total Cost'
FROM Customers JOIN ServiceAppointments ON Customers.ID = ServiceAppointments.CustomerID 
JOIN AppointmentServices ON AppointmentServices.AppointmentID = ServiceAppointments.AppointmentID
JOIN Services ON Services.ServiceID = AppointmentServices.ServiceID
GROUP BY FirstName, LastName
ORDER BY LastName
GO
/* BONUS PROBLEM */

SELECT  AppointmentDate, AppointmentTime, Mechanics.FirstName + ' '+ Mechanics.LastName AS 'Mechanic' , ServiceName,'$' + CAST( SUM(Services.Cost) AS varchar(10)) AS 'Total Cost',Customers.FirstName + ' ' + Customers.LastName AS 'Customer' 
FROM Customers JOIN ServiceAppointments ON Customers.ID = ServiceAppointments.CustomerID 
JOIN AppointmentServices ON AppointmentServices.AppointmentID = ServiceAppointments.AppointmentID
JOIN Services ON Services.ServiceID = AppointmentServices.ServiceID JOIN Mechanics ON Mechanics.ID = ServiceAppointments.MechanicID 
GROUP BY AppointmentDate,AppointmentTime,Mechanics.FirstName,Mechanics.LastName,ServiceName,Customers.FirstName,Customers.LastName
ORDER BY Mechanic DESC, AppointmentTime ASC