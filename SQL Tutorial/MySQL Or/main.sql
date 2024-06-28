-- Select all customers from Germany or Spain
SELECT *
FROM Customers
WHERE Country = 'Germany' OR Country = 'Spain';

-- Select customers where City is Berlin, CustomerName starts with 'G', or Country is Norway
SELECT *
FROM Customers
WHERE City = 'Berlin' OR CustomerName LIKE 'G%' OR Country = 'Norway';

-- Select Spanish customers whose names start with 'G' or 'R'
SELECT *
FROM Customers
WHERE Country = 'Spain' AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');

-- Incorrect query without parentheses
SELECT *
FROM Customers
WHERE Country = 'Spain' AND CustomerName LIKE 'G%' OR CustomerName LIKE 'R%';
