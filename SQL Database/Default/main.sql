-- Create table with DEFAULT constraint (MySQL / SQL Server / Oracle / MS Access)
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Sandnes'
);

-- Create table with DEFAULT constraint using GETDATE() for OrderDate (SQL Server example)
CREATE TABLE Orders (
    ID int NOT NULL,
    OrderNumber int NOT NULL,
    OrderDate date DEFAULT GETDATE()
);

-- Alter table to add DEFAULT constraint (specific examples)
-- MySQL
ALTER TABLE Persons
ALTER City SET DEFAULT 'Sandnes';

-- SQL Server
ALTER TABLE Persons
ADD CONSTRAINT df_City
DEFAULT 'Sandnes' FOR City;

-- MS Access
ALTER TABLE Persons
ALTER COLUMN City SET DEFAULT 'Sandnes';

-- Oracle
ALTER TABLE Persons
MODIFY City DEFAULT 'Sandnes';

-- Drop DEFAULT constraint (specific examples)
-- MySQL
ALTER TABLE Persons
ALTER City DROP DEFAULT;

-- SQL Server / Oracle / MS Access
ALTER TABLE Persons
ALTER COLUMN City DROP DEFAULT;
