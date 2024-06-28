-- Membuat tabel Customers
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(255),
    ContactName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    PostalCode VARCHAR(50),
    Country VARCHAR(50)
);

-- Menyisipkan data ke dalam tabel Customers
INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES 
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden');

-- Contoh penggunaan klausa WHERE untuk memilih semua pelanggan dari Mexico
SELECT * FROM Customers
WHERE Country = 'Mexico';

-- Contoh penggunaan klausa WHERE dengan bidang numerik
SELECT * FROM Customers
WHERE CustomerID = 1;

-- Contoh penggunaan operator dalam klausa WHERE
-- Menggunakan operator lebih besar dari
SELECT * FROM Customers
WHERE CustomerID > 2;

-- Menggunakan operator lebih kecil dari
SELECT * FROM Customers
WHERE CustomerID < 4;

-- Menggunakan operator lebih besar atau sama dengan
SELECT * FROM Customers
WHERE CustomerID >= 3;

-- Menggunakan operator lebih kecil atau sama dengan
SELECT * FROM Customers
WHERE CustomerID <= 5;

-- Menggunakan operator tidak sama dengan
SELECT * FROM Customers
WHERE Country <> 'Mexico';

-- Menggunakan operator BETWEEN
SELECT * FROM Customers
WHERE CustomerID BETWEEN 2 AND 4;

-- Menggunakan operator LIKE untuk mencari pola
SELECT * FROM Customers
WHERE CustomerName LIKE 'A%';

-- Menggunakan operator IN untuk menentukan beberapa nilai yang mungkin
SELECT * FROM Customers
WHERE Country IN ('Mexico', 'UK');
