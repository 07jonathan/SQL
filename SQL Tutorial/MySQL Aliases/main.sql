-- Contoh penggunaan alias untuk kolom
SELECT CustomerID AS ID, CustomerName AS Customer
FROM Customers;

-- Contoh penggunaan alias untuk tabel dan penggabungan
SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Customers AS c, Orders AS o
WHERE c.CustomerID = o.CustomerID;

-- Contoh penggunaan alias dengan fungsi konkatenasi (MySQL)
SELECT CustomerName, CONCAT(Address, ', ', PostalCode, ', ', City, ', ', Country) AS FullAddress
FROM Customers;
