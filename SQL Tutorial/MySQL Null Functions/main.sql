-- MySQL
-- Menggunakan IFNULL()
SELECT ProductName, UnitPrice * (UnitsInStock + IFNULL(UnitsOnOrder, 0)) AS TotalPrice
FROM Products;

-- Menggunakan COALESCE()
SELECT ProductName, UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0)) AS TotalPrice
FROM Products;

-- SQL Server
-- Menggunakan ISNULL()
SELECT ProductName, UnitPrice * (UnitsInStock + ISNULL(UnitsOnOrder, 0)) AS TotalPrice
FROM Products;

-- Menggunakan COALESCE()
SELECT ProductName, UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0)) AS TotalPrice
FROM Products;

-- MS Access
-- Menggunakan IsNull()
SELECT ProductName, UnitPrice * (UnitsInStock + IIF(IsNull(UnitsOnOrder), 0, UnitsOnOrder)) AS TotalPrice
FROM Products;

-- Oracle
-- Menggunakan NVL()
SELECT ProductName, UnitPrice * (UnitsInStock + NVL(UnitsOnOrder, 0)) AS TotalPrice
FROM Products;

-- Menggunakan COALESCE()
SELECT ProductName, UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0)) AS TotalPrice
FROM Products;
