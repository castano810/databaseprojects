SELECT Name, Revenue
FROM SimpleSales
ORDER BY Revenue
GO

SELECT Name, Revenue/Profit AS 'ProfitPercent'
FROM SimpleSales

GO

SELECT Name, CONVERT(decimal(10,2),Revenue)/CONVERT(decimal(10,2), Profit) AS 'ProfitPercent'
FROM SimpleSales

GO

SELECT Name, CONVERT(decimal(10,2),Revenue)/CONVERT(decimal(10,2), Profit) AS 'ProfitPercent'
FROM SimpleSales

ORDER BY ProfitPercent

GO

SELECT  COUNT(Profit)
FROM SimpleSales
WHERE Profit > 5000
GO

SELECT  Name
FROM SimpleSales
WHERE Profit > 5000
GO



SELECT Name, ROUND(CONVERT(decimal(4,0),Profit)/CONVERT(decimal(4,0),Revenue)*100,0)    AS 'ProfitPercent'
FROM SimpleSales

GO
