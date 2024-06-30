-- Create table with CHECK constraint on Age
-- MySQL Syntax
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CHECK (Age >= 18)
);

-- SQL Server / Oracle / MS Access Syntax
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int CHECK (Age >= 18)
);

-- Create table with named CHECK constraint and multiple conditions
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255),
    CONSTRAINT CHK_Person CHECK (Age >= 18 AND City = 'Sandnes')
);

-- Alter table to add a CHECK constraint on Age
ALTER TABLE Persons
ADD CHECK (Age >= 18);

-- Alter table to add named CHECK constraint with multiple conditions
ALTER TABLE Persons
ADD CONSTRAINT CHK_PersonAge CHECK (Age >= 18 AND City = 'Sandnes');

-- Drop a CHECK constraint
-- SQL Server / Oracle / MS Access Syntax
ALTER TABLE Persons
DROP CONSTRAINT CHK_PersonAge;

-- MySQL Syntax
ALTER TABLE Persons
DROP CHECK CHK_PersonAge;
