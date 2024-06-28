-- Menggunakan MIN() untuk mendapatkan harga terendah
SELECT MIN(Price) AS SmallestPrice
FROM Products;

-- Menggunakan MAX() untuk mendapatkan harga tertinggi
SELECT MAX(Price) AS LargestPrice
FROM Products;

-- Menggunakan MIN() dengan GROUP BY untuk mendapatkan harga terendah tiap kategori
SELECT MIN(Price) AS SmallestPrice, CategoryID
FROM Products
GROUP BY CategoryID;
