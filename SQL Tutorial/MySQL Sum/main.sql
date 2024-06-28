-- Contoh penggunaan SUM() untuk menghitung total Quantity dari tabel OrderDetails

-- Menghitung total Quantity dari seluruh tabel OrderDetails
SELECT SUM(Quantity)
FROM OrderDetails;

-- Menghitung total Quantity untuk produk dengan ProductID 11
SELECT SUM(Quantity)
FROM OrderDetails
WHERE ProductID = 11;

-- Menggunakan alias untuk nama kolom hasil
SELECT SUM(Quantity) AS total
FROM OrderDetails;

-- Menggunakan SUM() dengan GROUP BY untuk menghitung total Quantity untuk setiap OrderID
SELECT OrderID, SUM(Quantity) AS [Total Quantity]
FROM OrderDetails
GROUP BY OrderID;

-- Menggunakan SUM() dengan ekspresi untuk menghitung total uang (misalnya harga $10 per produk)
SELECT SUM(Quantity * 10)
FROM OrderDetails;

-- Menggunakan SUM() dengan JOIN untuk menghitung total uang berdasarkan harga aktual dari tabel Products
SELECT SUM(Products.Price * OrderDetails.Quantity)
FROM OrderDetails
LEFT JOIN Products ON OrderDetails.ProductID = Products.ProductID;
