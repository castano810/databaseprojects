USE AutoDealer
GO

SELECT  count(*)
FROM RegisteredCars
GO

SELECT COUNT(*)
FROM RegisteredCars
WHERE Color = 'Blue'
GO

SELECT COUNT(*)
FROM RegisteredCars
WHERE Color = 'Silver' AND  Year >= 1997 AND Year <=2005
GO


SELECT AVG('Ford Focus')
FROM RegisteredCars
WHERE Model = 'Ford Focus'
GO

SELECT CONVERT(decimal(7,2),AVG(Price))
FROM RegisteredCars
WHERE Manufacturer = 'Ford' AND Model = 'Focus'


SELECT MAX(Price)
FROM RegisteredCars
WHERE YEAR = 2011
GO

SELECT *
from RegisteredCars
WHERE Price = (SELECT MAX(Price)
FROM RegisteredCars
WHERE YEAR = 2011)

SELECT * 
FROM RegisteredCars
WHERE  Manufacturer='Volkswagen'  AND Color = 'Red'AND Price = (SELECT MIN(Price)
FROM RegisteredCars
WHERE Manufacturer='Volkswagen'  AND Color = 'Red')


SELECT Manufacturer, COUNT(*) AS 'Amount'
FROM  RegisteredCars
WHERE Price < 22000 AND Year > 2005 
group BY Manufacturer



SELECT Manufacturer, COUNT(*) AS 'Amount'
FROM  RegisteredCars
WHERE Price < 22000 AND Year > 2005 
GROUP BY Manufacturer
Order BY Count(*) DESC


SELECT COUNT(*)
FROM RegisteredCars
Where PlateNumber LIKE 'ZX%' AND Color = 'Red'

SELECT *
FROM RegisteredCars
Where PlateNumber LIKE 'ZX%' AND Color = 'Red'


SELECT *
FROM RegisteredCars
WHERE Year > 2009 AND VehicleID LIKE '______y______'
ORDER BY Manufacturer,Model



SELECT DISTINCT Color
FROM RegisteredCars
WHERE Manufacturer = 'Chevrolet' AND Model = 'Camaro' AND Year = 1997


SELECT Manufacturer, Model, Year,  AVG(Price) AS 'Average Price'
FROM RegisteredCars
WHERE Year  = 2000
GROUP BY Manufacturer, Model, Year
 