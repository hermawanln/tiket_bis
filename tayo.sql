-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2019 at 02:21 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tayo`
--

-- --------------------------------------------------------

--
-- Table structure for table `kursi`
--

CREATE TABLE `kursi` (
  `kursi_id` varchar(3) NOT NULL,
  `kursi_berangkat` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `pmsn_id_transaksi` int(10) NOT NULL,
  `pmsn_tgl` date NOT NULL,
  `pmsn_jalur` varchar(30) NOT NULL,
  `pmsn_jml_kursi` int(5) NOT NULL,
  `pmsn_tmp_duduk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`pmsn_id_transaksi`, `pmsn_tgl`, `pmsn_jalur`, `pmsn_jml_kursi`, `pmsn_tmp_duduk`) VALUES
(3, '2019-01-06', '1', 1, 'A1'),
(4, '2019-01-07', '1', 1, 'A1');

-- --------------------------------------------------------

--
-- Table structure for table `penumpang`
--

CREATE TABLE `penumpang` (
  `pnp_no` int(100) NOT NULL,
  `pnp_nama` varchar(30) NOT NULL,
  `pnp_jalur` varchar(30) NOT NULL,
  `pnp_tmp_duduk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rutetravel`
--

CREATE TABLE `rutetravel` (
  `trvl_id` int(11) NOT NULL,
  `trvl_jalur` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rutetravel`
--

INSERT INTO `rutetravel` (`trvl_id`, `trvl_jalur`) VALUES
(1, 'A'),
(2, 'B');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kursi`
--
ALTER TABLE `kursi`
  ADD PRIMARY KEY (`kursi_id`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`pmsn_id_transaksi`);

--
-- Indexes for table `penumpang`
--
ALTER TABLE `penumpang`
  ADD PRIMARY KEY (`pnp_no`);

--
-- Indexes for table `rutetravel`
--
ALTER TABLE `rutetravel`
  ADD PRIMARY KEY (`trvl_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `pmsn_id_transaksi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
