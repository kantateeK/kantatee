
-- 
-- dump ตาราง `base`
-- 
-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2018 at 06:15 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datacoop`
--

-- --------------------------------------------------------

--
-- Table structure for table `base`
--

CREATE TABLE `base` (
  `PK` int(10) UNSIGNED NOT NULL,
  `nam_id` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_id` int(10) UNSIGNED NOT NULL,
  `p_id` int(10) UNSIGNED NOT NULL,
  `d_1` date NOT NULL,
  `year` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isstatus` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comfirm` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_com` date NOT NULL,
  `send` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_send` date NOT NULL,
  `isstatus_send` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isstatus_post` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_pos` date NOT NULL,
  `isstatus_f` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_f` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `PK` int(10) UNSIGNED NOT NULL,
  `a_p` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dsahakon`
--

CREATE TABLE `dsahakon` (
  `PK` int(10) UNSIGNED NOT NULL,
  `a_id` int(10) UNSIGNED NOT NULL,
  `a_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_id` int(10) UNSIGNED NOT NULL,
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
(2, '2018_06_27_033713_create_base_tabel', 2),
(3, '2018_06_27_034902_create_business_tabel', 3),
(4, '2018_06_27_035009_create_dsahakon_tabel', 3),
(5, '2018_06_27_035140_create_namacu_tabel', 3),
(6, '2018_06_27_035223_create_sahakorn_tabel', 3),
(7, '2018_06_27_035341_create_year_tabel', 3);

-- --------------------------------------------------------

--
-- Table structure for table `namacu`
--

CREATE TABLE `namacu` (
  `PK` int(10) UNSIGNED NOT NULL,
  `acu_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_id` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sahakorn`
--

CREATE TABLE `sahakorn` (
  `PK` int(10) UNSIGNED NOT NULL,
  `a_id` int(10) UNSIGNED NOT NULL,
  `p_id` int(10) UNSIGNED NOT NULL,
  `nam_id` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isstatus` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `PK` int(10) UNSIGNED NOT NULL,
  `year_name` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `base`
--
ALTER TABLE `base`
  ADD PRIMARY KEY (`PK`);

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`PK`);

--
-- Indexes for table `dsahakon`
--
ALTER TABLE `dsahakon`
  ADD PRIMARY KEY (`PK`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `namacu`
--
ALTER TABLE `namacu`
  ADD PRIMARY KEY (`PK`);

--
-- Indexes for table `sahakorn`
--
ALTER TABLE `sahakorn`
  ADD PRIMARY KEY (`PK`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`PK`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `base`
--
ALTER TABLE `base`
  MODIFY `PK` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `PK` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dsahakon`
--
ALTER TABLE `dsahakon`
  MODIFY `PK` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `namacu`
--
ALTER TABLE `namacu`
  MODIFY `PK` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sahakorn`
--
ALTER TABLE `sahakorn`
  MODIFY `PK` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `year`
--
ALTER TABLE `year`
  MODIFY `PK` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (1, 'S0001', 1844, 101, '2018-04-03', '2561', 'Y', 'Y', '2018-04-04', 'N', '0000-00-00', '', '2018-05-03 08:11:16', 'Y', '2018-04-17', 'Y', '2018-05-21');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (2, 'S0001', 4227, 101, '2018-04-05', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-04-11', 'N', '2018-05-03 08:12:56', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (3, 'S0001', 9128, 101, '2018-04-23', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-04-25', '', '2018-05-03 08:13:36', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (4, 'S0001', 4973, 101, '2018-04-10', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-04-11', 'N', '2018-05-03 08:14:20', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (5, 'S0001', 7340, 101, '2018-04-24', '2561', 'Y', 'Y', '2018-04-24', 'N', '0000-00-00', '', '2018-05-03 08:16:20', 'Y', '2018-05-07', 'Y', '2018-06-06');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (6, 'S0001', 260, 101, '2018-04-24', '2561', 'Y', 'Y', '2018-04-25', 'N', '0000-00-00', '', '2018-05-03 08:16:56', 'Y', '2018-05-21', 'Y', '2018-06-19');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (7, 'S0001', 5349, 101, '2018-04-26', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-05-24', 'N', '2018-05-03 08:27:59', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (8, 'S0001', 9127, 101, '2018-04-27', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-05-02', 'N', '2018-05-03 08:28:38', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (9, 'S0001', 468, 101, '2018-04-27', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-05-02', 'N', '2018-05-03 08:29:20', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (10, 'S0001', 204, 101, '2018-04-27', '2561', 'Y', 'Y', '2018-04-30', 'N', '0000-00-00', '', '2018-05-03 08:29:57', 'Y', '2018-06-04', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (11, 'S0001', 9130, 101, '2018-04-27', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-05-07', 'N', '2018-05-03 08:31:31', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (12, 'S0001', 8040, 101, '2018-04-30', '2561', 'Y', 'Y', '2018-05-04', 'N', '0000-00-00', '', '2018-05-03 08:32:14', 'Y', '2018-06-11', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (14, 'S0001', 725, 101, '2018-04-30', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-05-02', 'N', '2018-05-03 08:33:17', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (15, 'S0001', 581, 101, '2018-05-02', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-05-07', 'N', '2018-05-03 08:33:50', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (16, 'S0001', 3707, 101, '2018-04-02', '2561', 'Y', 'Y', '2018-04-04', 'N', '0000-00-00', '', '2018-05-03 08:34:21', 'Y', '2018-04-10', 'Y', '2018-05-22');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (17, 'S0001', 5465, 101, '2018-03-23', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-04-10', 'N', '2018-05-03 08:35:47', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (18, 'S0001', 4951, 101, '2018-01-05', '2561', 'Y', 'Y', '2018-01-05', 'N', '0000-00-00', '', '2018-05-03 08:36:56', 'Y', '2018-01-05', 'Y', '2018-01-12');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (19, 'S0001', 7472, 101, '2018-03-22', '2561', 'Y', 'Y', '2018-03-23', 'N', '0000-00-00', '', '2018-05-03 08:37:53', 'Y', '2018-04-02', 'Y', '2018-04-27');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (20, 'S0001', 5393, 101, '2018-01-26', '2561', 'Y', 'Y', '2018-01-26', 'N', '0000-00-00', '', '2018-05-03 08:38:56', 'Y', '2018-02-12', 'Y', '2018-03-28');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (21, 'S0001', 11298, 101, '2018-01-29', '2561', 'Y', 'Y', '2018-01-30', 'N', '0000-00-00', '', '2018-05-03 08:39:50', 'Y', '2018-03-02', 'Y', '2018-03-29');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (22, 'S0001', 15365, 101, '2018-03-21', '2561', 'Y', 'Y', '2018-03-21', 'N', '0000-00-00', '', '2018-05-03 08:40:39', 'Y', '2018-03-21', 'Y', '2018-03-29');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (23, 'S0004', 19615, 101, '2018-04-05', '2561', 'Y', 'Y', '2018-04-10', 'N', '0000-00-00', '', '2018-05-03 08:41:43', 'Y', '2018-04-26', 'Y', '2018-05-02');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (24, 'S0001', 19736, 102, '2018-04-25', '2561', 'Y', 'Y', '2018-05-01', 'N', '0000-00-00', '', '2018-05-03 08:43:34', 'Y', '2018-05-28', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (25, 'S0004', 19773, 101, '2018-03-02', '2561', 'Y', 'Y', '2018-03-08', 'N', '0000-00-00', '', '2018-05-03 08:44:51', 'Y', '2018-03-16', 'Y', '2018-03-20');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (26, 'S0004', 19626, 101, '2018-01-29', '2561', 'Y', 'Y', '2018-02-02', 'N', '0000-00-00', '', '2018-05-03 08:46:16', 'Y', '2018-02-08', 'Y', '2018-02-14');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (27, 'S0001', 19745, 102, '2018-03-19', '2561', 'Y', 'Y', '2018-03-20', 'N', '0000-00-00', '', '2018-05-03 08:47:08', 'Y', '2018-04-02', 'Y', '2018-04-11');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (28, 'S0001', 10315, 102, '2018-04-17', '2561', 'Y', 'Y', '2018-04-18', 'N', '0000-00-00', '', '2018-05-03 08:51:40', 'Y', '2018-05-25', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (29, 'S0001', 17812, 102, '2018-04-27', '2561', 'Y', 'Y', '2018-04-27', 'N', '0000-00-00', '', '2018-05-03 08:52:28', 'Y', '2018-05-08', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (30, 'S0001', 11881, 102, '2018-04-30', '2561', 'Y', 'Y', '2018-04-30', 'N', '0000-00-00', '', '2018-05-03 08:53:33', 'Y', '2018-05-08', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (31, 'S0001', 10521, 102, '2018-04-23', '2561', 'Y', 'Y', '2018-04-23', 'N', '0000-00-00', '', '2018-05-03 08:55:30', 'Y', '2018-05-10', 'Y', '2018-05-22');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (32, 'S0001', 16547, 102, '2018-04-27', '2561', 'Y', 'Y', '2018-05-03', 'N', '0000-00-00', '', '2018-05-03 08:56:11', 'Y', '2018-05-08', 'Y', '2018-05-16');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (33, 'S0001', 11576, 102, '2018-04-30', '2561', 'Y', 'Y', '2018-05-03', 'N', '0000-00-00', '', '2018-05-03 08:56:35', 'Y', '2018-05-25', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (178, 'S0001', 330, 101, '2018-04-30', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-05-07', 'N', '2018-05-11 09:55:26', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (34, 'S0001', 4973, 101, '2018-04-23', '2561', 'Y', 'Y', '2018-04-23', 'N', '0000-00-00', '', '2018-05-03 09:15:25', 'Y', '2018-04-30', 'Y', '2018-06-08');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (35, 'S0003', 13555, 102, '2018-04-02', '2561', 'Y', 'Y', '2018-04-02', 'N', '0000-00-00', '', '2018-05-03 09:50:22', 'Y', '2018-04-09', 'Y', '2018-04-11');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (36, 'S0003', 5382, 102, '2018-04-02', '2561', 'Y', 'Y', '2018-04-02', 'N', '0000-00-00', '', '2018-05-03 09:51:23', 'Y', '2018-04-20', 'Y', '2018-04-25');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (37, 'S0003', 9135, 101, '2018-04-05', '2561', 'Y', 'Y', '2018-04-05', 'N', '0000-00-00', '', '2018-05-03 09:52:12', 'Y', '2018-05-07', 'Y', '2018-05-11');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (38, 'S0003', 18351, 102, '2018-04-11', '2561', 'Y', 'Y', '2018-04-12', 'N', '0000-00-00', '', '2018-05-03 09:53:02', 'Y', '2018-04-18', 'Y', '2018-04-30');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (39, 'S0009', 13643, 102, '2018-04-17', '2561', 'Y', 'Y', '2018-04-17', 'N', '0000-00-00', '', '2018-05-03 09:54:06', 'Y', '2018-05-09', 'Y', '2018-05-15');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (40, 'S0003', 14373, 102, '2018-04-20', '2561', 'Y', 'Y', '2018-04-23', 'N', '0000-00-00', '', '2018-05-03 09:55:04', 'Y', '2018-05-09', 'Y', '2018-05-11');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (41, 'S0003', 10865, 102, '2018-04-23', '2561', 'Y', 'Y', '2018-04-23', 'N', '0000-00-00', '', '2018-05-03 09:55:34', 'Y', '2018-05-09', 'Y', '2018-05-11');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (42, 'S0003', 15846, 102, '2018-04-23', '2561', 'Y', 'Y', '2018-04-23', 'N', '0000-00-00', '', '2018-05-03 09:56:28', 'Y', '2018-05-15', 'Y', '2018-05-18');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (43, 'S0003', 2572, 102, '2018-04-20', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-04-23', 'N', '2018-05-03 09:57:01', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (45, 'S0003', 10313, 102, '2018-04-23', '2561', 'Y', 'Y', '2018-04-23', 'N', '0000-00-00', '', '2018-05-03 09:58:11', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (46, 'S0003', 10517, 102, '2018-04-23', '2561', 'Y', 'Y', '2018-04-23', 'N', '0000-00-00', '', '2018-05-03 09:58:58', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (47, 'S0003', 10526, 102, '2018-04-24', '2561', 'Y', 'Y', '2018-04-24', 'N', '0000-00-00', '', '2018-05-03 09:59:34', 'Y', '2018-05-22', 'Y', '2018-05-24');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (48, 'S0003', 15482, 102, '2018-04-24', '2561', 'Y', 'Y', '2018-04-24', 'N', '0000-00-00', '', '2018-05-03 10:00:18', 'Y', '2018-05-25', 'Y', '2018-06-06');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (49, 'S0003', 453, 102, '2018-04-24', '2561', 'Y', 'Y', '2018-04-24', 'N', '0000-00-00', '', '2018-05-03 10:00:42', 'Y', '2018-05-30', 'Y', '2018-06-06');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (50, 'S0003', 10319, 102, '2018-04-25', '2561', 'Y', 'Y', '2018-04-25', 'N', '0000-00-00', '', '2018-05-03 10:01:12', 'Y', '2018-05-25', 'Y', '2018-06-06');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (51, 'S0003', 10320, 102, '2018-04-25', '2561', 'Y', 'Y', '2018-04-25', 'N', '0000-00-00', '', '2018-05-03 10:01:50', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (52, 'S0003', 10530, 102, '2018-04-25', '2561', 'Y', 'Y', '2018-04-25', 'N', '0000-00-00', '', '2018-05-03 10:02:26', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (53, 'S0003', 10529, 102, '2018-04-25', '2561', 'Y', 'Y', '2018-04-25', 'N', '0000-00-00', '', '2018-05-03 10:03:20', 'Y', '2018-05-24', 'Y', '2018-06-05');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (54, 'S0003', 10850, 102, '2018-04-25', '2561', 'Y', 'Y', '2018-04-26', 'N', '0000-00-00', '', '2018-05-03 10:03:48', 'Y', '2018-05-22', 'Y', '2018-05-25');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (55, 'S0003', 10311, 102, '2018-04-26', '2561', 'Y', 'Y', '2018-04-27', 'N', '0000-00-00', '', '2018-05-03 10:04:17', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (56, 'S0003', 11577, 102, '2018-04-26', '2561', 'Y', 'Y', '2018-04-27', 'N', '0000-00-00', '', '2018-05-03 10:04:47', 'Y', '2018-05-25', 'Y', '2018-06-05');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (57, 'S0003', 4413, 102, '2018-04-26', '2561', 'Y', 'Y', '2018-04-27', 'N', '0000-00-00', '', '2018-05-03 10:05:26', 'Y', '2018-05-25', 'Y', '2018-06-06');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (58, 'S0003', 10321, 102, '2018-04-26', '2561', 'Y', 'Y', '2018-04-27', 'N', '0000-00-00', '', '2018-05-03 10:06:34', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (59, 'S0003', 10323, 102, '2018-04-27', '2561', 'Y', 'Y', '2018-04-30', 'N', '0000-00-00', '', '2018-05-03 10:07:06', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (60, 'S0003', 10537, 102, '2018-04-30', '2561', 'Y', 'Y', '2018-04-30', 'N', '0000-00-00', '', '2018-05-03 10:07:53', 'Y', '2018-05-18', 'Y', '2018-05-22');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (61, 'S0003', 18554, 101, '2018-04-30', '2561', 'Y', 'Y', '2018-04-30', 'N', '0000-00-00', '', '2018-05-03 10:08:25', 'Y', '2018-05-18', 'Y', '2018-05-23');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (62, 'S0003', 10310, 102, '2018-04-30', '2561', 'Y', 'Y', '2018-04-30', 'N', '0000-00-00', '', '2018-05-03 10:09:16', 'Y', '2018-05-31', 'Y', '2018-06-07');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (63, 'S0003', 11573, 102, '2018-04-30', '2561', 'Y', 'Y', '2018-04-30', 'N', '0000-00-00', '', '2018-05-03 10:09:55', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (64, 'S0003', 8479, 101, '2018-04-30', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-05-02', 'N', '2018-05-03 10:10:30', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (65, 'S0003', 9134, 101, '2018-04-30', '2561', 'Y', 'Y', '2018-05-02', 'N', '0000-00-00', '', '2018-05-03 10:10:59', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (66, 'S0003', 11572, 102, '2018-05-01', '2561', 'Y', 'Y', '2018-05-02', 'N', '0000-00-00', '', '2018-05-03 10:11:36', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (67, 'S0003', 5043, 101, '2018-01-11', '2561', 'Y', 'Y', '2018-01-11', 'N', '0000-00-00', '', '2018-05-03 10:12:09', 'Y', '2018-02-06', 'Y', '2018-02-16');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (68, 'S0003', 15793, 101, '2018-04-05', '2561', 'Y', 'Y', '2018-04-05', 'N', '0000-00-00', '', '2018-05-03 10:12:47', 'Y', '2018-05-02', 'Y', '2018-05-16');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (69, 'S0003', 6660, 101, '2018-01-29', '2561', 'Y', 'Y', '2018-01-29', 'N', '0000-00-00', '', '2018-05-03 10:13:17', 'Y', '2018-02-08', 'Y', '2018-02-19');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (70, 'S0003', 7010, 101, '2018-04-03', '2561', 'Y', 'Y', '2018-04-03', 'N', '0000-00-00', '', '2018-05-03 10:13:43', 'Y', '2018-04-10', 'Y', '2018-04-24');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (71, 'S0003', 10863, 102, '2018-02-13', '2561', 'Y', 'Y', '2018-02-13', 'N', '0000-00-00', '', '2018-05-03 10:14:17', 'Y', '2018-03-12', 'Y', '2018-03-20');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (72, 'S0003', 10868, 102, '2018-02-26', '2561', 'Y', 'Y', '2018-02-26', 'N', '0000-00-00', '', '2018-05-03 10:14:57', 'Y', '2018-03-09', 'Y', '2018-03-14');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (73, 'S0003', 18074, 102, '2018-03-15', '2561', 'Y', 'Y', '2018-03-15', 'N', '0000-00-00', '', '2018-05-03 10:15:30', 'Y', '2018-03-16', 'Y', '2018-03-20');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (74, 'S0003', 19555, 102, '2018-01-22', '2561', 'Y', 'Y', '2018-01-22', 'N', '0000-00-00', '', '2018-05-03 10:16:09', 'Y', '2018-02-14', 'Y', '2018-04-30');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (75, 'S0011', 5087, 102, '2018-04-11', '2561', 'Y', 'Y', '2018-04-11', 'N', '0000-00-00', '', '2018-05-03 10:17:30', 'Y', '2018-05-01', 'Y', '2018-05-04');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (76, 'S0011', 10867, 102, '2018-02-28', '2561', 'Y', 'Y', '2018-02-28', 'N', '0000-00-00', '', '2018-05-03 10:18:21', 'Y', '2018-03-12', 'Y', '2018-03-16');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (77, 'S0011', 15848, 102, '2018-02-19', '2561', 'Y', 'Y', '2018-02-19', 'N', '0000-00-00', '', '2018-05-03 10:20:06', 'Y', '2018-03-05', 'Y', '2018-03-08');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (78, 'S0010', 16583, 102, '2018-04-02', '2561', 'Y', 'Y', '2018-04-02', 'N', '0000-00-00', '', '2018-05-03 10:21:04', 'Y', '2018-04-24', 'Y', '2018-04-30');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (79, 'S0003', 17702, 101, '2018-01-11', '2561', 'Y', 'Y', '2018-01-17', 'N', '0000-00-00', '', '2018-05-03 10:21:40', 'Y', '2018-02-13', 'Y', '2018-02-16');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (80, 'S0010', 11582, 102, '2018-02-28', '2561', 'Y', 'Y', '2018-03-02', 'N', '0000-00-00', '', '2018-05-03 10:22:47', 'Y', '2018-03-14', 'Y', '2018-03-21');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (174, 'S0003', 12840, 102, '2018-04-20', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-04-23', 'N', '2018-05-08 10:18:16', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (82, 'S0002', 10314, 102, '2018-04-05', '2561', 'Y', 'Y', '2018-04-05', 'N', '0000-00-00', '', '2018-05-03 13:05:49', 'Y', '2018-04-27', 'Y', '2018-05-08');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (83, 'S0002', 10522, 102, '2018-04-17', '2561', 'Y', 'Y', '2018-04-17', 'N', '0000-00-00', '', '2018-05-03 13:06:39', 'Y', '2018-05-09', 'Y', '2018-05-24');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (84, 'S0002', 6455, 102, '2018-04-17', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-04-19', 'N', '2018-05-03 13:07:28', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (85, 'S0002', 10860, 102, '2018-04-17', '2561', 'Y', 'Y', '2018-04-17', 'N', '0000-00-00', '', '2018-05-03 13:08:25', 'Y', '2018-05-25', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (86, 'S0002', 10861, 102, '2018-04-17', '2561', 'Y', 'Y', '2018-04-17', 'N', '0000-00-00', '', '2018-05-03 13:08:57', 'Y', '2018-05-10', 'Y', '2018-05-26');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (87, 'S0002', 10523, 102, '2018-04-20', '2561', 'Y', 'Y', '2018-04-20', 'N', '0000-00-00', '', '2018-05-03 13:11:06', 'Y', '2018-05-09', 'Y', '2018-05-24');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (88, 'S0002', 873, 102, '2018-04-20', '2561', 'Y', 'Y', '2018-04-20', 'N', '0000-00-00', '', '2018-05-03 13:11:40', 'Y', '2018-05-09', 'Y', '2018-05-22');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (89, 'S0002', 8946, 101, '2018-04-23', '2561', 'Y', 'Y', '2018-04-23', 'N', '0000-00-00', '', '2018-05-03 13:12:21', 'Y', '2018-04-25', 'Y', '2018-05-22');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (90, 'S0002', 11880, 102, '2018-04-05', '2561', 'Y', 'Y', '2018-04-05', 'N', '0000-00-00', '', '2018-05-03 13:13:04', 'Y', '2018-04-27', 'Y', '2018-05-15');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (91, 'S0002', 11571, 102, '2018-04-18', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-04-19', 'N', '2018-05-03 13:14:28', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (92, 'S0002', 12275, 102, '2018-04-18', '2561', 'Y', 'Y', '2018-04-18', 'N', '0000-00-00', '', '2018-05-03 13:15:46', 'Y', '2018-05-08', 'Y', '2018-05-25');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (93, 'S0002', 10516, 102, '2018-04-05', '2561', 'Y', 'Y', '2018-04-05', 'N', '0000-00-00', '', '2018-05-03 13:18:44', 'Y', '2018-04-25', 'Y', '2018-04-30');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (94, 'S0002', 10846, 102, '2018-04-24', '2561', 'Y', 'Y', '2018-04-27', 'N', '0000-00-00', '', '2018-05-03 13:19:17', 'Y', '2018-05-11', 'Y', '2018-06-05');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (95, 'S0002', 12299, 102, '2018-04-24', '2561', 'Y', 'Y', '2018-04-27', 'N', '0000-00-00', '', '2018-05-03 13:19:51', 'Y', '2018-05-11', 'Y', '2018-06-06');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (96, 'S0002', 12536, 102, '2018-04-24', '2561', 'Y', 'Y', '2018-04-27', 'N', '0000-00-00', '', '2018-05-03 13:20:22', 'Y', '2018-05-10', 'Y', '2018-05-25');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (97, 'S0002', 10859, 102, '2018-04-24', '2561', 'Y', 'Y', '2018-04-24', 'N', '0000-00-00', '', '2018-05-03 13:21:05', 'Y', '2018-05-10', 'Y', '2018-06-04');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (98, 'S0002', 6503, 101, '2018-04-24', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-04-25', 'N', '2018-05-03 13:21:36', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (99, 'S0002', 17762, 102, '2018-04-24', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-04-25', 'N', '2018-05-03 13:22:12', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (100, 'S0002', 11949, 102, '2018-04-24', '2561', 'Y', 'Y', '2018-04-27', 'N', '0000-00-00', '', '2018-05-03 13:22:54', 'Y', '2018-05-10', 'Y', '2018-05-24');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (101, 'S0002', 10327, 102, '2018-04-25', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-04-26', 'N', '2018-05-03 13:30:14', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (102, 'S0002', 10325, 102, '2018-04-25', '2561', 'Y', 'Y', '2018-04-27', 'N', '0000-00-00', '', '2018-05-03 13:30:43', 'Y', '2018-06-04', 'Y', '2018-06-13');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (103, 'S0002', 16831, 102, '2018-04-26', '2561', 'Y', 'Y', '2018-04-30', 'N', '0000-00-00', '', '2018-05-03 13:31:18', 'Y', '2018-05-28', 'Y', '2018-06-08');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (104, 'S0002', 310, 101, '2018-04-27', '2561', 'Y', 'Y', '2018-04-27', 'N', '0000-00-00', '', '2018-05-03 13:32:11', 'Y', '2018-05-15', 'Y', '2018-05-24');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (105, 'S0002', 7668, 101, '2018-04-30', '2561', 'Y', 'Y', '2018-05-03', 'N', '0000-00-00', '', '2018-05-03 13:33:15', 'Y', '2018-05-16', 'Y', '2018-06-15');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (124, 'S0002', 11580, 102, '2018-04-30', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-05-03', '', '2018-05-04 09:26:17', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (109, 'S0002', 10326, 102, '2018-04-30', '2561', 'Y', 'Y', '2018-05-02', 'N', '0000-00-00', '', '2018-05-03 13:36:07', 'Y', '2018-06-04', 'Y', '2018-06-15');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (111, 'S0007', 17444, 102, '2018-04-17', '2561', 'Y', 'Y', '2018-04-18', 'N', '0000-00-00', '', '2018-05-03 13:37:21', 'Y', '2018-05-04', 'Y', '2018-05-15');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (112, 'S0002', 3215, 101, '2018-01-30', '2561', 'Y', 'Y', '2018-02-01', 'N', '0000-00-00', '', '2018-05-03 13:37:57', 'Y', '2018-02-05', 'Y', '2018-02-13');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (113, 'S0002', 8170, 101, '2018-02-19', '2561', 'Y', 'Y', '2018-02-20', 'N', '0000-00-00', '', '2018-05-03 13:38:26', 'Y', '2018-03-12', 'Y', '2018-04-23');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (114, 'S0002', 13478, 101, '2018-02-22', '2561', 'Y', 'Y', '2018-02-26', 'N', '0000-00-00', '', '2018-05-03 13:39:08', 'Y', '2018-03-05', 'Y', '2018-03-23');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (115, 'S0002', 16780, 101, '2018-02-08', '2561', 'Y', 'Y', '2018-02-09', 'N', '0000-00-00', '', '2018-05-03 13:39:51', 'Y', '2018-02-14', 'Y', '2018-03-15');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (116, 'S0002', 19028, 101, '2018-03-26', '2561', 'Y', 'Y', '2018-03-28', 'N', '0000-00-00', '', '2018-05-03 13:40:53', 'Y', '2018-04-04', 'Y', '2018-04-23');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (117, 'S0002', 19136, 101, '2018-03-15', '2561', 'Y', 'Y', '2018-03-16', 'N', '0000-00-00', '', '2018-05-03 13:42:13', 'Y', '2018-03-23', 'Y', '2018-03-30');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (118, 'S0002', 19201, 101, '2018-03-27', '2561', 'Y', 'Y', '2018-03-29', 'N', '0000-00-00', '', '2018-05-03 13:42:47', 'Y', '2018-04-10', 'Y', '2018-04-26');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (119, 'S0007', 10872, 102, '2018-04-18', '2561', 'Y', 'Y', '2018-04-19', 'N', '0000-00-00', '', '2018-05-03 13:51:05', 'Y', '2018-05-08', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (203, 'S0002', 11948, 102, '2018-04-05', '2561', 'Y', 'Y', '2018-04-05', 'N', '0000-00-00', '', '2018-05-28 15:02:08', 'Y', '2018-05-09', 'Y', '2018-05-22');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (123, 'S0002', 10328, 102, '2018-04-30', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-05-03', 'N', '2018-05-04 09:25:43', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (121, 'S0002', 15302, 101, '2018-04-30', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-05-03', '', '2018-05-04 09:24:40', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (122, 'S0002', 2536, 102, '2018-04-30', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-05-03', 'N', '2018-05-04 09:25:19', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (120, 'S0002', 11571, 102, '2018-04-27', '2561', 'Y', 'Y', '2018-04-27', 'N', '0000-00-00', '', '2018-05-03 15:58:00', 'Y', '2018-05-08', 'Y', '2018-05-23');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (125, 'S0003', 6558, 102, '2018-04-02', '2561', 'Y', 'Y', '2018-04-02', 'N', '0000-00-00', '', '2018-05-04 09:38:04', 'Y', '2018-04-10', 'Y', '2018-04-24');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (126, 'S0003', 13801, 102, '2018-04-20', '2561', 'Y', 'Y', '2018-04-23', 'N', '0000-00-00', '', '2018-05-04 09:39:15', 'Y', '2018-05-04', 'Y', '2018-05-11');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (127, 'S0003', 12300, 102, '2018-04-20', '2561', 'Y', 'Y', '2018-04-23', 'N', '0000-00-00', '', '2018-05-04 09:39:53', 'Y', '2018-05-07', 'Y', '2018-05-15');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (128, 'S0003', 4118, 102, '2018-04-20', '2561', 'Y', 'Y', '2018-04-23', 'N', '0000-00-00', '', '2018-05-04 09:40:21', 'Y', '2018-05-04', 'Y', '2018-05-15');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (129, 'S0003', 11574, 102, '2018-04-23', '2561', 'Y', 'Y', '2018-04-24', 'N', '0000-00-00', '', '2018-05-04 09:43:00', 'Y', '2018-05-07', 'Y', '2018-05-16');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (130, 'S0002', 7485, 101, '2018-04-23', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-05-02', 'N', '2018-05-04 09:43:31', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (131, 'S0003', 7461, 102, '2018-04-24', '2561', 'Y', 'Y', '2018-04-25', 'N', '0000-00-00', '', '2018-05-04 09:44:12', 'Y', '2018-05-02', 'Y', '2018-05-11');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (132, 'S0003', 10329, 102, '2018-04-25', '2561', 'Y', 'Y', '2018-04-26', 'N', '0000-00-00', '', '2018-05-04 09:44:46', 'Y', '2018-05-03', 'Y', '2018-05-17');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (167, 'S0001', 13115, 101, '2018-04-17', '2561', 'Y', 'Y', '2018-04-17', 'N', '0000-00-00', '', '2018-05-04 14:09:34', 'Y', '2018-03-20', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (134, 'S0003', 10531, 102, '2018-04-25', '2561', 'Y', 'Y', '2018-04-26', 'N', '0000-00-00', '', '2018-05-04 09:54:15', 'Y', '2018-05-11', 'Y', '2018-05-17');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (135, 'S0003', 10357, 102, '2018-04-25', '2561', 'Y', 'Y', '2018-04-26', 'N', '0000-00-00', '', '2018-05-04 09:55:04', 'Y', '2018-05-11', 'Y', '2018-05-17');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (136, 'S0002', 11575, 102, '2018-04-26', '2561', 'Y', 'Y', '2018-04-27', 'N', '0000-00-00', '', '2018-05-04 10:04:24', 'Y', '2018-06-05', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (137, 'S0003', 15293, 102, '2018-04-26', '2561', 'Y', 'Y', '2018-04-27', 'N', '0000-00-00', '', '2018-05-04 10:05:04', 'Y', '2018-06-11', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (138, 'S0003', 12431, 102, '2018-04-26', '2561', 'Y', 'Y', '2018-04-27', 'N', '0000-00-00', '', '2018-05-04 10:11:30', 'Y', '2018-06-04', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (139, 'S0003', 12430, 102, '2018-04-26', '2561', 'Y', 'Y', '2018-04-27', 'N', '0000-00-00', '', '2018-05-04 10:12:17', 'Y', '2018-06-06', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (140, 'S0002', 10857, 102, '2018-04-27', '2561', 'Y', 'Y', '2018-04-30', 'N', '0000-00-00', '', '2018-05-04 10:12:43', 'Y', '2018-06-07', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (141, 'S0002', 17919, 101, '2018-04-27', '2561', 'Y', 'Y', '2018-04-30', 'N', '0000-00-00', '', '2018-05-04 10:13:19', 'Y', '2018-06-13', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (172, 'S0003', 13644, 102, '2018-04-27', '2561', 'Y', 'Y', '2018-04-30', 'N', '0000-00-00', '', '2018-05-04 16:36:20', 'Y', '2018-05-08', 'Y', '2018-05-16');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (145, 'S0002', 7462, 102, '2018-04-30', '2561', 'Y', 'Y', '2018-05-01', 'N', '0000-00-00', '', '2018-05-04 10:15:18', 'Y', '2018-06-08', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (146, 'S0002', 10855, 102, '2018-04-30', '2561', 'Y', 'Y', '2018-05-01', 'N', '0000-00-00', '', '2018-05-04 10:15:49', 'Y', '2018-06-07', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (175, 'S0003', 12840, 102, '2018-05-04', '2561', 'Y', 'Y', '2018-05-04', 'N', '0000-00-00', '', '2018-05-08 10:19:43', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (149, 'S0003', 12432, 102, '2018-04-30', '2561', 'Y', 'Y', '2018-05-01', 'N', '0000-00-00', '', '2018-05-04 10:17:43', 'Y', '2018-06-08', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (150, 'S0002', 5130, 102, '2018-04-30', '2561', 'Y', 'Y', '2018-05-01', 'N', '0000-00-00', '', '2018-05-04 10:19:37', 'Y', '2018-05-15', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (151, 'S0002', 10519, 102, '2018-04-30', '2561', 'Y', 'Y', '2018-05-01', 'N', '0000-00-00', '', '2018-05-04 10:20:26', 'Y', '2018-05-15', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (152, 'S0002', 10540, 102, '2018-04-30', '2561', 'Y', 'Y', '2018-05-02', 'N', '0000-00-00', '', '2018-05-04 10:21:24', 'Y', '2018-06-15', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (153, 'S0003', 12433, 102, '2018-04-30', '2561', 'Y', 'Y', '2018-04-30', 'N', '0000-00-00', '', '2018-05-04 10:22:08', 'Y', '2018-06-04', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (154, 'S0001', 7914, 101, '2018-02-22', '2561', 'Y', 'Y', '2018-02-23', 'N', '0000-00-00', '', '2018-05-04 10:23:52', 'Y', '2018-03-05', 'Y', '2018-03-21');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (155, 'S0001', 17807, 101, '2018-04-05', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-04-10', '', '2018-05-04 10:24:36', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (156, 'S0001', 9568, 101, '2018-04-04', '2561', 'Y', 'Y', '2018-04-05', 'N', '0000-00-00', '', '2018-05-04 10:25:40', 'Y', '2018-04-23', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (157, 'S0003', 14324, 101, '2018-03-26', '2561', 'Y', 'Y', '2018-03-27', 'N', '0000-00-00', '', '2018-05-04 10:26:11', 'Y', '2018-04-03', 'Y', '2018-04-24');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (158, 'S0002', 18924, 101, '2018-04-05', '2561', 'Y', 'Y', '2018-04-05', 'N', '0000-00-00', '', '2018-05-04 10:27:01', 'Y', '2018-04-09', 'Y', '2018-04-24');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (160, 'S0008', 3405, 102, '2018-04-26', '2561', 'Y', 'Y', '2018-05-02', 'N', '0000-00-00', '', '2018-05-04 10:28:33', 'Y', '2018-06-06', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (161, 'S0008', 3775, 102, '2018-04-26', '2561', 'Y', 'Y', '2018-05-02', 'N', '0000-00-00', '', '2018-05-04 10:29:00', 'Y', '2018-06-06', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (162, 'S0008', 10330, 102, '2018-04-30', '2561', 'Y', 'Y', '2018-05-02', 'N', '0000-00-00', '', '2018-05-04 10:29:27', 'Y', '2018-06-11', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (163, 'S0009', 10864, 102, '2018-04-27', '2561', 'Y', 'Y', '2018-05-02', 'N', '0000-00-00', '', '2018-05-04 10:30:39', 'Y', '2018-05-22', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (164, 'S0009', 10536, 102, '2018-04-30', '2561', 'Y', 'Y', '2018-05-02', 'N', '0000-00-00', '', '2018-05-04 10:31:03', 'Y', '2018-06-12', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (165, 'S0009', 10316, 102, '2018-04-30', '2561', 'Y', 'Y', '2018-05-02', 'N', '0000-00-00', '', '2018-05-04 10:31:32', 'Y', '2018-06-12', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (166, 'S0003', 11989, 102, '2018-04-25', '2561', 'Y', 'Y', '2018-04-26', 'N', '0000-00-00', '', '2018-05-04 11:20:34', 'Y', '2018-05-03', 'Y', '2018-05-16');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (171, 'S0003', 10858, 102, '2018-04-30', '2561', 'Y', 'Y', '2018-05-01', 'N', '0000-00-00', '', '2018-05-04 16:28:26', 'Y', '2018-06-11', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (170, 'S0003', 12429, 102, '2018-04-27', '2561', 'Y', 'Y', '2018-04-30', 'N', '0000-00-00', '', '2018-05-04 16:27:44', 'Y', '2018-05-08', 'Y', '2018-05-17');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (176, 'S0002', 6455, 102, '2018-05-04', '2561', 'Y', 'Y', '2018-05-04', 'N', '0000-00-00', '', '2018-05-08 10:20:52', 'Y', '2018-05-04', 'Y', '2018-05-17');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (168, 'S0003', 6945, 102, '2018-04-27', '2561', 'Y', 'Y', '2018-04-30', 'N', '0000-00-00', '', '2018-05-04 16:26:14', 'Y', '2018-05-08', 'Y', '2018-05-17');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (177, 'S0003', 6199, 101, '2018-04-30', '2561', 'Y', 'Y', '2018-05-01', 'N', '0000-00-00', '', '2018-05-08 10:28:58', 'Y', '2018-05-18', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (179, 'S0003', 2572, 102, '2018-05-09', '2561', 'Y', 'Y', '2018-05-09', 'N', '0000-00-00', '', '2018-05-11 13:20:17', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (180, 'S0002', 18934, 102, '2018-05-08', '2561', 'Y', 'Y', '2018-05-08', 'N', '0000-00-00', '', '2018-05-11 13:22:03', 'Y', '2018-06-04', 'Y', '2018-06-08');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (181, 'S0002', 3344, 101, '2018-05-08', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-05-11', '', '2018-05-11 13:22:54', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (182, 'S0003', 9132, 101, '2018-05-09', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-05-11', '', '2018-05-11 13:23:32', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (183, 'S0003', 11578, 102, '2018-05-04', '2561', 'Y', 'Y', '2018-05-04', 'N', '0000-00-00', '', '2018-05-11 13:24:42', 'Y', '2018-06-18', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (184, 'S0003', 16473, 102, '2018-05-04', '2561', 'Y', 'Y', '2018-05-04', 'N', '0000-00-00', '', '2018-05-11 13:25:15', 'Y', '2018-06-18', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (185, 'S0001', 468, 101, '2018-05-16', '2561', 'Y', 'Y', '2018-05-21', 'N', '0000-00-00', '', '2018-05-17 11:22:54', 'Y', '2018-06-18', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (186, 'S0001', 5465, 101, '2018-05-16', '2561', 'Y', 'Y', '2018-05-18', 'N', '0000-00-00', '', '2018-05-17 11:23:33', 'Y', '2018-05-28', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (187, 'S0002', 454, 102, '2018-05-15', '2561', 'Y', 'Y', '2018-05-16', 'N', '0000-00-00', '', '2018-05-18 09:57:49', 'Y', '2018-06-04', 'Y', '2018-06-15');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (188, 'S0001', 9130, 101, '2018-05-18', '2561', 'Y', 'Y', '2018-05-21', 'N', '0000-00-00', '', '2018-05-22 08:25:43', 'Y', '2018-06-25', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (189, 'S0002', 17762, 102, '2018-05-18', '2561', 'Y', 'Y', '2018-05-18', 'N', '0000-00-00', '', '2018-05-22 08:31:14', 'Y', '2018-06-05', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (190, 'S0002', 6503, 101, '2018-05-18', '2561', 'Y', 'Y', '2018-06-04', 'N', '0000-00-00', '', '2018-05-22 08:31:58', 'Y', '2018-06-27', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (191, 'S0001', 725, 101, '2018-05-17', '2561', 'Y', 'Y', '2018-05-23', 'N', '0000-00-00', '', '2018-05-28 09:42:26', 'Y', '2018-05-25', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (192, 'S0001', 5349, 101, '2018-05-21', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-05-24', '', '2018-05-28 09:47:37', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (194, 'S0003', 10853, 102, '2018-05-17', '2561', 'Y', 'Y', '2018-05-18', 'N', '0000-00-00', '', '2018-05-28 10:29:33', 'Y', '2018-07-03', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (195, 'S0003', 9978, 101, '2018-05-22', '2561', 'Y', 'Y', '2018-05-24', 'N', '0000-00-00', '', '2018-05-28 10:30:28', 'Y', '2018-06-13', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (196, 'S0003', 13317, 101, '2018-05-24', '2561', 'Y', 'Y', '2018-05-30', 'N', '0000-00-00', '', '2018-05-28 10:31:01', 'Y', '2018-07-23', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (197, 'S0002', 10327, 102, '2018-05-21', '2561', 'Y', 'Y', '2018-05-22', 'N', '0000-00-00', '', '2018-05-28 10:51:27', 'Y', '2018-06-04', 'Y', '2018-06-20');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (198, 'S0002', 8895, 101, '2018-05-22', '2561', 'Y', 'Y', '2018-05-24', 'N', '0000-00-00', '', '2018-05-28 10:52:02', 'Y', '2018-06-14', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (199, 'S0002', 14209, 101, '2018-05-23', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-06-08', '', '2018-05-28 10:52:38', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (200, 'S0002', 7485, 101, '2018-05-24', '2561', 'Y', 'Y', '2018-05-25', 'N', '0000-00-00', '', '2018-05-28 10:53:05', 'Y', '2018-06-05', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (201, 'S0001', 3530, 101, '2018-05-28', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-06-13', '', '2018-05-28 14:49:28', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (202, 'S0001', 581, 101, '2018-05-28', '2561', 'Y', 'Y', '2018-06-01', 'N', '0000-00-00', '', '2018-05-28 14:49:58', 'Y', '2018-07-02', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (204, 'S0002', 15617, 101, '2018-05-28', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-06-06', '', '2018-05-28 15:25:03', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (205, 'S0001', 8041, 101, '2018-05-30', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-06-06', '', '2018-05-31 15:28:40', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (206, 'S0003', 5333, 101, '2018-05-04', '2561', 'Y', 'Y', '2018-05-04', 'N', '0000-00-00', '', '2018-05-31 15:42:10', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (207, 'S0002', 14238, 101, '2018-05-31', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-06-06', '', '2018-06-01 16:34:43', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (218, 'S0001', 330, 101, '2018-05-24', '2561', 'Y', 'Y', '2018-05-30', 'N', '0000-00-00', '', '2018-06-21 08:09:36', 'Y', '2018-07-16', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (208, 'S0001', 4227, 101, '2018-06-04', '2561', 'Y', 'N', '0000-00-00', 'N', '0000-00-00', '', '2018-06-12 14:35:48', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (209, 'S0003', 8479, 101, '2018-05-31', '2561', 'Y', 'Y', '2018-05-31', 'N', '0000-00-00', '', '2018-06-12 15:14:26', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (210, 'S0001', 9127, 101, '2018-06-18', '2561', 'Y', 'N', '0000-00-00', 'N', '0000-00-00', '', '2018-06-21 07:24:00', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (211, 'S0003', 15849, 102, '2018-06-01', '2561', 'Y', 'Y', '2018-06-01', 'N', '0000-00-00', '', '2018-06-21 07:27:00', 'Y', '2018-06-19', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (212, 'S0003', 1055, 102, '2018-06-15', '2561', 'Y', 'Y', '2018-06-18', 'N', '0000-00-00', '', '2018-06-21 07:27:36', 'Y', '2018-06-19', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (213, 'S0003', 17863, 102, '2018-06-18', '2561', 'Y', 'Y', '2018-06-18', 'N', '0000-00-00', '', '2018-06-21 07:28:15', 'Y', '2018-06-19', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (214, 'S0002', 18678, 101, '2018-06-01', '2561', 'Y', 'N', '0000-00-00', 'Y', '2018-06-19', '', '2018-06-21 07:46:21', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (215, 'S0002', 2552, 102, '2018-06-01', '2561', 'Y', 'Y', '2018-06-07', 'N', '0000-00-00', '', '2018-06-21 07:46:54', 'Y', '2018-06-11', 'Y', '2018-06-18');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (216, 'S0002', 10328, 102, '2018-06-04', '2561', 'Y', 'Y', '2018-06-07', 'N', '0000-00-00', '', '2018-06-21 07:47:19', 'Y', '2018-07-03', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (217, 'S0002', 2536, 102, '2018-06-04', '2561', 'Y', 'N', '0000-00-00', 'N', '0000-00-00', '', '2018-06-21 07:47:42', '', '0000-00-00', '', '0000-00-00');
INSERT INTO `base` (`PK`, `nam_id`, `a_id`, `p_id`, `d_1`, `year`, `isstatus`, `comfirm`, `d_com`, `send`, `d_send`, `isstatus_send`, `timestamp`, `isstatus_pos`, `d_pos`, `isstatus_f`, `d_f`) VALUES (219, 'S0003', 13477, 101, '2018-06-20', '2561', 'Y', 'N', '0000-00-00', 'N', '0000-00-00', '', '2018-06-25 17:17:01', '', '0000-00-00', '', '0000-00-00');

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `business`
-- 


INSERT INTO `business` (`PK`, `a_p`, `p_id`) VALUES (1, 'สหกรณ์', 101);
INSERT INTO `business` (`PK`, `a_p`, `p_id`) VALUES (2, 'กลุ่มเกษตรกร', 102);

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `dsahakon`
-- 


-- 
-- dump ตาราง `dsahakon`
-- 

INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (1, 204, 'สหกรณ์การเกษตรนางรอง จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (2, 260, 'สหกรณ์การเกษตรกระสัง จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (3, 310, 'สหกรณ์ที่ดินลำปลายมาศหนึ่ง จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (4, 330, 'สหกรณ์การเกษตรคูเมือง จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (5, 453, 'กลุ่มเกษตรกรทำนาโคกว่าน', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (6, 454, 'กลุ่มเกษตรกรทำนาจรเข้มาก', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (7, 468, 'สหกรณ์การเกษตรสตึก จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (8, 568, 'กลุ่มเกษตรกรทำนาจันดุม', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (9, 581, 'สหกรณ์การเกษตร กรป.กลาง นพค.บุรีรัมย์ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (10, 725, 'สหกรณ์การเกษตรละหานทราย จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (11, 873, 'กลุ่มเกษตรกรทำนาสะเดา', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (12, 1055, 'กลุ่มเกษตรกรทำนาบ้านแวง', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (13, 1844, 'สหกรณ์การเกษตรประโคนชัย จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (14, 2432, 'กลุ่มเกษตรกรทำนาหนองตาด', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (15, 2536, 'กลุ่มเกษตรกรทำนาละเวี้ย', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (16, 2552, 'กลุ่มเกษตรกรทำนาแสลงโทน', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (17, 2572, 'กลุ่มเกษตรกรทำนาบ้านดู่', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (18, 2743, 'กลุ่มเกษตรกรทำนาโคกขมิ้น', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (19, 3215, 'สหกรณ์ออมทรัพย์องค์การบริหารส่วนจังหวัดบุรีรัมย์ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (20, 3344, 'สหกรณ์การเกษตรตำบลบ้านแวง จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (21, 3405, 'กลุ่มเกษตรกรทำนาโคกล่าม', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (22, 3530, 'สหกรณ์นิคมแคนดง จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (23, 3707, 'สหกรณ์การเกษตรพุทไธสง จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (24, 3775, 'กลุ่มเกษตรกรทำนาโคกสะอาด', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (25, 3776, 'กลุ่มเกษตรกรทำนาแสลงพัน', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (26, 4118, 'กลุ่มเกษตรกรทำนาปะเคียบ', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (27, 4227, 'สหกรณ์การเกษตรลำปลายมาศ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (28, 4413, 'กลุ่มเกษตรกรทำนาหินลาด', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (29, 4951, 'สหกรณ์ออมทรัพย์สาธารณสุขจังหวัดบุรีรัมย์ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (30, 4973, 'สหกรณ์การเกษตรเมืองบุรีรัมย์ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (31, 5000, 'สหกรณ์ผู้ใช้น้ำสถานีสูบน้ำด้วยไฟฟ้าบ้านยางลาว จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (32, 5043, 'สหกรณ์รถยนต์โดยสารบุรีรัมย์ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (33, 5087, 'กลุ่มเกษตรกรทำนาพระครู', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (34, 5130, 'กลุ่มเกษตรกรทำสวนโนนสุวรรณการเกษตร', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (35, 5170, 'สหกรณ์การเกษตรโนนดินแดง จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (36, 5333, 'สหกรณ์บริการเดินรถบุรีรัมย์ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (37, 5349, 'สหกรณ์การเกษตรหนองกี่ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (38, 5373, 'สหกรณ์การเกษตรปลื้มพัฒนา จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (39, 5382, 'กลุ่มเกษตรกรเลี้ยงไหมตาจง', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (40, 5393, 'สหกรณ์โคนมอำเภอปะคำ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (41, 5465, 'สหกรณ์กองทุนสวนยางนิคมบ้านกรวด จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (42, 6199, 'สหกรณ์กองทุนสวนยางแคนดง จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (43, 6455, 'กลุ่มเกษตรกรทำสวนโคกมะม่วง', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (44, 6503, 'สหกรณ์การเกษตรตำบลบุกระสัง จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (45, 6558, 'กลุ่มเกษตรกรทำนาลำดวน', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (46, 6660, 'สหกรณ์กองทุนสวนยางละหานทราย จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (47, 6945, 'กลุ่มเกษตรกรทำนาทุ่งวัง', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (48, 7010, 'สหกรณ์การเกษตรห้วยหิน จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (49, 7340, 'สหกรณ์การเกษตรปะคำ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (50, 7461, 'กลุ่มเกษตรกรทำนาหนองบัวโคก', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (51, 7462, 'กลุ่มเกษตรกรทำนาทะเมนชัย', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (52, 7472, 'สหกรณ์กองทุนสวนยางโนนสุวรรณ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (53, 7485, 'สหกรณ์การเกษตรบ้านด่าน จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (54, 7668, 'สหกรณ์การเกษตรปฏิรูปที่ดินลำปลายมาศ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (55, 7914, 'ร้านสหกรณ์วิทยาลัยเกษตรกรรมบุรีรัมย์ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (56, 8040, 'สหกรณ์การเกษตรนาโพธิ์ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (57, 8041, 'สหกรณ์การเกษตรหนองหงส์ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (58, 8170, 'ชุมนุมสหกรณ์การเกษตรบุรีรัมย์ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (59, 8479, 'สหกรณ์หมู่บ้านป่าไม้ป่าดงใหญ่ 2 จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (60, 8895, 'สหกรณ์การเกษตรหนองฮาง จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (61, 8946, 'สหกรณ์ผู้ใช้น้ำอ่างเก็บน้ำสนามบิน จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (62, 9123, 'สหกรณ์พัฒนาประชากรและชุมชนเมืองยาง จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (63, 9127, 'สหกรณ์การเกษตรโนนสุวรรณ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (64, 9128, 'สหกรณ์พัฒนาประชากรและชุมชนหนองไทร จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (65, 9130, 'สหกรณ์พัฒนาประชากรและชุมชนลำไทรโยง จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (66, 9131, 'สหกรณ์พัฒนาประชากรและชุมชนบ้านสิงห์ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (67, 9132, 'สหกรณ์พัฒนาประชากรและชุมชนก้านเหลือง จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (68, 9134, 'สหกรณ์พัฒนาประชากรและชุมชนทรัพย์พระยา จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (69, 9135, 'สหกรณ์พัฒนาประชากรและชุมชนหนองปล่อง จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (70, 9374, 'สหกรณ์การเกษตรตำบลปราสาท จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (71, 9568, 'สหกรณ์การเกษตรเพื่อการตลาดลูกค้า ธ.ก.ส.บุรีรัมย์ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (72, 9587, 'สหกรณ์การเกษตรปฏิรูปที่ดินหนองหงส์ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (73, 9978, 'สหกรณ์การเกษตรห้วยราช จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (74, 10028, 'สหกรณ์การเกษตรพลับพลาชัย จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (75, 10310, 'กลุ่มเกษตรกรทำนาโนนเจริญ', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (76, 10311, 'กลุ่มเกษตรกรทำไร่จันทบเพชร', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (77, 10313, 'กลุ่มเกษตรกรทำนาศรีสว่าง', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (78, 10314, 'กลุ่มเกษตรกรทำนาหัวถนน', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (79, 10315, 'กลุ่มเกษตรกรทำนาบ้านสิงห์', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (80, 10316, 'กลุ่มเกษตรกรทำสวนกระสัง', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (81, 10319, 'กลุ่มเกษตรกรทำนาเสาเดียว', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (82, 10320, 'กลุ่มเกษตรกรทำนาหนองชัยศรี', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (83, 10321, 'กลุ่มเกษตรกรทำไร่เมืองฝ้าย', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (84, 10323, 'กลุ่มเกษตรกรทำนาหนองเยือง', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (85, 10325, 'กลุ่มเกษตรกรทำไร่เขาคอก', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (86, 10326, 'กลุ่มเกษตรกรทำนาไพศาล', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (87, 10327, 'กลุ่มเกษตรกรทำนาหนองบอน', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (88, 10328, 'กลุ่มเกษตรกรทำนาโคกมะขาม', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (89, 10329, 'กลุ่มเกษตรกรทำนาหนองโดน', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (90, 10330, 'กลุ่มเกษตรกรทำนาบุโพธิ์', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (91, 10332, 'กลุ่มเกษตรกรทำสวนลำนางรอง', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (92, 10357, 'กลุ่มเกษตรกรเพาะเห็ดโนนดินแดง', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (93, 10462, 'สหกรณ์การเกษตรทรัพย์เจริญ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (94, 10516, 'กลุ่มเกษตรกรทำนาห้วยราชา', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (95, 10517, 'กลุ่มเกษตรกรเลี้ยงไหมนาโพธิ์', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (96, 10519, 'กลุ่มเกษตรกรทำไร่ทุ่งจังหัน', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (97, 10521, 'กลุ่มเกษตรกรทำนาบ้านยาง', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (98, 10522, 'กลุ่มเกษตรกรทำนาถาวร', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (99, 10523, 'กลุ่มเกษตรกรทำนาเจริญสุข', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (100, 10526, 'กลุ่มเกษตรกรทำไร่บ้านแท่นทัพไทย', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (101, 10529, 'กลุ่มเกษตรกรทำนาสระทอง', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (102, 10530, 'กลุ่มเกษตรกรทำนาเมืองฝ้าย', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (103, 10531, 'กลุ่มเกษตรกรทำนาส้มป่อย', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (104, 10536, 'กลุ่มเกษตรกรทำนาศรีภูมิ', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (105, 10537, 'กลุ่มเกษตรกรทำนาหนองเต็ง', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (106, 10540, 'กลุ่มเกษตรกรทำนาวังเหนือ', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (107, 10846, 'กลุ่มเกษตรกรทำนาประทัดบุ', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (108, 10850, 'กลุ่มเกษตรกรทำนาหนองตะครอง', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (109, 10853, 'กลุ่มเกษตรกรทำนาบ้านด่าน', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (110, 10855, 'กลุ่มเกษตรกรทำนาหนองกระทิง', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (111, 10856, 'กลุ่มเกษตรกรทำนาหนองคู', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (112, 10857, 'กลุ่มเกษตรกรทำนาลำปลายมาศ', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (113, 10858, 'กลุ่มเกษตรกรทำนาเมืองแฝก', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (114, 10859, 'กลุ่มเกษตรกรทำนาหูทำนบ', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (115, 10860, 'กลุ่มเกษตรกรทำนาโคกมะม่วง', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (116, 10861, 'กลุ่มเกษตรกรทำนาหนองบัว', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (117, 10863, 'กลุ่มเกษตรกรทำนาลุมปุ๊ก', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (118, 10864, 'กลุ่มเกษตรกรทำนากระสัง(สตึก)', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (119, 10865, 'กลุ่มเกษตรกรทำนาบ้านบัว', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (120, 10867, 'กลุ่มเกษตรกรทำนาถลุงเหล็ก', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (121, 10868, 'กลุ่มเกษตรกรทำนากลันทา', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (122, 10872, 'กลุ่มเกษตรกรทำสวนดอนอะราง', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (123, 11298, 'สหกรณ์โคนมโนนสุวรรณ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (124, 11571, 'กลุ่มเกษตรกรทำสวนยางพาราดอนอะราง', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (125, 11572, 'กลุ่มเกษตรกรทำนาแดงใหญ่', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (126, 11573, 'กลุ่มเกษตรกรทำนาหนองใหญ่', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (127, 11574, 'กลุ่มเกษตรกรทำนาสนามชัย', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (128, 11575, 'กลุ่มเกษตรกรทำนาปราสาท', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (129, 11576, 'กลุ่มเกษตรกรทำนาบึงเจริญ', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (130, 11577, 'กลุ่มเกษตรกรทำนาเขาดินเหนือ', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (131, 11578, 'กลุ่มเกษตรกรทำนาหนองไม้งาม', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (132, 11580, 'กลุ่มเกษตรกรทำสวนปังกู', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (133, 11582, 'กลุ่มเกษตรกรทำนาสองห้อง', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (134, 11734, 'สหกรณ์สตรีเทศบาลเมืองบุรีรัมย์ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (135, 11880, 'กลุ่มเกษตรกรทำนาทุ่งแสงทอง', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (136, 11881, 'กลุ่มเกษตรกรทำสวนหนองโบสถ์', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (137, 11948, 'กลุ่มเกษตรกรทำนาโคกสนวน', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (138, 11949, 'กลุ่มเกษตรกรทำนาละลวด', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (139, 11989, 'กลุ่มเกษตรกรทำนาหินโคน', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (140, 12275, 'กลุ่มเกษตรกรทำนาทุ่งกระเต็น', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (141, 12299, 'กลุ่มเกษตรกรทำนาโคกม้า', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (142, 12300, 'กลุ่มเกษตรกรทำสวนยางพาราสตึก', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (143, 12429, 'กลุ่มเกษตรกรทำไร่ดอนมนต์', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (144, 12430, 'กลุ่มเกษตรกรเลี้ยงไหมโคกล่าม', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (145, 12431, 'กลุ่มเกษตรกรเลี้ยงไหมบ้านยาง', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (146, 12432, 'กลุ่มเกษตรกรเลี้ยงไหมตลาดโพธิ์', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (147, 12433, 'กลุ่มเกษตรกรเลี้ยงไหมบุโพธิ์', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (148, 12536, 'กลุ่มเกษตรกรทำนาเมืองยาง', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (149, 12840, 'กลุ่มเกษตรกรทำนาดอนกอก', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (150, 12861, 'สหกรณ์การเกษตรชุมชนตำบลเมืองแฝก จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (151, 13115, 'สหกรณ์ออมทรัพย์พนักงานส่วนตำบลจังหวัดบุรีรัมย์ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (152, 13317, 'สหกรณ์การเกษตรแม่มูน จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (153, 13477, 'สหกรณ์การเกษตรชุมชนบ้านสารภี จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (154, 13478, 'สหกรณ์การเกษตรทอผ้าไหมบ้านคู จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (155, 13555, 'กลุ่มเกษตรกรทำสวนหนองแวง', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (156, 13643, 'กลุ่มเกษตรกรทำนากระสัง(เมือง)', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (157, 13644, 'กลุ่มเกษตรกรทำนาดอนมนต์', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (158, 13801, 'กลุ่มเกษตรกรทำนาบ้านแพ', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (159, 14209, 'สหกรณ์การเกษตรแสลงโทน จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (160, 14236, 'สหกรณ์สตรีนางรอง จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (161, 14237, 'สหกรณ์สตรีโนนดินแดง จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (162, 14238, 'สหกรณ์สตรีคูเมือง จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (163, 14239, 'สหกรณ์สตรีหนองหงส์ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (164, 14240, 'สหกรณ์สตรีเฉลิมพระเกียรติบุรีรัมย์ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (165, 14274, 'สหกรณ์สตรีลำปลายมาศ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (166, 14275, 'สหกรณ์สตรีบ้านกรวด จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (167, 14324, 'สหกรณ์บ้านใหม่ไชยพจน์ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (168, 14325, 'สหกรณ์สตรีนาโพธิ์ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (169, 14326, 'สหกรณ์สตรีกระสัง จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (170, 14327, 'สหกรณ์สตรีห้วยราช จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (171, 14328, 'สหกรณ์สตรีพุทไธสง จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (172, 14329, 'สหกรณ์สตรีปะคำ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (173, 14352, 'สหกรณ์สตรีเมืองบุรีรัมย์ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (174, 14373, 'กลุ่มเกษตรกรเพาะเห็ดหายโศก', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (175, 14416, 'กลุ่มเกษตรกรผู้เลี้ยงสุกรขุน', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (176, 14917, 'สหกรณ์สตรีสตึก จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (177, 14955, 'สหกรณ์สตรีประโคนชัย จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (178, 14956, 'สหกรณ์สตรีพลับพลาชัย จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (179, 15241, 'กลุ่มเกษตรกรเลี้ยงไหมเมืองแฝก', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (180, 15293, 'กลุ่มเกษตรกรเลี้ยงสัตว์โคกกลาง', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (181, 15302, 'สหกรณ์การเกษตรทฤษฎีใหม่ตลาดโพธิ์ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (182, 15365, 'สหกรณ์การเกษตรถาวรพัฒนาบุรีรัมย์ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (183, 15482, 'กลุ่มเกษตรกรเลี้ยงไหมหนองตะครอง', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (184, 15617, 'สหกรณ์การเกษตรศุภนิมิตบ้านกรวด จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (185, 15622, 'สหกรณ์ประมงจังหวัดบุรีรัมย์ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (186, 15793, 'สหกรณ์ผู้ใช้น้ำสตึก-แคนดง จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (187, 15846, 'กลุ่มเกษตรกรเลี้ยงกระบือลุมปุ๊ก', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (188, 15848, 'กลุ่มเกษตรกรเลี้ยงสัตว์ตำบลพระครู', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (189, 15849, 'กลุ่มเกษตรกรเลี้ยงกระบือพุทไธสง', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (190, 15964, 'กลุ่มเกษตรกรทำนาบ้านโนนสวรรค์', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (191, 16315, 'กลุ่มเกษตรกรทำนาตำบลหายโศก', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (192, 16473, 'กลุ่มเกษตรกรเลี้ยงกระบือโนนเจริญ', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (193, 16547, 'กลุ่มเกษตรกรเลี้ยงกระบือเมืองแก', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (194, 16583, 'กลุ่มเกษตรกรเลี้ยงกระบือตาจง', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (195, 16584, 'กลุ่มเกษตรกรเลี้ยงกระบือสะเดา', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (196, 16585, 'กลุ่มเกษตรกรเลี้ยงกระบือจันดุม', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (197, 16701, 'สหกรณ์บริการชุมชนบ้านเอื้ออาทรบุรีรัมย์ 1 จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (198, 16780, 'สหกรณ์ออมทรัพย์จังหวัดทหารบกบุรีรัมย์ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (199, 16831, 'กลุ่มเกษตรกรทำนาสะเดาทิพย์', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (200, 17013, 'กลุ่มเกษตรกรผู้ปลูกมันสำปะหลังโนนสุวรรณ', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (201, 17195, 'สหกรณ์สตรีโนนสุวรรณ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (202, 17212, 'กลุ่มเกษตรกรเกษตรอินทรีย์ตำบลนาโพธิ์', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (203, 17251, 'สหกรณ์สตรีบ้านด่าน จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (204, 17265, 'สหกรณ์การเกษตรปฏิรูปที่ดินละหานทรายลำจังหัน จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (205, 17444, 'กลุ่มเกษตรกรเลี้ยงกระบือหูทำนบ', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (206, 17446, 'กลุ่มเกษตรกรพัฒนาอาชีพทำนาผสมผสาน คสก.พุทไธสง', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (207, 17514, 'สหกรณ์การเกษตรชาวไร่อ้อยบุรีรัมย์ร่วมใจ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (208, 17702, 'สหกรณ์ผู้สูบน้ำด้วยไฟฟ้าตำบลโคกขมิ้น จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (209, 17753, 'สหกรณ์สตรีหนองกี่ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (210, 17762, 'กลุ่มเกษตรกรทำนาทุ่งกระตาดพัฒนา', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (211, 17807, 'สหกรณ์การเกษตรก้านเหลือง จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (212, 17812, 'กลุ่มเกษตรกรทำนาเกษตรอินทรีย์ยายแย้มวัฒนา', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (213, 17863, 'กลุ่มเกษตรกรทำนาโพนทองเมืองพุทธ', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (214, 17919, 'สหกรณ์ผู้ปลูกหม่อนเลี้ยงไหมบ้านหัวสะพาน จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (215, 18074, 'กลุ่มเกษตรกรทำนา คสก.นาโพธิ์', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (216, 18351, 'กลุ่มเกษตรกรทำนาบ้านเสม็ด', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (217, 18554, 'สหกรณ์โครงการนำร่องน้ำบาดาลเพื่อการเกษตรตำบลแสลงพัน จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (218, 18678, 'สหกรณ์การเกษตรตำบลหนองแวง จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (219, 18924, 'สหกรณ์เครดิตยูเนี่ยนคูเมือง จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (220, 18934, 'กลุ่มเกษตรกรปลูกผักปลอดสารพลังงานแสงอาทิตย์บ้านห้วยเสลา', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (221, 19028, 'สหกรณ์การเกษตรท้องถิ่นตำบลโคกล่าม จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (222, 19136, 'สหกรณ์การเกษตรและเทคโนโลยีหนองตาด จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (223, 19201, 'สหกรณ์การเกษตรมั่นคง จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (224, 19410, 'สหกรณ์การเกษตรเขาคอกรักสันติ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (225, 19555, 'กลุ่มเกษตรกรทำนาบ้านคู', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (226, 19627, 'สหกรณ์จัดที่ดินทุ่งประเทียน้อยหนองปล่อง จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (227, 19660, 'สหกรณ์ออมทรัพย์สถาบันอุดมศึกษา จังหวัดบุรีรัมย์ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (228, 19626, 'สหกรณ์เครดิตยูเนี่ยนตำบลเขาคอก จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (229, 19615, 'สหกรณ์ชาวสวนยางตูมใหญ่ จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (231, 19736, 'กลุ่มเกษตรกรสวนยางพาราบ้านซับสมบูรณ์', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (234, 19773, 'สหกรณ์ผู้เลี้ยงแพะ-แกะจังหวัดบุรีรัมย์ 2017 จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (235, 19825, 'สหกรณ์กองทุนสวนยางโคกเพชรโนนดินแดง จำกัด', 101);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (236, 19745, 'กลุ่มเกษตรกรชาวสวนยางตำบลโนนสุวรรณ', 102);
INSERT INTO `dsahakon` (`PK`, `a_id`, `a_name`, `p_id`) VALUES (238, 19819, 'กลุ่มเกษตรกรยางพาราตำบลไทยเจริญ', 102);

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `namacu`
-- 

-- 
-- dump ตาราง `namacu`
-- 

INSERT INTO `namacu` (`PK`, `acu_name`, `nam_id`) VALUES (1, 'ดวงจันทร์  ปาสาเน', 'S0001');
INSERT INTO `namacu` (`PK`, `acu_name`, `nam_id`) VALUES (2, 'ปราณี บุดดา', 'S0002');
INSERT INTO `namacu` (`PK`, `acu_name`, `nam_id`) VALUES (3, 'เจริญศิลป์ ทุมมาลา', 'S0003');
INSERT INTO `namacu` (`PK`, `acu_name`, `nam_id`) VALUES (4, 'มนัสนีย์ ธนะสีลังกูร', 'S0004');
INSERT INTO `namacu` (`PK`, `acu_name`, `nam_id`) VALUES (5, 'วิมล บุญธรรม', 'S0005');
INSERT INTO `namacu` (`PK`, `acu_name`, `nam_id`) VALUES (6, 'วิมาลา คะรุรัมย์', 'S0006');
INSERT INTO `namacu` (`PK`, `acu_name`, `nam_id`) VALUES (7, 'สกาวเดือน ยอดเจริญ', 'S0007');
INSERT INTO `namacu` (`PK`, `acu_name`, `nam_id`) VALUES (8, 'วราภรณ์ อุณชาติ', 'S0008');
INSERT INTO `namacu` (`PK`, `acu_name`, `nam_id`) VALUES (9, 'นัศชาพร สาทิพย์จันทร์', 'S0009');
INSERT INTO `namacu` (`PK`, `acu_name`, `nam_id`) VALUES (10, 'สุพัตรา คำมะนะ', 'S0010');
INSERT INTO `namacu` (`PK`, `acu_name`, `nam_id`) VALUES (11, 'ศิริมาศ สาระพงษ์', 'S0011');

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `sahakorn`
-- 


-- 
-- dump ตาราง `sahakorn`
-- 

INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (1, 204, 101, 'S0001', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (2, 260, 101, 'S0001', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (3, 310, 101, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (4, 330, 101, 'S0001', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (5, 453, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (6, 454, 102, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (7, 468, 101, 'S0001', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (8, 568, 102, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (9, 581, 101, 'S0001', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (10, 725, 101, 'S0001', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (254, 13115, 101, 'S0001', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (13, 1844, 101, 'S0001', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (293, 1055, 102, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (15, 2536, 102, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (16, 2552, 102, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (17, 2572, 102, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (18, 2743, 102, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (19, 3215, 101, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (20, 3344, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (312, 19825, 101, 'S0004', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (22, 3530, 101, 'S0001', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (23, 3707, 101, 'S0001', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (311, 19773, 101, 'S0004', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (285, 11574, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (26, 4118, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (27, 4227, 101, 'S0001', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (29, 4951, 101, 'S0001', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (30, 4973, 101, 'S0001', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (32, 5043, 101, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (34, 5130, 102, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (37, 5349, 101, 'S0001', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (39, 5382, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (40, 5393, 101, 'S0001', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (41, 5465, 101, 'S0001', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (42, 6199, 101, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (43, 6455, 102, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (48, 7010, 101, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (49, 7340, 101, 'S0001', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (50, 7461, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (51, 7462, 102, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (52, 7472, 101, 'S0001', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (54, 7668, 101, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (55, 7914, 101, 'S0001', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (57, 8041, 101, 'S0001', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (58, 8170, 101, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (60, 8895, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (61, 8946, 101, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (62, 9123, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (63, 9127, 101, 'S0001', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (65, 9130, 101, 'S0001', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (66, 9131, 101, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (67, 9132, 101, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (68, 9134, 101, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (69, 9135, 101, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (70, 9374, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (71, 9568, 101, 'S0001', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (72, 9587, 101, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (73, 9978, 101, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (74, 10028, 101, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (77, 10313, 102, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (333, 10315, 102, 'S0001', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (81, 10319, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (82, 10320, 102, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (83, 10321, 102, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (84, 10323, 102, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (85, 10325, 102, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (86, 10326, 102, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (87, 10327, 102, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (88, 10328, 102, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (89, 10329, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (309, 19615, 101, 'S0004', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (308, 19626, 101, 'S0004', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (92, 10357, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (93, 10462, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (94, 10516, 102, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (95, 10517, 102, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (96, 10519, 102, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (98, 10522, 102, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (99, 10523, 102, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (100, 10526, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (101, 10529, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (102, 10530, 102, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (103, 10531, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (105, 10537, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (106, 10540, 102, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (107, 10846, 102, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (108, 10850, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (109, 10853, 102, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (110, 10855, 102, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (111, 10856, 102, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (112, 10857, 102, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (113, 10858, 102, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (114, 10859, 102, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (115, 10860, 102, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (116, 10861, 102, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (117, 10863, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (307, 19660, 101, 'S0004', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (119, 10865, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (121, 10868, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (314, 17444, 102, 'S0007', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (123, 11298, 101, 'S0001', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (124, 11571, 102, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (125, 11572, 102, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (128, 11575, 102, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (132, 11580, 102, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (134, 11734, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (335, 11881, 102, 'S0001', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (139, 11989, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (140, 12275, 102, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (141, 12299, 102, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (144, 12430, 102, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (145, 12431, 102, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (146, 12432, 102, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (147, 12433, 102, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (149, 12840, 102, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (280, 17251, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (152, 13317, 101, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (153, 13477, 101, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (154, 13478, 101, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (155, 13555, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (256, 17514, 101, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (158, 13801, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (159, 14209, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (160, 14236, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (161, 14237, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (162, 14238, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (163, 14239, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (164, 14240, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (165, 14274, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (166, 14275, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (167, 14324, 101, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (168, 14325, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (170, 14327, 101, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (171, 14328, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (175, 14416, 102, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (176, 14917, 101, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (177, 14955, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (178, 14956, 101, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (310, 19627, 101, 'S0004', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (180, 15293, 102, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (181, 15302, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (182, 15365, 101, 'S0001', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (183, 15482, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (184, 15617, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (185, 15622, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (186, 15793, 101, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (187, 15846, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (327, 16583, 102, 'S0010', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (282, 6945, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (331, 15848, 102, 'S0011', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (195, 16584, 102, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (196, 16585, 102, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (266, 16780, 101, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (253, 7485, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (281, 6558, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (202, 17212, 102, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (204, 17265, 101, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (255, 14326, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (209, 17753, 101, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (210, 17762, 102, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (211, 17807, 101, 'S0001', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (334, 17812, 102, 'S0001', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (252, 5333, 101, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (214, 17919, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (215, 18074, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (216, 18351, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (217, 18554, 101, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (218, 18678, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (219, 18924, 101, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (220, 18934, 102, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (221, 19028, 101, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (222, 19136, 101, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (223, 19201, 101, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (224, 19410, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (225, 19555, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (318, 10330, 102, 'S0008', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (323, 10864, 102, 'S0009', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (339, 19736, 102, 'S0001', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (258, 9128, 101, 'S0001', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (257, 8040, 101, 'S0001', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (316, 3775, 102, 'S0008', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (338, 11576, 102, 'S0001', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (263, 16315, 102, 'S0001', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (265, 5000, 101, 'S0001', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (267, 6503, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (268, 14352, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (269, 14329, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (270, 17195, 101, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (315, 16701, 101, 'S0007', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (272, 873, 102, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (273, 10314, 102, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (274, 11880, 102, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (275, 11948, 102, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (276, 11949, 102, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (277, 12536, 102, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (278, 16831, 102, 'S0002', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (279, 19819, 102, 'S0002', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (286, 11578, 102, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (287, 12300, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (288, 12429, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (289, 13644, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (290, 15964, 102, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (291, 16473, 102, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (325, 10316, 102, 'S0009', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (294, 4413, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (295, 10310, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (296, 10311, 102, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (297, 11573, 102, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (298, 11577, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (299, 14373, 102, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (300, 15849, 102, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (301, 17863, 102, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (302, 17446, 102, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (303, 5170, 101, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (304, 5373, 101, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (305, 6660, 101, 'S0003', '2561', 'Y');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (306, 8479, 101, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (328, 11582, 102, 'S0010', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (329, 10867, 102, 'S0011', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (330, 5087, 102, 'S0011', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (340, 17702, 101, 'S0003', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (324, 13643, 102, 'S0009', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (332, 19745, 102, 'S0001', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (317, 3405, 102, 'S0008', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (313, 10872, 102, 'S0007', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (336, 10521, 102, 'S0001', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (337, 16547, 102, 'S0001', '2561', '');
INSERT INTO `sahakorn` (`PK`, `a_id`, `p_id`, `nam_id`, `year`, `isstatus`) VALUES (326, 10536, 102, 'S0009', '2561', '');

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `year`
-- 


-- 
-- dump ตาราง `year`
-- 

INSERT INTO `year` (`PK`, `year_name`) VALUES (6, '2564');
INSERT INTO `year` (`PK`, `year_name`) VALUES (5, '2563');
INSERT INTO `year` (`PK`, `year_name`) VALUES (3, '2561');
INSERT INTO `year` (`PK`, `year_name`) VALUES (4, '2562');
