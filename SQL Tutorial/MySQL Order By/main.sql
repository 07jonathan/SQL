CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    SupplierID INT,
    CategoryID INT,
    Unit VARCHAR(255),
    Price DECIMAL(10, 2)
);

INSERT INTO Products (ProductID, ProductName, SupplierID, CategoryID, Unit, Price) VALUES
(1, 'Chais', 1, 1, '10 boxes x 20 bags', 18.00),
(2, 'Chang', 1, 1, '24 - 12 oz bottles', 19.00),
(3, 'Aniseed Syrup', 1, 2, '12 - 550 ml bottles', 10.00),
(4, 'Chef Anton''s Cajun Seasoning', 2, 2, '48 - 6 oz jars', 22.00),
(5, 'Chef Anton''s Gumbo Mix', 2, 2, '36 boxes', 21.35);

SELECT * FROM Products
ORDER BY Price;

SELECT * FROM Products
ORDER BY Price DESC;

SELECT * FROM Products
ORDER BY ProductName;

SELECT * FROM Products
ORDER BY ProductName DESC;

SELECT * FROM Products
ORDER BY CategoryID ASC, Price DESC;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(255),
    Country VARCHAR(255)
);

INSERT INTO Customers (CustomerID, CustomerName, Country) VALUES
(1, 'Alfreds Futterkiste', 'Germany'),
(2, 'Berglunds snabbköp', 'Sweden'),
(3, 'Centro comercial Moctezuma', 'Mexico'),
(4, 'Ernst Handel', 'Austria'),
(5, 'Island Trading', 'UK'),
(6, 'Königlich Essen', 'Germany');

SELECT * FROM Customers
ORDER BY Country, CustomerName;

SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;
