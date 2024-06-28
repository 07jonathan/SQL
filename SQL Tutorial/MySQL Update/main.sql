-- Update the contact name and city for CustomerID = 1
UPDATE Customers
SET ContactName = 'Alfred Schmidt', City = 'Frankfurt'
WHERE CustomerID = 1;

-- Update the contact name to 'Juan' for all customers in Mexico
UPDATE Customers
SET ContactName = 'Juan'
WHERE Country = 'Mexico';

-- Update the contact name to 'Juan' for all customers (BE CAREFUL, this updates all records)
UPDATE Customers
SET ContactName = 'Juan';
