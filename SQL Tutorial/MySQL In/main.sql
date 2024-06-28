-- Query 1: Using IN Operator
-- Return all customers from 'Germany', 'France', or 'UK'
SELECT *
FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');

-- Query 2: Using NOT IN Operator
-- Return all customers that are NOT from 'Germany', 'France', or 'UK'
SELECT *
FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');

-- Query 3: Using IN with Subquery
-- Return all customers that have an order in the Orders table
SELECT *
FROM Customers
WHERE CustomerID IN (SELECT CustomerID FROM Orders);

-- Query 4: Using NOT IN with Subquery
-- Return all customers that have NOT placed any orders in the Orders table
SELECT *
FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);
