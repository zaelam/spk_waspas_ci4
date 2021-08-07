-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2021 at 06:12 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skripsicaroko`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` text NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bobot`
--

CREATE TABLE `bobot` (
  `kriteria` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `bobot` float NOT NULL,
  `id_bobot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bobot`
--

INSERT INTO `bobot` (`kriteria`, `keterangan`, `bobot`, `id_bobot`) VALUES
('Kelengkapan Produk', 'Tidak Lengkap', 0.5, 1),
('Kelengkapan Produk', 'Kurang Lengkap', 1.2, 2),
('Kelengkapan Produk', 'Cukup Lengkap', 2.2, 3),
('Kelengkapan Produk', 'Lengkap', 3.2, 4),
('Kelengkapan Produk', 'Sangat Lengkap', 4.2, 5),
('Estimasi Hari', 'Sesuai', 1.3, 6),
('Estimasi Hari', 'Tidak Sesuai', 2.3, 7),
('User Interface', 'Tidak Baik', 0.6, 8),
('User Interface', 'Kurang Baik', 1.4, 9),
('User Interface', 'Cukup Baik', 2.4, 10),
('User Interface', 'Baik', 3.3, 11),
('User Interface', 'Sangat Baik', 4.3, 12),
('Respon Pelayanan', 'Tidak Baik', 0.7, 13),
('Respon Pelayanan', 'Kurang Baik', 1.5, 14),
('Respon Pelayanan', 'Cukup Baik', 2.5, 15),
('Respon Pelayanan', 'Baik', 3.4, 16),
('Respon Pelayanan', 'Sangat Baik', 4.4, 17),
('Metode Pembayaran', 'Tidak Mudah', 0.8, 18),
('Metode Pembayaran', 'Kurang Mudah', 1.6, 19),
('Metode Pembayaran', 'Cukup Mudah', 2.6, 20),
('Metode Pembayaran', 'Mudah', 3.5, 21),
('Metode Pembayaran', 'Sangat Mudah', 4.5, 22),
('Kemudahan Fitur', 'Tidak Mudah', 0.9, 23),
('Kemudahan Fitur', 'Kurang Mudah', 1.7, 24),
('Kemudahan Fitur', 'Cukup Mudah', 2.7, 25),
('Kemudahan Fitur', 'Mudah', 3.6, 26),
('Kemudahan Fitur', 'Sangat Mudah', 4.6, 27),
('Kepercayaan', 'Tidak Percaya', 1.1, 28),
('Kepercayaan', 'Kurang Percaya', 1.8, 29),
('Kepercayaan', 'Cukup Percaya', 2.8, 30),
('Kepercayaan', 'Percaya', 3.7, 31),
('Kepercayaan', 'Sangat Percaya', 4.7, 32),
('Penanganan Komplain', 'Buruk Sekali', 1.2, 33),
('Penanganan Komplain', 'Buruk', 1.9, 34),
('Penanganan Komplain', 'Sedang', 2.9, 35),
('Penanganan Komplain', 'Sangat Baik', 3.8, 36),
('Penanganan Komplain', 'Sangat Baik Sekali', 4.8, 37),
('Cashback', 'Tidak Sesuai', 1.3, 38),
('Cashback', 'Kurang Sesuai', 2.1, 39),
('Cashback', 'Cukup Sesuai', 3.1, 40),
('Cashback', 'Sesuai', 3.9, 41),
('Cashback', 'Sangat Sesuai', 4.9, 42),
('Pengiriman', 'Tidak Baik', 1.4, 43),
('Pengiriman', 'Kurang Baik', 2.2, 44),
('Pengiriman', 'Cukup Baik', 3.2, 45),
('Pengiriman', 'Baik', 4.1, 46),
('Pengiriman', 'Sangat Baik', 5.1, 47);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) UNSIGNED NOT NULL,
  `kriteria` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `marketplace`
--

CREATE TABLE `marketplace` (
  `id_marketplace` int(11) UNSIGNED NOT NULL,
  `nama_marketplace` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `marketplace`
--

INSERT INTO `marketplace` (`id_marketplace`, `nama_marketplace`) VALUES
(1, 'Shopee'),
(2, 'Tokopedia'),
(3, 'Bukalapak'),
(4, 'Lazada'),
(5, 'Blibli');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '20210309020300', 'App\\Database\\Migrations\\User', 'default', 'App', 1621598481, 1),
(2, '20210309083000', 'App\\Database\\Migrations\\Barang', 'default', 'App', 1621598482, 1),
(3, '20210309195300', 'App\\Database\\Migrations\\Transaksi', 'default', 'App', 1621598482, 1),
(4, '20210309200800', 'App\\Database\\Migrations\\Komentar', 'default', 'App', 1621598483, 1),
(5, '20210310013800', 'App\\Database\\Migrations\\TransaksiAlterFk', 'default', 'App', 1621598485, 1),
(6, '20210310013900', 'App\\Database\\Migrations\\KomentarAlterFk', 'default', 'App', 1621598489, 1),
(7, '20210310014000', 'App\\Database\\Migrations\\TransaksiAlterAlamat', 'default', 'App', 1621598489, 1),
(8, '20210430212000', 'App\\Database\\Migrations\\Marketplace', 'default', 'App', 1621598490, 1),
(9, '20210430212100', 'App\\Database\\Migrations\\Kriteria', 'default', 'App', 1621598490, 1),
(10, '20210430212900', 'App\\Database\\Migrations\\Respon', 'default', 'App', 1621598718, 2);

-- --------------------------------------------------------

--
-- Table structure for table `respon`
--

CREATE TABLE `respon` (
  `id_respon` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nama` varchar(150) DEFAULT NULL,
  `umur` varchar(20) DEFAULT NULL,
  `pendidikan` varchar(20) DEFAULT NULL,
  `jenis_kelamin` varchar(50) DEFAULT NULL,
  `frekuensi` varchar(50) DEFAULT NULL,
  `id_marketplace` int(11) DEFAULT NULL,
  `kelengkapan` float NOT NULL,
  `estimasi_pengiriman` float NOT NULL,
  `user_experience` float NOT NULL,
  `respon_pelayanan` float NOT NULL,
  `metode_pembayaran` float NOT NULL,
  `kemudahan_fitur` float NOT NULL,
  `kepercayaan` float NOT NULL,
  `penanganan_komplain` float NOT NULL,
  `cashback` float NOT NULL,
  `pengiriman` float NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `respon`
--

INSERT INTO `respon` (`id_respon`, `id_user`, `nama`, `umur`, `pendidikan`, `jenis_kelamin`, `frekuensi`, `id_marketplace`, `kelengkapan`, `estimasi_pengiriman`, `user_experience`, `respon_pelayanan`, `metode_pembayaran`, `kemudahan_fitur`, `kepercayaan`, `penanganan_komplain`, `cashback`, `pengiriman`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 1, 'Caroko', '21 tahun', 'S1', 'Laki laki', 'Cukup Sering', 1, 0.2, 0.8, 0.4, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(2, 1, 'Caroko', '21 tahun', 'S1', 'Laki laki', 'Cukup Sering', 2, 0.4, 0.8, 0.4, 0.4, 0.4, 0.6, 0.6, 0.8, 0.8, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(3, 1, 'Caroko', '21 tahun', 'S1', 'Laki laki', 'Cukup Sering', 3, 0.2, 0.8, 0.4, 0.8, 0.6, 0.6, 0.6, 0.8, 0.8, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(4, 1, 'Caroko', '21 tahun', 'S1', 'Laki laki', 'Cukup Sering', 4, 0.6, 0.8, 0.4, 0.8, 0.6, 0.6, 0.6, 0.6, 0.8, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(5, 1, 'Caroko', '21 tahun', 'S1', 'Laki laki', 'Cukup Sering', 5, 0.6, 0.8, 0.4, 0.6, 0.6, 0.6, 0.8, 0.6, 0.8, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(6, 2, 'Rizky ATR', '20', 'S1', 'Laki laki', 'Sangat Sering', 1, 0, 0.8, 0.2, 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', NULL, NULL),
(7, 2, 'Rizky ATR', '20', 'S1', 'Laki laki', 'Sangat Sering', 2, 0.2, 0, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, '0000-00-00 00:00:00', NULL, NULL),
(8, 2, 'Rizky ATR', '20', 'S1', 'Laki laki', 'Sangat Sering', 3, 0.2, 0, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, '0000-00-00 00:00:00', NULL, NULL),
(9, 2, 'Rizky ATR', '20', 'S1', 'Laki laki', 'Sangat Sering', 4, 0.2, 0, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, '0000-00-00 00:00:00', NULL, NULL),
(10, 2, 'Rizky ATR', '20', 'S1', 'Laki laki', 'Sangat Sering', 5, 0.2, 0, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, '0000-00-00 00:00:00', NULL, NULL),
(11, 3, 'Angga', '25', 'S1', 'Laki laki', 'Sangat Sering', 1, 0.2, 0.8, 0, 0, 0, 0, 0.2, 0, 0, 0, '0000-00-00 00:00:00', NULL, NULL),
(12, 3, 'Angga', '25', 'S1', 'Laki laki', 'Sangat Sering', 2, 0.4, 0, 0.8, 0.2, 0.2, 0.2, 0.4, 0.2, 0, 0.2, '0000-00-00 00:00:00', NULL, NULL),
(13, 3, 'Angga', '25', 'S1', 'Laki laki', 'Sangat Sering', 3, 0.6, 0.8, 0.6, 0.4, 0.2, 0.2, 0.4, 0.4, 0.2, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(14, 3, 'Angga', '25', 'S1', 'Laki laki', 'Sangat Sering', 4, 0.6, 0.8, 0.2, 0.4, 0.6, 0.2, 0.4, 0.6, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(15, 3, 'Angga', '25', 'S1', 'Laki laki', 'Sangat Sering', 5, 0.8, 0, 0.4, 0.4, 0.4, 0.2, 0.4, 0.6, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(16, 4, 'Ridwan', '26', 'S2', 'Laki laki', 'Sering', 1, 0, 0, 0.2, 0.4, 0.2, 0.2, 0.4, 0.2, 0.2, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(17, 4, 'Ridwan', '26', 'S2', 'Laki laki', 'Sering', 2, 0.4, 0, 0.4, 0.6, 0.2, 0.4, 0.6, 0.4, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(18, 4, 'Ridwan', '26', 'S2', 'Laki laki', 'Sering', 3, 0.4, 0, 0.4, 0.6, 0.4, 0.4, 0.6, 0.4, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(19, 4, 'Ridwan', '26', 'S2', 'Laki laki', 'Sering', 4, 0.6, 0.8, 0.8, 0.8, 0.8, 0.4, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(20, 4, 'Ridwan', '26', 'S2', 'Laki laki', 'Sering', 5, 0.6, 0.8, 0.6, 0.6, 0.6, 0.4, 0.6, 0.4, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(21, 5, 'rangga', '22', 'SMA/SMK', 'Laki laki', 'Sangat Sering', 1, 0.4, 0.8, 0.4, 0.2, 0.4, 0.4, 0.4, 0.4, 0.2, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(22, 5, 'rangga', '22', 'SMA/SMK', 'Laki laki', 'Sangat Sering', 2, 0.4, 0.8, 0.4, 0.2, 0.4, 0.6, 0.2, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(23, 5, 'rangga', '22', 'SMA/SMK', 'Laki laki', 'Sangat Sering', 3, 0.4, 0.8, 0.6, 0.4, 0.6, 0.4, 0.4, 0.6, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(24, 5, 'rangga', '22', 'SMA/SMK', 'Laki laki', 'Sangat Sering', 4, 0.8, 0.8, 0.4, 0.8, 0.6, 0.4, 0.4, 0.6, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(25, 5, 'rangga', '22', 'SMA/SMK', 'Laki laki', 'Sangat Sering', 5, 0.6, 0.8, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(26, 6, 'Sinta', '20', 'SMA/SMK', 'Perempuan', 'Sangat Sering', 1, 0, 0.8, 0.4, 0.2, 0.6, 0.8, 0.2, 0.6, 0.4, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(27, 6, 'Sinta', '20', 'SMA/SMK', 'Perempuan', 'Sangat Sering', 2, 0.2, 0, 0.4, 0.2, 0.6, 0.8, 0.4, 0.6, 0.6, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(28, 6, 'Sinta', '20', 'SMA/SMK', 'Perempuan', 'Sangat Sering', 3, 0.4, 0.8, 0.4, 0.4, 0.6, 0.8, 0.8, 0.8, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(29, 6, 'Sinta', '20', 'SMA/SMK', 'Perempuan', 'Sangat Sering', 4, 0, 0.8, 0.4, 0.4, 0.6, 0.8, 0.6, 0.6, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(30, 6, 'Sinta', '20', 'SMA/SMK', 'Perempuan', 'Sangat Sering', 5, 0.2, 0, 0.4, 0.2, 0.6, 0.8, 0.6, 0.8, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(31, 7, 'Jumas Ridal', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 1, 0.4, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.4, 0.6, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(32, 7, 'Jumas Ridal', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 2, 0.8, 0.8, 0.8, 0.4, 0.8, 0.8, 0.8, 0.4, 0.6, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(33, 7, 'Jumas Ridal', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 3, 0.6, 0.8, 0.6, 0.4, 0.6, 0.6, 0.6, 0.4, 0.6, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(34, 7, 'Jumas Ridal', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 4, 0.6, 0, 0.6, 0.2, 0.4, 0.4, 0.4, 0.2, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(35, 7, 'Jumas Ridal', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 5, 0.4, 0, 0.4, 0.4, 0.4, 0.4, 0.4, 0.2, 0.2, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(36, 8, 'Farhan Driansyah', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 1, 0.6, 0.8, 0.4, 0.4, 0.4, 0.6, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(37, 8, 'Farhan Driansyah', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 2, 0.8, 0.8, 0.6, 0.6, 0.8, 0.8, 0.6, 0.6, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(38, 8, 'Farhan Driansyah', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 3, 0.4, 0.8, 0.4, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(39, 8, 'Farhan Driansyah', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 4, 0.4, 0, 0.6, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(40, 8, 'Farhan Driansyah', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 5, 0.4, 0, 0.4, 0.4, 0.6, 0.6, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(41, 9, 'Siti Affira Nadini', '23', 'S1', 'Perempuan', 'Sering', 1, 0.8, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(42, 9, 'Siti Affira Nadini', '23', 'S1', 'Perempuan', 'Sering', 2, 0.8, 0.8, 0.4, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(43, 9, 'Siti Affira Nadini', '23', 'S1', 'Perempuan', 'Sering', 3, 0.4, 0.8, 0.6, 0.6, 0.4, 0.6, 0.4, 0.6, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(44, 9, 'Siti Affira Nadini', '23', 'S1', 'Perempuan', 'Sering', 4, 0.6, 0, 0.4, 0.2, 0.4, 0.2, 0.4, 0.2, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(45, 9, 'Siti Affira Nadini', '23', 'S1', 'Perempuan', 'Sering', 5, 0.6, 0, 0.4, 0.4, 0.2, 0.2, 0.4, 0.4, 0.2, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(46, 10, 'Muhammad Syaeful R', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.4, 0.6, 0.8, 0.4, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(47, 10, 'Muhammad Syaeful R', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 2, 0.6, 0.8, 0.6, 0.8, 0.4, 0.4, 0.8, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(48, 10, 'Muhammad Syaeful R', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 3, 0.4, 0.8, 0.4, 0.6, 0.6, 0.6, 0.8, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(49, 10, 'Muhammad Syaeful R', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 4, 0.4, 0, 0.4, 0.6, 0.2, 0.4, 0.6, 0.6, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(50, 10, 'Muhammad Syaeful R', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 5, 0.4, 0, 0.6, 0.4, 0.2, 0.2, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(51, 11, 'Dimas Suhartiyar', '23', 'SMA/SMK', 'Laki laki', 'Jarang', 1, 0.6, 0.8, 0.6, 0.6, 0.4, 0.8, 0.6, 0.8, 0.6, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(52, 11, 'Dimas Suhartiyar', '23', 'SMA/SMK', 'Laki laki', 'Jarang', 2, 0.6, 0.8, 0.8, 0.4, 0.6, 0.8, 0.6, 0.8, 0.6, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(53, 11, 'Dimas Suhartiyar', '23', 'SMA/SMK', 'Laki laki', 'Jarang', 3, 0.4, 0.8, 0.4, 0.6, 0.4, 0.8, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(54, 11, 'Dimas Suhartiyar', '23', 'SMA/SMK', 'Laki laki', 'Jarang', 4, 0.6, 0.8, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(55, 11, 'Dimas Suhartiyar', '23', 'SMA/SMK', 'Laki laki', 'Jarang', 5, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(56, 12, 'Siti Khusnul', '23', 'SMA/SMK', 'Perempuan', 'Cukup Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.4, 0.8, 0.8, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(57, 12, 'Siti Khusnul', '23', 'SMA/SMK', 'Perempuan', 'Cukup Sering', 2, 0.8, 0.8, 0.8, 0.6, 0.6, 0.8, 0.6, 0.4, 0.8, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(58, 12, 'Siti Khusnul', '23', 'SMA/SMK', 'Perempuan', 'Cukup Sering', 3, 0.6, 0.8, 0.6, 0.4, 0.8, 0.6, 0.4, 0.4, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(59, 12, 'Siti Khusnul', '23', 'SMA/SMK', 'Perempuan', 'Cukup Sering', 4, 0.4, 0, 0.6, 0.4, 0.4, 0.2, 0.6, 0.4, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(60, 12, 'Siti Khusnul', '23', 'SMA/SMK', 'Perempuan', 'Cukup Sering', 5, 0.4, 0, 0.6, 0.4, 0.4, 0.4, 0.6, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(61, 13, 'Pandu', '23', 'S1', 'Laki laki', 'Sangat Sering', 1, 0.6, 0.8, 0.6, 0.8, 0.8, 0.8, 0.6, 0.8, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(62, 13, 'Pandu', '23', 'S1', 'Laki laki', 'Sangat Sering', 2, 0.8, 0.8, 0.8, 0.8, 0.6, 0.6, 0.8, 0.6, 0.6, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(63, 13, 'Pandu', '23', 'S1', 'Laki laki', 'Sangat Sering', 3, 0.6, 0.8, 0.6, 0.6, 0.4, 0.8, 0.6, 0.6, 0.6, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(64, 13, 'Pandu', '23', 'S1', 'Laki laki', 'Sangat Sering', 4, 0.6, 0.8, 0.6, 0.4, 0.8, 0.8, 0.4, 0.8, 0.6, 0.2, '0000-00-00 00:00:00', NULL, NULL),
(65, 13, 'Pandu', '23', 'S1', 'Laki laki', 'Sangat Sering', 5, 0.2, 0, 0.4, 0.4, 0.4, 0.4, 0.4, 0.6, 0.4, 0, '0000-00-00 00:00:00', NULL, NULL),
(66, 14, 'Maria debora', '22', 'S1', 'Perempuan', 'Sangat Sering', 1, 0.8, 0.8, 0.8, 0.4, 0.8, 0.6, 0.6, 0.4, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(67, 14, 'Maria debora', '22', 'S1', 'Perempuan', 'Sangat Sering', 2, 0.6, 0.8, 0.8, 0.6, 0.8, 0.6, 0.6, 0.6, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(68, 14, 'Maria debora', '22', 'S1', 'Perempuan', 'Sangat Sering', 3, 0.4, 0.8, 0.8, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(69, 14, 'Maria debora', '22', 'S1', 'Perempuan', 'Sangat Sering', 4, 0.8, 0.8, 0.4, 0.6, 0.8, 0.6, 0.2, 0.6, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(70, 14, 'Maria debora', '22', 'S1', 'Perempuan', 'Sangat Sering', 5, 0, 0.8, 0.2, 0.2, 0.4, 0.4, 0.2, 0.4, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(71, 15, 'Dinda Lestari ', '24', 'SMA/SMK', 'Perempuan', 'Sering', 1, 0.6, 0.8, 0.6, 0.4, 0.8, 0.8, 0.4, 0.6, 0.8, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(72, 15, 'Dinda Lestari ', '24', 'SMA/SMK', 'Perempuan', 'Sering', 2, 0.6, 0.8, 0.8, 0.4, 0.6, 0.6, 0.4, 0.6, 0.8, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(73, 15, 'Dinda Lestari ', '24', 'SMA/SMK', 'Perempuan', 'Sering', 3, 0.6, 0, 0.6, 0.6, 0.4, 0.4, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(74, 15, 'Dinda Lestari ', '24', 'SMA/SMK', 'Perempuan', 'Sering', 4, 0.6, 0.8, 0.4, 0.6, 0.6, 0.6, 0.6, 0.6, 0.8, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(75, 15, 'Dinda Lestari ', '24', 'SMA/SMK', 'Perempuan', 'Sering', 5, 0.2, 0, 0.2, 0.2, 0.2, 0.4, 0.6, 0.4, 0.4, 0.2, '0000-00-00 00:00:00', NULL, NULL),
(76, 16, 'Reza Resandi ', '29', 'S1', 'Laki laki', 'Sangat Sering', 1, 0.8, 0.8, 0.6, 0.6, 0.6, 0.4, 0.6, 0.4, 0.8, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(77, 16, 'Reza Resandi ', '29', 'S1', 'Laki laki', 'Sangat Sering', 2, 0.8, 0, 0.6, 0.6, 0.4, 0.4, 0.8, 0.6, 0.8, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(78, 16, 'Reza Resandi ', '29', 'S1', 'Laki laki', 'Sangat Sering', 3, 0.4, 0.8, 0.6, 0.8, 0.4, 0.6, 0.4, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(79, 16, 'Reza Resandi ', '29', 'S1', 'Laki laki', 'Sangat Sering', 4, 0.6, 0.8, 0.6, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.2, '0000-00-00 00:00:00', NULL, NULL),
(80, 16, 'Reza Resandi ', '29', 'S1', 'Laki laki', 'Sangat Sering', 5, 0.2, 0, 0.2, 0.4, 0.4, 0.4, 0.4, 0.2, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(81, 17, 'Arin Andini ', '31', 'S1', 'Perempuan', 'Sangat Sering', 1, 0.8, 0.8, 0.6, 0.6, 0.6, 0.6, 0.8, 0.4, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(82, 17, 'Arin Andini ', '31', 'S1', 'Perempuan', 'Sangat Sering', 2, 0.6, 0.8, 0.8, 0.6, 0.6, 0.4, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(83, 17, 'Arin Andini ', '31', 'S1', 'Perempuan', 'Sangat Sering', 3, 0.6, 0, 0.6, 0.6, 0.4, 0.6, 0.6, 0.6, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(84, 17, 'Arin Andini ', '31', 'S1', 'Perempuan', 'Sangat Sering', 4, 0.8, 0, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(85, 17, 'Arin Andini ', '31', 'S1', 'Perempuan', 'Sangat Sering', 5, 0.4, 0, 0.4, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(86, 18, 'Firda Asyifa N', '23', 'SMA/SMK', 'Perempuan', 'Sering', 1, 0.8, 0.8, 0.8, 0.4, 0.6, 0.8, 0.6, 0.8, 0.6, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(87, 18, 'Firda Asyifa N', '23', 'SMA/SMK', 'Perempuan', 'Sering', 2, 0.8, 0.8, 0.4, 0.6, 0.4, 0.6, 0.6, 0.6, 0.8, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(88, 18, 'Firda Asyifa N', '23', 'SMA/SMK', 'Perempuan', 'Sering', 3, 0.4, 0.8, 0.4, 0.4, 0.4, 0.6, 0.6, 0.6, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(89, 18, 'Firda Asyifa N', '23', 'SMA/SMK', 'Perempuan', 'Sering', 4, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.4, 0.8, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(90, 18, 'Firda Asyifa N', '23', 'SMA/SMK', 'Perempuan', 'Sering', 5, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(91, 19, 'Mahaesa ', '20', 'SMA/SMK', 'Laki laki', 'Sering', 1, 0.6, 0.8, 0.8, 0.4, 0.6, 0.6, 0.6, 0.4, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(92, 19, 'Mahaesa ', '20', 'SMA/SMK', 'Laki laki', 'Sering', 2, 0.6, 0, 0.6, 0.6, 0.6, 0.4, 0.6, 0.8, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(93, 19, 'Mahaesa ', '20', 'SMA/SMK', 'Laki laki', 'Sering', 3, 0.4, 0.8, 0.6, 0.4, 0.6, 0.4, 0.6, 0.8, 0.4, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(94, 19, 'Mahaesa ', '20', 'SMA/SMK', 'Laki laki', 'Sering', 4, 0.6, 0, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(95, 19, 'Mahaesa ', '20', 'SMA/SMK', 'Laki laki', 'Sering', 5, 0.2, 0, 0.4, 0.4, 0.2, 0.4, 0.6, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(96, 20, 'Anggia', '27', 'S1', 'Perempuan', 'Sangat Sering', 1, 0.6, 0.8, 0.6, 0.8, 0.6, 0.6, 0.6, 0.4, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(97, 20, 'Anggia', '27', 'S1', 'Perempuan', 'Sangat Sering', 2, 0.4, 0.8, 0.6, 0.4, 0.6, 0.4, 0.6, 0.6, 0.8, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(98, 20, 'Anggia', '27', 'S1', 'Perempuan', 'Sangat Sering', 3, 0.4, 0.8, 0.6, 0.6, 0.4, 0.8, 0.4, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(99, 20, 'Anggia', '27', 'S1', 'Perempuan', 'Sangat Sering', 4, 0.8, 0.8, 0.6, 0.8, 0.6, 0.6, 0.4, 0.4, 0.4, 0.2, '0000-00-00 00:00:00', NULL, NULL),
(100, 20, 'Anggia', '27', 'S1', 'Perempuan', 'Sangat Sering', 5, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(101, 21, 'Zila Ayu ', '25', 'S1', 'Perempuan', 'Sangat Sering', 1, 0.6, 0.8, 0.8, 0.6, 0.8, 0.6, 0.4, 0.4, 0.6, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(102, 21, 'Zila Ayu ', '25', 'S1', 'Perempuan', 'Sangat Sering', 2, 0.6, 0.8, 0.4, 0.4, 0.6, 0.4, 0.6, 0.6, 0.8, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(103, 21, 'Zila Ayu ', '25', 'S1', 'Perempuan', 'Sangat Sering', 3, 0.4, 0.8, 0.4, 0.6, 0.6, 0.4, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(104, 21, 'Zila Ayu ', '25', 'S1', 'Perempuan', 'Sangat Sering', 4, 0.4, 0.8, 0.8, 0.6, 0.8, 0.6, 0.4, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(105, 21, 'Zila Ayu ', '25', 'S1', 'Perempuan', 'Sangat Sering', 5, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(106, 22, 'Muhamad Syaeful Ramdani', '23', 'S1', 'Laki laki', 'Jarang', 1, 0.4, 0.8, 0.4, 0.4, 0.6, 0.6, 0.6, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(107, 22, 'Muhamad Syaeful Ramdani', '23', 'S1', 'Laki laki', 'Jarang', 2, 0.4, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(108, 22, 'Muhamad Syaeful Ramdani', '23', 'S1', 'Laki laki', 'Jarang', 3, 0.4, 0.8, 0.4, 0.4, 0.6, 0.6, 0.6, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(109, 22, 'Muhamad Syaeful Ramdani', '23', 'S1', 'Laki laki', 'Jarang', 4, 0.4, 0.8, 0.4, 0.4, 0.6, 0.6, 0.6, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(110, 22, 'Muhamad Syaeful Ramdani', '23', 'S1', 'Laki laki', 'Jarang', 5, 0.4, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(111, 23, 'alif', '25', 'S3', 'Laki laki', 'Sangat Sering', 1, 0.2, 0.8, 0.2, 0, 0, 0, 0, 0, 0, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(112, 23, 'alif', '25', 'S3', 'Laki laki', 'Sangat Sering', 2, 0, 0.8, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.6, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(113, 23, 'alif', '25', 'S3', 'Laki laki', 'Sangat Sering', 3, 0.4, 0.8, 0.2, 0.2, 0.4, 0.2, 0.4, 0.2, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(114, 23, 'alif', '25', 'S3', 'Laki laki', 'Sangat Sering', 4, 0.2, 0.8, 0.2, 0.2, 0.2, 0.2, 0, 0.2, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(115, 23, 'alif', '25', 'S3', 'Laki laki', 'Sangat Sering', 5, 0.4, 0.8, 0.4, 0, 0.2, 0.4, 0.2, 0.2, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(116, 24, 'Mheldy Handayani', '28', 'SMA/SMK', 'Laki laki', 'Jarang', 1, 0.6, 0.8, 0.4, 0.6, 0.4, 0.8, 0.6, 0.6, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(117, 24, 'Mheldy Handayani', '28', 'SMA/SMK', 'Laki laki', 'Jarang', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.8, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(118, 24, 'Mheldy Handayani', '28', 'SMA/SMK', 'Laki laki', 'Jarang', 3, 0.8, 0.8, 0.4, 0.4, 0.8, 0.6, 0.4, 0.4, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(119, 24, 'Mheldy Handayani', '28', 'SMA/SMK', 'Laki laki', 'Jarang', 4, 0.4, 0.8, 0.6, 0.6, 0.6, 0.4, 0.8, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(120, 24, 'Mheldy Handayani', '28', 'SMA/SMK', 'Laki laki', 'Jarang', 5, 0.4, 0.8, 0.6, 0.6, 0.6, 0.4, 0.6, 0.6, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(121, 25, 'Arya Dwi Saputra', '24', 'S1', 'Laki laki', 'Sering', 1, 0.6, 0.8, 0.6, 0.4, 0.6, 0.6, 0.6, 0.4, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(122, 25, 'Arya Dwi Saputra', '24', 'S1', 'Laki laki', 'Sering', 2, 0.8, 0.8, 0.6, 0.6, 0.8, 0.8, 0.8, 0.6, 0.6, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(123, 25, 'Arya Dwi Saputra', '24', 'S1', 'Laki laki', 'Sering', 3, 0.4, 0.8, 0.8, 0.6, 0.4, 0.4, 0.8, 0.4, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(124, 25, 'Arya Dwi Saputra', '24', 'S1', 'Laki laki', 'Sering', 4, 0.6, 0, 0.6, 0.4, 0.4, 0.6, 0.4, 0.4, 0.4, 0.2, '0000-00-00 00:00:00', NULL, NULL),
(125, 25, 'Arya Dwi Saputra', '24', 'S1', 'Laki laki', 'Sering', 5, 0.6, 0, 0.6, 0.6, 0.4, 0.6, 0.6, 0.2, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(126, 26, 'Adilah Permata', '24', 'S1', 'Perempuan', 'Sering', 1, 0.6, 0.8, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(127, 26, 'Adilah Permata', '24', 'S1', 'Perempuan', 'Sering', 2, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(128, 26, 'Adilah Permata', '24', 'S1', 'Perempuan', 'Sering', 3, 0.6, 0.8, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(129, 26, 'Adilah Permata', '24', 'S1', 'Perempuan', 'Sering', 4, 0.6, 0, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.2, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(130, 26, 'Adilah Permata', '24', 'S1', 'Perempuan', 'Sering', 5, 0.6, 0, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(131, 27, 'Ekardo Ramadhan', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 1, 0.6, 0.8, 0.8, 0.6, 0.6, 0.8, 0.8, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(132, 27, 'Ekardo Ramadhan', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 2, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(133, 27, 'Ekardo Ramadhan', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 3, 0.6, 0.8, 0.8, 0.6, 0.4, 0.8, 0.8, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(134, 27, 'Ekardo Ramadhan', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 4, 0.4, 0, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(135, 27, 'Ekardo Ramadhan', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 5, 0.4, 0, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(136, 28, 'Catharina Fransisca', '22', 'SMA/SMK', 'Perempuan', 'Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(137, 28, 'Catharina Fransisca', '22', 'SMA/SMK', 'Perempuan', 'Sering', 2, 0.8, 0.8, 0.6, 0.8, 0.6, 0.6, 0.6, 0.8, 0.8, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(138, 28, 'Catharina Fransisca', '22', 'SMA/SMK', 'Perempuan', 'Sering', 3, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(139, 28, 'Catharina Fransisca', '22', 'SMA/SMK', 'Perempuan', 'Sering', 4, 0.4, 0, 0.2, 0.2, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(140, 28, 'Catharina Fransisca', '22', 'SMA/SMK', 'Perempuan', 'Sering', 5, 0.6, 0, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(141, 29, 'Margi Utami', '23', 'S1', 'Perempuan', 'Sering', 1, 0.6, 0.8, 0.6, 0.8, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(142, 29, 'Margi Utami', '23', 'S1', 'Perempuan', 'Sering', 2, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.6, 0.6, 0.8, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(143, 29, 'Margi Utami', '23', 'S1', 'Perempuan', 'Sering', 3, 0.6, 0.8, 0.6, 0.8, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(144, 29, 'Margi Utami', '23', 'S1', 'Perempuan', 'Sering', 4, 0.4, 0.8, 0.4, 0.6, 0.6, 0.6, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(145, 29, 'Margi Utami', '23', 'S1', 'Perempuan', 'Sering', 5, 0.4, 0.8, 0.4, 0.6, 0.6, 0.6, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(146, 30, 'Yaumil Annisa', '23', 'S1', 'Perempuan', 'Cukup Sering', 1, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.6, 0.6, 0.8, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(147, 30, 'Yaumil Annisa', '23', 'S1', 'Perempuan', 'Cukup Sering', 2, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(148, 30, 'Yaumil Annisa', '23', 'S1', 'Perempuan', 'Cukup Sering', 3, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.6, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(149, 30, 'Yaumil Annisa', '23', 'S1', 'Perempuan', 'Cukup Sering', 4, 0.4, 0, 0.6, 0.6, 0.6, 0.4, 0.6, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(150, 30, 'Yaumil Annisa', '23', 'S1', 'Perempuan', 'Cukup Sering', 5, 0.4, 0, 0.6, 0.6, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(151, 31, 'Enrico Sartonoo', '22', 'S1', 'Laki laki', 'Cukup Sering', 1, 0.6, 0.8, 0.6, 0.8, 0.8, 0.8, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(152, 31, 'Enrico Sartonoo', '22', 'S1', 'Laki laki', 'Cukup Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.8, 0.8, 0.8, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(153, 31, 'Enrico Sartonoo', '22', 'S1', 'Laki laki', 'Cukup Sering', 3, 0.6, 0.8, 0.6, 0.6, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(154, 31, 'Enrico Sartonoo', '22', 'S1', 'Laki laki', 'Cukup Sering', 4, 0.4, 0, 0.4, 0.4, 0.6, 0.6, 0.4, 0.2, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(155, 31, 'Enrico Sartonoo', '22', 'S1', 'Laki laki', 'Cukup Sering', 5, 0.4, 0, 0.4, 0.4, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(156, 32, 'Fitriyani', '23', 'S1', 'Laki laki', 'Sering', 1, 0.6, 0.8, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(157, 32, 'Fitriyani', '23', 'S1', 'Laki laki', 'Sering', 2, 0.6, 0.8, 0.6, 0.8, 0.6, 0.6, 0.8, 0.8, 0.8, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(158, 32, 'Fitriyani', '23', 'S1', 'Laki laki', 'Sering', 3, 0.6, 0.8, 0.6, 0.6, 0.4, 0.4, 0.4, 0.4, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(159, 32, 'Fitriyani', '23', 'S1', 'Laki laki', 'Sering', 4, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.2, 0.2, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(160, 32, 'Fitriyani', '23', 'S1', 'Laki laki', 'Sering', 5, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(161, 33, 'Trisea Gylvyn', '22', 'S1', 'Perempuan', 'Cukup Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(162, 33, 'Trisea Gylvyn', '22', 'S1', 'Perempuan', 'Cukup Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(163, 33, 'Trisea Gylvyn', '22', 'S1', 'Perempuan', 'Cukup Sering', 3, 0.6, 0.8, 0.6, 0.4, 0.4, 0.6, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(164, 33, 'Trisea Gylvyn', '22', 'S1', 'Perempuan', 'Cukup Sering', 4, 0.4, 0.8, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(165, 33, 'Trisea Gylvyn', '22', 'S1', 'Perempuan', 'Cukup Sering', 5, 0.4, 0.8, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(166, 34, 'Jihan M', '22', 'S1', 'Perempuan', 'Cukup Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(167, 34, 'Jihan M', '22', 'S1', 'Perempuan', 'Cukup Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(168, 34, 'Jihan M', '22', 'S1', 'Perempuan', 'Cukup Sering', 3, 0.6, 0.8, 0.6, 0.4, 0.4, 0.6, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(169, 34, 'Jihan M', '22', 'S1', 'Perempuan', 'Cukup Sering', 4, 0.6, 0, 0.4, 0.4, 0.4, 0.4, 0.4, 0.2, 0.2, 0.2, '0000-00-00 00:00:00', NULL, NULL),
(170, 34, 'Jihan M', '22', 'S1', 'Perempuan', 'Cukup Sering', 5, 0.6, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.2, 0.2, 0.2, '0000-00-00 00:00:00', NULL, NULL),
(171, 35, 'Restu Putra Rezky P', '24', 'S1', 'Laki laki', 'Jarang', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.8, 0.8, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(172, 35, 'Restu Putra Rezky P', '24', 'S1', 'Laki laki', 'Jarang', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.8, 0.8, 0.8, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(173, 35, 'Restu Putra Rezky P', '24', 'S1', 'Laki laki', 'Jarang', 3, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.8, 0.8, 0.6, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(174, 35, 'Restu Putra Rezky P', '24', 'S1', 'Laki laki', 'Jarang', 4, 0.6, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.2, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(175, 35, 'Restu Putra Rezky P', '24', 'S1', 'Laki laki', 'Jarang', 5, 0.4, 0, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(176, 36, 'Kartika maria', '22', 'SMA/SMK', 'Perempuan', 'Cukup Sering', 1, 0.4, 0.8, 0.6, 0.6, 0.4, 0.4, 0.6, 0.6, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(177, 36, 'Kartika maria', '22', 'SMA/SMK', 'Perempuan', 'Cukup Sering', 2, 0.4, 0.8, 0.6, 0.4, 0.4, 0.4, 0.4, 0.6, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(178, 36, 'Kartika maria', '22', 'SMA/SMK', 'Perempuan', 'Cukup Sering', 3, 0.4, 0, 0.4, 0.4, 0.4, 0.2, 0.4, 0.6, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(179, 36, 'Kartika maria', '22', 'SMA/SMK', 'Perempuan', 'Cukup Sering', 4, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.4, 0.6, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(180, 36, 'Kartika maria', '22', 'SMA/SMK', 'Perempuan', 'Cukup Sering', 5, 0.4, 0, 0.4, 0.4, 0.4, 0.2, 0.2, 0.6, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(181, 37, 'Upiq laela', '33', 'S1', 'Perempuan', 'Sering', 1, 0.6, 0, 0.6, 0.6, 0.4, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(182, 37, 'Upiq laela', '33', 'S1', 'Perempuan', 'Sering', 2, 0.6, 0, 0.6, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(183, 37, 'Upiq laela', '33', 'S1', 'Perempuan', 'Sering', 3, 0.6, 0, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(184, 37, 'Upiq laela', '33', 'S1', 'Perempuan', 'Sering', 4, 0.6, 0, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(185, 37, 'Upiq laela', '33', 'S1', 'Perempuan', 'Sering', 5, 0.6, 0, 0.2, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(186, 38, 'Hilman Naufal', '22', 'SMA/SMK', 'Laki laki', 'Jarang', 1, 0.6, 0.8, 0.2, 0.6, 0.8, 0.6, 0.6, 0.8, 0.8, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(187, 38, 'Hilman Naufal', '22', 'SMA/SMK', 'Laki laki', 'Jarang', 2, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(188, 38, 'Hilman Naufal', '22', 'SMA/SMK', 'Laki laki', 'Jarang', 3, 0.6, 0.8, 0.4, 0.6, 0.8, 0.6, 0.6, 0.8, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(189, 38, 'Hilman Naufal', '22', 'SMA/SMK', 'Laki laki', 'Jarang', 4, 0.6, 0.8, 0.4, 0.6, 0.8, 0.6, 0.6, 0.8, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(190, 38, 'Hilman Naufal', '22', 'SMA/SMK', 'Laki laki', 'Jarang', 5, 0.6, 0.8, 0.6, 0.6, 0.8, 0.6, 0.6, 0.8, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(191, 39, 'M Agung Ardiansyah', '22', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 1, 0.8, 0.8, 0.2, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(192, 39, 'M Agung Ardiansyah', '22', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 2, 0.8, 0.8, 0.8, 0.6, 0.6, 0.6, 0.8, 0.8, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(193, 39, 'M Agung Ardiansyah', '22', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 3, 0.6, 0.8, 0.2, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(194, 39, 'M Agung Ardiansyah', '22', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 4, 0.2, 0.8, 0.2, 0.6, 0.6, 0.6, 0.2, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(195, 39, 'M Agung Ardiansyah', '22', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 5, 0.2, 0.8, 0.6, 0.6, 0.6, 0.6, 0.2, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(196, 40, 'Dimas Zulfikri', '24', 'SMA/SMK', 'Laki laki', 'Jarang', 1, 0.6, 0.8, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(197, 40, 'Dimas Zulfikri', '24', 'SMA/SMK', 'Laki laki', 'Jarang', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.8, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(198, 40, 'Dimas Zulfikri', '24', 'SMA/SMK', 'Laki laki', 'Jarang', 3, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.8, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(199, 40, 'Dimas Zulfikri', '24', 'SMA/SMK', 'Laki laki', 'Jarang', 4, 0.4, 0.8, 0.6, 0.2, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(200, 40, 'Dimas Zulfikri', '24', 'SMA/SMK', 'Laki laki', 'Jarang', 5, 0.4, 0, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(201, 41, 'Supandi', '22', 'SMA/SMK', 'Laki laki', 'Jarang', 1, 0.6, 0.8, 0.6, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(202, 41, 'Supandi', '22', 'SMA/SMK', 'Laki laki', 'Jarang', 2, 0.6, 0.8, 0.6, 0.8, 0.8, 0.8, 0.6, 0.6, 0.6, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(203, 41, 'Supandi', '22', 'SMA/SMK', 'Laki laki', 'Jarang', 3, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(204, 41, 'Supandi', '22', 'SMA/SMK', 'Laki laki', 'Jarang', 4, 0.4, 0.8, 0.4, 0.6, 0.4, 0.4, 0.4, 0.4, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(205, 41, 'Supandi', '22', 'SMA/SMK', 'Laki laki', 'Jarang', 5, 0.4, 0.8, 0.4, 0.6, 0.4, 0.4, 0.4, 0.4, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(206, 42, 'Adi Syafrizal', '25', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 1, 0.8, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(207, 42, 'Adi Syafrizal', '25', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 2, 0.8, 0.8, 0.6, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(208, 42, 'Adi Syafrizal', '25', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 3, 0.8, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(209, 42, 'Adi Syafrizal', '25', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 4, 0.6, 0.8, 0.4, 0.4, 0.6, 0.6, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(210, 42, 'Adi Syafrizal', '25', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 5, 0.6, 0.8, 0.4, 0.4, 0.6, 0.6, 0.6, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(211, 43, 'Panji Eka Saputra', '23', 'SMA/SMK', 'Laki laki', 'Jarang', 1, 0.4, 0.8, 0.4, 0.4, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(212, 43, 'Panji Eka Saputra', '23', 'SMA/SMK', 'Laki laki', 'Jarang', 2, 0.4, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(213, 43, 'Panji Eka Saputra', '23', 'SMA/SMK', 'Laki laki', 'Jarang', 3, 0.4, 0, 0.4, 0.4, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(214, 43, 'Panji Eka Saputra', '23', 'SMA/SMK', 'Laki laki', 'Jarang', 4, 0.2, 0, 0.4, 0.4, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(215, 43, 'Panji Eka Saputra', '23', 'SMA/SMK', 'Laki laki', 'Jarang', 5, 0.2, 0, 0.4, 0.4, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(216, 44, 'Nouval Rabbani', '23', 'SMA/SMK', 'Laki laki', 'Jarang', 1, 0.6, 0.8, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, 0.8, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(217, 44, 'Nouval Rabbani', '23', 'SMA/SMK', 'Laki laki', 'Jarang', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.8, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(218, 44, 'Nouval Rabbani', '23', 'SMA/SMK', 'Laki laki', 'Jarang', 3, 0.6, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.6, 0.8, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(219, 44, 'Nouval Rabbani', '23', 'SMA/SMK', 'Laki laki', 'Jarang', 4, 0.4, 0, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(220, 44, 'Nouval Rabbani', '23', 'SMA/SMK', 'Laki laki', 'Jarang', 5, 0.4, 0, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(221, 45, 'Bayu Permana', '26', 'SMP', 'Laki laki', 'Jarang', 1, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(222, 45, 'Bayu Permana', '26', 'SMP', 'Laki laki', 'Jarang', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(223, 45, 'Bayu Permana', '26', 'SMP', 'Laki laki', 'Jarang', 3, 0.4, 0, 0.4, 0.6, 0.2, 0.2, 0.4, 0.4, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(224, 45, 'Bayu Permana', '26', 'SMP', 'Laki laki', 'Jarang', 4, 0.2, 0, 0.2, 0.2, 0.2, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(225, 45, 'Bayu Permana', '26', 'SMP', 'Laki laki', 'Jarang', 5, 0.4, 0, 0.2, 0.2, 0.2, 0.2, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(226, 46, 'Alvian', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 1, 0.4, 0.8, 0.6, 0.6, 0.6, 0.4, 0.6, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(227, 46, 'Alvian', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(228, 46, 'Alvian', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 3, 0.6, 0.8, 0.4, 0.6, 0.6, 0.6, 0.6, 0.4, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(229, 46, 'Alvian', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 4, 0.4, 0.8, 0.4, 0.2, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(230, 46, 'Alvian', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 5, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(231, 47, 'Agil Saputro', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 1, 0.4, 0.8, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(232, 47, 'Agil Saputro', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 2, 0.6, 0.8, 0.8, 0.8, 0.8, 0.8, 0.6, 0.6, 0.8, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(233, 47, 'Agil Saputro', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 3, 0.4, 0, 0.6, 0.4, 0.4, 0.4, 0.6, 0.6, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(234, 47, 'Agil Saputro', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 4, 0.2, 0, 0.4, 0.4, 0.2, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(235, 47, 'Agil Saputro', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 5, 0.2, 0, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(236, 48, 'Candyco', '26', 'S1', 'Laki laki', 'Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(237, 48, 'Candyco', '26', 'S1', 'Laki laki', 'Sering', 2, 0.8, 0.8, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(238, 48, 'Candyco', '26', 'S1', 'Laki laki', 'Sering', 3, 0.6, 0, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(239, 48, 'Candyco', '26', 'S1', 'Laki laki', 'Sering', 4, 0.6, 0, 0.4, 0.4, 0.2, 0.2, 0.2, 0.2, 0.2, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(240, 48, 'Candyco', '26', 'S1', 'Laki laki', 'Sering', 5, 0.6, 0, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(241, 49, 'Habibi R', '23', 'S1', 'Laki laki', 'Jarang', 1, 0.6, 0.8, 0.4, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(242, 49, 'Habibi R', '23', 'S1', 'Laki laki', 'Jarang', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(243, 49, 'Habibi R', '23', 'S1', 'Laki laki', 'Jarang', 3, 0.6, 0, 0.6, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(244, 49, 'Habibi R', '23', 'S1', 'Laki laki', 'Jarang', 4, 0.4, 0, 0.4, 0.6, 0.4, 0.4, 0.2, 0.2, 0.2, 0.2, '0000-00-00 00:00:00', NULL, NULL),
(245, 49, 'Habibi R', '23', 'S1', 'Laki laki', 'Jarang', 5, 0.6, 0, 0.6, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(246, 50, 'Egi Agustian ', '23', 'S1', 'Laki laki', 'Cukup Sering', 1, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(247, 50, 'Egi Agustian ', '23', 'S1', 'Laki laki', 'Cukup Sering', 2, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(248, 50, 'Egi Agustian ', '23', 'S1', 'Laki laki', 'Cukup Sering', 3, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(249, 50, 'Egi Agustian ', '23', 'S1', 'Laki laki', 'Cukup Sering', 4, 0.4, 0, 0.6, 0.6, 0.4, 0.6, 0.4, 0.6, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(250, 50, 'Egi Agustian ', '23', 'S1', 'Laki laki', 'Cukup Sering', 5, 0.6, 0, 0.4, 0.4, 0.6, 0.4, 0.6, 0.4, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(251, 51, 'Deni Rahmansyah', '20', 'SMP', 'Laki laki', 'Cukup Sering', 1, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(252, 51, 'Deni Rahmansyah', '20', 'SMP', 'Laki laki', 'Cukup Sering', 2, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.6, 0.8, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(253, 51, 'Deni Rahmansyah', '20', 'SMP', 'Laki laki', 'Cukup Sering', 3, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.8, 0.6, 0.8, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(254, 51, 'Deni Rahmansyah', '20', 'SMP', 'Laki laki', 'Cukup Sering', 4, 0.4, 0, 0.4, 0.6, 0.4, 0.6, 0.4, 0.2, 0.8, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(255, 51, 'Deni Rahmansyah', '20', 'SMP', 'Laki laki', 'Cukup Sering', 5, 0.4, 0, 0.4, 0.6, 0.4, 0.6, 0.4, 0.4, 0.8, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(256, 52, 'Arip Darmawan', '22', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 1, 0.8, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(257, 52, 'Arip Darmawan', '22', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 2, 0.8, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(258, 52, 'Arip Darmawan', '22', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 3, 0.6, 0.8, 0.6, 0.6, 0.4, 0.4, 0.4, 0.4, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(259, 52, 'Arip Darmawan', '22', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 4, 0.4, 0, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(260, 52, 'Arip Darmawan', '22', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 5, 0.6, 0, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(261, 53, 'Sandika', '22', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(262, 53, 'Sandika', '22', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(263, 53, 'Sandika', '22', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 3, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(264, 53, 'Sandika', '22', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 4, 0.4, 0, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(265, 53, 'Sandika', '22', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 5, 0.4, 0, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(266, 54, 'Ratu Siti Alda R', '23', 'SMA/SMK', 'Perempuan', 'Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(267, 54, 'Ratu Siti Alda R', '23', 'SMA/SMK', 'Perempuan', 'Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.8, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(268, 54, 'Ratu Siti Alda R', '23', 'SMA/SMK', 'Perempuan', 'Sering', 3, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(269, 54, 'Ratu Siti Alda R', '23', 'SMA/SMK', 'Perempuan', 'Sering', 4, 0.4, 0, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(270, 54, 'Ratu Siti Alda R', '23', 'SMA/SMK', 'Perempuan', 'Sering', 5, 0.4, 0, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(271, 55, 'Ratu Adys', '23', 'SMA/SMK', 'Perempuan', 'Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(272, 55, 'Ratu Adys', '23', 'SMA/SMK', 'Perempuan', 'Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(273, 55, 'Ratu Adys', '23', 'SMA/SMK', 'Perempuan', 'Sering', 3, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(274, 55, 'Ratu Adys', '23', 'SMA/SMK', 'Perempuan', 'Sering', 4, 0.4, 0, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(275, 55, 'Ratu Adys', '23', 'SMA/SMK', 'Perempuan', 'Sering', 5, 0.4, 0, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(276, 56, 'Ilham Yahya', '25', 'S1', 'Laki laki', 'Cukup Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(277, 56, 'Ilham Yahya', '25', 'S1', 'Laki laki', 'Cukup Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(278, 56, 'Ilham Yahya', '25', 'S1', 'Laki laki', 'Cukup Sering', 3, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(279, 56, 'Ilham Yahya', '25', 'S1', 'Laki laki', 'Cukup Sering', 4, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(280, 56, 'Ilham Yahya', '25', 'S1', 'Laki laki', 'Cukup Sering', 5, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(281, 57, 'Lia', '23', 'SMA/SMK', 'Perempuan', 'Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(282, 57, 'Lia', '23', 'SMA/SMK', 'Perempuan', 'Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(283, 57, 'Lia', '23', 'SMA/SMK', 'Perempuan', 'Sering', 3, 0.6, 0.8, 0.4, 0.6, 0.4, 0.6, 0.4, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(284, 57, 'Lia', '23', 'SMA/SMK', 'Perempuan', 'Sering', 4, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(285, 57, 'Lia', '23', 'SMA/SMK', 'Perempuan', 'Sering', 5, 0.6, 0.8, 0.4, 0.2, 0.4, 0.6, 0.4, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(286, 58, 'Riri', '24', 'S3', 'Perempuan', 'Jarang', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(287, 58, 'Riri', '24', 'S3', 'Perempuan', 'Jarang', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(288, 58, 'Riri', '24', 'S3', 'Perempuan', 'Jarang', 3, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(289, 58, 'Riri', '24', 'S3', 'Perempuan', 'Jarang', 4, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.4, 0.6, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(290, 58, 'Riri', '24', 'S3', 'Perempuan', 'Jarang', 5, 0.6, 0, 0.6, 0.6, 0.6, 0.6, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(291, 59, 'Rani', '22', 'SMA/SMK', 'Perempuan', 'Jarang', 1, 0.6, 0, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(292, 59, 'Rani', '22', 'SMA/SMK', 'Perempuan', 'Jarang', 2, 0.6, 0, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(293, 59, 'Rani', '22', 'SMA/SMK', 'Perempuan', 'Jarang', 3, 0.6, 0, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(294, 59, 'Rani', '22', 'SMA/SMK', 'Perempuan', 'Jarang', 4, 0.6, 0, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(295, 59, 'Rani', '22', 'SMA/SMK', 'Perempuan', 'Jarang', 5, 0.6, 0, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(296, 60, 'Junaedi', '22', 'SMA/SMK', 'Laki laki', 'Jarang', 1, 0.4, 0.8, 0.4, 0.4, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(297, 60, 'Junaedi', '22', 'SMA/SMK', 'Laki laki', 'Jarang', 2, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(298, 60, 'Junaedi', '22', 'SMA/SMK', 'Laki laki', 'Jarang', 3, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(299, 60, 'Junaedi', '22', 'SMA/SMK', 'Laki laki', 'Jarang', 4, 0.4, 0.8, 0.4, 0.4, 0.6, 0.6, 0.4, 0.4, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(300, 60, 'Junaedi', '22', 'SMA/SMK', 'Laki laki', 'Jarang', 5, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(301, 61, 'Putra', '24', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 1, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(302, 61, 'Putra', '24', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 2, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(303, 61, 'Putra', '24', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 3, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.2, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(304, 61, 'Putra', '24', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 4, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.6, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(305, 61, 'Putra', '24', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 5, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.2, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(306, 62, 'RIZKY', '23', 'SMA/SMK', 'Laki laki', 'Sangat Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(307, 62, 'RIZKY', '23', 'SMA/SMK', 'Laki laki', 'Sangat Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.4, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(308, 62, 'RIZKY', '23', 'SMA/SMK', 'Laki laki', 'Sangat Sering', 3, 0.6, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(309, 62, 'RIZKY', '23', 'SMA/SMK', 'Laki laki', 'Sangat Sering', 4, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(310, 62, 'RIZKY', '23', 'SMA/SMK', 'Laki laki', 'Sangat Sering', 5, 0.2, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(311, 63, 'Adi pangestu', '25', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 1, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(312, 63, 'Adi pangestu', '25', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 2, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(313, 63, 'Adi pangestu', '25', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 3, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(314, 63, 'Adi pangestu', '25', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 4, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(315, 63, 'Adi pangestu', '25', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 5, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(316, 64, 'Kurniawan', '24', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 1, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(317, 64, 'Kurniawan', '24', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 2, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(318, 64, 'Kurniawan', '24', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 3, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(319, 64, 'Kurniawan', '24', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 4, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(320, 64, 'Kurniawan', '24', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 5, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(321, 65, 'Rully kurniawan', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(322, 65, 'Rully kurniawan', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(323, 65, 'Rully kurniawan', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 3, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(324, 65, 'Rully kurniawan', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 4, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(325, 65, 'Rully kurniawan', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 5, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL);
INSERT INTO `respon` (`id_respon`, `id_user`, `nama`, `umur`, `pendidikan`, `jenis_kelamin`, `frekuensi`, `id_marketplace`, `kelengkapan`, `estimasi_pengiriman`, `user_experience`, `respon_pelayanan`, `metode_pembayaran`, `kemudahan_fitur`, `kepercayaan`, `penanganan_komplain`, `cashback`, `pengiriman`, `created_date`, `updated_by`, `updated_date`) VALUES
(326, 66, 'nurmala', '24', 'SMA/SMK', 'Perempuan', 'Sangat Sering', 1, 0.6, 0.8, 0.4, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(327, 66, 'nurmala', '24', 'SMA/SMK', 'Perempuan', 'Sangat Sering', 2, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(328, 66, 'nurmala', '24', 'SMA/SMK', 'Perempuan', 'Sangat Sering', 3, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(329, 66, 'nurmala', '24', 'SMA/SMK', 'Perempuan', 'Sangat Sering', 4, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(330, 66, 'nurmala', '24', 'SMA/SMK', 'Perempuan', 'Sangat Sering', 5, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(331, 67, 'bagas Ramadhan', '23', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 1, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(332, 67, 'bagas Ramadhan', '23', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 2, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(333, 67, 'bagas Ramadhan', '23', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 3, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(334, 67, 'bagas Ramadhan', '23', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 4, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(335, 67, 'bagas Ramadhan', '23', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 5, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(336, 68, 'Deny', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(337, 68, 'Deny', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(338, 68, 'Deny', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 3, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(339, 68, 'Deny', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 4, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(340, 68, 'Deny', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 5, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(341, 69, 'ridwan', '25', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 1, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(342, 69, 'ridwan', '25', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 2, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(343, 69, 'ridwan', '25', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 3, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(344, 69, 'ridwan', '25', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 4, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(345, 69, 'ridwan', '25', 'SMA/SMK', 'Laki laki', 'Sangat Jarang', 5, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(346, 70, 'Indah', '23', 'SMA/SMK', 'Perempuan', 'Sangat Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(347, 70, 'Indah', '23', 'SMA/SMK', 'Perempuan', 'Sangat Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(348, 70, 'Indah', '23', 'SMA/SMK', 'Perempuan', 'Sangat Sering', 3, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(349, 70, 'Indah', '23', 'SMA/SMK', 'Perempuan', 'Sangat Sering', 4, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(350, 70, 'Indah', '23', 'SMA/SMK', 'Perempuan', 'Sangat Sering', 5, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(351, 71, 'Andika pratama', '25', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(352, 71, 'Andika pratama', '25', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(353, 71, 'Andika pratama', '25', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 3, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(354, 71, 'Andika pratama', '25', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 4, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(355, 71, 'Andika pratama', '25', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 5, 0.2, 0, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(356, 72, 'Nabila Shafa', '23', 'SMA/SMK', 'Perempuan', 'Cukup Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(357, 72, 'Nabila Shafa', '23', 'SMA/SMK', 'Perempuan', 'Cukup Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(358, 72, 'Nabila Shafa', '23', 'SMA/SMK', 'Perempuan', 'Cukup Sering', 3, 0.4, 0.8, 0.6, 0.6, 0.4, 0.4, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(359, 72, 'Nabila Shafa', '23', 'SMA/SMK', 'Perempuan', 'Cukup Sering', 4, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(360, 72, 'Nabila Shafa', '23', 'SMA/SMK', 'Perempuan', 'Cukup Sering', 5, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(361, 73, 'Shinta Dwi Utari', '23', 'S1', 'Perempuan', 'Cukup Sering', 1, 0.4, 0.8, 0.4, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(362, 73, 'Shinta Dwi Utari', '23', 'S1', 'Perempuan', 'Cukup Sering', 2, 0.6, 0.8, 0.6, 0.4, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(363, 73, 'Shinta Dwi Utari', '23', 'S1', 'Perempuan', 'Cukup Sering', 3, 0.4, 0.8, 0.4, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(364, 73, 'Shinta Dwi Utari', '23', 'S1', 'Perempuan', 'Cukup Sering', 4, 0.4, 0, 0.4, 0.6, 0.4, 0.4, 0.6, 0.6, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(365, 73, 'Shinta Dwi Utari', '23', 'S1', 'Perempuan', 'Cukup Sering', 5, 0.6, 0, 0.6, 0.4, 0.6, 0.4, 0.6, 0.4, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(366, 74, 'Risma Anzani', '23', 'S1', 'Perempuan', 'Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(367, 74, 'Risma Anzani', '23', 'S1', 'Perempuan', 'Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(368, 74, 'Risma Anzani', '23', 'S1', 'Perempuan', 'Sering', 3, 0.4, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.4, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(369, 74, 'Risma Anzani', '23', 'S1', 'Perempuan', 'Sering', 4, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(370, 74, 'Risma Anzani', '23', 'S1', 'Perempuan', 'Sering', 5, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(371, 75, 'Vika Aditia', '23', 'S1', 'Perempuan', 'Sering', 1, 0.6, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(372, 75, 'Vika Aditia', '23', 'S1', 'Perempuan', 'Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(373, 75, 'Vika Aditia', '23', 'S1', 'Perempuan', 'Sering', 3, 0.6, 0.8, 0.4, 0.6, 0.4, 0.4, 0.4, 0.6, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(374, 75, 'Vika Aditia', '23', 'S1', 'Perempuan', 'Sering', 4, 0.4, 0.8, 0.4, 0.4, 0.4, 0.6, 0.4, 0.4, 0.2, 0.2, '0000-00-00 00:00:00', NULL, NULL),
(375, 75, 'Vika Aditia', '23', 'S1', 'Perempuan', 'Sering', 5, 0.4, 0.8, 0.4, 0.6, 0.4, 0.4, 0.4, 0.6, 0.2, 0.2, '0000-00-00 00:00:00', NULL, NULL),
(376, 76, 'Syfa Rachmananingsih', '23', 'S1', 'Perempuan', 'Sering', 1, 0.4, 0.8, 0.6, 0.6, 0.4, 0.6, 0.6, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(377, 76, 'Syfa Rachmananingsih', '23', 'S1', 'Perempuan', 'Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.8, 0.8, 0.8, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(378, 76, 'Syfa Rachmananingsih', '23', 'S1', 'Perempuan', 'Sering', 3, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.4, 0.6, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(379, 76, 'Syfa Rachmananingsih', '23', 'S1', 'Perempuan', 'Sering', 4, 0.4, 0, 0.4, 0.4, 0.2, 0.4, 0.2, 0.4, 0.4, 0.2, '0000-00-00 00:00:00', NULL, NULL),
(380, 76, 'Syfa Rachmananingsih', '23', 'S1', 'Perempuan', 'Sering', 5, 0.4, 0, 0.4, 0.2, 0.4, 0.6, 0.4, 0.4, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(381, 77, 'Febi Rolenta', '20', 'SMA/SMK', 'Perempuan', 'Sering', 1, 0.4, 0.8, 0.4, 0.6, 0.6, 0.6, 0.6, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(382, 77, 'Febi Rolenta', '20', 'SMA/SMK', 'Perempuan', 'Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.8, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(383, 77, 'Febi Rolenta', '20', 'SMA/SMK', 'Perempuan', 'Sering', 3, 0.6, 0.8, 0.4, 0.6, 0.6, 0.6, 0.4, 0.4, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(384, 77, 'Febi Rolenta', '20', 'SMA/SMK', 'Perempuan', 'Sering', 4, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.2, '0000-00-00 00:00:00', NULL, NULL),
(385, 77, 'Febi Rolenta', '20', 'SMA/SMK', 'Perempuan', 'Sering', 5, 0.4, 0.8, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(386, 78, 'Cynthia Maudina', '23', 'S1', 'Perempuan', 'Cukup Sering', 1, 0.4, 0, 0.4, 0.4, 0.4, 0.8, 0.6, 0.6, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(387, 78, 'Cynthia Maudina', '23', 'S1', 'Perempuan', 'Cukup Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(388, 78, 'Cynthia Maudina', '23', 'S1', 'Perempuan', 'Cukup Sering', 3, 0.4, 0, 0.6, 0.4, 0.6, 0.6, 0.6, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(389, 78, 'Cynthia Maudina', '23', 'S1', 'Perempuan', 'Cukup Sering', 4, 0.4, 0, 0.6, 0.4, 0.2, 0.4, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(390, 78, 'Cynthia Maudina', '23', 'S1', 'Perempuan', 'Cukup Sering', 5, 0.4, 0, 0.6, 0.6, 0.4, 0.6, 0.6, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(391, 79, 'Erika Asri', '23', 'S1', 'Perempuan', 'Sering', 1, 0.4, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(392, 79, 'Erika Asri', '23', 'S1', 'Perempuan', 'Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(393, 79, 'Erika Asri', '23', 'S1', 'Perempuan', 'Sering', 3, 0.6, 0.8, 0.4, 0.6, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(394, 79, 'Erika Asri', '23', 'S1', 'Perempuan', 'Sering', 4, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(395, 79, 'Erika Asri', '23', 'S1', 'Perempuan', 'Sering', 5, 0.6, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(396, 80, 'Dinda gustari', '23', 'S1', 'Perempuan', 'Cukup Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(397, 80, 'Dinda gustari', '23', 'S1', 'Perempuan', 'Cukup Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(398, 80, 'Dinda gustari', '23', 'S1', 'Perempuan', 'Cukup Sering', 3, 0.6, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(399, 80, 'Dinda gustari', '23', 'S1', 'Perempuan', 'Cukup Sering', 4, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(400, 80, 'Dinda gustari', '23', 'S1', 'Perempuan', 'Cukup Sering', 5, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(401, 81, 'Leo Putra Adi I', '28', 'S1', 'Laki laki', 'Sering', 1, 0.6, 0.8, 0.6, 0.4, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(402, 81, 'Leo Putra Adi I', '28', 'S1', 'Laki laki', 'Sering', 2, 0.8, 0.8, 0.6, 0.6, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(403, 81, 'Leo Putra Adi I', '28', 'S1', 'Laki laki', 'Sering', 3, 0.6, 0, 0.6, 0.4, 0.6, 0.6, 0.6, 0.4, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(404, 81, 'Leo Putra Adi I', '28', 'S1', 'Laki laki', 'Sering', 4, 0.4, 0, 0.4, 0.4, 0.6, 0.6, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(405, 81, 'Leo Putra Adi I', '28', 'S1', 'Laki laki', 'Sering', 5, 0.4, 0, 0.4, 0.4, 0.6, 0.6, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(406, 82, 'Nuraeni', '29', 'S1', 'Perempuan', 'Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(407, 82, 'Nuraeni', '29', 'S1', 'Perempuan', 'Sering', 2, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, 0.8, '0000-00-00 00:00:00', NULL, NULL),
(408, 82, 'Nuraeni', '29', 'S1', 'Perempuan', 'Sering', 3, 0.6, 0, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(409, 82, 'Nuraeni', '29', 'S1', 'Perempuan', 'Sering', 4, 0.4, 0, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(410, 82, 'Nuraeni', '29', 'S1', 'Perempuan', 'Sering', 5, 0.4, 0, 0.6, 0.4, 0.4, 0.6, 0.6, 0.4, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(411, 83, 'Alipah kusuma', '26', 'SMA/SMK', 'Perempuan', 'Sering', 1, 0.4, 0.8, 0.6, 0.6, 0.4, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(412, 83, 'Alipah kusuma', '26', 'SMA/SMK', 'Perempuan', 'Sering', 2, 0.6, 0.8, 0.4, 0.6, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(413, 83, 'Alipah kusuma', '26', 'SMA/SMK', 'Perempuan', 'Sering', 3, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.6, 0.4, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(414, 83, 'Alipah kusuma', '26', 'SMA/SMK', 'Perempuan', 'Sering', 4, 0.6, 0, 0.4, 0.6, 0.6, 0.8, 0.2, 0.4, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(415, 83, 'Alipah kusuma', '26', 'SMA/SMK', 'Perempuan', 'Sering', 5, 0.4, 0.8, 0.6, 0.6, 0.6, 0.4, 0.4, 0.2, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(416, 84, 'Anggia Feiriawan', '32', 'S1', 'Laki laki', 'Cukup Sering', 1, 0.4, 0, 0.4, 0.4, 0.6, 0.6, 0.4, 0.4, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(417, 84, 'Anggia Feiriawan', '32', 'S1', 'Laki laki', 'Cukup Sering', 2, 0.8, 0.8, 0.4, 0.6, 0.4, 0.6, 0.6, 0.4, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(418, 84, 'Anggia Feiriawan', '32', 'S1', 'Laki laki', 'Cukup Sering', 3, 0.8, 0.8, 0.6, 0.8, 0.6, 0.6, 0.6, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(419, 84, 'Anggia Feiriawan', '32', 'S1', 'Laki laki', 'Cukup Sering', 4, 0.4, 0, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(420, 84, 'Anggia Feiriawan', '32', 'S1', 'Laki laki', 'Cukup Sering', 5, 0.4, 0, 0.6, 0.4, 0.6, 0.4, 0.4, 0.4, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(421, 85, 'Akmal Firdaus', '28', 'S1', 'Laki laki', 'Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(422, 85, 'Akmal Firdaus', '28', 'S1', 'Laki laki', 'Sering', 2, 0.4, 0.8, 0.4, 0.4, 0.4, 0.6, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(423, 85, 'Akmal Firdaus', '28', 'S1', 'Laki laki', 'Sering', 3, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.6, 0.4, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(424, 85, 'Akmal Firdaus', '28', 'S1', 'Laki laki', 'Sering', 4, 0.6, 0.8, 0.4, 0.6, 0.6, 0.6, 0.6, 0.6, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(425, 85, 'Akmal Firdaus', '28', 'S1', 'Laki laki', 'Sering', 5, 0.6, 0.8, 0.6, 0.4, 0.4, 0.4, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(426, 86, 'Vina Lutfatul', '23', 'SMA/SMK', 'Perempuan', 'Sangat Sering', 1, 0.4, 0, 0.6, 0.6, 0.6, 0.6, 0.4, 0.4, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(427, 86, 'Vina Lutfatul', '23', 'SMA/SMK', 'Perempuan', 'Sangat Sering', 2, 0.4, 0.8, 0.4, 0.4, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(428, 86, 'Vina Lutfatul', '23', 'SMA/SMK', 'Perempuan', 'Sangat Sering', 3, 0.6, 0, 0.6, 0.8, 0.4, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(429, 86, 'Vina Lutfatul', '23', 'SMA/SMK', 'Perempuan', 'Sangat Sering', 4, 0.8, 0, 0.6, 0.4, 0.6, 0.6, 0.6, 0.4, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(430, 86, 'Vina Lutfatul', '23', 'SMA/SMK', 'Perempuan', 'Sangat Sering', 5, 0.4, 0.8, 0.6, 0.6, 0.6, 0.6, 0.4, 0.6, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(431, 87, 'Muhamad Oky', '35', 'S1', 'Laki laki', 'Sangat Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.4, 0.6, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(432, 87, 'Muhamad Oky', '35', 'S1', 'Laki laki', 'Sangat Sering', 2, 0.4, 0.8, 0.4, 0.6, 0.6, 0.4, 0.4, 0.4, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(433, 87, 'Muhamad Oky', '35', 'S1', 'Laki laki', 'Sangat Sering', 3, 0.6, 0.8, 0.4, 0.4, 0.6, 0.4, 0.6, 0.4, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(434, 87, 'Muhamad Oky', '35', 'S1', 'Laki laki', 'Sangat Sering', 4, 0.6, 0.8, 0.4, 0.4, 0.6, 0.6, 0.4, 0.6, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(435, 87, 'Muhamad Oky', '35', 'S1', 'Laki laki', 'Sangat Sering', 5, 0.4, 0.8, 0.6, 0.6, 0.4, 0.6, 0.6, 0.4, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(436, 88, 'Raufik Darmawan ', '25', 'S1', 'Laki laki', 'Sangat Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(437, 88, 'Raufik Darmawan ', '25', 'S1', 'Laki laki', 'Sangat Sering', 2, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.6, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(438, 88, 'Raufik Darmawan ', '25', 'S1', 'Laki laki', 'Sangat Sering', 3, 0.4, 0.8, 0.4, 0.6, 0.4, 0.4, 0.6, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(439, 88, 'Raufik Darmawan ', '25', 'S1', 'Laki laki', 'Sangat Sering', 4, 0.6, 0.8, 0.6, 0.4, 0.6, 0.6, 0.4, 0.6, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(440, 88, 'Raufik Darmawan ', '25', 'S1', 'Laki laki', 'Sangat Sering', 5, 0.6, 0.8, 0.4, 0.6, 0.6, 0.6, 0.6, 0.4, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(441, 89, 'Mawar Amalia ', '22', 'SMA/SMK', 'Perempuan', 'Sering', 1, 0.6, 0.8, 0.4, 0.4, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(442, 89, 'Mawar Amalia ', '22', 'SMA/SMK', 'Perempuan', 'Sering', 2, 0.6, 0.8, 0.6, 0.4, 0.4, 0.4, 0.4, 0.6, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(443, 89, 'Mawar Amalia ', '22', 'SMA/SMK', 'Perempuan', 'Sering', 3, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(444, 89, 'Mawar Amalia ', '22', 'SMA/SMK', 'Perempuan', 'Sering', 4, 0.6, 0, 0.6, 0.6, 0.4, 0.6, 0.4, 0.6, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(445, 89, 'Mawar Amalia ', '22', 'SMA/SMK', 'Perempuan', 'Sering', 5, 0.4, 0.8, 0.4, 0.4, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(446, 90, 'M Refa ', '25', 'S1', 'Laki laki', 'Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(447, 90, 'M Refa ', '25', 'S1', 'Laki laki', 'Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.8, 0.6, 0.6, 0.8, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(448, 90, 'M Refa ', '25', 'S1', 'Laki laki', 'Sering', 3, 0.6, 0, 0.6, 0.6, 0.6, 0.4, 0.4, 0.6, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(449, 90, 'M Refa ', '25', 'S1', 'Laki laki', 'Sering', 4, 0.4, 0, 0.4, 0.2, 0.2, 0.4, 0.4, 0.4, 0.2, 0.2, '0000-00-00 00:00:00', NULL, NULL),
(450, 90, 'M Refa ', '25', 'S1', 'Laki laki', 'Sering', 5, 0.4, 0, 0.4, 0.4, 0.2, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(451, 91, 'Rikanto S', '24', 'SMA/SMK', 'Laki laki', 'Jarang', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(452, 91, 'Rikanto S', '24', 'SMA/SMK', 'Laki laki', 'Jarang', 2, 0.6, 0.8, 0.8, 0.8, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(453, 91, 'Rikanto S', '24', 'SMA/SMK', 'Laki laki', 'Jarang', 3, 0.4, 0.8, 0.6, 0.6, 0.4, 0.4, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(454, 91, 'Rikanto S', '24', 'SMA/SMK', 'Laki laki', 'Jarang', 4, 0.4, 0.8, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(455, 91, 'Rikanto S', '24', 'SMA/SMK', 'Laki laki', 'Jarang', 5, 0.4, 0, 0.6, 0.6, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(456, 92, 'Desire Alfiyah', '23', 'SMA/SMK', 'Perempuan', 'Cukup Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(457, 92, 'Desire Alfiyah', '23', 'SMA/SMK', 'Perempuan', 'Cukup Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(458, 92, 'Desire Alfiyah', '23', 'SMA/SMK', 'Perempuan', 'Cukup Sering', 3, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(459, 92, 'Desire Alfiyah', '23', 'SMA/SMK', 'Perempuan', 'Cukup Sering', 4, 0.6, 0.8, 0.4, 0.4, 0.6, 0.6, 0.4, 0.4, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(460, 92, 'Desire Alfiyah', '23', 'SMA/SMK', 'Perempuan', 'Cukup Sering', 5, 0.6, 0.8, 0.4, 0.4, 0.6, 0.6, 0.4, 0.4, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(461, 93, 'Andri N', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(462, 93, 'Andri N', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(463, 93, 'Andri N', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 3, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(464, 93, 'Andri N', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 4, 0.6, 0.8, 0.6, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(465, 93, 'Andri N', '23', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 5, 0.6, 0.8, 0.6, 0.6, 0.4, 0.4, 0.4, 0.4, 0.4, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(466, 94, 'Azmi M', '25', 'S1', 'Laki laki', 'Cukup Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(467, 94, 'Azmi M', '25', 'S1', 'Laki laki', 'Cukup Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(468, 94, 'Azmi M', '25', 'S1', 'Laki laki', 'Cukup Sering', 3, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(469, 94, 'Azmi M', '25', 'S1', 'Laki laki', 'Cukup Sering', 4, 0.6, 0.8, 0.6, 0.6, 0.4, 0.6, 0.4, 0.4, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(470, 94, 'Azmi M', '25', 'S1', 'Laki laki', 'Cukup Sering', 5, 0.6, 0.8, 0.6, 0.4, 0.4, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(471, 95, 'Arif Maulana', '24', 'SMA/SMK', 'Laki laki', 'Jarang', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(472, 95, 'Arif Maulana', '24', 'SMA/SMK', 'Laki laki', 'Jarang', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(473, 95, 'Arif Maulana', '24', 'SMA/SMK', 'Laki laki', 'Jarang', 3, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(474, 95, 'Arif Maulana', '24', 'SMA/SMK', 'Laki laki', 'Jarang', 4, 0.4, 0.8, 0.4, 0.6, 0.6, 0.4, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(475, 95, 'Arif Maulana', '24', 'SMA/SMK', 'Laki laki', 'Jarang', 5, 0.6, 0.8, 0.4, 0.6, 0.4, 0.4, 0.4, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(476, 96, 'Fauzi Islami', '24', 'S1', 'Laki laki', 'Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(477, 96, 'Fauzi Islami', '24', 'S1', 'Laki laki', 'Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(478, 96, 'Fauzi Islami', '24', 'S1', 'Laki laki', 'Sering', 3, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(479, 96, 'Fauzi Islami', '24', 'S1', 'Laki laki', 'Sering', 4, 0.6, 0.8, 0.4, 0.4, 0.6, 0.6, 0.6, 0.6, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(480, 96, 'Fauzi Islami', '24', 'S1', 'Laki laki', 'Sering', 5, 0.6, 0.8, 0.6, 0.4, 0.6, 0.6, 0.6, 0.6, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(481, 97, 'Riski B P', '25', 'S1', 'Laki laki', 'Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.8, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(482, 97, 'Riski B P', '25', 'S1', 'Laki laki', 'Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.8, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(483, 97, 'Riski B P', '25', 'S1', 'Laki laki', 'Sering', 3, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(484, 97, 'Riski B P', '25', 'S1', 'Laki laki', 'Sering', 4, 0.6, 0.8, 0.4, 0.4, 0.6, 0.6, 0.4, 0.4, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(485, 97, 'Riski B P', '25', 'S1', 'Laki laki', 'Sering', 5, 0.4, 0, 0.4, 0.4, 0.6, 0.6, 0.4, 0.4, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(486, 98, 'Sekar Ningrum', '23', 'SMA/SMK', 'Perempuan', 'Cukup Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(487, 98, 'Sekar Ningrum', '23', 'SMA/SMK', 'Perempuan', 'Cukup Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(488, 98, 'Sekar Ningrum', '23', 'SMA/SMK', 'Perempuan', 'Cukup Sering', 3, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(489, 98, 'Sekar Ningrum', '23', 'SMA/SMK', 'Perempuan', 'Cukup Sering', 4, 0.4, 0.8, 0.6, 0.6, 0.4, 0.6, 0.6, 0.6, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(490, 98, 'Sekar Ningrum', '23', 'SMA/SMK', 'Perempuan', 'Cukup Sering', 5, 0.4, 0.8, 0.6, 0.6, 0.4, 0.6, 0.6, 0.6, 0.6, 0.4, '0000-00-00 00:00:00', NULL, NULL),
(491, 99, 'Fahreza Alif', '24', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 1, 0.6, 0.8, 0.8, 0.8, 0.8, 0.8, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(492, 99, 'Fahreza Alif', '24', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 2, 0.6, 0.8, 0.8, 0.8, 0.8, 0.8, 0.6, 0.8, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(493, 99, 'Fahreza Alif', '24', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 3, 0.6, 0.8, 0.8, 0.8, 0.8, 0.8, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(494, 99, 'Fahreza Alif', '24', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 4, 0.4, 0.8, 0.6, 0.6, 0.4, 0.6, 0.4, 0.4, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(495, 99, 'Fahreza Alif', '24', 'SMA/SMK', 'Laki laki', 'Cukup Sering', 5, 0.4, 0.8, 0.6, 0.6, 0.4, 0.6, 0.4, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(496, 100, 'Harin S R', '23', 'S1', 'Perempuan', 'Cukup Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(497, 100, 'Harin S R', '23', 'S1', 'Perempuan', 'Cukup Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(498, 100, 'Harin S R', '23', 'S1', 'Perempuan', 'Cukup Sering', 3, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(499, 100, 'Harin S R', '23', 'S1', 'Perempuan', 'Cukup Sering', 4, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(500, 100, 'Harin S R', '23', 'S1', 'Perempuan', 'Cukup Sering', 5, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(501, 101, 'Suci R', '23', 'S1', 'Perempuan', 'Cukup Sering', 1, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(502, 101, 'Suci R', '23', 'S1', 'Perempuan', 'Cukup Sering', 2, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(503, 101, 'Suci R', '23', 'S1', 'Perempuan', 'Cukup Sering', 3, 0.6, 0.8, 0.6, 0.6, 0.6, 0.6, 0.6, 0.4, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(504, 101, 'Suci R', '23', 'S1', 'Perempuan', 'Cukup Sering', 4, 0.4, 0.8, 0.4, 0.4, 0.6, 0.6, 0.4, 0.4, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL),
(505, 101, 'Suci R', '23', 'S1', 'Perempuan', 'Cukup Sering', 5, 0.4, 0.8, 0.6, 0.4, 0.6, 0.6, 0.4, 0.4, 0.6, 0.6, '0000-00-00 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `umur` int(11) NOT NULL,
  `pendidikan` varchar(10) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `salt` text NOT NULL,
  `avatar` text NOT NULL,
  `role` int(1) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `umur`, `pendidikan`, `jenis_kelamin`, `password`, `salt`, `avatar`, `role`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'zaela', 23, 'S1', 'laki-laki', 'cc87ff1c859467851d46e876c5f13613', '60a84f1564f2a6.55057891', '', 0, 0, '2021-05-21 19:23:49', NULL, NULL),
(2, 'maharani', 0, '', '', '07e1bcd8bd2c199323a0597bef5f46a9', '60e32b3d475645.09018841', '', 1, 0, '2021-07-05 10:54:37', NULL, NULL),
(3, 'elsasiregar', 0, '', '', 'df9bdf72d370a6638e02b28f501c439b', '60e32bcdac6c79.56930003', '', 1, 0, '2021-07-05 10:57:01', NULL, NULL),
(4, 'siwak', 0, '', '', '3d821284d619da936465ac40d530d639', '60e5e56ac92bf8.34054785', '', 1, 0, '2021-07-07 12:33:30', NULL, NULL),
(5, 'bondan prakoso', 0, '', '', '9dd1dd86e88963c0dfdba317447a365c', '610119a02b5df3.76229289', '', 1, 0, '2021-07-28 03:47:28', NULL, NULL),
(9, 'laki-laki', 0, '', '', 'f4179cde5e2dcc06482c9e49212751d0', '610141c65f7aa1.64586720', '', 1, 0, '2021-07-28 06:38:46', NULL, NULL),
(10, 'ujang', 0, '', '', 'e190270920ca28f83120b043e46e3039', '61014205c2c566.95387826', '', 1, 0, '2021-07-28 06:39:49', NULL, NULL),
(11, 'ujang', 0, '', '', '597eda3e63714feb7feb10598ff8eaf1', '6101421f996c28.97050025', '', 1, 0, '2021-07-28 06:40:15', NULL, NULL),
(12, 'imam badru', 0, '', '', '1e7ed6c0a108d188e32a6d917fe262cb', '6104fca116d1c9.78528173', '', 1, 0, '2021-07-31 02:32:49', NULL, NULL),
(13, 'imam badru', 0, '', '', '2e00a7852eabbb2837d1f618bc23a5ca', '610503090b3a35.43136458', '', 1, 0, '2021-07-31 03:00:09', NULL, NULL),
(14, 'agung', 0, '', '', '68abcc0e2c953e16c017db0171636dcc', '61050404f414e1.42941851', '', 1, 0, '2021-07-31 03:04:20', NULL, NULL),
(15, 'sofyan', 23, 'S1', 'laki-laki', 'dee3d809e8242a03dfb992620951b900', '6105049e78f8e9.16708855', '', 1, 0, '2021-07-31 03:06:54', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bobot`
--
ALTER TABLE `bobot`
  ADD PRIMARY KEY (`id_bobot`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `marketplace`
--
ALTER TABLE `marketplace`
  ADD PRIMARY KEY (`id_marketplace`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `respon`
--
ALTER TABLE `respon`
  ADD PRIMARY KEY (`id_respon`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bobot`
--
ALTER TABLE `bobot`
  MODIFY `id_bobot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketplace`
--
ALTER TABLE `marketplace`
  MODIFY `id_marketplace` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `respon`
--
ALTER TABLE `respon`
  MODIFY `id_respon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=521;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
