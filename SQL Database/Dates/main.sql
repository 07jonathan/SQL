-- Create a table named Orders
CREATE TABLE Orders (
    OrderId INT,
    ProductName VARCHAR(255),
    OrderDate DATETIME
);

-- Insert sample data into the Orders table
INSERT INTO Orders (OrderId, ProductName, OrderDate) VALUES
(1, 'Geitost', '2008-11-11 13:23:44'),
(2, 'Camembert Pierrot', '2008-11-09 15:45:21'),
(3, 'Mozzarella di Giovanni', '2008-11-11 11:12:01'),
(4, 'Mascarpone Fabioli', '2008-10-29 14:56:59');

-- Query to select records with a specific date (ignoring time component)
SELECT * FROM Orders WHERE DATE(OrderDate) = '2008-11-11';
