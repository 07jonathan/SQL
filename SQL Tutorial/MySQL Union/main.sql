-- Menggunakan UNION untuk menggabungkan hasil dari dua tabel
-- Hanya mengambil nilai-nilai yang unik

-- Mengambil semua kota dari tabel Customers dan Suppliers
SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City;

-- Menggunakan UNION ALL untuk menggabungkan hasil dari dua tabel
-- Mengambil nilai-nilai yang duplikat

-- Mengambil semua kota dari tabel Customers dan Suppliers
SELECT City FROM Customers
UNION ALL
SELECT City FROM Suppliers
ORDER BY City;

-- Menggunakan UNION dengan klausa WHERE
-- Mengambil kota-kota di Jerman dari tabel Customers dan Suppliers
SELECT City, Country FROM Customers
WHERE Country = 'Germany'
UNION
SELECT City, Country FROM Suppliers
WHERE Country = 'Germany'
ORDER BY City;

-- Menggunakan UNION ALL dengan klausa WHERE
-- Mengambil kota-kota di Jerman dari tabel Customers dan Suppliers
SELECT City, Country FROM Customers
WHERE Country = 'Germany'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country = 'Germany'
ORDER BY City;

-- Menggunakan UNION dengan alias untuk menunjukkan apakah data berasal dari Customers atau Suppliers
-- Mengambil semua contact person dari tabel Customers dan Suppliers
SELECT 'Customer' AS Type, ContactName, City, Country
FROM Customers
UNION
SELECT 'Supplier' AS Type, ContactName, City, Country
FROM Suppliers;
