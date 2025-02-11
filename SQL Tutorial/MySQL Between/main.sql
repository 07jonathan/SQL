SELECT *
FROM Products
WHERE Price BETWEEN 10 AND 20;

SELECT *
FROM Products
WHERE Price NOT BETWEEN 10 AND 20;

SELECT *
FROM Products
WHERE Price BETWEEN 10 AND 20
AND CategoryID IN (1, 2, 3);

SELECT *
FROM Products
WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;

SELECT *
FROM Products
WHERE ProductName NOT BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;

SELECT *
FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';
