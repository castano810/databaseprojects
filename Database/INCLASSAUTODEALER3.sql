USE AutoDealer3
GO
SELECT * 
FROM Customers JOIN SalesVisits ON  Customers.ID = SalesVisits.CustomerID  JOIN SalesPeople ON SalesPeople.ID = SalesVisits.SalesPersonID
ORDER BY VisitDate ASC