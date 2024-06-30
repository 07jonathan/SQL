-- Create table Persons with a PRIMARY KEY constraint on ID
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);

-- Create table Persons with a PRIMARY KEY constraint on ID for SQL Server, Oracle, and MS Access
CREATE TABLE Persons (
    ID int NOT NULL PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);

-- Create table Persons with a PRIMARY KEY constraint on multiple columns (ID and LastName)
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT PK_Person PRIMARY KEY (ID, LastName)
);

-- Alter table Persons to add a PRIMARY KEY constraint on ID
ALTER TABLE Persons
ADD PRIMARY KEY (ID);

-- Alter table Persons to add a PRIMARY KEY constraint on multiple columns (ID and LastName)
ALTER TABLE Persons
ADD CONSTRAINT PK_Person PRIMARY KEY (ID, LastName);

-- Drop PRIMARY KEY constraint for MySQL
ALTER TABLE Persons
DROP PRIMARY KEY;

-- Drop PRIMARY KEY constraint for SQL Server, Oracle, MS Access
ALTER TABLE Persons
DROP CONSTRAINT PK_Person;
