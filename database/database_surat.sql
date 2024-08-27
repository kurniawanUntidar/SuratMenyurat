-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2017 at 11:55 AM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_surat`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bagian`
--

CREATE TABLE `tbl_bagian` (
  `id_bagian` int(10) NOT NULL,
  `nama_bagian` text,
  `id_user` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bagian`
--

INSERT INTO `tbl_bagian` (`id_bagian`, `nama_bagian`, `id_user`) VALUES
(1, 'waww', 6),
(3, 'yahoo', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lampiran`
--

CREATE TABLE `tbl_lampiran` (
  `id_lampiran` int(10) NOT NULL,
  `token_lampiran` varchar(100) NOT NULL,
  `nama_berkas` text,
  `ukuran` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_lampiran`
--

INSERT INTO `tbl_lampiran` (`id_lampiran`, `token_lampiran`, `nama_berkas`, `ukuran`) VALUES
(31, 'd23257d581d8765e4032b873589842b2', '20161003_134340.jpg', '175.98'),
(30, '7f754e483ab80366dd2fa48da9ddf8be', '1.png', '97.33'),
(29, 'f80d6dcd3750f67b1eded82f07d6e20a', '20161019_112001.jpg', '388.21'),
(28, 'f03c289269fffc7c29a4a0349bc10430', '1.png', '97.33'),
(26, 'b479223266020b24f1648387d775cecf', 'logox2.png', '4.43'),
(27, 'd3cacce6ba0093cf489d8313d91a22eb', 'logox3.png', '4.43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_memo`
--

CREATE TABLE `tbl_memo` (
  `id_memo` int(10) NOT NULL,
  `judul_memo` text,
  `memo` text,
  `id_user` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_memo`
--

INSERT INTO `tbl_memo` (`id_memo`, `judul_memo`, `memo`, `id_user`) VALUES
(2, 'waw', 'wiw', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ns`
--

CREATE TABLE `tbl_ns` (
  `id_ns` int(10) NOT NULL,
  `separator` text,
  `no_posisi` text,
  `no` text,
  `org_posisi` text,
  `org` text,
  `bag_posisi` text,
  `bag` text,
  `subbag_posisi` text,
  `subbag` text,
  `bln_posisi` text,
  `bln` text,
  `thn_posisi` text,
  `thn` text,
  `reset_no` text,
  `prefix` text,
  `prefix_posisi` enum('kiri','kanan') DEFAULT NULL,
  `no_surat` text,
  `ket` text,
  `jenis_ns` enum('semua','sm','sk','disposisi') DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL,
  `tgl_ns` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `no_surat` text,
  `tgl_ns` varchar(12) DEFAULT NULL,
  `pengirim` text NOT NULL,
  `penerima` text,
  `perihal` text,
  `id_bagian` int(10) NOT NULL,
  `token_lampiran` text,
  `id_user` int(10) DEFAULT NULL,
  `dibaca` int(1) NOT NULL,
  `disposisi` text NOT NULL,
  `peringatan` int(1) NOT NULL,
  `tgl_sk` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sk`
--

INSERT INTO `tbl_sk` (`id_sk`, `no_surat`, `tgl_ns`, `pengirim`, `penerima`, `perihal`, `id_bagian`, `token_lampiran`, `id_user`, `dibaca`, `disposisi`, `peringatan`, `tgl_sk`) VALUES
(15, 'SKm/001', '19-10-2017', '', '', 'asdf', 0, 'f80d6dcd3750f67b1eded82f07d6e20a', 6, 1, '', 0, '19-10-2017');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sm`
--

CREATE TABLE `tbl_sm` (
  `id_sm` int(10) NOT NULL,
  `no_surat` text,
  `tgl_ns` varchar(12) DEFAULT NULL,
  `no_asal` text,
  `tgl_no_asal` varchar(12) DEFAULT NULL,
  `pengirim` text,
  `penerima` text,
  `perihal` text,
  `token_lampiran` varchar(100) DEFAULT NULL,
  `dibaca` int(1) NOT NULL,
  `disposisi` int(1) NOT NULL,
  `id_user` int(10) DEFAULT NULL,
  `tgl_sm` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sm`
--

INSERT INTO `tbl_sm` (`id_sm`, `no_surat`, `tgl_ns`, `no_asal`, `tgl_no_asal`, `pengirim`, `penerima`, `perihal`, `token_lampiran`, `dibaca`, `disposisi`, `id_user`, `tgl_sm`) VALUES
(15, '004.waw.2017.X.yahoo', '19-10-2017', 'SKm/002', '19-10-2017', '-', '6', 'ad', '7f754e483ab80366dd2fa48da9ddf8be', 1, 0, 6, '19-10-2017'),
(16, 'SKm/002', '19-10-2017', 'SKm/002', '19-10-2017', '-', '5', 'dwwx', 'd23257d581d8765e4032b873589842b2', 0, 0, 5, '19-10-2017');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` text NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `email` text,
  `alamat` text,
  `telp` varchar(30) DEFAULT NULL,
  `pengalaman` text,
  `level` enum('s_admin','admin','user') DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `tgl_daftar` varchar(20) DEFAULT NULL,
  `terakhir_login` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama_lengkap`, `email`, `alamat`, `telp`, `pengalaman`, `level`, `status`, `tgl_daftar`, `terakhir_login`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Anwar-kun', 'anwarsptr@gmail.com', '-', '-', '-', 's_admin', 'aktif', '07-10-2017 17:03:12', '21-10-2017 09:14:34'),
(5, 'admin2', 'c84258e9c39059a89ab77d846ddab909', '-', '-', '-', '-', '-', 'admin', 'aktif', '07-10-2017 17:30:08', '19-10-2017 20:09:50'),
(6, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'user', '-', '-', '-', '-', 'user', 'aktif', '07-10-2017 17:31:54', '19-10-2017 20:04:11');

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
  MODIFY `id_bagian` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_lampiran`
--
ALTER TABLE `tbl_lampiran`
  MODIFY `id_lampiran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `tbl_memo`
--
ALTER TABLE `tbl_memo`
  MODIFY `id_memo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  MODIFY `id_sm` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
