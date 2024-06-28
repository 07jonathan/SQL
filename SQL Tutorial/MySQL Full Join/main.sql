-- Create SQL script to demonstrate FULL OUTER JOIN

-- Use Northwind sample database schema for Customers and Orders

-- Select all customers and their corresponding order IDs, or show NULL if no order exists
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;
