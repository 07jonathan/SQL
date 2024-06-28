-- Menyalin data dari tabel Suppliers ke tabel Customers
-- Kolom yang tidak diisi akan berisi NULL
INSERT INTO Customers (CustomerName, City, Country)
SELECT SupplierName, City, Country
FROM Suppliers;

-- Menyalin semua kolom dari tabel Suppliers ke tabel Customers
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT SupplierName, ContactName, Address, City, PostalCode, Country
FROM Suppliers;

-- Menyalin hanya supplier dari Jerman ke tabel Customers
INSERT INTO Customers (CustomerName, City, Country)
SELECT SupplierName, City, Country
FROM Suppliers
WHERE Country='Germany';

