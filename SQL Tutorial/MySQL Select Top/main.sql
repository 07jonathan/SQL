-- SQL Server / MS Access Syntax:

-- Select top 3 records from Customers table
SELECT TOP 3 * FROM Customers;

-- Select top 50 percent of records
SELECT TOP 50 PERCENT * FROM Customers;

-- Select top 3 records with a condition
SELECT TOP 3 * FROM Customers
WHERE Country='Germany';

-- Select top 3 records sorted in descending order by CustomerName
SELECT TOP 3 * FROM Customers
ORDER BY CustomerName DESC;

-- MySQL Syntax:
-- Select first 3 records from Customers table
SELECT * FROM Customers
LIMIT 3;

-- MySQL does not have a direct equivalent for selecting by percent, you'd typically use a subquery to achieve similar results

-- Select top 3 records with a condition
SELECT * FROM Customers
WHERE Country='Germany'
LIMIT 3;

-- Select top 3 records sorted in descending order by CustomerName
SELECT * FROM Customers
ORDER BY CustomerName DESC
LIMIT 3;

-- Oracle Syntax:
-- Select first 3 records from Customers table
SELECT * FROM Customers
FETCH FIRST 3 ROWS ONLY;

-- Select first 50 percent of records
SELECT * FROM Customers
FETCH FIRST 50 PERCENT ROWS ONLY;

-- Select top 3 records with a condition
SELECT * FROM Customers
WHERE Country='Germany'
FETCH FIRST 3 ROWS ONLY;

-- Select top 3 records sorted in descending order by CustomerName
SELECT * FROM Customers
ORDER BY CustomerName DESC
FETCH FIRST 3 ROWS ONLY;
