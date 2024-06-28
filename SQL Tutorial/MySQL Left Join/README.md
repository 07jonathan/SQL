Dalam query ini:

    Customers.CustomerName adalah nama kolom dari tabel Customers yang akan ditampilkan.
    Orders.OrderID adalah nama kolom dari tabel Orders yang akan ditampilkan.
    Customers adalah tabel kiri yang berisi informasi pelanggan.
    Orders adalah tabel kanan yang berisi informasi pesanan.
    LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID menghubungkan kedua tabel berdasarkan kolom CustomerID, memastikan bahwa setiap baris dari tabel Customers akan dimasukkan dalam hasil query, bahkan jika tidak ada data yang cocok di tabel Orders.
    ORDER BY Customers.CustomerName mengurutkan hasil berdasarkan nama pelanggan.