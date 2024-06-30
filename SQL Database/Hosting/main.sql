-- Script untuk deskripsi basis data SQL hosting
-- MySQL
INSERT INTO hosting_plans (database_name, description)
VALUES ('MySQL', 'MySQL is a popular database software for web sites. It is very powerful, robust, and full-featured. MySQL is an inexpensive alternative to expensive Microsoft and Oracle solutions.');

-- SQL Server
INSERT INTO hosting_plans (database_name, description)
VALUES ('SQL Server', 'Microsoft''s SQL Server is a popular database software for database-driven web sites with high traffic. SQL Server is a very powerful, robust, and full-featured SQL database system.');

-- Oracle
INSERT INTO hosting_plans (database_name, description)
VALUES ('Oracle', 'Oracle is also a popular database software for database-driven web sites with high traffic. Oracle is a very powerful, robust, and full-featured SQL database system.');

-- MS Access
INSERT INTO hosting_plans (database_name, description)
VALUES ('MS Access', 'Microsoft Access can be a solution when a web site requires only a simple database. It is not well suited for very high-traffic and not as powerful as MySQL, SQL Server, or Oracle.');

-- Tabel untuk menyimpan deskripsi
CREATE TABLE hosting_plans (
    database_name VARCHAR(50),
    description TEXT
);

-- Contoh penggunaan tabel hosting_plans:
SELECT * FROM hosting_plans;
