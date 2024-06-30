-- Tabel awal Persons
CREATE TABLE Persons (
    ID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

-- Menambahkan kolom DateOfBirth dengan tipe data DATE
ALTER TABLE Persons
ADD DateOfBirth date;

-- Mengubah tipe data kolom DateOfBirth menjadi YEAR
ALTER TABLE Persons
ALTER COLUMN DateOfBirth year;

-- Menghapus kolom DateOfBirth
ALTER TABLE Persons
DROP COLUMN DateOfBirth;
