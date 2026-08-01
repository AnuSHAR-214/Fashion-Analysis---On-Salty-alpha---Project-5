CREATE DATABASE FashionAnalytics;

CREATE TABLE Products(
ProductID INT IDENTITY(1,1),
ProductName VARCHAR(255),
Price FLOAT,
Category VARCHAR(100)
);

#Average price 

SELECT AVG(Price) AS AvgPrice
FROM salty_cleaned;

SELECT COUNT(*) AS TotalRows
FROM salty_cleaned;

SELECT TOP 10 *
FROM salty_cleaned;

SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';

SELECT COUNT(*) FROM salty_cleaned;

SELECT TOP 10 * FROM salty_cleaned;

SELECT Discount,
COUNT(*) AS ProductCount
FROM salty_cleaned
GROUP BY Discount;

SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';

Drop TABLE Productss;
Drop TABLE Products;
Drop TABLE salty_cleanedd;