CREATE PROCEDURE SelectAllCustomers
AS
SELECT * FROM Customers;

CREATE PROCEDURE SelectCustomersByCity
@City nvarchar(30)
AS
SELECT * FROM Customers WHERE City = @City;

CREATE PROCEDURE SelectCustomersByCityAndPostalCode
@City nvarchar(30),
@PostalCode nvarchar(10)
AS
SELECT * FROM Customers WHERE City = @City AND PostalCode = @PostalCode;

EXEC SelectAllCustomers;

EXEC SelectCustomersByCity @City = 'London';

EXEC SelectCustomersByCityAndPostalCode @City = 'London', @PostalCode = 'WA1 1DP';
