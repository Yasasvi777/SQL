use pharma

DESC pharmadf
SELECT * FROM pharmadf;

SELECT DISTINCT(Country)
FROM pharmadf;

SELECT CustomerName FROM pharmadf
where Subchannel = 'Retail';

SELECT DISTINCT(Month) FROM pharmadf;

SELECT  Year, SUM(Sales)
FROM pharmadf
GROUP BY Year;

SELECT CustomerName, SUM(Sales) AS highestvalue
FROM pharmadf
GROUP BY CustomerName
ORDER BY highestvalue DESC
LIMIT 1;

SELECT DISTINCT(NameofSalesRep)
FROM pharmadf
WHERE Manager = 'James Goodwill';

SELECT City, SUM(Sales) AS sales
FROM pharmadf
GROUP BY City
ORDER BY sales DESC
LIMIT 5;

SELECT Subchannel, AVG(Price)
FROM pharmadf
GROUP BY Subchannel;

SELECT *
FROM pharmadf
WHERE Year = 2018 and City = 'rendsburg';

SELECT SUM(Sales)
FROM pharmadf
WHERE Year = 2018 and City = 'rendsburg';

SELECT DISTINCT(ProductClass), Month, SUM(Sales) OVER(PARTITION BY ProductClass)
FROM pharmadf

SELECT NameofSalesRep, SUM(Sales) AS Total_sales
FROM pharmadf
GROUP BY NameofSalesRep
ORDER BY Total_sales DESC
LIMIT 5;