-- Contoh Tabel Users
CREATE TABLE Users (
    UserId INT PRIMARY KEY,
    Name VARCHAR(100),
    Password VARCHAR(100)
);

-- Contoh Data Pengguna
INSERT INTO Users (UserId, Name, Password)
VALUES (1, 'John Doe', 'myPass'),
       (2, 'Jane Smith', 'secure123'),
       (3, 'Admin', 'admin@123');

-- Contoh SQL Injection Based on 1=1
-- Input yang berpotensi berbahaya
DECLARE @txtUserId VARCHAR(100);
SET @txtUserId = '105 OR 1=1';

-- Eksekusi perintah yang rentan terhadap SQL injection
SELECT * FROM Users WHERE UserId = @txtUserId;

-- SQL Injection Based on ""="" Always True
-- Contoh input yang berpotensi berbahaya
DECLARE @uName VARCHAR(100), @uPass VARCHAR(100);
SET @uName = '" OR ""="';
SET @uPass = '" OR ""="';

-- Eksekusi perintah yang rentan terhadap SQL injection
SELECT * FROM Users WHERE Name = @uName AND Password = @uPass;

-- Menggunakan Parameter untuk Perlindungan
-- Contoh penggunaan parameter di ASP.NET
DECLARE @txtNam VARCHAR(100), @txtAdd VARCHAR(100), @txtCit VARCHAR(100);
SET @txtNam = 'CustomerName';
SET @txtAdd = 'Address';
SET @txtCit = 'City';

-- Eksekusi perintah dengan menggunakan parameter untuk menghindari SQL injection
INSERT INTO Customers (CustomerName, Address, City)
VALUES (@txtNam, @txtAdd, @txtCit);
