-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2022 at 04:38 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_sp`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_warga`
--

CREATE TABLE `data_warga` (
  `id` int(11) NOT NULL,
  `no_kk` varchar(25) NOT NULL,
  `nik` varchar(25) NOT NULL,
  `nama_lengkap` varchar(165) NOT NULL,
  `ttl` varchar(165) NOT NULL,
  `jkel` varchar(100) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `kewarganegaraan` varchar(50) NOT NULL,
  `pendidikan` varchar(50) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `rt` varchar(3) NOT NULL,
  `rw` varchar(3) NOT NULL,
  `alamat` text NOT NULL,
  `date_created` varchar(50) NOT NULL,
  `saved` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_warga`
--

INSERT INTO `data_warga` (`id`, `no_kk`, `nik`, `nama_lengkap`, `ttl`, `jkel`, `no_telp`, `agama`, `kewarganegaraan`, `pendidikan`, `pekerjaan`, `rt`, `rw`, `alamat`, `date_created`, `saved`) VALUES
(8, '3171083011170005', '1671093112650032', 'Fauzi', 'Rambong, 31 Desember 1965', 'Laki - Laki', '089633577614', 'Islam', 'Indonesia', 'S2', 'Pegawai Negeri Sipil (PNS)', '09', '09', 'Jl. Percetakan Negara IV-B / 33', '1660487693', '2022-08-14 14:34:53'),
(9, '3171083011170005', '1671094307720004', 'Erni', 'Blang Malu, 3 Juli 1972', 'Perempuan', '08126909902', 'Islam', 'Indonesia', 'D3', 'Mengurus Rumah Tangga', '09', '09', 'Jl. Percetakan Negara IV-B / 33', '1660487822', '2022-08-14 14:37:02'),
(10, '3171083011170005', '1671096101960008', 'Zahra Vonny', 'Banjarmasin, 21 Januari 1996', 'Perempuan', '082180007764', 'Islam', 'Indonesia', 'SLTA/Sederajat', 'Pelajar/Mahasiswa', '09', '09', 'Jl. Percetakan Negara IV-B / 33', '1660487928', '2022-08-14 14:38:48'),
(11, '3171083011170005', '1671096409990004', 'Savira Vonny', 'Kota Mini, 24 September 1999', 'Perempuan', '081384568627', 'Islam', 'Indonesia', 'SLTA/Sederajat', 'Pelajar/Mahasiswa', '09', '09', 'Jl. Percetakan Negara IV-B / 33', '1660488044', '2022-08-14 14:40:44'),
(12, '3171083011170005', '1671090412020004', 'Maulana Ihsan', 'Banda Aceh, 4 Desember 2002', 'Laki - Laki', '082282534698', 'Islam', 'Indonesia', 'SLTA/Sederajat', 'Pelajar/Mahasiswa', '09', '09', 'Jl. Percetakan Negara IV-B / 33', '1660488140', '2022-08-14 14:42:20'),
(13, '3171080501095337', '3171066712590005', 'Yuki Rukiasih', 'Jakarta, 27 Desember 1959', 'Perempuan', '083807913069', 'Islam', 'Indonesia', 'S1', 'Mengurus Rumah Tangga', '09', '09', 'Jl. Percetakan Negara IV-B / 29', '1660488368', '2022-08-14 14:46:08'),
(14, '3171080501095337', '3171062009000007', 'Raihan Fahriansyah', 'Jakarta, 20 Mei  2000', 'Laki - Laki', '085810558636', 'Islam', 'Indonesia', 'SLTA/Sederajat', 'Pelajar/Mahasiswa', '09', '09', 'Jl. Percetakan Negara IV-B / 29', '1660488448', '2022-08-14 14:47:28');

-- --------------------------------------------------------

--
-- Table structure for table `master_jenis_surat`
--

CREATE TABLE `master_jenis_surat` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `singkatan` varchar(50) NOT NULL,
  `saved` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_jenis_surat`
--

INSERT INTO `master_jenis_surat` (`id`, `name`, `singkatan`, `saved`) VALUES
(1, 'Surat Pindah Domisili', 'SPD', '2022-08-08 11:30:03'),
(2, 'Surat Pembuatan KTP', 'SPKTP', '2022-08-08 11:30:13'),
(3, 'Surat Pembuatan KK', 'SPKK', '2022-08-08 11:30:22'),
(4, 'Surat Domisili Tempat Tinggal', 'SDTT', '2022-08-08 11:30:33'),
(5, 'Surat Kelahiran', 'SKLH', '2022-08-08 11:30:45'),
(6, 'Surat Kematian', 'SKM', '2022-08-08 11:30:56');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `date_created` int(11) NOT NULL,
  `saved` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `deskripsi`, `date_created`, `saved`) VALUES
(1, '<p><strong>Kepada </strong>warga RT.09 RW.09 Kecemanatan Johar Baru, untuk memperigati hari kemerdekaan Indonesia yang pertempatan pada tanggal 17 Agustus 1945, berharap berpartisipasi untuk ikut merayakan:<br>\r\ntanggal : 17 Agustus 2022<br>\r\ntempat : didepan gang gapura warna merah.<br>\r\n<em>jam : 07.00 WIB</em></p>', 1660534704, '2022-08-11 05:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `surat`
--

CREATE TABLE `surat` (
  `id` int(11) NOT NULL,
  `userId` varchar(50) NOT NULL,
  `tanggal_surat` date NOT NULL,
  `nomor_surat` int(20) NOT NULL,
  `id_warga` int(11) NOT NULL,
  `id_jenis_surat` int(11) NOT NULL,
  `approve_rt` int(11) NOT NULL,
  `approve_rw` int(11) NOT NULL,
  `approve_admin` int(11) NOT NULL,
  `bulan` varchar(50) NOT NULL,
  `tahun` varchar(50) NOT NULL,
  `date_created` varchar(50) NOT NULL,
  `updated` varchar(100) NOT NULL,
  `updated_rt` varchar(50) NOT NULL,
  `updated_rw` varchar(50) NOT NULL,
  `saved` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `surat`
--

INSERT INTO `surat` (`id`, `userId`, `tanggal_surat`, `nomor_surat`, `id_warga`, `id_jenis_surat`, `approve_rt`, `approve_rw`, `approve_admin`, `bulan`, `tahun`, `date_created`, `updated`, `updated_rt`, `updated_rw`, `saved`) VALUES
(33, 'fauzi', '2022-08-15', 1, 8, 2, 1, 1, 1, 'Agustus', '2022', '1660534751', '2022-08-15 10:42:20', '2022-08-15', '2022-08-15', '2022-08-15 03:39:11'),
(34, 'fauzi', '2022-08-15', 2, 8, 5, 0, 0, 0, 'Agustus', '2022', '1660534876', '15-08-2022 10:41:16', '', '', '2022-08-15 03:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `no_kk` varchar(50) NOT NULL,
  `username` varchar(165) NOT NULL,
  `password` varchar(165) NOT NULL,
  `image` varchar(165) NOT NULL,
  `level` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `date_created` int(11) NOT NULL,
  `saved` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `no_kk`, `username`, `password`, `image`, `level`, `is_active`, `date_created`, `saved`) VALUES
(1, 'User3', '', 'user3', '$2y$10$jH5WwC599BWq.LxJXSkJqOqs4abC5XNswQF4deG1gVAJSN51lz/Li', 'default.jpg', 1, 1, 1660488565, '2022-08-08 04:43:29'),
(8, 'Fauzi', '3171083011170005', 'fauzi', '$2y$10$z95LausoYU8856rNgYp8Nu/HAc8DN5Hujq1xoNCgcb8BTBij9Au0y', 'default.jpg', 4, 1, 1660487316, '2022-08-14 14:28:36'),
(9, 'Yuki Rukiasih', '3171080501095337', 'yuki', '$2y$10$esxlIQID0eEpLecgnJaK3OmMLiFKYy0V2OZJvQ3ic.BTTk3IQ4UvW', 'default.jpg', 4, 1, 1660487389, '2022-08-14 14:29:49'),
(10, 'Syahrial Kurniadi', '0', 'syahrial', '$2y$10$Bn10pIFhGNe9sFBUXaIwXew6Jkc.KlysrscZ3wTDp.HoXRvoX91lC', 'default.jpg', 2, 1, 1660487436, '2022-08-14 14:30:36'),
(11, 'Heroy Parlambang', '0', 'heroy', '$2y$10$XiOSInv4z9UI5yK2cZQQJOPjAO/iesPu3T4ZbnsW2olQTi7SEyUha', 'default.jpg', 3, 1, 1660487462, '2022-08-14 14:31:02'),
(12, 'Admin', '0', 'admin', '$2y$10$1VZBC5cTTFVl9Lj/63DB7Oydyc9MAXm6MwKpfqvNjETyaGK05j9OW', 'default.jpg', 1, 1, 1660488579, '2022-08-14 14:49:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_warga`
--
ALTER TABLE `data_warga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_jenis_surat`
--
ALTER TABLE `master_jenis_surat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surat`
--
ALTER TABLE `surat`
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
-- AUTO_INCREMENT for table `data_warga`
--
ALTER TABLE `data_warga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `master_jenis_surat`
--
ALTER TABLE `master_jenis_surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `surat`
--
ALTER TABLE `surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
