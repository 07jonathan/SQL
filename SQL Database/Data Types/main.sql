-- Contoh pembuatan tabel menggunakan beberapa tipe data yang berbeda di MySQL

-- Tabel untuk menyimpan informasi pengguna
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    registration_date DATE,
    last_login DATETIME,
    profile_picture MEDIUMBLOB
);

-- Tabel untuk menyimpan informasi produk
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2),
    available_date DATE,
    image LONGBLOB
);

-- Tabel untuk menyimpan informasi transaksi
CREATE TABLE transactions (
    transaction_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    product_id INT,
    transaction_date DATETIME,
    quantity TINYINT UNSIGNED,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
