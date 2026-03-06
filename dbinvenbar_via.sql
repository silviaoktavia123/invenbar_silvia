-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2025 at 03:44 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbinvenbar_via`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_barang` varchar(50) NOT NULL,
  `nama_barang` varchar(150) NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `lokasi_id` bigint(20) UNSIGNED NOT NULL,
  `sumber_dana` varchar(255) DEFAULT NULL,
  `jumlah` int(11) NOT NULL DEFAULT 0,
  `satuan` varchar(20) NOT NULL,
  `kondisi` enum('Baik','Rusak Ringan','Rusak Berat') NOT NULL DEFAULT 'Baik',
  `tanggal_pengadaan` date NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id`, `kode_barang`, `nama_barang`, `kategori_id`, `lokasi_id`, `sumber_dana`, `jumlah`, `satuan`, `kondisi`, `tanggal_pengadaan`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'LP001', 'Laptop Dell Latitude 5420', 1, 4, 'Pemerintah', 1, 'Unit', 'Baik', '2023-05-15', NULL, '2025-10-14 17:57:15', '2025-10-14 18:07:02'),
(2, 'PRJ01', 'Proyektor Epson EB-X500', 1, 1, 'Pemerintah', 1, 'Unit', 'Baik', '2022-11-20', NULL, '2025-10-14 17:57:15', '2025-10-14 18:07:11'),
(3, 'MJ005', 'Meja Rapat Kayu Jati', 2, 1, 'Pemerintah', 1, 'Buah', 'Baik', '2021-02-10', NULL, '2025-10-14 17:57:15', '2025-10-14 18:07:22'),
(4, 'ATK-SP-01', 'Spidol Whiteboard Snowman', 3, 3, 'Pemerintah', 50, 'Pcs', 'Baik', '2024-01-30', NULL, '2025-10-14 17:57:15', '2025-10-14 18:07:29'),
(6, 'LB001', 'Komputer', 5, 7, 'Pemerintah', 35, 'Unit', 'Baik', '2025-10-20', 'O2IywAMUZONfz6PhpSv1srqSEPetQ0aVF9F1pNov.jpg', '2025-10-19 18:51:22', '2025-10-19 18:57:35'),
(7, 'LB002', 'Meja', 7, 7, 'Pemerintah', 1, 'Unit', 'Baik', '2025-10-20', 'PmtQMshIKxbrMOAC9ZYBaPxrkdmSCFsy24SUMGvr.jpg', '2025-10-19 18:52:52', '2025-10-19 18:57:13'),
(8, 'LP003', 'Kursi', 7, 7, 'Pemerintah', 10, 'Unit', 'Baik', '2025-10-20', 'QebqxQYR1whWLMU4mN8YxIJuaNR8y4y2KXJlxft4.jpg', '2025-10-19 18:56:07', '2025-10-19 18:56:51'),
(9, 'LB004', 'Lemari', 7, 7, 'Pemerintah', 2, 'Unit', 'Baik', '2025-10-20', 'wmkg2VUivvWTiWjew2vaitMvLwXtdZTMEVtNbM42.jpg', '2025-10-19 19:01:38', '2025-10-19 19:01:46'),
(10, 'LB005', 'Wifi', 6, 7, 'Pemerintah', 2, 'Unit', 'Baik', '2025-10-20', 'R50CpzgM14GmqWgyQ5qQ8CnbI1jwyiCb1c6VNhHc.jpg', '2025-10-19 19:03:22', '2025-10-19 19:14:55'),
(11, 'LM001', 'Tempat tidur pasien', 11, 8, 'Pemerintah', 6, 'Unit', 'Baik', '2025-10-20', 'uo2SVaos1KNyyI8IaRhhIwheaxMurVqdRKH58vbh.jpg', '2025-10-19 19:09:00', '2025-10-19 19:09:00'),
(12, 'LM002', 'Lemari Obat', 11, 8, 'Pemerintah', 1, 'Unit', 'Baik', '2025-10-20', 'HPcFK5YfbkTIUySQEKpF6QXdR7FGMEEXYQAPrM3R.jpg', '2025-10-19 19:10:19', '2025-10-19 19:10:19'),
(13, 'LM003', 'Kotak P3K', 9, 8, 'Pemerintah', 2, 'Unit', 'Baik', '2025-10-20', 'pK6rHhuj4nRd0wSXfrfakCiEdsjAU71X8FyJrdeD.png', '2025-10-19 19:11:13', '2025-10-19 19:11:13'),
(14, 'LM004', 'Tensi Darah', 8, 8, 'Swadaya', 2, 'Unit', 'Baik', '2025-10-20', 'lcqTnmLLrDymIocA691j4WrrJH8wSdehXn5rdHNP.jpg', '2025-10-19 19:12:25', '2025-10-19 20:46:44'),
(15, 'LM005', 'Timbangan Badan', 12, 8, 'Swadaya', 1, 'Unit', 'Baik', '2025-10-20', 'QGJXN8Yd6ZgR97THOdFy6fAeERyr5dUK08YmXwma.jpg', '2025-10-19 19:13:41', '2025-10-19 20:46:27');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:6:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:13:\"manage barang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:13:\"delete barang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:13:\"view kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:15:\"manage kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:11:\"view lokasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:13:\"manage lokasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}}s:5:\"roles\";a:2:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:7:\"petugas\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:5:\"admin\";s:1:\"c\";s:3:\"web\";}}}', 1761008440);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Elektronik', '2025-10-14 17:57:15', '2025-10-14 17:57:15'),
(2, 'Mebel & Furnitur', '2025-10-14 17:57:15', '2025-10-14 17:57:15'),
(3, 'Alat Tulis Kantor (ATK)', '2025-10-14 17:57:15', '2025-10-14 17:57:15'),
(4, 'Aset Gedung', '2025-10-14 17:57:15', '2025-10-14 17:57:15'),
(5, 'Peralatan Komputer', '2025-10-19 18:31:38', '2025-10-19 18:31:38'),
(6, 'Peralatan Jaringan', '2025-10-19 18:31:58', '2025-10-19 18:31:58'),
(7, 'Fasilitas Ruang', '2025-10-19 18:34:47', '2025-10-19 18:34:47'),
(8, 'Peralatan medis dasar', '2025-10-19 18:38:34', '2025-10-19 18:38:34'),
(9, 'Obat-Obatan & P3K', '2025-10-19 18:39:15', '2025-10-19 18:39:15'),
(10, 'Peralatan Kebersihan', '2025-10-19 18:39:34', '2025-10-19 18:39:34'),
(11, 'Perabot & Fasilitas ruangan', '2025-10-19 18:40:34', '2025-10-19 18:40:34'),
(12, 'Alat Kesehatan Sekolah', '2025-10-19 18:41:37', '2025-10-19 18:41:37'),
(13, 'Dokumentasi & Administrasi', '2025-10-19 18:42:55', '2025-10-19 18:42:55');

-- --------------------------------------------------------

--
-- Table structure for table `lokasis`
--

CREATE TABLE `lokasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_lokasi` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lokasis`
--

INSERT INTO `lokasis` (`id`, `nama_lokasi`, `created_at`, `updated_at`) VALUES
(1, 'Ruang Rapat Utama', '2025-10-14 17:57:15', '2025-10-14 17:57:15'),
(2, 'Lobi Depan', '2025-10-14 17:57:15', '2025-10-14 17:57:15'),
(3, 'Gudang Arsip', '2025-10-14 17:57:15', '2025-10-14 17:57:15'),
(4, 'Ruang Kepala Dinas', '2025-10-14 17:57:15', '2025-10-14 17:57:15'),
(5, 'LAB PPLG 1', '2025-10-19 18:27:34', '2025-10-19 18:27:34'),
(6, 'LAB PPLG 2', '2025-10-19 18:27:45', '2025-10-19 18:27:45'),
(7, 'LAB PPLG 3', '2025-10-19 18:27:55', '2025-10-19 18:27:55'),
(8, 'Ruang UKS', '2025-10-19 18:28:11', '2025-10-19 18:28:11');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_09_22_061242_create_permission_tables', 1),
(5, '2025_09_23_000400_create_kategoris_table', 1),
(6, '2025_09_23_000444_create_lokasis_table', 1),
(7, '2025_09_23_000455_create_barangs_table', 1),
(8, '2025_10_13_013816_create_peminjaman_table', 1),
(9, '2025_10_15_005026_add_sumber_dana_to_barangs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 4),
(1, 'App\\Models\\User', 5),
(1, 'App\\Models\\User', 6),
(1, 'App\\Models\\User', 7),
(1, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peminjamans`
--

CREATE TABLE `peminjamans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_peminjaman` varchar(255) NOT NULL,
  `peminjam` varchar(255) NOT NULL,
  `barang_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `status` enum('dipinjam','sudah dikembalikan') NOT NULL DEFAULT 'dipinjam',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peminjamans`
--

INSERT INTO `peminjamans` (`id`, `kode_peminjaman`, `peminjam`, `barang_id`, `jumlah`, `tanggal_pinjam`, `tanggal_kembali`, `status`, `created_at`, `updated_at`) VALUES
(1, 'P001', 'Bobi', 3, 1, '2025-10-15', '2025-10-20', 'sudah dikembalikan', '2025-10-14 18:15:35', '2025-10-19 19:28:20'),
(2, 'P002', 'hanifah', 2, 1, '2025-10-15', '2025-10-15', 'sudah dikembalikan', '2025-10-14 18:16:01', '2025-10-14 18:20:03'),
(3, 'P003', 'Sri ayy', 12, 1, '2025-10-20', '2025-10-27', 'dipinjam', '2025-10-19 19:37:22', '2025-10-19 19:37:22'),
(4, 'P004', 'Nabila', 9, 1, '2025-10-20', '2025-10-20', 'sudah dikembalikan', '2025-10-19 19:48:52', '2025-10-20 00:40:27');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage barang', 'web', '2025-10-14 17:57:13', '2025-10-14 17:57:13'),
(2, 'delete barang', 'web', '2025-10-14 17:57:13', '2025-10-14 17:57:13'),
(3, 'view kategori', 'web', '2025-10-14 17:57:13', '2025-10-14 17:57:13'),
(4, 'manage kategori', 'web', '2025-10-14 17:57:14', '2025-10-14 17:57:14'),
(5, 'view lokasi', 'web', '2025-10-14 17:57:14', '2025-10-14 17:57:14'),
(6, 'manage lokasi', 'web', '2025-10-14 17:57:14', '2025-10-14 17:57:14');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'petugas', 'web', '2025-10-14 17:57:14', '2025-10-14 17:57:14'),
(2, 'admin', 'web', '2025-10-14 17:57:14', '2025-10-14 17:57:14');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 1),
(3, 2),
(4, 2),
(5, 1),
(5, 2),
(6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('51LHoqiZ1uaRSDU2226Lb5dySuXoanw9PeVwEm2J', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUzVXMEVZRGlCT2dyUDZVMWFpdjVTa2pWSHdlbUtSSERUbXJQQThqRyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1760933973),
('lnRWoJ7e6R4NtdyTdZ4oHOYNWLuLapUQm5GGxJyp', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibkRLbVk3eUJqUEwwNjB3R0tNWWFLOTAwbkdJNU96UE9FNWVOZWR3VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1761010909),
('NlXl99P5953C9ZijfgZ6A3GsHYhw5gIHXuqGQ8Xi', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTHJYaW5hNnF6MlZuSlpqVGFHOEYxMXk1RWNtaVllNmROSG1kSTdIdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wZW1pbmphbWFuL2xhcG9yYW4iO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1760946659);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'AdminPPLG', 'admin@mail.com', '2025-10-14 17:57:17', '$2y$12$qaQhYufRbCNJlvtjKtBnl.x1ZsXtfywalSdmreU01wFUMvtYezQlW', 'OfzgjLFs9pidWVrNSLgBlzC9BGIojFXXC35GaUCzFROtnD75s5OzX7YSlUAK', '2025-10-14 17:57:18', '2025-10-19 18:26:35'),
(2, 'Petugas Inventaris', 'petugas@mail.com', '2025-10-14 17:57:18', '$2y$12$novGmx7V8B.UTc5rouyUtOORdpnyDCTnPqCc1.ymYDkum3gG3jfau', 'pk3QksEjeFFl6EPVtai7p2ZsxIvZSvobwJc9mA7whgLDufdvJ0dGZA8hLA2A', '2025-10-14 17:57:18', '2025-10-14 17:57:18'),
(3, 'Pa Ade Roni', 'ade@mail.com', NULL, '$2y$12$HLxIsryFyeV6vVgbDcWNOuFKDhHCVTrjoK5s0eGWZjgPhUpfgat6.', NULL, '2025-10-19 19:16:35', '2025-10-19 19:20:23'),
(4, 'Ibu Dede Marlina', 'dede@mail.com', NULL, '$2y$12$Cz2NEWvKL9zXKzaQpUqXmud34a2DaZQ1LqjHbCv4v6b7EEV2gQ1PO', NULL, '2025-10-19 19:17:14', '2025-10-19 19:36:25'),
(5, 'Pa Patah Yasin', 'patah@mail.com', NULL, '$2y$12$TQD776zGUgP8WcsBgJ0gPeJVIK4i.m0y7qBl3YlqKQ3lI0qMFubs6', NULL, '2025-10-19 19:18:05', '2025-10-19 19:18:05'),
(6, 'Ibu Yeni', 'yeni@mail.com', NULL, '$2y$12$c0HzPL/ham8RKqppPVmByOtWrZ3qzNQhOfqxTN32TVvMHvRds/Nsm', NULL, '2025-10-19 19:18:45', '2025-10-19 19:18:45'),
(7, 'Ibu Nanik', 'nanik@mail.com', NULL, '$2y$12$.qnVeIBaoQVIYQKkwdOk9OyOT86A8ftFILt/u9AqEQZuS.zkmBBAy', NULL, '2025-10-19 19:19:14', '2025-10-19 19:19:14'),
(8, 'Pa Windra', 'windra@mail.com', NULL, '$2y$12$sSUhrLqFCrOtj7Y0OlPa4.bOi6pLfdwKSJaA0ie9t6BhzlPyyLij.', NULL, '2025-10-19 19:19:56', '2025-10-19 19:19:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `barangs_kode_barang_unique` (`kode_barang`),
  ADD KEY `barangs_kategori_id_foreign` (`kategori_id`),
  ADD KEY `barangs_lokasi_id_foreign` (`lokasi_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasis`
--
ALTER TABLE `lokasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `peminjamans`
--
ALTER TABLE `peminjamans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `peminjamans_kode_peminjaman_unique` (`kode_peminjaman`),
  ADD KEY `peminjamans_barang_id_foreign` (`barang_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `lokasis`
--
ALTER TABLE `lokasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `peminjamans`
--
ALTER TABLE `peminjamans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barangs`
--
ALTER TABLE `barangs`
  ADD CONSTRAINT `barangs_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategoris` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `barangs_lokasi_id_foreign` FOREIGN KEY (`lokasi_id`) REFERENCES `lokasis` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `peminjamans`
--
ALTER TABLE `peminjamans`
  ADD CONSTRAINT `peminjamans_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `barangs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
