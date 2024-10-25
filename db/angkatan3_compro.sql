-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2024 at 09:57 AM
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
-- Database: `angkatan3_compro`
--

-- --------------------------------------------------------

--
-- Table structure for table `general_setting`
--

CREATE TABLE `general_setting` (
  `id` int(11) NOT NULL,
  `website_name` varchar(50) NOT NULL,
  `website_link` varchar(50) DEFAULT NULL,
  `website_phone` varchar(16) NOT NULL,
  `website_email` varchar(50) NOT NULL,
  `website_address` text NOT NULL,
  `twitter_link` varchar(100) DEFAULT NULL,
  `fb_link` varchar(100) DEFAULT NULL,
  `ig_link` varchar(100) DEFAULT NULL,
  `linkedin_link` varchar(100) DEFAULT NULL,
  `youtube_link` varchar(100) DEFAULT NULL,
  `logo` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `general_setting`
--

INSERT INTO `general_setting` (`id`, `website_name`, `website_link`, `website_phone`, `website_email`, `website_address`, `twitter_link`, `fb_link`, `ig_link`, `linkedin_link`, `youtube_link`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Hanzx', 'https://github.com/nurulizzafarhana', '085781648897', 'hanz@gmail.com', 'Jiung', NULL, NULL, NULL, NULL, NULL, 'baby-cat.jpeg', '2024-10-24 02:12:57', '2024-10-25 03:07:47');

-- --------------------------------------------------------

--
-- Table structure for table `instruktur`
--

CREATE TABLE `instruktur` (
  `id` int(11) NOT NULL,
  `nama_instruktur` varchar(100) NOT NULL,
  `jurusan_instruktur` varchar(40) NOT NULL,
  `fb_link` varchar(50) DEFAULT NULL,
  `ig_link` varchar(50) DEFAULT NULL,
  `twitter_link` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instruktur`
--

INSERT INTO `instruktur` (`id`, `nama_instruktur`, `jurusan_instruktur`, `fb_link`, `ig_link`, `twitter_link`, `created_at`, `updated_at`, `foto`) VALUES
(1, 'Mina Myoi', 'Kinesiology atau Ilmu Gerak', NULL, NULL, NULL, '2024-10-25 04:12:58', '2024-10-25 06:54:33', 'mina_tari.jpeg'),
(2, 'Jisoo Park', 'Psikologi', NULL, NULL, NULL, '2024-10-25 04:19:00', '2024-10-25 04:19:00', 'jisoo_cantikbgt.jpeg'),
(4, 'Hayley Williams', 'Seni Musik', NULL, NULL, NULL, '2024-10-25 06:59:19', '2024-10-25 07:02:09', 'hayley.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_profil`
--

CREATE TABLE `kategori_profil` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori_profil`
--

INSERT INTO `kategori_profil` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Latar Belakang', '2024-10-25 07:41:07', '2024-10-25 07:41:07'),
(2, 'Visi dan Misi', '2024-10-25 07:41:07', '2024-10-25 07:41:07');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `slug` text NOT NULL,
  `isi` text NOT NULL,
  `foto` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `password`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Hana', 'hana@gmail.com', 'hana', '', '2024-10-23 00:19:16', '2024-10-23 00:19:16'),
(7, 'Hayley Williams', 'yelyah17@gmail.com', 'yelyah', '', '2024-10-23 02:56:17', '2024-10-23 04:28:38'),
(9, 'Taylor York', 'york@gmail.com', 'york', 'foto2.jpeg', '2024-10-23 07:25:57', '2024-10-23 08:13:15'),
(10, 'Za', 'za@gmail.com', 'za', 'catq.jpeg', '2024-10-23 08:15:15', '2024-10-23 08:15:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `general_setting`
--
ALTER TABLE `general_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instruktur`
--
ALTER TABLE `instruktur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_profil`
--
ALTER TABLE `kategori_profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `general_setting`
--
ALTER TABLE `general_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `instruktur`
--
ALTER TABLE `instruktur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori_profil`
--
ALTER TABLE `kategori_profil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
