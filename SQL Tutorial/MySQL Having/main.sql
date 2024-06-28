-- Contoh 1: Jumlah pelanggan di setiap negara dengan lebih dari 5 pelanggan
SELECT COUNT(CustomerID) AS JumlahPelanggan, Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;

-- Contoh 2: Jumlah pelanggan di setiap negara, diurutkan dari tinggi ke rendah (hanya negara dengan lebih dari 5 pelanggan)
SELECT COUNT(CustomerID) AS JumlahPelanggan, Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5
ORDER BY COUNT(CustomerID) DESC;

-- Contoh 3: Karyawan yang telah mendaftar lebih dari 10 pesanan
SELECT Employees.LastName, COUNT(Orders.OrderID) AS JumlahPesanan
FROM Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 10;

-- Contoh 4: Karyawan 'Davolio' atau 'Fuller' yang telah mendaftar lebih dari 25 pesanan
SELECT Employees.LastName, COUNT(Orders.OrderID) AS JumlahPesanan
FROM Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
WHERE LastName = 'Davolio' OR LastName = 'Fuller'
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 25;
