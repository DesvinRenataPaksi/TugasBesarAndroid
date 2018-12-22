-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2018 at 06:45 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

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
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id_tiket`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
