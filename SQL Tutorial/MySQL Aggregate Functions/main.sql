-- Contoh penggunaan MIN()
SELECT MIN(price) AS min_price FROM products;

-- Contoh penggunaan MAX()
SELECT MAX(price) AS max_price FROM products;

-- Contoh penggunaan COUNT()
SELECT COUNT(*) AS total_rows FROM products;

-- Contoh penggunaan COUNT() dengan kondisi
SELECT COUNT(*) AS high_price_count FROM products WHERE price > 100;

-- Contoh penggunaan SUM()
SELECT SUM(quantity) AS total_quantity FROM orders;

-- Contoh penggunaan AVG()
SELECT AVG(price) AS average_price FROM products;
