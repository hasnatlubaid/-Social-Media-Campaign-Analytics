SELECT 
    c.CustomerID,
    c.CustomerName,
    c.Email,
    c.Gender,
    c.Age,
    g.Country,
    g.City
from 
    [PortfolioProject_MarketingAnalytics].[dbo].[customers] as c
Left join
    [PortfolioProject_MarketingAnalytics].[dbo].[geography] as g
on
    c.GeographyID = g.GeographyID;