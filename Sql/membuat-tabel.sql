--Membuat database--
create perpustakaan
use perpustakaan;

--Membuat Tabel--
CREATE TABLE anggota (
    id_anggota INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100),
    alamat VARCHAR(150),
    no_hp VARCHAR(15)
);

CREATE TABLE buku (
    id_buku INT AUTO_INCREMENT PRIMARY KEY,
    judul VARCHAR(100),
    pengarang VARCHAR(100),
    tahun_terbit INT,
    stok INT
);

CREATE TABLE peminjaman (
    id_peminjaman INT AUTO_INCREMENT PRIMARY KEY,
    id_anggota INT,
    id_buku INT,
    tanggal_pinjam DATE,
    tanggal_kembali DATE,
    FOREIGN KEY (id_anggota) REFERENCES anggota(id_anggota),
    FOREIGN KEY (id_buku) REFERENCES buku(id_buku)
);

--Struktur Tabel--
MariaDB [perpustakaan]> desc anggota;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| id_anggota | int(11)      | NO   | PRI | NULL    | auto_increment |
| nama       | varchar(100) | YES  |     | NULL    |                |
| alamat     | varchar(150) | YES  |     | NULL    |                |
| no_hp      | varchar(15)  | YES  |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+
4 rows in set (0.046 sec)

MariaDB [perpustakaan]> desc buku;
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| id_buku      | int(11)      | NO   | PRI | NULL    | auto_increment |
| judul        | varchar(100) | YES  |     | NULL    |                |
| pengarang    | varchar(100) | YES  |     | NULL    |                |
| tahun_terbit | int(11)      | YES  |     | NULL    |                |
| stok         | int(11)      | YES  |     | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+
5 rows in set (0.019 sec)

MariaDB [perpustakaan]> desc peminjaman;
+-----------------+---------+------+-----+---------+----------------+
| Field           | Type    | Null | Key | Default | Extra          |
+-----------------+---------+------+-----+---------+----------------+
| id_peminjaman   | int(11) | NO   | PRI | NULL    | auto_increment |
| id_anggota      | int(11) | YES  | MUL | NULL    |                |
| id_buku         | int(11) | YES  | MUL | NULL    |                |
| tanggal_pinjam  | date    | YES  |     | NULL    |                |
| tanggal_kembali | date    | YES  |     | NULL    |                |
+-----------------+---------+------+-----+---------+----------------+
5 rows in set (0.018 sec)
