SELECT *
FROM Customers
WHERE NOT Country = 'Spain';

SELECT *
FROM Customers
WHERE CustomerName NOT LIKE 'A%';

SELECT *
FROM Customers
WHERE CustomerID NOT BETWEEN 10 AND 60;

SELECT *
FROM Customers
WHERE City NOT IN ('Paris', 'London');

SELECT *
FROM Customers
WHERE NOT CustomerID > 50;

SELECT *
FROM Customers
WHERE NOT CustomerID < 50;
