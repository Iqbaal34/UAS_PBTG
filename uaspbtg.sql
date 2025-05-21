-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2025 at 02:23 PM
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
-- Database: `uaspbtg`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `NIM` varchar(255) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `TTL` varchar(255) NOT NULL,
  `Jenis_Kelamin` varchar(255) NOT NULL,
  `Alamat` varchar(255) NOT NULL,
  `Kelas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`NIM`, `Nama`, `TTL`, `Jenis_Kelamin`, `Alamat`, `Kelas`) VALUES
('21373045', 'Iqbal Hilmi Wibowo', 'Yogyakarta', 'Laki Laki', 'Villa Pamulang Dc2/8a', 'XI RPL');

-- --------------------------------------------------------

--
-- Table structure for table `data_buku`
--

CREATE TABLE `data_buku` (
  `Kode_Buku` varchar(10) NOT NULL,
  `Nama_Buku` varchar(50) NOT NULL,
  `Nama_Pengarang` varchar(20) NOT NULL,
  `Penerbit` varchar(20) NOT NULL,
  `Tahun_Terbit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_buku`
--

INSERT INTO `data_buku` (`Kode_Buku`, `Nama_Buku`, `Nama_Pengarang`, `Penerbit`, `Tahun_Terbit`) VALUES
('001', 'How to be Billionare', 'Iqbal', 'Padhil', '2025');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `NIK` varchar(255) NOT NULL,
  `Nama` varchar(255) DEFAULT NULL,
  `Jenis_Kelamin` varchar(255) DEFAULT NULL,
  `Jabatan` varchar(255) DEFAULT NULL,
  `Golongan` varchar(255) DEFAULT NULL,
  `Absen` varchar(255) DEFAULT NULL,
  `Jumlah_Absen` varchar(255) DEFAULT NULL,
  `Biaya_Transport` varchar(255) DEFAULT NULL,
  `Tunjangan` varchar(255) DEFAULT NULL,
  `Gaji` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`NIK`, `Nama`, `Jenis_Kelamin`, `Jabatan`, `Golongan`, `Absen`, `Jumlah_Absen`, `Biaya_Transport`, `Tunjangan`, `Gaji`) VALUES
('23173045', 'Ananda Dio Pratama', 'Laki Laki', 'Karyawan Biasa', '2', '2', '4', '1000000', '2000000', '5000000');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Nama` varchar(30) NOT NULL,
  `Username` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Konfirmasi Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Nama`, `Username`, `Password`, `Konfirmasi Password`) VALUES
('Ananda Dio', 'Dio', '1234', '1234'),
('Iqbal Hilmi Wibowo', 'Iqbal', '1234', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `peminjam`
--

CREATE TABLE `peminjam` (
  `NIM` varchar(10) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Kode_Buku` varchar(10) NOT NULL,
  `Nama_Buku` varchar(50) NOT NULL,
  `Tanggal_Peminjaman` varchar(12) NOT NULL,
  `Tanggal_Pengembalian` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjam`
--

INSERT INTO `peminjam` (`NIM`, `Nama`, `Kode_Buku`, `Nama_Buku`, `Tanggal_Peminjaman`, `Tanggal_Pengembalian`) VALUES
('23173045', 'Iqbal Hilmi Wibowo', '001', 'How to Billionare', '20/05/2025', '25/05/2025');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`NIM`);

--
-- Indexes for table `data_buku`
--
ALTER TABLE `data_buku`
  ADD PRIMARY KEY (`Kode_Buku`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
