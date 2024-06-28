-- SQL script for demonstrating RIGHT JOIN example with Northwind database

-- Selecting OrderID, LastName, FirstName for all employees and their orders
SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;
