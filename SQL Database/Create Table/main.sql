-- Create table Persons
CREATE TABLE Persons (
    PersonID INT,
    LastName VARCHAR(255),
    FirstName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255)
);

-- Create table TestTable by copying data from Customers
CREATE TABLE TestTable AS
SELECT customername, contactname
FROM customers;
