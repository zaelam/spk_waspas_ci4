-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2021 at 07:36 PM
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
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_barang` int(11) UNSIGNED NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `komentar` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `nama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `marketplace`
--

INSERT INTO `marketplace` (`id_marketplace`, `nama`) VALUES
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
  `id_respon` int(11) UNSIGNED NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `id_marketplace` int(11) UNSIGNED NOT NULL,
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

INSERT INTO `respon` (`id_respon`, `id_user`, `id_marketplace`, `kelengkapan`, `estimasi_pengiriman`, `user_experience`, `respon_pelayanan`, `metode_pembayaran`, `kemudahan_fitur`, `kepercayaan`, `penanganan_komplain`, `cashback`, `pengiriman`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 1, 1, 2.2, 1.3, 3.3, 2.5, 2.6, 2.7, 2.8, 3.8, 3.9, 2.2, '0000-00-00 00:00:00', 1, NULL),
(2, 1, 2, 1.2, 1.3, 2.4, 3.4, 3.5, 2.7, 3.7, 3.8, 3.1, 3.2, '0000-00-00 00:00:00', 1, NULL),
(3, 1, 3, 3.2, 1.3, 2.4, 3.4, 4.5, 2.7, 2.8, 3.8, 3.9, 2.2, '0000-00-00 00:00:00', 1, NULL),
(4, 1, 4, 2.2, 1.3, 4.3, 2.5, 1.6, 1.7, 3.7, 2.9, 3.9, 4.1, '0000-00-00 00:00:00', 1, NULL),
(5, 1, 5, 1.2, 1.3, 2.4, 1.5, 4.5, 1.7, 2.8, 1.9, 3.9, 2.2, '0000-00-00 00:00:00', 1, NULL),
(6, 2, 1, 2.2, 1.3, 3.3, 2.5, 2.6, 2.7, 2.8, 3.8, 3.9, 2.2, '0000-00-00 00:00:00', 1, NULL),
(7, 2, 2, 1.2, 2.4, 2.4, 3.4, 3.5, 2.7, 3.7, 3.8, 3.1, 3.2, '0000-00-00 00:00:00', 1, NULL),
(8, 2, 3, 3.2, 1.3, 2.4, 3.4, 4.5, 2.8, 2.8, 3.8, 3.9, 2.2, '0000-00-00 00:00:00', 1, NULL),
(9, 2, 4, 2.2, 1.3, 4.3, 1.6, 1.6, 1.7, 3.7, 2.9, 3.9, 4.1, '0000-00-00 00:00:00', 1, NULL),
(10, 2, 5, 1.2, 1.3, 2.4, 1.5, 4.5, 1.7, 2.8, 1.9, 3.9, 2.2, '0000-00-00 00:00:00', 1, NULL),
(11, 3, 1, 2.2, 3.3, 3.3, 2.5, 2.6, 2.7, 2.8, 3.8, 3.9, 2.2, '0000-00-00 00:00:00', 1, NULL),
(12, 3, 2, 1.2, 1.3, 2.4, 3.4, 3.5, 2.7, 3.7, 3.8, 3.1, 3.2, '0000-00-00 00:00:00', 1, NULL),
(13, 3, 3, 3.2, 1.3, 2.4, 2.4, 4.5, 2.7, 2.8, 3.8, 3.9, 2.2, '0000-00-00 00:00:00', 1, NULL),
(14, 3, 4, 2.2, 1.3, 4.3, 2.5, 1.6, 2.5, 3.7, 2.9, 3.9, 4.1, '0000-00-00 00:00:00', 1, NULL),
(15, 3, 5, 1.2, 1.3, 2.4, 1.5, 4.5, 1.7, 2.8, 1.9, 3.9, 2.2, '0000-00-00 00:00:00', 1, NULL),
(16, 4, 1, 0.2, 0.8, 0.2, 0.4, 0.4, 0.2, 0.6, 0.2, 0.4, 0.2, '2021-07-07 12:34:48', 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_barang` int(11) UNSIGNED NOT NULL,
  `id_pembeli` int(11) UNSIGNED NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `ongkir` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
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

INSERT INTO `user` (`id`, `username`, `password`, `salt`, `avatar`, `role`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'zaela', 'cc87ff1c859467851d46e876c5f13613', '60a84f1564f2a6.55057891', '', 0, 0, '2021-05-21 19:23:49', NULL, NULL),
(2, 'maharani', '07e1bcd8bd2c199323a0597bef5f46a9', '60e32b3d475645.09018841', '', 1, 0, '2021-07-05 10:54:37', NULL, NULL),
(3, 'elsasiregar', 'df9bdf72d370a6638e02b28f501c439b', '60e32bcdac6c79.56930003', '', 1, 0, '2021-07-05 10:57:01', NULL, NULL),
(4, 'siwak', '3d821284d619da936465ac40d530d639', '60e5e56ac92bf8.34054785', '', 1, 0, '2021-07-07 12:33:30', NULL, NULL);

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
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komentar_id_user_foreign` (`id_user`),
  ADD KEY `komentar_id_barang_foreign` (`id_barang`);

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
  ADD PRIMARY KEY (`id_respon`),
  ADD KEY `respon_id_user_foreign` (`id_user`),
  ADD KEY `respon_id_marketplace_foreign` (`id_marketplace`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_id_pembeli_foreign` (`id_pembeli`),
  ADD KEY `transaksi_id_barang_foreign` (`id_barang`);

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
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id_respon` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_id_barang_foreign` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `komentar_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `respon`
--
ALTER TABLE `respon`
  ADD CONSTRAINT `respon_id_marketplace_foreign` FOREIGN KEY (`id_marketplace`) REFERENCES `marketplace` (`id_marketplace`),
  ADD CONSTRAINT `respon_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_id_barang_foreign` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_id_pembeli_foreign` FOREIGN KEY (`id_pembeli`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
