-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2023 at 05:45 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mbug`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis_beasiswa`
--

CREATE TABLE `jenis_beasiswa` (
  `id_beasiswa` int(3) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `asal` varchar(100) NOT NULL,
  `tahun_penerimaan` varchar(4) NOT NULL,
  `status_beasiswa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_beasiswa`
--

INSERT INTO `jenis_beasiswa` (`id_beasiswa`, `jenis`, `asal`, `tahun_penerimaan`, `status_beasiswa`) VALUES
(1, 'KARTU INDONESIA PINTAR KULIAH(KIPK)', 'KEMENDIKBUD', '2021', 1),
(17, 'Beasiswa LIPI', 'Pemerintah', '2022', 1);

-- --------------------------------------------------------

--
-- Table structure for table `laporan_akademik`
--

CREATE TABLE `laporan_akademik` (
  `id_akademik` int(10) NOT NULL,
  `id_beasiswa` int(3) NOT NULL,
  `id_penerima` int(8) NOT NULL,
  `semester` int(2) NOT NULL,
  `tahun_ajaran` varchar(13) NOT NULL,
  `ipk` float NOT NULL,
  `ipk_lokal` float NOT NULL,
  `ipk_uu` float NOT NULL,
  `rangkuman_nilai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan_akademik`
--

INSERT INTO `laporan_akademik` (`id_akademik`, `id_beasiswa`, `id_penerima`, `semester`, `tahun_ajaran`, `ipk`, `ipk_lokal`, `ipk_uu`, `rangkuman_nilai`) VALUES
(1, 1, 1, 6, 'ATA 2022/2023', 3.93, 3.91, 4, NULL),
(2, 1, 1, 7, 'PTA 2023/2024', 4, 4, 4, 'PTA');

-- --------------------------------------------------------

--
-- Table structure for table `laporan_keaktifan`
--

CREATE TABLE `laporan_keaktifan` (
  `id_keaktifan` int(10) NOT NULL,
  `id_beasiswa` int(3) NOT NULL,
  `id_penerima` int(8) NOT NULL,
  `semester` int(2) NOT NULL,
  `tahun_ajaran` varchar(13) NOT NULL,
  `krs` varchar(255) DEFAULT NULL,
  `jumlah_ditagihkan` int(11) NOT NULL,
  `jumlah_potongan` int(11) NOT NULL,
  `blanko_pembayaran` varchar(255) DEFAULT NULL,
  `bukti_pembayaran` varchar(255) DEFAULT NULL,
  `status_keaktifan` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan_keaktifan`
--

INSERT INTO `laporan_keaktifan` (`id_keaktifan`, `id_beasiswa`, `id_penerima`, `semester`, `tahun_ajaran`, `krs`, `jumlah_ditagihkan`, `jumlah_potongan`, `blanko_pembayaran`, `bukti_pembayaran`, `status_keaktifan`) VALUES
(1, 1, 1, 6, 'ATA 2022/2023', '', 11000000, 10000000, '', '', 1),
(2, 1, 4, 6, 'ATA 2020/2021', '-', 8000000, 4000000, '-', '-', 1);

-- --------------------------------------------------------

--
-- Table structure for table `laporan_mbkm`
--

CREATE TABLE `laporan_mbkm` (
  `id_mbkm` int(10) NOT NULL,
  `id_beasiswa` int(3) NOT NULL,
  `id_penerima` int(8) NOT NULL,
  `nama_mbkm` varchar(100) NOT NULL,
  `jenis_mbkm` varchar(100) NOT NULL,
  `periode` int(4) NOT NULL,
  `keterangan_mbkm` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan_mbkm`
--

INSERT INTO `laporan_mbkm` (`id_mbkm`, `id_beasiswa`, `id_penerima`, `nama_mbkm`, `jenis_mbkm`, `periode`, `keterangan_mbkm`) VALUES
(1, 1, 1, 'Bangkit Academy 2023', 'Studi/Proyek Independen', 2023, 'Lulus Machine learning Path'),
(2, 1, 1, 'Bangkit Academy 2023', 'Studi/Proyek Independen', 2021, '-');

-- --------------------------------------------------------

--
-- Table structure for table `laporan_prestasi`
--

CREATE TABLE `laporan_prestasi` (
  `id_prestasi` int(10) NOT NULL,
  `id_beasiswa` int(3) NOT NULL,
  `id_penerima` int(8) NOT NULL,
  `tingkat` varchar(50) NOT NULL,
  `jenis_prestasi` tinyint(1) NOT NULL,
  `nama_kegiatan` varchar(100) NOT NULL,
  `capaian` varchar(255) NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `penyelenggara` varchar(255) NOT NULL,
  `bukti_prestasi` varchar(255) DEFAULT NULL,
  `publikasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan_prestasi`
--

INSERT INTO `laporan_prestasi` (`id_prestasi`, `id_beasiswa`, `id_penerima`, `tingkat`, `jenis_prestasi`, `nama_kegiatan`, `capaian`, `tempat`, `tanggal`, `penyelenggara`, `bukti_prestasi`, `publikasi`) VALUES
(1, 1, 1, 'Nasional', 0, 'Bangkit Academy 2023', 'Lulus Bangkit Academy 2023', 'Rumah', '2023-07-16', 'Google, GoTo, Traveloka', NULL, 'none'),
(4, 1, 1, 'Provinsi', 0, 'Bangkit Academy 2023', 'Finalis', 'Rumah', '2023-08-15', 'Traveloka', '-', 'https://www.google.com/'),
(5, 1, 4, 'Provinsi', 0, 'Magang Mandiri', 'Lainnya', 'Rumah', '2023-08-18', 'Isa', '-', 'https://www.google.com/');

-- --------------------------------------------------------

--
-- Table structure for table `link_gform`
--

CREATE TABLE `link_gform` (
  `id_lgf` int(10) NOT NULL,
  `nama_form` varchar(100) NOT NULL,
  `id_beasiswa` int(3) NOT NULL,
  `tautan` varchar(100) NOT NULL,
  `tanggal_pembuatan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `link_gform`
--

INSERT INTO `link_gform` (`id_lgf`, `nama_form`, `id_beasiswa`, `tautan`, `tanggal_pembuatan`) VALUES
(1, 'Pendataan Peserta KIPK', 1, 'https://docs.google.com/forms', '2023-07-20'),
(2, 'Feedback Peserta KIPK', 1, 'https://www.google.com/', '2023-08-17');

-- --------------------------------------------------------

--
-- Table structure for table `log_aktivitas`
--

CREATE TABLE `log_aktivitas` (
  `id_log` int(15) NOT NULL,
  `log_last_login` datetime NOT NULL,
  `log_username` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_aktivitas`
--

INSERT INTO `log_aktivitas` (`id_log`, `log_last_login`, `log_username`) VALUES
(1, '2023-08-20 11:44:45', '10120698');

-- --------------------------------------------------------

--
-- Table structure for table `penerima_beasiswa`
--

CREATE TABLE `penerima_beasiswa` (
  `id_penerima` int(8) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `npm` varchar(10) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `jenis_kelamin` tinyint(1) NOT NULL,
  `tahun_diterima` int(4) NOT NULL,
  `status_penerima` tinyint(1) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penerima_beasiswa`
--

INSERT INTO `penerima_beasiswa` (`id_penerima`, `nama`, `npm`, `prodi`, `alamat`, `no_hp`, `jenis_kelamin`, `tahun_diterima`, `status_penerima`, `keterangan`) VALUES
(1, 'Aulia', '10120698', 'Sistem Informasi', 'Depok Tiga', '081237275191', 1, 2022, 2, ''),
(4, 'isa', '10120699', 'Teknik Informatika', 'sddasfasdas', '081288889999', 1, 1981, 2, '-');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(8) NOT NULL,
  `judul_pengumuman` varchar(100) NOT NULL,
  `tanggal_terbit` date NOT NULL,
  `tanggal_tarik` date NOT NULL,
  `penulis` varchar(10) NOT NULL,
  `deskripsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id_pengumuman`, `judul_pengumuman`, `tanggal_terbit`, `tanggal_tarik`, `penulis`, `deskripsi`) VALUES
(1, 'Batas Akhir pengumpulan SR dan SPTJM', '2023-08-18', '2023-08-28', '10120698', 'Batas Akhir Pengumpulan SR dan SPTJM untuk Kampus Merdeka Batch 6'),
(2, 'Jadwal UAS Penyetaraan MBKM', '2023-08-20', '2023-08-29', '-', 'UAS Penyetaraan untuk mahasiswa yang mengikuti MBKM akan dilaksanakan mulai 22 Agustus 2023 - 29 Agustus 2023.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(8) NOT NULL,
  `nama_user` varchar(100) DEFAULT NULL,
  `username` varchar(10) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `hak_akses` tinyint(1) NOT NULL,
  `last_login` date DEFAULT NULL,
  `status_user` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username`, `password`, `hak_akses`, `last_login`, `status_user`) VALUES
(1, 'Muhammad Aulia Nur Fadhillah', '10120698', 'owlowlowl', 1, '2023-08-20', 1),
(2, 'Isa Tarmana Mustopa', '10120699', 'isaisaisa', 0, '2023-08-18', 1),
(3, 'Annisa Umulfath', '10120700', 'mulumul', 1, '1900-01-15', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_beasiswa`
--
ALTER TABLE `jenis_beasiswa`
  ADD PRIMARY KEY (`id_beasiswa`);

--
-- Indexes for table `laporan_akademik`
--
ALTER TABLE `laporan_akademik`
  ADD PRIMARY KEY (`id_akademik`);

--
-- Indexes for table `laporan_keaktifan`
--
ALTER TABLE `laporan_keaktifan`
  ADD PRIMARY KEY (`id_keaktifan`);

--
-- Indexes for table `laporan_mbkm`
--
ALTER TABLE `laporan_mbkm`
  ADD PRIMARY KEY (`id_mbkm`);

--
-- Indexes for table `laporan_prestasi`
--
ALTER TABLE `laporan_prestasi`
  ADD PRIMARY KEY (`id_prestasi`);

--
-- Indexes for table `link_gform`
--
ALTER TABLE `link_gform`
  ADD PRIMARY KEY (`id_lgf`);

--
-- Indexes for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  ADD PRIMARY KEY (`id_log`),
  ADD UNIQUE KEY `log_username` (`log_username`);

--
-- Indexes for table `penerima_beasiswa`
--
ALTER TABLE `penerima_beasiswa`
  ADD PRIMARY KEY (`id_penerima`),
  ADD UNIQUE KEY `np` (`npm`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`),
  ADD UNIQUE KEY `penulis` (`penulis`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `uname` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_beasiswa`
--
ALTER TABLE `jenis_beasiswa`
  MODIFY `id_beasiswa` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `laporan_akademik`
--
ALTER TABLE `laporan_akademik`
  MODIFY `id_akademik` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `laporan_keaktifan`
--
ALTER TABLE `laporan_keaktifan`
  MODIFY `id_keaktifan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `laporan_mbkm`
--
ALTER TABLE `laporan_mbkm`
  MODIFY `id_mbkm` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `laporan_prestasi`
--
ALTER TABLE `laporan_prestasi`
  MODIFY `id_prestasi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `link_gform`
--
ALTER TABLE `link_gform`
  MODIFY `id_lgf` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  MODIFY `id_log` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penerima_beasiswa`
--
ALTER TABLE `penerima_beasiswa`
  MODIFY `id_penerima` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
