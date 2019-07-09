# Installasi Database

1. Download file database [attendance.sql](https://github.com/cbsanjaya/madinlib/releases/download/v0.1-attend/attendance.sql).
2. Import File attendance.sql ke Database Aplikasi slims 8 akasia.

# Menjalankan Aplikasi.

1. Download File Aplikasi [Attendance.zip](https://github.com/cbsanjaya/madinlib/releases/download/v0.1-attend/Attendance.zip).
2. Extract File dan Aplikasi Siap untuk dijalankan.

# Pengaturan

## Koneksi Database
Setiap Awal Membuka Aplikasi akan ditampilkan form untuk mengatur Koneksi ke Database. Cara Pengaturan Database Sebagai Berikut:

- Isi Host Name dengan `localhost` jika aplikasi berada pada komputer yang sama dengan database, isi dengan IP Komputer tempat database jika Aplikasi dan Database berada pada Komputer yang berbeda.
- Isi database dengan nama database dari Aplikasi slims 8 akasia.
- Port standart dari MySQL adalah `3306`.
- Username standart dari MySQL adalah `root`.
- Password standart dari Mysql kosong.

## ALasan Kehadiran.
Masukkan daftar alasan kehadiran pada file dengan nama `motive.txt` dan taruh pada folder yang sama tempat aplikasi ini. contoh daftar alasan:
 ```
 Membaca Buku
 Meminjam Buku
 Bedah Buku
 ```

# Info
- Kode yang di input untuk daftar hadir akan dikategorikan berdasarkan 3 Huruf Awal Kode, kode dengan awalan `TMD` misal `TMD000001` akan dikategorikan Pengunjung, selain itu akan dikategorikan Anggota Perpus.
- Kode dengan kategori Pengunjung, jika tidak ditemukan dalam Database maka akan dibukakan form untuk pendaftaran Pengunjung Baru berdasarkan Kode yang dimasukkan.
  