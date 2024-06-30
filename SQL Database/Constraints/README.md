Dalam contoh di atas:

    employees adalah nama tabel.
    employee_id diatur sebagai primary key dengan PRIMARY KEY constraint.
    first_name dan last_name diatur sebagai NOT NULL dengan menggunakan NOT NULL constraint.
    email harus unik di setiap baris menggunakan UNIQUE constraint.
    salary harus bernilai positif menggunakan CHECK constraint.
    hire_date diatur untuk memiliki nilai default hari ini dengan menggunakan DEFAULT constraint.
    idx_department_id adalah indeks yang dibuat pada kolom department_id untuk mempercepat pencarian data.
    fk_department adalah contoh pembuatan foreign key constraint yang menghubungkan kolom department_id dalam tabel employees ke department_id dalam tabel departments.