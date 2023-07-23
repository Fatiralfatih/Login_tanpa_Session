-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 23, 2023 at 02:24 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lelang`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `tgl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `harga_awal` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `deskripsi_barang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `nama_barang`, `tgl`, `harga_awal`, `deskripsi_barang`) VALUES
(1, 'hahah', '2004-02-11', '24000', 'murah'),
(2, 'supra125', '0004-02-11', '25000', 'import masih bagus'),
(3, 'supra125', '2004-02-11', '24000', 'muahal');

-- --------------------------------------------------------

--
-- Table structure for table `tb_lelang`
--

CREATE TABLE `tb_lelang` (
  `id_lelang` int NOT NULL,
  `id_barang` int NOT NULL,
  `harga_akhir` int NOT NULL,
  `tgl_lelang` date NOT NULL,
  `status` enum('dibuka','ditutup') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_lelang`
--

INSERT INTO `tb_lelang` (`id_lelang`, `id_barang`, `harga_akhir`, `tgl_lelang`, `status`) VALUES
(10, 2, 25000, '2023-07-21', 'ditutup');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `no_hp` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `nama_lengkap`, `no_hp`, `email`, `password`) VALUES
(1, 'fatir', 'fatir', '081330544851', 'fatiralfath00@gmail.com', '12345'),
(2, 'ahah', 'asdlak', '081231', 'fatiralfath48@gmail.com', 'ksdksad'),
(3, 'dhaksdh', 'askdhask', '9102301832', 'aksdhaksdh@gmail.com', '$2y$10$2Qjq5PtJ3QfGOOkzDekDC.oS25W4nrfRpgSZ1cn4/OV67JvUaPka2'),
(4, 'fatir', 'fatir alfath', '08385994851', 'faytrskrt@gmail.com', '$2y$10$1VsunLxtrq1M1B/tvPdbHenCAtpg/nCmIKNX4JKh65s.Vg85cZw5S'),
(5, 'ASDASD', 'fdasda', '0123901239', 'faadash@gmail.com', '$2y$10$/L0HSpRktAKCaby3ni6D9Oh/LMFMEdoBQfm/GQiCjQDR07CYW8iui'),
(6, 'ASDD', 'ASDA', '012310', 'kaka@gmail.com', '$2y$10$wDMYhDhnzA//avJEmVr3peOJG6y7/V65J/lBdhFQApwJvR.5WHcxy'),
(7, 'asda', 'asda', '0132', 'fatiralfath00@gmail.com', '$2y$10$e5/v8eWifbaTazTwOeSf/.7L8mWLslBe0GuJsLMkRcoTL3KqSXzAO'),
(8, 'kadsh', 'aldsh', '09182301', 'asdasd@gmail.com', '$2y$10$nptwRFAnptJqAjTdWdTpW.dhgPBkYH6sbRAtLym/R3xKsZ8AHj18G'),
(9, 'fatir', 'fatir', '01293132', 'fatiralfath48@gmail.com', '$2y$10$7bcUYHYYvUknsOZU378JtO6/7XEuVgrlZbc5xS55PLnUW1x/G.rUa'),
(18, 'fatir', 'fatir', '102371', 'sad@gmail.com', '$2y$10$sulJ4GgQXBJfHexYHG/fpeUgdsX8e0UgI98oFEFEqylA90jLYP4NK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tb_lelang`
--
ALTER TABLE `tb_lelang`
  ADD PRIMARY KEY (`id_lelang`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_barang` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_lelang`
--
ALTER TABLE `tb_lelang`
  MODIFY `id_lelang` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
