-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2018 at 10:59 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel_android`
--

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `telp` varchar(30) NOT NULL,
  `umur` int(11) NOT NULL,
  `jeniskelamin` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id` int(11) NOT NULL,
  `id_tiket` int(11) DEFAULT NULL,
  `tanggal` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat_jemput` varchar(30) NOT NULL,
  `alamat_antar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id`, `id_tiket`, `tanggal`, `nama`, `alamat_jemput`, `alamat_antar`) VALUES
(1, 1, '13-10-2018', 'dita', 'malang buring', 'jember gebang');

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `id_tiket` int(11) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `waktu` varchar(30) NOT NULL,
  `harga` int(11) NOT NULL,
  `id_photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`id_tiket`, `kota`, `waktu`, `harga`, `id_photo`) VALUES
(1, 'Surabaya', '14.00', 95000, 'https://pbs.twimg.com/profile_images/615663080886788096/S88cxDsC_400x400.jpg'),
(2, 'Blitar', '15.00', 60000, 'http://2.bp.blogspot.com/-PhB_KEJHVHk/VqiDyLCEpqI/AAAAAAAAAHg/jems2LTOq5Q/s1600/BLITAR.jpeg'),
(3, 'Surabaya', '14.00', 95000, 'https://pbs.twimg.com/profile_images/615663080886788096/S88cxDsC_400x400.jpg'),
(4, 'Blitar', '15.00', 60000, 'http://2.bp.blogspot.com/-PhB_KEJHVHk/VqiDyLCEpqI/AAAAAAAAAHg/jems2LTOq5Q/s1600/BLITAR.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id_tiket`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
