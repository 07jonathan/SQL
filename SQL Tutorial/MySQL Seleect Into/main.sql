
-- Contoh SQL untuk SELECT INTO Statement

-- Copy semua kolom dari tabel Customers ke tabel CustomersBackup2017
SELECT * INTO CustomersBackup2017
FROM Customers;

-- Copy ke tabel baru di database eksternal (misalnya 'Backup.mdb')
SELECT * INTO CustomersBackup2017 IN 'Backup.mdb'
FROM Customers;

-- Copy hanya beberapa kolom (CustomerName, ContactName) ke tabel CustomersBackup2017
SELECT CustomerName, ContactName INTO CustomersBackup2017
FROM Customers;

-- Copy hanya pelanggan dari Jerman ke tabel CustomersGermany
SELECT * INTO CustomersGermany
FROM Customers
WHERE Country = 'Germany';

-- Copy data dari lebih dari satu tabel (Customers dan Orders) ke tabel CustomersOrderBackup2017
SELECT Customers.CustomerName, Orders.OrderID
INTO CustomersOrderBackup2017
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- Membuat tabel kosong baru menggunakan schema dari tabel existing (oldtable)
SELECT * INTO newtable
FROM oldtable
WHERE 1 = 0;
