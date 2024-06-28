-- 1. Menghitung rata-rata harga semua produk
SELECT AVG(Price)
FROM Products;

-- 2. Menghitung rata-rata harga produk untuk kategori 1
SELECT AVG(Price)
FROM Products
WHERE CategoryID = 1;

-- 3. Memberi alias pada hasil AVG() sebagai "average price"
SELECT AVG(Price) AS [average price]
FROM Products;

-- 4. Mengambil semua produk dengan harga di atas rata-rata harga
SELECT *
FROM Products
WHERE Price > (SELECT AVG(Price) FROM Products);

-- 5. Menggunakan AVG() dengan GROUP BY untuk menghitung rata-rata harga per kategori
SELECT AVG(Price) AS AveragePrice, CategoryID
FROM Products
GROUP BY CategoryID;
