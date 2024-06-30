-- Create Persons table
CREATE TABLE Persons (
    PersonID int PRIMARY KEY,
    LastName varchar(255),
    FirstName varchar(255),
    Age int
);

-- Create Orders table with FOREIGN KEY constraint
CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
    REFERENCES Persons(PersonID)
);

-- Adding FOREIGN KEY constraint using ALTER TABLE
ALTER TABLE Orders
ADD CONSTRAINT FK_PersonOrder
FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);

-- Drop FOREIGN KEY constraint
ALTER TABLE Orders
DROP CONSTRAINT FK_PersonOrder;
