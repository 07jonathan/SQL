-- Membuat tabel Persons dengan NOT NULL constraint pada ID, LastName, dan FirstName
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);

-- Menambahkan NOT NULL constraint pada kolom Age setelah tabel dibuat (misal untuk SQL Server / MS Access)
ALTER TABLE Persons
ALTER COLUMN Age int NOT NULL;
