use perpustakaan;

-- Menampilkan anggota yang meminjam buku dengan tahun terbit lebih dari 2020
-- dan memiliki tanggal pinjam antara 5 dan 12 November 2025.

MariaDB [perpustakaan]> select anggota.nama, buku.judul, buku.pengarang, buku.tahun_terbit, peminjaman.tanggal_pinjam from peminjaman
    -> join anggota on peminjaman.id_anggota = anggota.id_anggota
    -> join buku on peminjaman.id_buku = buku.id_buku
    -> where buku.tahun_terbit > 2020
    -> and peminjaman.tanggal_pinjam between '2025-11-05' and '2025-11-12';
+---------------+---------------------+---------------+--------------+----------------+
| nama          | judul               | pengarang     | tahun_terbit | tanggal_pinjam |
+---------------+---------------------+---------------+--------------+----------------+
| Eka Putra     | Kecerdasan Buatan   | Fajar Pratama |         2023 | 2025-11-05     |
| Fajar Pratama | Sistem Operasi      | Dewi Lestari  |         2021 | 2025-11-06     |
| Hadi Wijaya   | Analisis Data       | Indah Permata |         2021 | 2025-11-08     |
| Joko Rahmat   | Manajemen Proyek IT | Joko Rahmat   |         2022 | 2025-11-10     |
| Lina Kartika  | Pemrograman Mobile  | Kiki Amelia   |         2023 | 2025-11-12     |
+---------------+---------------------+---------------+--------------+----------------+
5 rows in set (0.003 sec)
