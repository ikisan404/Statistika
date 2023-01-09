-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20230108.6d2418107a
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2023 at 01:03 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datamahasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswas`
--

CREATE TABLE `mahasiswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NIM` int(11) NOT NULL,
  `Nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Prodi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Jenis_Kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `Semester` int(11) NOT NULL,
  `Score` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mahasiswas`
--

INSERT INTO `mahasiswas` (`id`, `NIM`, `Nama`, `Prodi`, `Jenis_Kelamin`, `Semester`, `Score`, `created_at`, `updated_at`) VALUES
(4, 2115101006, 'Dewa Komang Reiki Perdana Wisnu', 'S1 Ilmu Komputer', 'L', 3, 86, '2023-01-04 11:55:29', '2023-01-04 11:55:29'),
(5, 2115101007, 'I Ketut Adi Krisna Murti Saksena', 'S1 Ilmu Komputer', 'L', 3, 83, '2023-01-04 18:16:14', '2023-01-04 18:16:14'),
(9, 2115101011, 'Putu Adi Sastrawan', 'S1 Ilmu Komputer', 'L', 3, 80, '2023-01-07 00:58:16', '2023-01-07 00:58:16'),
(10, 2115101012, 'I Komang Arya Adi Kusuma', 'S1 Ilmu Komputer', 'L', 3, 84, '2023-01-07 08:20:25', '2023-01-07 08:20:25'),
(12, 2115101003, 'Made Andika Wiananda', 'S1 Ilmu Komputer', 'L', 3, 86, '2023-01-07 08:27:09', '2023-01-07 08:27:09'),
(13, 2115101004, 'I Kadek Prasta Yudhantara', 'S1 Ilmu Komputer', 'L', 3, 74, '2023-01-07 08:27:56', '2023-01-07 08:27:56'),
(14, 2115101008, 'Putu Mandiasa', 'S1 Ilmu Komputer', 'L', 3, 75, '2023-01-07 08:28:28', '2023-01-07 19:23:44'),
(15, 2115101010, 'Ni Putu Ari Kusumadewi', 'S1 Ilmu Komputer', 'P', 3, 81, '2023-01-07 08:29:08', '2023-01-07 08:29:08'),
(16, 2115101024, 'Kadek Feny Sugiantari', 'S1 Ilmu Komputer', 'P', 3, 90, '2023-01-07 08:30:04', '2023-01-07 08:36:37'),
(17, 2115101013, 'Darmawan Jiddan', 'S1 Ilmu Komputer', 'L', 3, 85, '2023-01-07 08:43:00', '2023-01-07 08:43:00'),
(18, 2115101019, 'Putu Bagus Muhammad Fajar', 'S1 Ilmu Komputer', 'L', 3, 95, '2023-01-07 08:43:27', '2023-01-07 10:42:04'),
(43, 2115101037, 'Mellisa Damayanti', 'S1 Ilmu Komputer', 'P', 3, 75, '2023-01-07 21:56:31', '2023-01-07 22:06:21'),
(44, 2115101036, 'Komang Adi Satya Mahagangga', 'S1 Ilmu Komputer', 'L', 3, 90, '2023-01-07 21:56:31', '2023-01-07 21:56:31'),
(45, 2115101055, 'David Mario Yohanes Samosir ', 'S1 Ilmu Komputer', 'L', 3, 90, '2023-01-07 22:10:08', '2023-01-07 22:10:08'),
(46, 2115101056, 'Ngakan Gde Satria Abirama', 'S1 Ilmu Komputer', 'L', 3, 65, '2023-01-07 22:10:08', '2023-01-07 22:10:08'),
(47, 2115101058, 'Dewa Putu Indra Sunarya ', 'S1 Ilmu Komputer', 'L', 3, 55, '2023-01-07 22:10:08', '2023-01-07 22:10:08'),
(48, 2115101061, 'Komang Wahyu Kusuma Wardana ', 'S1 Ilmu Komputer', 'L', 3, 74, '2023-01-07 22:10:08', '2023-01-07 22:10:08'),
(49, 2115101063, 'Komang Wibisana ', 'S1 Ilmu Komputer', 'L', 3, 72, '2023-01-07 22:10:08', '2023-01-07 22:10:08'),
(50, 2115101065, 'Gede Martha Kusuma ', 'S1 Ilmu Komputer', 'L', 3, 65, '2023-01-07 22:10:08', '2023-01-07 22:10:08'),
(51, 2115101066, 'I Gede Risva Darma Sentana ', 'S1 Ilmu Komputer', 'L', 3, 85, '2023-01-07 22:10:08', '2023-01-07 22:10:08'),
(52, 2115101067, 'Anggaradiva Bendesa ', 'S1 Ilmu Komputer', 'L', 3, 64, '2023-01-07 22:10:08', '2023-01-07 22:10:08'),
(53, 2115101068, 'Komang Erwin Pranata ', 'S1 Ilmu Komputer', 'L', 3, 64, '2023-01-07 22:10:08', '2023-01-07 22:10:08'),
(54, 2115101069, 'Made Yudi Widiandana ', 'S1 Ilmu Komputer', 'L', 3, 65, '2023-01-07 22:10:08', '2023-01-07 22:10:08'),
(55, 2115101070, 'Ni Kadek Aprianti ', 'S1 Ilmu Komputer', 'P', 3, 68, '2023-01-07 22:10:08', '2023-01-07 22:10:08'),
(56, 2115101071, 'Kadek Yuda Mahendra ', 'S1 Ilmu Komputer', 'L', 3, 67, '2023-01-07 22:10:08', '2023-01-07 22:10:08'),
(57, 2115101072, 'Made Govinda Premana Sidhi ', 'S1 Ilmu Komputer', 'L', 3, 72, '2023-01-07 22:10:08', '2023-01-07 22:10:08'),
(58, 2115101073, 'I Made Septian Cahya Pradito ', 'S1 Ilmu Komputer', 'L', 3, 68, '2023-01-07 22:10:08', '2023-01-07 22:10:08'),
(59, 2115101075, 'I Komang Windra Artha ', 'S1 Ilmu Komputer', 'L', 3, 60, '2023-01-07 22:10:08', '2023-01-07 22:10:08'),
(60, 2115101077, 'Made Restu Wedatama ', 'S1 Ilmu Komputer', 'L', 3, 59, '2023-01-07 22:10:08', '2023-01-07 22:10:08'),
(61, 2115101079, 'I Made Adi Wahyudinata ', 'S1 Ilmu Komputer', 'L', 3, 69, '2023-01-07 22:10:08', '2023-01-07 22:10:08'),
(62, 2115101080, 'I Gede Sudiartika ', 'S1 Ilmu Komputer', 'L', 3, 74, '2023-01-07 22:10:08', '2023-01-07 22:10:08'),
(63, 2115101081, 'I Kadek Yoga Mardiawan ', 'S1 Ilmu Komputer', 'L', 3, 36, '2023-01-07 22:10:08', '2023-01-07 22:10:08'),
(64, 2115101048, 'Kadek Agus Tamayasa', 'S1 Ilmu Komputer', 'L', 3, 80, '2023-01-08 09:51:00', '2023-01-08 09:51:00'),
(74, 2115101014, 'I Gede Gelgel Abdiutama', 'S1 ilmu Komputer', 'L', 3, 82, '2023-01-08 10:10:46', '2023-01-08 10:10:46'),
(75, 2115101015, 'Okthen Orlanda Naitboho', 'S1 ilmu Komputer', 'L', 3, 88, '2023-01-08 10:10:46', '2023-01-08 10:10:46'),
(76, 2115101016, 'Subhan Maulana', 'S1 ilmu Komputer', 'L', 3, 81, '2023-01-08 10:10:46', '2023-01-08 10:10:46');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_13_051602_create_members_table', 2),
(6, '2023_01_04_094910_create_mahasiswas_table', 3),
(7, '2023_01_04_121913_mahasiswas', 4),
(8, '2023_01_07_084501_score', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ikisan', 'iki@admin.com', NULL, '$2y$10$H1aQTcpPzzIYsVY7WRphFOAtYfpUlCq7395Yjz5mb9Q8vURdKEhRy', NULL, '2023-01-01 23:47:21', '2023-01-01 23:47:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `mahasiswas`
--
ALTER TABLE `mahasiswas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mahasiswas`
--
ALTER TABLE `mahasiswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
