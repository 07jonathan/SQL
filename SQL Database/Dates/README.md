Dalam contoh di atas:

    CREATE TABLE digunakan untuk membuat tabel Orders dengan kolom OrderId, ProductName, dan OrderDate.
    INSERT INTO digunakan untuk memasukkan data sampel ke dalam tabel Orders.
    SELECT * FROM Orders WHERE DATE(OrderDate) = '2008-11-11'; adalah query yang digunakan untuk memilih catatan dengan tanggal spesifik dari tabel Orders, dengan mengabaikan komponen waktu.