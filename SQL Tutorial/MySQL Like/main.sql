-- Select all customers that start with the letter "a"
SELECT *
FROM Customers
WHERE CustomerName LIKE 'a%';

-- Return all customers from a city that starts with 'L' followed by one wildcard character, then 'nd' and then two wildcard characters
SELECT *
FROM Customers
WHERE City LIKE 'L_nd__';

-- Return all customers from a city that contains the letter 'L'
SELECT *
FROM Customers
WHERE City LIKE '%L%';

-- Return all customers that start with 'La'
SELECT *
FROM Customers
WHERE CustomerName LIKE 'La%';

-- Return all customers that start with 'a' or start with 'b'
SELECT *
FROM Customers
WHERE CustomerName LIKE 'a%' OR CustomerName LIKE 'b%';

-- Return all customers that end with 'a'
SELECT *
FROM Customers
WHERE CustomerName LIKE '%a';

-- Return all customers that start with "b" and end with "s"
SELECT *
FROM Customers
WHERE CustomerName LIKE 'b%s';

-- Return all customers that contain the phrase 'or'
SELECT *
FROM Customers
WHERE CustomerName LIKE '%or%';

-- Return all customers that start with "a" and are at least 3 characters in length
SELECT *
FROM Customers
WHERE CustomerName LIKE 'a__%';

-- Return all customers that have "r" in the second position
SELECT *
FROM Customers
WHERE CustomerName LIKE '_r%';

-- Return all customers from Spain
SELECT *
FROM Customers
WHERE Country LIKE 'Spain';
