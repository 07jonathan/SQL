-- Membuat tabel Persons dengan UNIQUE constraint pada ID (MySQL syntax)
CREATE TABLE Persons (
    ID INT NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Age INT,
    UNIQUE (ID)
);

-- Membuat tabel Persons dengan UNIQUE constraint bernama UC_Person pada ID dan LastName
CREATE TABLE Persons (
    ID INT NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Age INT,
    CONSTRAINT UC_Person UNIQUE (ID, LastName)
);

-- Menambahkan UNIQUE constraint pada kolom ID dengan ALTER TABLE
ALTER TABLE Persons
ADD UNIQUE (ID);

-- Menambahkan UNIQUE constraint bernama UC_Person pada kolom ID dan LastName dengan ALTER TABLE
ALTER TABLE Persons
ADD CONSTRAINT UC_Person UNIQUE (ID, LastName);

-- Menghapus UNIQUE constraint dengan nama UC_Person (MySQL syntax)
ALTER TABLE Persons
DROP INDEX UC_Person;
