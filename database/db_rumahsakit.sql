-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2018 at 06:42 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rumahsakit`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_dokter`
--

CREATE TABLE `tb_dokter` (
  `id_dokter` varchar(50) NOT NULL,
  `nama_dokter` varchar(80) NOT NULL,
  `spesialis` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_dokter`
--

INSERT INTO `tb_dokter` (`id_dokter`, `nama_dokter`, `spesialis`, `alamat`, `no_telp`) VALUES
('ba8f2da4-6aba-4e22-a226-10d04f2dea8d', 'Dr. Sri Maryani', 'Penyakit Mata', 'Jl. Kavling Keuangan IV N0.1', '081237673644'),
('bb79a549-4afe-428c-b1c1-9df266d54f28', 'Dr. Rizki Hariyanto', 'Penyakit Dalam (Hati)', 'Jl. Masjid Darusalam No.12', '081278328721'),
('d5b644f3-3915-4334-b603-80b39d6a230a', 'Dr. Vivi Priandani', 'Penyakit Dalam (Paru)', 'Jl. Masjid Darusalam RT 13 RW 11 N0.90', '089659160450'),
('f793d086-2639-40a1-abbc-aaddb6dd765d', 'Dr. Priska Cahyani', 'Peyakit Dalam (Jantung)', 'Jl. kampung Buni desa babelan Bekasi', '081273718738');

-- --------------------------------------------------------

--
-- Table structure for table `tb_obat`
--

CREATE TABLE `tb_obat` (
  `id_obat` varchar(50) NOT NULL,
  `nama_obat` varchar(200) NOT NULL,
  `ket_obat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_obat`
--

INSERT INTO `tb_obat` (`id_obat`, `nama_obat`, `ket_obat`) VALUES
('4d88bf93-347c-11e8-a2fe-0a0027000004', 'Paracetamol', 'Obat Panas'),
('b259c2d8-1e05-4f96-bea2-58d6e4c0704f', 'OBH Kombi Plus', 'Obat Batuk Anak'),
('eff685ab-3b2c-11e8-a2fe-0a0027000004', 'Panadol', 'Obat Pusing'),
('eff69509-3b2c-11e8-a2fe-0a0027000004', 'Oskadon', 'Obat Pusing, Sakit Gigi'),
('eff6a2dc-3b2c-11e8-a2fe-0a0027000004', 'UltraFlu', 'Obat Flu'),
('eff6b039-3b2c-11e8-a2fe-0a0027000004', 'Komix', 'Obat Batuk');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pasien`
--

CREATE TABLE `tb_pasien` (
  `id_pasien` varchar(50) NOT NULL,
  `nomer_identitas` varchar(30) NOT NULL,
  `nama_pasien` varchar(80) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pasien`
--

INSERT INTO `tb_pasien` (`id_pasien`, `nomer_identitas`, `nama_pasien`, `jenis_kelamin`, `alamat`, `no_telp`) VALUES
('069902f1-67c8-4c88-aaac-c239c0995bae', '5465364526', 'Indri', 'P', 'Reni Jaya', '647746763242'),
('5982e898-c0f1-4937-8731-12f0037c6c21', '647623723432', 'Khairil Khuda', 'L', 'Pasar Modern No.10', '08123718721'),
('74b1b140-3862-4441-b76c-c8cae9cdc9b4', '67462762347832', 'Pandu Andhika', 'L', 'Jl. Percetakan Negara No.20', '08126567562'),
('78914faa-f00f-4f5b-80e0-59c346d51596', '74824627647', 'Ade Irfan', 'L', 'Pondok Cabe', '09782738479'),
('9dc3bc6e-2e5b-4a45-a335-6a5685375b5d', '472364767234', 'Andrian Saputra', 'L', 'Ciledug', '78482374978273'),
('a17662c7-b8ba-401a-8129-59b83092ccea', '64726747234', 'Syarifudin Hidayat', 'L', 'BSD', '7472839472374');

-- --------------------------------------------------------

--
-- Table structure for table `tb_poliklinik`
--

CREATE TABLE `tb_poliklinik` (
  `id_poli` varchar(50) NOT NULL,
  `nama_poli` varchar(50) NOT NULL,
  `gedung` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_poliklinik`
--

INSERT INTO `tb_poliklinik` (`id_poli`, `nama_poli`, `gedung`) VALUES
('0c4ba6a9-7cf6-4fd2-8db4-c3d2b3e353c4', 'Poli A1', 'K.L.10'),
('bd33eb30-45c0-4259-97c4-24197f24bda9', 'Poli B1', 'K.Lt.I'),
('d1143d54-83ce-413f-92a8-e1a870d6b479', 'Poli C1', 'K.Lt.II'),
('f269ee85-c131-45e9-96a5-6a88106bfd37', 'Poli D1', 'K.Lt.III'),
('fc373c1e-6bec-48fa-9433-a54cbab67eb8', 'Poli E1', 'K.L.20');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rekammedis`
--

CREATE TABLE `tb_rekammedis` (
  `id_rm` varchar(50) NOT NULL,
  `id_pasien` varchar(50) NOT NULL,
  `keluhan` varchar(50) NOT NULL,
  `id_dokter` varchar(50) NOT NULL,
  `diagnosa` text NOT NULL,
  `id_poli` varchar(50) NOT NULL,
  `tgl_periksa` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rekammedis`
--

INSERT INTO `tb_rekammedis` (`id_rm`, `id_pasien`, `keluhan`, `id_dokter`, `diagnosa`, `id_poli`, `tgl_periksa`) VALUES
('82f9a9cb-b557-4b67-886e-610de8464dcd', '069902f1-67c8-4c88-aaac-c239c0995bae', '<p>Mual, sering cape</p>\r\n', 'bb79a549-4afe-428c-b1c1-9df266d54f28', 'hamil muda', 'bd33eb30-45c0-4259-97c4-24197f24bda9', '2018-06-03'),
('c34613a9-6a1c-4b40-bf57-b52573cf5f76', '78914faa-f00f-4f5b-80e0-59c346d51596', '<p>Pusing, Demam</p>\r\n', 'ba8f2da4-6aba-4e22-a226-10d04f2dea8d', 'Telat makan, Banyak Pikiran', 'd1143d54-83ce-413f-92a8-e1a870d6b479', '2018-06-02');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rm_obat`
--

CREATE TABLE `tb_rm_obat` (
  `id_` int(11) NOT NULL,
  `id_rm` varchar(50) NOT NULL,
  `id_obat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rm_obat`
--

INSERT INTO `tb_rm_obat` (`id_`, `id_rm`, `id_obat`) VALUES
(22, '82f9a9cb-b557-4b67-886e-610de8464dcd', '4d88bf93-347c-11e8-a2fe-0a0027000004'),
(23, 'c34613a9-6a1c-4b40-bf57-b52573cf5f76', '4d88bf93-347c-11e8-a2fe-0a0027000004'),
(24, 'c34613a9-6a1c-4b40-bf57-b52573cf5f76', 'eff685ab-3b2c-11e8-a2fe-0a0027000004');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` varchar(50) NOT NULL,
  `nama_user` varchar(80) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `username`, `password`, `level`) VALUES
('abd363e9-32aa-11e8-a2fe-0a0027000004', 'Dilan 1990', 'dilan', 'fa9f1991b525abb209b957a34a8a94ef3ffbce0b', '1'),
('b59f28ac-31a9-11e8-b203-0a0027000004', 'Rizki Hariyanto', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dokter`
--
ALTER TABLE `tb_dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `tb_obat`
--
ALTER TABLE `tb_obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD PRIMARY KEY (`id_pasien`),
  ADD KEY `nomer_identitas` (`nomer_identitas`),
  ADD KEY `nomer_identitas_2` (`nomer_identitas`),
  ADD KEY `nomer_identitas_3` (`nomer_identitas`),
  ADD KEY `nomer_identitas_4` (`nomer_identitas`);

--
-- Indexes for table `tb_poliklinik`
--
ALTER TABLE `tb_poliklinik`
  ADD PRIMARY KEY (`id_poli`);

--
-- Indexes for table `tb_rekammedis`
--
ALTER TABLE `tb_rekammedis`
  ADD PRIMARY KEY (`id_rm`),
  ADD KEY `id_pasien` (`id_pasien`),
  ADD KEY `id_dokter` (`id_dokter`),
  ADD KEY `id_poli` (`id_poli`);

--
-- Indexes for table `tb_rm_obat`
--
ALTER TABLE `tb_rm_obat`
  ADD PRIMARY KEY (`id_`),
  ADD KEY `id_rm` (`id_rm`),
  ADD KEY `id_obat` (`id_obat`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_rm_obat`
--
ALTER TABLE `tb_rm_obat`
  MODIFY `id_` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_rekammedis`
--
ALTER TABLE `tb_rekammedis`
  ADD CONSTRAINT `tb_rekammedis_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `tb_pasien` (`id_pasien`),
  ADD CONSTRAINT `tb_rekammedis_ibfk_2` FOREIGN KEY (`id_dokter`) REFERENCES `tb_dokter` (`id_dokter`),
  ADD CONSTRAINT `tb_rekammedis_ibfk_3` FOREIGN KEY (`id_poli`) REFERENCES `tb_poliklinik` (`id_poli`);

--
-- Constraints for table `tb_rm_obat`
--
ALTER TABLE `tb_rm_obat`
  ADD CONSTRAINT `tb_rm_obat_ibfk_1` FOREIGN KEY (`id_rm`) REFERENCES `tb_rekammedis` (`id_rm`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_rm_obat_ibfk_2` FOREIGN KEY (`id_obat`) REFERENCES `tb_obat` (`id_obat`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
