SELECT COUNT(CustomerID) AS TotalCustomers, Country
FROM Customers
GROUP BY Country;

SELECT COUNT(CustomerID) AS TotalCustomers, Country
FROM Customers
GROUP BY Country
ORDER BY TotalCustomers DESC;

SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY Shippers.ShipperName;
