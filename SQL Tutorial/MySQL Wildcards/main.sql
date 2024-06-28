-- Menggunakan % Wildcard
-- Contoh: Mengembalikan semua pelanggan yang diawali dengan huruf 'a'
SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';

-- Contoh: Mengembalikan semua pelanggan yang diakhiri dengan pola 'es'
SELECT * FROM Customers
WHERE CustomerName LIKE '%es';

-- Contoh: Mengembalikan semua pelanggan yang mengandung pola 'mer'
SELECT * FROM Customers
WHERE CustomerName LIKE '%mer%';

-- Menggunakan _ Wildcard
-- Contoh: Mengembalikan semua pelanggan dengan Kota yang dimulai dengan satu karakter apa pun, diikuti oleh "ondon"
SELECT * FROM Customers
WHERE City LIKE '_ondon';

-- Contoh: Mengembalikan semua pelanggan dengan Kota yang dimulai dengan "L", diikuti oleh tiga karakter apa pun, diakhiri dengan "on"
SELECT * FROM Customers
WHERE City LIKE 'L___on';

-- Menggunakan [] Wildcard (tidak didukung di MySQL dan PostgreSQL)
-- Contoh: Mengembalikan semua pelanggan yang diawali dengan "b", "s", atau "p"
-- SELECT * FROM Customers
-- WHERE CustomerName LIKE '[bsp]%';

-- Menggunakan - Wildcard (tidak didukung di MySQL dan PostgreSQL)
-- Contoh: Mengembalikan semua pelanggan yang diawali dengan karakter "a" sampai "f"
-- SELECT * FROM Customers
-- WHERE CustomerName LIKE '[a-f]%';

-- Mengombinasikan Wildcards
-- Contoh: Mengembalikan semua pelanggan yang diawali dengan "a" dan panjangnya setidaknya 3 karakter
SELECT * FROM Customers
WHERE CustomerName LIKE 'a__%';

-- Contoh: Mengembalikan semua pelanggan yang memiliki "r" pada posisi kedua
SELECT * FROM Customers
WHERE CustomerName LIKE '_r%';

-- Tanpa Wildcard
-- Contoh: Mengembalikan semua pelanggan dari Spanyol
SELECT * FROM Customers
WHERE Country LIKE 'Spain';
