-- Create Orders table
CREATE TABLE Orders (
    OrderID INT,
    CustomerID INT,
    OrderDate DATE,
    PRIMARY KEY (OrderID)
);

-- Insert data into Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate)
VALUES
    (10308, 2, '1996-09-18'),
    (10309, 37, '1996-09-19'),
    (10310, 77, '1996-09-20');

-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT,
    CustomerName VARCHAR(255),
    ContactName VARCHAR(255),
    Country VARCHAR(255),
    PRIMARY KEY (CustomerID)
);

-- Insert data into Customers table
INSERT INTO Customers (CustomerID, CustomerName, ContactName, Country)
VALUES
    (1, 'Alfreds Futterkiste', 'Maria Anders', 'Germany'),
    (2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Mexico'),
    (3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mexico');

-- Select records using INNER JOIN
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;
