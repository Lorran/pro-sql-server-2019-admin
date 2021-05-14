SELECT
        CustomerID
       ,FirstName
       ,CreditLimit
       ,Balance
from dbo.Customers
where LastName = 'Carter'
GO

SELECT  TOP (1000) [CustomerID]
       ,[FirstName]
       ,[LastName]
       ,[BillingAddressID]
       ,[DeliveryAddressID]
       ,[CreditLimit]
       ,[Balance]
FROM [Chapter20].[dbo].[Customers]
GO

SELECT *
FROM dbo.Customers A
INNER JOIN DBO.Customers B ON A.CustomerID = B.CustomerID
UNION
SELECT *
FROM dbo.Customers A
INNER JOIN DBO.Customers B ON A.CustomerID = B.CustomerID