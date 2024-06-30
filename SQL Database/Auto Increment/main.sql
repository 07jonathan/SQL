-- Create table in MySQL
CREATE TABLE Persons (
    Personid INT NOT NULL AUTO_INCREMENT,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Age INT,
    PRIMARY KEY (Personid)
);

-- Insert into table in MySQL
INSERT INTO Persons (FirstName, LastName)
VALUES ('Lars', 'Monsen');

-- Create table in SQL Server
CREATE TABLE Persons (
    Personid INT IDENTITY(1,1) PRIMARY KEY,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Age INT
);

-- Insert into table in SQL Server
INSERT INTO Persons (FirstName, LastName)
VALUES ('Lars', 'Monsen');

-- Create table in MS Access
CREATE TABLE Persons (
    Personid AUTOINCREMENT PRIMARY KEY,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Age INT
);

-- Insert into table in MS Access
INSERT INTO Persons (FirstName, LastName)
VALUES ('Lars', 'Monsen');

-- Create sequence in Oracle
CREATE SEQUENCE seq_person
    MINVALUE 1
    START WITH 1
    INCREMENT BY 1
    CACHE 10;

-- Create table in Oracle
CREATE TABLE Persons (
    Personid INT PRIMARY KEY,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255)
);

-- Insert into table in Oracle
INSERT INTO Persons (Personid, FirstName, LastName)
VALUES (seq_person.NEXTVAL, 'Lars', 'Monsen');
