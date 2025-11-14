use perpustakaan;

--Mengisi Tabel--
MariaDB [perpustakaan]> INSERT INTO anggota (nama, alamat, no_hp) VALUES
    -> ('Andi Saputra', 'Jl. Mawar No. 10', '081234567890'),
    -> ('Budi Santoso', 'Jl. Melati No. 21', '082145678901'),
    -> ('Citra Dewi', 'Jl. Kenanga No. 5', '083156789012'),
    -> ('Dewi Lestari', 'Jl. Flamboyan No. 8', '081278945612'),
    -> ('Eka Putra', 'Jl. Dahlia No. 13', '081345671239'),
    -> ('Fajar Pratama', 'Jl. Anggrek No. 7', '081234562378'),
    -> ('Gina Aprilia', 'Jl. Cempaka No. 9', '081789045612'),
    -> ('Hadi Wijaya', 'Jl. Nusa Indah No. 11', '082145671238'),
    -> ('Indah Permata', 'Jl. Teratai No. 3', '083123456789'),
    -> ('Joko Rahmat', 'Jl. Seroja No. 4', '082167894512'),
    -> ('Kiki Amelia', 'Jl. Cemara No. 2', '081398761234'),
    -> ('Lina Kartika', 'Jl. Sakura No. 12', '081245671238'),
    -> ('Maya Andini', 'Jl. Tulip No. 15', '083278945612'),
    -> ('Nina Utami', 'Jl. Mawar No. 1', '082167890123'),
    -> ('Oka Hidayat', 'Jl. Melur No. 6', '081234567812');
Query OK, 15 rows affected (0.048 sec)
Records: 15  Duplicates: 0  Warnings: 0

MariaDB [perpustakaan]> INSERT INTO buku (judul, pengarang, tahun_terbit, stok) VALUES
    -> ('Pemrograman Dasar', 'Ahmad Rizal', 2019, 10),
    -> ('Basis Data', 'Budi Santoso', 2020, 8),
    -> ('Algoritma dan Struktur Data', 'Citra Dewi', 2018, 6),
    -> ('Sistem Operasi', 'Dewi Lestari', 2021, 9),
    -> ('Jaringan Komputer', 'Eka Putra', 2022, 5),
    -> ('Kecerdasan Buatan', 'Fajar Pratama', 2023, 7),
    -> ('Pemrograman Web', 'Gina Aprilia', 2019, 10),
    -> ('Rekayasa Perangkat Lunak', 'Hadi Wijaya', 2020, 6),
    -> ('Analisis Data', 'Indah Permata', 2021, 8),
    -> ('Manajemen Proyek IT', 'Joko Rahmat', 2022, 5),
    -> ('Pemrograman Mobile', 'Kiki Amelia', 2023, 9),
    -> ('Keamanan Jaringan', 'Lina Kartika', 2020, 7),
    -> ('Cloud Computing', 'Maya Andini', 2021, 6),
    -> ('Internet of Things', 'Nina Utami', 2023, 8),
    -> ('Desain UI/UX', 'Oka Hidayat', 2022, 10);
Query OK, 15 rows affected (0.003 sec)
Records: 15  Duplicates: 0  Warnings: 0

MariaDB [perpustakaan]> INSERT INTO peminjaman (id_anggota, id_buku, tanggal_pinjam, tanggal_kembali) VALUES
    -> (1, 3, '2025-11-01', '2025-11-08'),
    -> (2, 1, '2025-11-02', '2025-11-09'),
    -> (3, 5, '2025-11-03', '2025-11-10'),
    -> (4, 2, '2025-11-04', '2025-11-11'),
    -> (5, 6, '2025-11-05', '2025-11-12'),
    -> (6, 4, '2025-11-06', '2025-11-13'),
    -> (7, 7, '2025-11-07', '2025-11-14'),
    -> (8, 9, '2025-11-08', '2025-11-15'),
    -> (9, 8, '2025-11-09', '2025-11-16'),
    -> (10, 10, '2025-11-10', '2025-11-17'),
    -> (11, 12, '2025-11-11', '2025-11-18'),
    -> (12, 11, '2025-11-12', '2025-11-19'),
    -> (13, 13, '2025-11-13', '2025-11-20'),
    -> (14, 14, '2025-11-14', '2025-11-21'),
    -> (15, 15, '2025-11-15', '2025-11-22');
Query OK, 15 rows affected (0.012 sec)
Records: 15  Duplicates: 0  Warnings: 0

--Menampilkan Tabel--
MariaDB [perpustakaan]> select * from anggota;
+------------+---------------+-----------------------+--------------+
| id_anggota | nama          | alamat                | no_hp        |
+------------+---------------+-----------------------+--------------+
|          1 | Andi Saputra  | Jl. Mawar No. 10      | 081234567890 |
|          2 | Budi Santoso  | Jl. Melati No. 21     | 082145678901 |
|          3 | Citra Dewi    | Jl. Kenanga No. 5     | 083156789012 |
|          4 | Dewi Lestari  | Jl. Flamboyan No. 8   | 081278945612 |
|          5 | Eka Putra     | Jl. Dahlia No. 13     | 081345671239 |
|          6 | Fajar Pratama | Jl. Anggrek No. 7     | 081234562378 |
|          7 | Gina Aprilia  | Jl. Cempaka No. 9     | 081789045612 |
|          8 | Hadi Wijaya   | Jl. Nusa Indah No. 11 | 082145671238 |
|          9 | Indah Permata | Jl. Teratai No. 3     | 083123456789 |
|         10 | Joko Rahmat   | Jl. Seroja No. 4      | 082167894512 |
|         11 | Kiki Amelia   | Jl. Cemara No. 2      | 081398761234 |
|         12 | Lina Kartika  | Jl. Sakura No. 12     | 081245671238 |
|         13 | Maya Andini   | Jl. Tulip No. 15      | 083278945612 |
|         14 | Nina Utami    | Jl. Mawar No. 1       | 082167890123 |
|         15 | Oka Hidayat   | Jl. Melur No. 6       | 081234567812 |
+------------+---------------+-----------------------+--------------+
15 rows in set (0.001 sec)

MariaDB [perpustakaan]> select * from buku;
+---------+-----------------------------+---------------+--------------+------+
| id_buku | judul                       | pengarang     | tahun_terbit | stok |
+---------+-----------------------------+---------------+--------------+------+
|       1 | Pemrograman Dasar           | Ahmad Rizal   |         2019 |   10 |
|       2 | Basis Data                  | Budi Santoso  |         2020 |    8 |
|       3 | Algoritma dan Struktur Data | Citra Dewi    |         2018 |    6 |
|       4 | Sistem Operasi              | Dewi Lestari  |         2021 |    9 |
|       5 | Jaringan Komputer           | Eka Putra     |         2022 |    5 |
|       6 | Kecerdasan Buatan           | Fajar Pratama |         2023 |    7 |
|       7 | Pemrograman Web             | Gina Aprilia  |         2019 |   10 |
|       8 | Rekayasa Perangkat Lunak    | Hadi Wijaya   |         2020 |    6 |
|       9 | Analisis Data               | Indah Permata |         2021 |    8 |
|      10 | Manajemen Proyek IT         | Joko Rahmat   |         2022 |    5 |
|      11 | Pemrograman Mobile          | Kiki Amelia   |         2023 |    9 |
|      12 | Keamanan Jaringan           | Lina Kartika  |         2020 |    7 |
|      13 | Cloud Computing             | Maya Andini   |         2021 |    6 |
|      14 | Internet of Things          | Nina Utami    |         2023 |    8 |
|      15 | Desain UI/UX                | Oka Hidayat   |         2022 |   10 |
+---------+-----------------------------+---------------+--------------+------+
15 rows in set (0.000 sec)

MariaDB [perpustakaan]> select * from peminjaman;
+---------------+------------+---------+----------------+-----------------+
| id_peminjaman | id_anggota | id_buku | tanggal_pinjam | tanggal_kembali |
+---------------+------------+---------+----------------+-----------------+
|             1 |          1 |       3 | 2025-11-01     | 2025-11-08      |
|             2 |          2 |       1 | 2025-11-02     | 2025-11-09      |
|             3 |          3 |       5 | 2025-11-03     | 2025-11-10      |
|             4 |          4 |       2 | 2025-11-04     | 2025-11-11      |
|             5 |          5 |       6 | 2025-11-05     | 2025-11-12      |
|             6 |          6 |       4 | 2025-11-06     | 2025-11-13      |
|             7 |          7 |       7 | 2025-11-07     | 2025-11-14      |
|             8 |          8 |       9 | 2025-11-08     | 2025-11-15      |
|             9 |          9 |       8 | 2025-11-09     | 2025-11-16      |
|            10 |         10 |      10 | 2025-11-10     | 2025-11-17      |
|            11 |         11 |      12 | 2025-11-11     | 2025-11-18      |
|            12 |         12 |      11 | 2025-11-12     | 2025-11-19      |
|            13 |         13 |      13 | 2025-11-13     | 2025-11-20      |
|            14 |         14 |      14 | 2025-11-14     | 2025-11-21      |
|            15 |         15 |      15 | 2025-11-15     | 2025-11-22      |
+---------------+------------+---------+----------------+-----------------+
15 rows in set (0.000 sec)
