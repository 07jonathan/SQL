-- Contoh SQL untuk membuat index dan menghapus index di berbagai platform database

-- MySQL: Membuat index
CREATE INDEX idx_lastname
ON Persons (LastName);

CREATE UNIQUE INDEX idx_pname
ON Persons (LastName, FirstName);

-- MySQL: Menghapus index
ALTER TABLE Persons
DROP INDEX idx_lastname;

-- SQL Server: Membuat index
CREATE INDEX idx_lastname
ON Persons (LastName);

CREATE UNIQUE INDEX idx_pname
ON Persons (LastName, FirstName);

-- SQL Server: Menghapus index
DROP INDEX Persons.idx_lastname;

-- MS Access: Membuat index
CREATE INDEX idx_lastname
ON Persons (LastName);

-- MS Access: Menghapus index
DROP INDEX idx_lastname ON Persons;

-- DB2/Oracle: Membuat index
CREATE INDEX idx_lastname
ON Persons (LastName);

CREATE UNIQUE INDEX idx_pname
ON Persons (LastName, FirstName);

-- DB2/Oracle: Menghapus index
DROP INDEX idx_lastname;

-- Pastikan untuk menyesuaikan nama tabel, nama kolom, dan nama index sesuai dengan kebutuhan basis data Anda.
