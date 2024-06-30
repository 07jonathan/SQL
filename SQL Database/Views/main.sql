-- Create view to show customers from Brazil
CREATE VIEW [Brazil Customers] AS
SELECT CustomerName, ContactName
FROM Customers
WHERE Country = 'Brazil';

-- Query the view
SELECT * FROM [Brazil Customers];

-- Create view to select products with price above average
CREATE VIEW [Products Above Average Price] AS
SELECT ProductName, Price
FROM Products
WHERE Price > (SELECT AVG(Price) FROM Products);

-- Query the view
SELECT * FROM [Products Above Average Price];

-- Update view to add City column to Brazil Customers
CREATE OR REPLACE VIEW [Brazil Customers] AS
SELECT CustomerName, ContactName, City
FROM Customers
WHERE Country = 'Brazil';

-- Query the updated view
SELECT * FROM [Brazil Customers];

-- Drop view Brazil Customers
DROP VIEW [Brazil Customers];
