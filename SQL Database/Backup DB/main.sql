-- Backup Database Lengkap
BACKUP DATABASE testDB
TO DISK = 'D:\backups\testDB.bak';

-- Backup Diferensial
BACKUP DATABASE testDB
TO DISK = 'D:\backups\testDB.bak'
WITH DIFFERENTIAL;
