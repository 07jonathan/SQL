-- Example 1: Suppliers with a product price less than 20
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (
    SELECT ProductName 
    FROM Products 
    WHERE Products.SupplierID = Suppliers.SupplierID 
      AND Price < 20
);

-- Example 2: Suppliers with a product price equal to 22
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (
    SELECT ProductName 
    FROM Products 
    WHERE Products.SupplierID = Suppliers.SupplierID 
      AND Price = 22
);
