-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Bulan Mei 2026 pada 02.35
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_beras`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add supplier', 7, 'add_supplier'),
(26, 'Can change supplier', 7, 'change_supplier'),
(27, 'Can delete supplier', 7, 'delete_supplier'),
(28, 'Can view supplier', 7, 'view_supplier'),
(29, 'Can add kelola data', 8, 'add_keloladata'),
(30, 'Can change kelola data', 8, 'change_keloladata'),
(31, 'Can delete kelola data', 8, 'delete_keloladata'),
(32, 'Can view kelola data', 8, 'view_keloladata'),
(33, 'Can add hasil prediksi', 9, 'add_hasilprediksi'),
(34, 'Can change hasil prediksi', 9, 'change_hasilprediksi'),
(35, 'Can delete hasil prediksi', 9, 'delete_hasilprediksi'),
(36, 'Can view hasil prediksi', 9, 'view_hasilprediksi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(2, 'pbkdf2_sha256$390000$PXBcvmUth4Vw15FYZyGpme$Ezo4CqRi6HxmHPeYY4CU8u1BEoZla+Ex+NiLISd1Oao=', '2026-05-05 02:00:01.672588', 1, 'olafkocak', 'olaf', 'kocak', 'kocak@gmail.com', 1, 1, '2026-02-10 08:32:45.753308');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_hasilprediksi`
--

CREATE TABLE `data_hasilprediksi` (
  `id` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jenis_beras` varchar(100) NOT NULL,
  `stok_target` double NOT NULL,
  `kuantitas_target` double NOT NULL,
  `harga_prediksi` double NOT NULL,
  `nilai_rmse` double NOT NULL,
  `k_digunakan` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `detail_perhitungan` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_hasilprediksi`
--

INSERT INTO `data_hasilprediksi` (`id`, `tanggal`, `jenis_beras`, `stok_target`, `kuantitas_target`, `harga_prediksi`, `nilai_rmse`, `k_digunakan`, `created_at`, `detail_perhitungan`) VALUES
(6, '2026-02-11', 'IR 64 Premium', 10007, 2005, 13966.666666666666, 1189.7712198383163, 3, '2026-02-11 08:07:47.247505', NULL),
(7, '2026-02-11', 'IR 64 Premium', 10007, 2005, 13966.666666666666, 1189.7712198383163, 3, '2026-02-11 08:14:42.244336', '{\"target\": {\"stok\": 10007, \"kuantitas\": 2005}, \"perhitungan\": [{\"id\": 5, \"stok\": 9000, \"kuantitas\": 5006, \"harga\": 15600, \"jarak\": 3165.446256059325}, {\"id\": 1, \"stok\": 1000, \"kuantitas\": 200, \"harga\": 13500, \"jarak\": 9186.08044815633}, {\"id\": 4, \"stok\": 900, \"kuantitas\": 500, \"harga\": 12800, \"jarak\": 9230.51862031598}, {\"id\": 3, \"stok\": 100, \"kuantitas\": 50, \"harga\": 12000, \"jarak\": 10098.052980649289}], \"tetangga\": [{\"id\": 5, \"stok\": 9000, \"kuantitas\": 5006, \"harga\": 15600, \"jarak\": 3165.446256059325}, {\"id\": 1, \"stok\": 1000, \"kuantitas\": 200, \"harga\": 13500, \"jarak\": 9186.08044815633}, {\"id\": 4, \"stok\": 900, \"kuantitas\": 500, \"harga\": 12800, \"jarak\": 9230.51862031598}]}'),
(8, '2026-02-11', 'IR 64 Premium', 10007, 2005, 13966.666666666666, 1189.7712198383163, 3, '2026-02-11 08:16:00.789243', '{\"target\": {\"stok\": 10007, \"kuantitas\": 2005}, \"perhitungan\": [{\"id\": 5, \"stok\": 9000, \"kuantitas\": 5006, \"harga\": 15600, \"jarak\": 3165.446256059325}, {\"id\": 1, \"stok\": 1000, \"kuantitas\": 200, \"harga\": 13500, \"jarak\": 9186.08044815633}, {\"id\": 4, \"stok\": 900, \"kuantitas\": 500, \"harga\": 12800, \"jarak\": 9230.51862031598}, {\"id\": 3, \"stok\": 100, \"kuantitas\": 50, \"harga\": 12000, \"jarak\": 10098.052980649289}], \"tetangga\": [{\"id\": 5, \"stok\": 9000, \"kuantitas\": 5006, \"harga\": 15600, \"jarak\": 3165.446256059325}, {\"id\": 1, \"stok\": 1000, \"kuantitas\": 200, \"harga\": 13500, \"jarak\": 9186.08044815633}, {\"id\": 4, \"stok\": 900, \"kuantitas\": 500, \"harga\": 12800, \"jarak\": 9230.51862031598}]}'),
(9, '2026-02-11', 'IR 64 Premium', 10007, 2005, 13966.666666666666, 1189.7712198383163, 3, '2026-02-11 08:31:43.294252', '{\"target\": {\"stok\": 10007, \"kuantitas\": 2005}, \"perhitungan\": [{\"stok\": 9000, \"kuantitas\": 5006, \"harga\": 15600, \"selisih_stok\": -1007, \"selisih_kuantitas\": 3001, \"kuadrat_stok\": 1014049, \"kuadrat_kuantitas\": 9006001, \"jumlah_kuadrat\": 10020050, \"jarak\": 3165.446256059325}, {\"stok\": 1000, \"kuantitas\": 200, \"harga\": 13500, \"selisih_stok\": -9007, \"selisih_kuantitas\": -1805, \"kuadrat_stok\": 81126049, \"kuadrat_kuantitas\": 3258025, \"jumlah_kuadrat\": 84384074, \"jarak\": 9186.08044815633}, {\"stok\": 900, \"kuantitas\": 500, \"harga\": 12800, \"selisih_stok\": -9107, \"selisih_kuantitas\": -1505, \"kuadrat_stok\": 82937449, \"kuadrat_kuantitas\": 2265025, \"jumlah_kuadrat\": 85202474, \"jarak\": 9230.51862031598}, {\"stok\": 100, \"kuantitas\": 50, \"harga\": 12000, \"selisih_stok\": -9907, \"selisih_kuantitas\": -1955, \"kuadrat_stok\": 98148649, \"kuadrat_kuantitas\": 3822025, \"jumlah_kuadrat\": 101970674, \"jarak\": 10098.052980649289}], \"tetangga\": [{\"stok\": 9000, \"kuantitas\": 5006, \"harga\": 15600, \"selisih_stok\": -1007, \"selisih_kuantitas\": 3001, \"kuadrat_stok\": 1014049, \"kuadrat_kuantitas\": 9006001, \"jumlah_kuadrat\": 10020050, \"jarak\": 3165.446256059325}, {\"stok\": 1000, \"kuantitas\": 200, \"harga\": 13500, \"selisih_stok\": -9007, \"selisih_kuantitas\": -1805, \"kuadrat_stok\": 81126049, \"kuadrat_kuantitas\": 3258025, \"jumlah_kuadrat\": 84384074, \"jarak\": 9186.08044815633}, {\"stok\": 900, \"kuantitas\": 500, \"harga\": 12800, \"selisih_stok\": -9107, \"selisih_kuantitas\": -1505, \"kuadrat_stok\": 82937449, \"kuadrat_kuantitas\": 2265025, \"jumlah_kuadrat\": 85202474, \"jarak\": 9230.51862031598}], \"rmse_detail\": [{\"harga_asli\": 15600, \"error\": 1633.333333333334, \"kuadrat_error\": 2667777.77777778}, {\"harga_asli\": 13500, \"error\": -466.66666666666606, \"kuadrat_error\": 217777.7777777772}, {\"harga_asli\": 12800, \"error\": -1166.666666666666, \"kuadrat_error\": 1361111.1111111096}], \"total_harga\": 41900, \"mse\": 1415555.5555555553}'),
(10, '2026-02-11', 'IR 64 Premium', 10007, 2005, 13966.666666666666, 1189.7712198383163, 3, '2026-02-11 08:34:01.852056', '{\"target\": {\"stok\": 10007, \"kuantitas\": 2005}, \"perhitungan\": [{\"stok\": 9000, \"kuantitas\": 5006, \"harga\": 15600, \"selisih_stok\": -1007, \"selisih_kuantitas\": 3001, \"kuadrat_stok\": 1014049, \"kuadrat_kuantitas\": 9006001, \"jumlah_kuadrat\": 10020050, \"jarak\": 3165.446256059325}, {\"stok\": 1000, \"kuantitas\": 200, \"harga\": 13500, \"selisih_stok\": -9007, \"selisih_kuantitas\": -1805, \"kuadrat_stok\": 81126049, \"kuadrat_kuantitas\": 3258025, \"jumlah_kuadrat\": 84384074, \"jarak\": 9186.08044815633}, {\"stok\": 900, \"kuantitas\": 500, \"harga\": 12800, \"selisih_stok\": -9107, \"selisih_kuantitas\": -1505, \"kuadrat_stok\": 82937449, \"kuadrat_kuantitas\": 2265025, \"jumlah_kuadrat\": 85202474, \"jarak\": 9230.51862031598}, {\"stok\": 100, \"kuantitas\": 50, \"harga\": 12000, \"selisih_stok\": -9907, \"selisih_kuantitas\": -1955, \"kuadrat_stok\": 98148649, \"kuadrat_kuantitas\": 3822025, \"jumlah_kuadrat\": 101970674, \"jarak\": 10098.052980649289}], \"tetangga\": [{\"stok\": 9000, \"kuantitas\": 5006, \"harga\": 15600, \"selisih_stok\": -1007, \"selisih_kuantitas\": 3001, \"kuadrat_stok\": 1014049, \"kuadrat_kuantitas\": 9006001, \"jumlah_kuadrat\": 10020050, \"jarak\": 3165.446256059325}, {\"stok\": 1000, \"kuantitas\": 200, \"harga\": 13500, \"selisih_stok\": -9007, \"selisih_kuantitas\": -1805, \"kuadrat_stok\": 81126049, \"kuadrat_kuantitas\": 3258025, \"jumlah_kuadrat\": 84384074, \"jarak\": 9186.08044815633}, {\"stok\": 900, \"kuantitas\": 500, \"harga\": 12800, \"selisih_stok\": -9107, \"selisih_kuantitas\": -1505, \"kuadrat_stok\": 82937449, \"kuadrat_kuantitas\": 2265025, \"jumlah_kuadrat\": 85202474, \"jarak\": 9230.51862031598}], \"rmse_detail\": [{\"harga_asli\": 15600, \"error\": 1633.333333333334, \"kuadrat_error\": 2667777.77777778}, {\"harga_asli\": 13500, \"error\": -466.66666666666606, \"kuadrat_error\": 217777.7777777772}, {\"harga_asli\": 12800, \"error\": -1166.666666666666, \"kuadrat_error\": 1361111.1111111096}], \"total_harga\": 41900, \"mse\": 1415555.5555555553}'),
(11, '2026-02-11', 'IR 64 Premium', 10007, 2005, 13966.666666666666, 1189.7712198383163, 3, '2026-02-12 00:46:18.106736', '{\"target\": {\"stok\": 10007, \"kuantitas\": 2005}, \"perhitungan\": [{\"stok\": 9000, \"kuantitas\": 5006, \"harga\": 15600, \"selisih_stok\": -1007, \"selisih_kuantitas\": 3001, \"kuadrat_stok\": 1014049, \"kuadrat_kuantitas\": 9006001, \"jumlah_kuadrat\": 10020050, \"jarak\": 3165.446256059325}, {\"stok\": 1000, \"kuantitas\": 200, \"harga\": 13500, \"selisih_stok\": -9007, \"selisih_kuantitas\": -1805, \"kuadrat_stok\": 81126049, \"kuadrat_kuantitas\": 3258025, \"jumlah_kuadrat\": 84384074, \"jarak\": 9186.08044815633}, {\"stok\": 900, \"kuantitas\": 500, \"harga\": 12800, \"selisih_stok\": -9107, \"selisih_kuantitas\": -1505, \"kuadrat_stok\": 82937449, \"kuadrat_kuantitas\": 2265025, \"jumlah_kuadrat\": 85202474, \"jarak\": 9230.51862031598}, {\"stok\": 100, \"kuantitas\": 50, \"harga\": 12000, \"selisih_stok\": -9907, \"selisih_kuantitas\": -1955, \"kuadrat_stok\": 98148649, \"kuadrat_kuantitas\": 3822025, \"jumlah_kuadrat\": 101970674, \"jarak\": 10098.052980649289}], \"tetangga\": [{\"stok\": 9000, \"kuantitas\": 5006, \"harga\": 15600, \"selisih_stok\": -1007, \"selisih_kuantitas\": 3001, \"kuadrat_stok\": 1014049, \"kuadrat_kuantitas\": 9006001, \"jumlah_kuadrat\": 10020050, \"jarak\": 3165.446256059325}, {\"stok\": 1000, \"kuantitas\": 200, \"harga\": 13500, \"selisih_stok\": -9007, \"selisih_kuantitas\": -1805, \"kuadrat_stok\": 81126049, \"kuadrat_kuantitas\": 3258025, \"jumlah_kuadrat\": 84384074, \"jarak\": 9186.08044815633}, {\"stok\": 900, \"kuantitas\": 500, \"harga\": 12800, \"selisih_stok\": -9107, \"selisih_kuantitas\": -1505, \"kuadrat_stok\": 82937449, \"kuadrat_kuantitas\": 2265025, \"jumlah_kuadrat\": 85202474, \"jarak\": 9230.51862031598}], \"rmse_detail\": [{\"harga_asli\": 15600, \"error\": 1633.333333333334, \"kuadrat_error\": 2667777.77777778}, {\"harga_asli\": 13500, \"error\": -466.66666666666606, \"kuadrat_error\": 217777.7777777772}, {\"harga_asli\": 12800, \"error\": -1166.666666666666, \"kuadrat_error\": 1361111.1111111096}], \"total_harga\": 41900, \"mse\": 1415555.5555555553}'),
(12, '2026-02-11', 'IR 64 Premium', 10007, 2005, 13966.666666666666, 1189.7712198383163, 3, '2026-02-12 00:55:01.194081', '{\"target\": {\"stok\": 10007, \"kuantitas\": 2005}, \"perhitungan\": [{\"stok\": 9000, \"kuantitas\": 5006, \"harga\": 15600, \"selisih_stok\": -1007, \"selisih_kuantitas\": 3001, \"kuadrat_stok\": 1014049, \"kuadrat_kuantitas\": 9006001, \"jumlah_kuadrat\": 10020050, \"jarak\": 3165.446256059325}, {\"stok\": 1000, \"kuantitas\": 200, \"harga\": 13500, \"selisih_stok\": -9007, \"selisih_kuantitas\": -1805, \"kuadrat_stok\": 81126049, \"kuadrat_kuantitas\": 3258025, \"jumlah_kuadrat\": 84384074, \"jarak\": 9186.08044815633}, {\"stok\": 900, \"kuantitas\": 500, \"harga\": 12800, \"selisih_stok\": -9107, \"selisih_kuantitas\": -1505, \"kuadrat_stok\": 82937449, \"kuadrat_kuantitas\": 2265025, \"jumlah_kuadrat\": 85202474, \"jarak\": 9230.51862031598}, {\"stok\": 100, \"kuantitas\": 50, \"harga\": 12000, \"selisih_stok\": -9907, \"selisih_kuantitas\": -1955, \"kuadrat_stok\": 98148649, \"kuadrat_kuantitas\": 3822025, \"jumlah_kuadrat\": 101970674, \"jarak\": 10098.052980649289}], \"tetangga\": [{\"stok\": 9000, \"kuantitas\": 5006, \"harga\": 15600, \"selisih_stok\": -1007, \"selisih_kuantitas\": 3001, \"kuadrat_stok\": 1014049, \"kuadrat_kuantitas\": 9006001, \"jumlah_kuadrat\": 10020050, \"jarak\": 3165.446256059325}, {\"stok\": 1000, \"kuantitas\": 200, \"harga\": 13500, \"selisih_stok\": -9007, \"selisih_kuantitas\": -1805, \"kuadrat_stok\": 81126049, \"kuadrat_kuantitas\": 3258025, \"jumlah_kuadrat\": 84384074, \"jarak\": 9186.08044815633}, {\"stok\": 900, \"kuantitas\": 500, \"harga\": 12800, \"selisih_stok\": -9107, \"selisih_kuantitas\": -1505, \"kuadrat_stok\": 82937449, \"kuadrat_kuantitas\": 2265025, \"jumlah_kuadrat\": 85202474, \"jarak\": 9230.51862031598}], \"rmse_detail\": [{\"harga_asli\": 15600, \"error\": 1633.333333333334, \"kuadrat_error\": 2667777.77777778}, {\"harga_asli\": 13500, \"error\": -466.66666666666606, \"kuadrat_error\": 217777.7777777772}, {\"harga_asli\": 12800, \"error\": -1166.666666666666, \"kuadrat_error\": 1361111.1111111096}], \"total_harga\": 41900, \"mse\": 1415555.5555555553}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_keloladata`
--

CREATE TABLE `data_keloladata` (
  `id` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jenis_beras` varchar(100) NOT NULL,
  `kuantitas_kg` int(11) NOT NULL,
  `stok_kg` int(11) NOT NULL,
  `harga_per_kg` int(11) NOT NULL,
  `supplier_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_keloladata`
--

INSERT INTO `data_keloladata` (`id`, `tanggal`, `jenis_beras`, `kuantitas_kg`, `stok_kg`, `harga_per_kg`, `supplier_id`) VALUES
(1, '2026-02-09', 'IR 64 Premium', 200, 1000, 13500, 1),
(2, '2026-02-11', 'IR 64 Premium', 2005, 10007, 14000, 1),
(3, '2026-02-10', 'IR 64 Premium', 50, 100, 12000, 1),
(4, '2026-02-10', 'IR 64 Premium', 500, 900, 12800, 1),
(5, '2026-02-10', 'IR 64 Premium', 5006, 9000, 15600, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_supplier`
--

CREATE TABLE `data_supplier` (
  `id` bigint(20) NOT NULL,
  `no_pemasok` varchar(50) NOT NULL,
  `nama_supplier` varchar(150) NOT NULL,
  `kontak` varchar(20) NOT NULL,
  `alamat` longtext NOT NULL,
  `catatan` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_supplier`
--

INSERT INTO `data_supplier` (`id`, `no_pemasok`, `nama_supplier`, `kontak`, `alamat`, `catatan`) VALUES
(1, '123', 'olaf', '123654789', 'palembang', 'oke');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'data', 'hasilprediksi'),
(8, 'data', 'keloladata'),
(7, 'data', 'supplier'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2026-02-10 08:06:27.945790'),
(2, 'auth', '0001_initial', '2026-02-10 08:06:28.510249'),
(3, 'admin', '0001_initial', '2026-02-10 08:06:28.671610'),
(4, 'admin', '0002_logentry_remove_auto_add', '2026-02-10 08:06:28.678843'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2026-02-10 08:06:28.687591'),
(6, 'contenttypes', '0002_remove_content_type_name', '2026-02-10 08:06:28.748022'),
(7, 'auth', '0002_alter_permission_name_max_length', '2026-02-10 08:06:28.799414'),
(8, 'auth', '0003_alter_user_email_max_length', '2026-02-10 08:06:28.812753'),
(9, 'auth', '0004_alter_user_username_opts', '2026-02-10 08:06:28.823195'),
(10, 'auth', '0005_alter_user_last_login_null', '2026-02-10 08:06:28.865794'),
(11, 'auth', '0006_require_contenttypes_0002', '2026-02-10 08:06:28.868442'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2026-02-10 08:06:28.876960'),
(13, 'auth', '0008_alter_user_username_max_length', '2026-02-10 08:06:28.893268'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2026-02-10 08:06:28.905985'),
(15, 'auth', '0010_alter_group_name_max_length', '2026-02-10 08:06:28.919195'),
(16, 'auth', '0011_update_proxy_permissions', '2026-02-10 08:06:28.927336'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2026-02-10 08:06:28.940145'),
(18, 'sessions', '0001_initial', '2026-02-10 08:06:28.969903'),
(19, 'data', '0001_initial', '2026-02-11 03:32:29.994676'),
(20, 'data', '0002_keloladata', '2026-02-11 04:24:18.541060'),
(21, 'data', '0003_remove_keloladata_tanggal_input_and_more', '2026-02-11 04:47:22.602728'),
(22, 'data', '0004_hasilprediksi', '2026-02-11 06:35:07.715975'),
(23, 'data', '0005_hasilprediksi_detail_perhitungan', '2026-02-11 08:14:34.676054');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('aacjkf6nmm071i7tbc578sznuauibacg', 'e30:1vpzyA:3U9Te8UBocSmyEyZw2aE9ucvDhioGNzJvjfrddQPj3I', '2026-02-25 02:28:46.217260'),
('d97v7kyv8dg3og85waq6mu40ycqac8mn', '.eJxVjMsKwyAQAP9lz0V8YTTH3vsNsrprTVsUYnIq_fcSyKG9zgzzhoj7VuM-eI0LwQwaLr8sYX5yOwQ9sN27yL1t65LEkYjTDnHrxK_r2f4NKo4KMxiNxZacHJpknKTJc7bSsGItswpKh-A9o3bOGnaqlKCmgFQS6cTZe_h8AelKODk:1wK54r:DdA4-rLmApoi_8bQ0WHr-HgmLW7Zyh1eFrNcQcjFt6w', '2026-05-19 02:00:01.678210'),
('l4qng0kxi2p01gdgqib2c51yyjhn2wae', '.eJxVjEEOwiAQRe_C2hAYCAWX7j0DGYZBqgaS0q6Md9cmXej2v_f-S0Tc1hq3wUucszgLEKffLSE9uO0g37HduqTe1mVOclfkQYe89szPy-H-HVQc9VsbwGILJYcmGafy5JmsMqwZFOmgIQTvGcE5a9jpUoKeAuaSMiQm78X7A-lKODk:1vpzyo:VlsTKIqMA7muH8LFAc1TYTJ3RNFAQfQ8wF055ynVRJo', '2026-02-25 02:29:26.653280'),
('oggb7k8lz58orutussdjedgpvcrbs0jb', '.eJxVjMsKwyAQAP9lz0V8YTTH3vsNsrprTVsUYnIq_fcSyKG9zgzzhoj7VuM-eI0LwQwaLr8sYX5yOwQ9sN27yL1t65LEkYjTDnHrxK_r2f4NKo4KMxiNxZacHJpknKTJc7bSsGItswpKh-A9o3bOGnaqlKCmgFQS6cTZe_h8AelKODk:1wJnpK:6IJd0GTnMdeAqSEw5HbAVFbPUC71w6ElGF_LU2MNMaA', '2026-05-18 07:34:50.508839');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `stat` tinyint(1) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`, `gender`, `alamat`, `kota`, `telepon`, `stat`, `foto`, `created_at`, `updated_at`, `role_id`) VALUES
(73, 'admin', 'admin', '$2y$10$jXgrJyS85B/kevoO27b77.xVfRkFEMx/AYuN0lOnP/N/jNTuTf/bW', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1),
(74, 'tadmin', 'tadmin', '$2y$12$DYyNp0k1efNhAPzAXDg3i.XlR94vy6fMDcRE2tHKq2wQyEWozTE4m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indeks untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indeks untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `data_hasilprediksi`
--
ALTER TABLE `data_hasilprediksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_keloladata`
--
ALTER TABLE `data_keloladata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_keloladata_supplier_id_aec322f8_fk_data_supplier_id` (`supplier_id`);

--
-- Indeks untuk tabel `data_supplier`
--
ALTER TABLE `data_supplier`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `no_pemasok` (`no_pemasok`);

--
-- Indeks untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indeks untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indeks untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_hasilprediksi`
--
ALTER TABLE `data_hasilprediksi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `data_keloladata`
--
ALTER TABLE `data_keloladata`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `data_supplier`
--
ALTER TABLE `data_supplier`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `data_keloladata`
--
ALTER TABLE `data_keloladata`
  ADD CONSTRAINT `data_keloladata_supplier_id_aec322f8_fk_data_supplier_id` FOREIGN KEY (`supplier_id`) REFERENCES `data_supplier` (`id`);

--
-- Ketidakleluasaan untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
