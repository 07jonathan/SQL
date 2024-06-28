-- Contoh penggunaan operator ANY
-- Mengembalikan ProductName jika ada setidaknya satu record di OrderDetails dengan Quantity sama dengan 10
SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10);

-- Mengembalikan ProductName jika ada setidaknya satu record di OrderDetails dengan Quantity lebih dari 99
SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity > 99);

-- Mengembalikan ProductName jika ada setidaknya satu record di OrderDetails dengan Quantity lebih dari 1000
SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity > 1000);

-- Contoh penggunaan operator ALL
-- Mengembalikan semua nama produk dari Products
SELECT ALL ProductName
FROM Products
WHERE TRUE;

-- Mengembalikan ProductName jika semua record di OrderDetails memiliki Quantity sama dengan 10
SELECT ProductName
FROM Products
WHERE ProductID = ALL
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10);
