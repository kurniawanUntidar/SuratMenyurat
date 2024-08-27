-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 27, 2024 at 07:39 AM
-- Server version: 10.5.25-MariaDB-cll-lve
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplk7728_dbmsurat`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bagian`
--

CREATE TABLE `tbl_bagian` (
  `id_bagian` int(10) NOT NULL,
  `nama_bagian` text DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_bagian`
--

INSERT INTO `tbl_bagian` (`id_bagian`, `nama_bagian`, `id_user`) VALUES
(1, 'Kepala Desa', 6),
(3, 'Sekretaris Desa', 6),
(6, 'Kaur Kesra', 5),
(7, 'Kaur Keuangan', 5),
(8, 'Kaur Pemerintahan', 5),
(9, 'Kaur Umum', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lampiran`
--

CREATE TABLE `tbl_lampiran` (
  `id_lampiran` int(10) NOT NULL,
  `token_lampiran` varchar(100) NOT NULL,
  `nama_berkas` text DEFAULT NULL,
  `ukuran` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_lampiran`
--

INSERT INTO `tbl_lampiran` (`id_lampiran`, `token_lampiran`, `nama_berkas`, `ukuran`) VALUES
(31, 'd23257d581d8765e4032b873589842b2', '20161003_134340.jpg', '175.98'),
(30, '7f754e483ab80366dd2fa48da9ddf8be', '1.png', '97.33'),
(29, 'f80d6dcd3750f67b1eded82f07d6e20a', '20161019_112001.jpg', '388.21'),
(28, 'f03c289269fffc7c29a4a0349bc10430', '1.png', '97.33'),
(26, 'b479223266020b24f1648387d775cecf', 'logox2.png', '4.43'),
(27, 'd3cacce6ba0093cf489d8313d91a22eb', 'logox3.png', '4.43'),
(32, '4944f59b86db1d1b5449e88262501702', 'WhatsApp_Image_2024-08-16_at_10.10.58_(1).jpeg', '146.05'),
(33, '4df3529dd37f2fd6ac21cc0acde360f8', 'Screenshot_2024-08-10_132452.png', '97.97'),
(34, '331581f12c95cbdddafdd96d105d25cc', 'BAST_dan_Uji_Fungsi_Mesin_Listrik.pdf', '648.15'),
(35, '67a9859c91dfab3948e8d0469544f9ac', 'BAST_dan_Uji_Fungsi_Mesin_Listrik5.pdf', '648.15'),
(36, '4ec88ece69545c4271c53c8f2e38772b', 'Screenshot_2024-08-10_1324523.png', '97.97'),
(37, 'eee6ab84a266c3e8c59b25ae16c29be5', 'Screenshot_2024-08-10_1321561.png', '52.45'),
(38, '124b59712db7f03eba89d37488a7a84a', 'Kode_Klasifikasi_Lampian_Perwali_2013_REVISI_B_print_CANNON.pdf', '484.25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_memo`
--

CREATE TABLE `tbl_memo` (
  `id_memo` int(10) NOT NULL,
  `judul_memo` text DEFAULT NULL,
  `memo` text DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ns`
--

CREATE TABLE `tbl_ns` (
  `id_ns` int(10) NOT NULL,
  `separator` text DEFAULT NULL,
  `no_posisi` text DEFAULT NULL,
  `no` text DEFAULT NULL,
  `org_posisi` text DEFAULT NULL,
  `org` text DEFAULT NULL,
  `bag_posisi` text DEFAULT NULL,
  `bag` text DEFAULT NULL,
  `subbag_posisi` text DEFAULT NULL,
  `subbag` text DEFAULT NULL,
  `bln_posisi` text DEFAULT NULL,
  `bln` text DEFAULT NULL,
  `thn_posisi` text DEFAULT NULL,
  `thn` text DEFAULT NULL,
  `reset_no` text DEFAULT NULL,
  `prefix` text DEFAULT NULL,
  `prefix_posisi` enum('kiri','kanan') DEFAULT NULL,
  `no_surat` text DEFAULT NULL,
  `ket` text DEFAULT NULL,
  `jenis_ns` enum('semua','sm','sk','disposisi') DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL,
  `tgl_ns` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_ns`
--

INSERT INTO `tbl_ns` (`id_ns`, `separator`, `no_posisi`, `no`, `org_posisi`, `org`, `bag_posisi`, `bag`, `subbag_posisi`, `subbag`, `bln_posisi`, `bln`, `thn_posisi`, `thn`, `reset_no`, `prefix`, `prefix_posisi`, `no_surat`, `ket`, `jenis_ns`, `id_user`, `tgl_ns`) VALUES
(1, '.', '1', '005', '2', 'waw', '', '', '', '', '4', 'X', '3', '2017', 'thn', 'yahoo', '', '005.waw.2017.X.yahoo', 'dkfhdf', 'sm', 6, NULL),
(2, '/', '2', '005', '1', 'ukm', '', '', '', '', '3', 'X', '4', '2017', 'thn', 'hay', 'kanan', 'ukm/005/X/2017/hay', '-', 'sk', 6, NULL),
(4, '/', '2', '001', '3', 'iptek', '', '', '', '', '4', 'X', '1', '2017', 'thn', '', '', '2017/001/iptek/X', '-', 'semua', 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sk`
--

CREATE TABLE `tbl_sk` (
  `id_sk` int(10) NOT NULL,
  `no_surat` text DEFAULT NULL,
  `tgl_ns` varchar(12) DEFAULT NULL,
  `pengirim` text NOT NULL,
  `penerima` text DEFAULT NULL,
  `perihal` text DEFAULT NULL,
  `id_bagian` int(10) NOT NULL,
  `token_lampiran` text DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL,
  `dibaca` int(1) NOT NULL,
  `disposisi` text NOT NULL,
  `peringatan` int(1) NOT NULL,
  `tgl_sk` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sm`
--

CREATE TABLE `tbl_sm` (
  `id_sm` int(10) NOT NULL,
  `no_surat` text DEFAULT NULL,
  `tgl_ns` varchar(12) DEFAULT NULL,
  `no_asal` text DEFAULT NULL,
  `tgl_no_asal` varchar(12) DEFAULT NULL,
  `pengirim` text DEFAULT NULL,
  `penerima` text DEFAULT NULL,
  `perihal` text DEFAULT NULL,
  `token_lampiran` varchar(100) DEFAULT NULL,
  `dibaca` int(1) NOT NULL,
  `disposisi` int(1) NOT NULL,
  `id_user` int(10) DEFAULT NULL,
  `tgl_sm` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_sm`
--

INSERT INTO `tbl_sm` (`id_sm`, `no_surat`, `tgl_ns`, `no_asal`, `tgl_no_asal`, `pengirim`, `penerima`, `perihal`, `token_lampiran`, `dibaca`, `disposisi`, `id_user`, `tgl_sm`) VALUES
(23, 'MSK/002', '07-08-2024', 'MSK/002', '07-08-2024', 'Kaur', 'undefined', '', '124b59712db7f03eba89d37488a7a84a', 0, 0, 0, '23-08-2024'),
(22, 'MSK/001', '23-08-2024', 'MSK/001', '23-08-2024', 'Kaur', 'Kepala Desa', 'masuk', 'eee6ab84a266c3e8c59b25ae16c29be5', 1, 0, 0, '23-08-2024');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` text NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telp` varchar(30) DEFAULT NULL,
  `pengalaman` text DEFAULT NULL,
  `level` enum('s_admin','admin','user') DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `tgl_daftar` varchar(20) DEFAULT NULL,
  `terakhir_login` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama_lengkap`, `email`, `alamat`, `telp`, `pengalaman`, `level`, `status`, `tgl_daftar`, `terakhir_login`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Kepala Desa', 'aplikasimanajemensuratdesapekuncen@gmail.com', '-', '-', '-', 's_admin', 'aktif', '10-07-2024 17:03:12', '21-08-2024 15:40:35'),
(5, 'admin2', 'c84258e9c39059a89ab77d846ddab909', 'Kaur', '-', '-', '-', '-', 'admin', 'aktif', '10-07-2024 17:03:12', '25-08-2024 10:54:40'),
(6, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'Sekretaris Desa', '-', '-', '-', '-', 'user', 'aktif', '10-07-2024 17:03:12', '23-08-2024 19:17:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bagian`
--
ALTER TABLE `tbl_bagian`
  ADD PRIMARY KEY (`id_bagian`);

--
-- Indexes for table `tbl_lampiran`
--
ALTER TABLE `tbl_lampiran`
  ADD PRIMARY KEY (`id_lampiran`);

--
-- Indexes for table `tbl_memo`
--
ALTER TABLE `tbl_memo`
  ADD PRIMARY KEY (`id_memo`);

--
-- Indexes for table `tbl_ns`
--
ALTER TABLE `tbl_ns`
  ADD PRIMARY KEY (`id_ns`);

--
-- Indexes for table `tbl_sk`
--
ALTER TABLE `tbl_sk`
  ADD PRIMARY KEY (`id_sk`);

--
-- Indexes for table `tbl_sm`
--
ALTER TABLE `tbl_sm`
  ADD PRIMARY KEY (`id_sm`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_bagian`
--
ALTER TABLE `tbl_bagian`
  MODIFY `id_bagian` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_lampiran`
--
ALTER TABLE `tbl_lampiran`
  MODIFY `id_lampiran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_memo`
--
ALTER TABLE `tbl_memo`
  MODIFY `id_memo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_ns`
--
ALTER TABLE `tbl_ns`
  MODIFY `id_ns` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_sk`
--
ALTER TABLE `tbl_sk`
  MODIFY `id_sk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_sm`
--
ALTER TABLE `tbl_sm`
  MODIFY `id_sm` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
