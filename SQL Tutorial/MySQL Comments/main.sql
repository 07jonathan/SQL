-- Contoh penggunaan komentar satu baris
-- Select semua kolom dari tabel Customers:
SELECT * FROM Customers;

-- Select semua kolom dari tabel Customers, tanpa menghiraukan bagian WHERE
SELECT * FROM Customers -- WHERE City='Berlin';

-- Contoh penggunaan komentar multi-baris
/* Select semua kolom
   dari semua rekaman
   di tabel Customers: */
SELECT * FROM Customers;

/* Komentar untuk mengabaikan beberapa statement:
   SELECT * FROM Customers;
   SELECT * FROM Products;
   SELECT * FROM Orders;
   SELECT * FROM Categories; */
SELECT * FROM Suppliers;

-- Contoh penggunaan komentar di tengah-tengah statement
SELECT CustomerName, /*City,*/ Country FROM Customers;

SELECT * FROM Customers WHERE (CustomerName LIKE 'L%'
OR CustomerName LIKE 'R%' /* OR CustomerName LIKE 'S%'
OR CustomerName LIKE 'T%' */ OR CustomerName LIKE 'W%')
AND Country='USA'
ORDER BY CustomerName;
