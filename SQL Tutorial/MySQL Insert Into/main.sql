-- Insert a single record into Customers table with specified columns
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

-- Insert another record with specific columns (CustomerName, City, and Country)
INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Greasy Burger', 'Sandnes', 'Norway');

-- Insert multiple records into Customers table
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
('Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'L1 0AA', 'UK'),
('Mango Foods', 'Ravi Patel', 'MG Road 22', 'Mumbai', '400001', 'India'),
('Le Parisien', 'Jean Pierre', 'Rue de la Paix', 'Paris', '75001', 'France');

-- Ensure auto-increment columns like CustomerID are updated automatically
