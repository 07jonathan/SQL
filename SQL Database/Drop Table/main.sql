-- Contoh SQL untuk DROP TABLE dan TRUNCATE TABLE

-- Men-drop tabel "Shippers" jika sudah ada
DROP TABLE IF EXISTS Shippers;

-- Membuat kembali tabel "Shippers" untuk keperluan contoh
CREATE TABLE Shippers (
    ShipperID INT PRIMARY KEY,
    ShipperName VARCHAR(255) NOT NULL,
    Phone VARCHAR(15)
);

-- Memasukkan beberapa data ke dalam tabel "Shippers"
INSERT INTO Shippers (ShipperID, ShipperName, Phone)
VALUES (1, 'Speedy Express', '(503) 555-9831'),
       (2, 'United Package', '(503) 555-3199'),
       (3, 'Federal Shipping', '(503) 555-9931');

-- Menampilkan data dari tabel "Shippers"
SELECT * FROM Shippers;

-- Mengosongkan (truncate) tabel "Shippers" untuk menghapus semua data
TRUNCATE TABLE Shippers;

-- Menampilkan kembali data dari tabel "Shippers" setelah di-truncate (tidak akan menampilkan apapun karena tabel kosong)
SELECT * FROM Shippers;
