-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 06 Nov 2018 pada 03.17
-- Versi Server: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pemogramanweb_spp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `peserta_didik`
--

CREATE TABLE IF NOT EXISTS `peserta_didik` (
  `nis` char(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `alamat` text NOT NULL,
  `nomor_telepon_seluer` varchar(15) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `updater_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peserta_didik_rombel`
--

CREATE TABLE IF NOT EXISTS `peserta_didik_rombel` (
`id_rombel` int(11) NOT NULL,
  `nis` char(5) NOT NULL,
  `id_kelas` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `referensi_kelas`
--

CREATE TABLE IF NOT EXISTS `referensi_kelas` (
  `id_kelas` char(3) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `referensi_kelas`
--

INSERT INTO `referensi_kelas` (`id_kelas`, `nama_kelas`) VALUES
('111', 'X-MIPA.1'),
('112', 'X-MIPA.2'),
('121', 'XI-MIPA.1'),
('122', 'XI-MIPA.2'),
('131', 'XII-MIPA.1'),
('132', 'XII-MIPA.2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `referensi_tahun`
--

CREATE TABLE IF NOT EXISTS `referensi_tahun` (
  `id_tahun` char(2) NOT NULL,
  `nama_tahun` varchar(9) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `referensi_tahun`
--

INSERT INTO `referensi_tahun` (`id_tahun`, `nama_tahun`, `status`) VALUES
('18', '2018/2019', 1),
('19', '2019/2020', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_pembayaran`
--

CREATE TABLE IF NOT EXISTS `transaksi_pembayaran` (
`id_transaksi` int(11) NOT NULL,
  `nis` char(5) NOT NULL,
  `id_kelas` char(3) NOT NULL,
  `id_tahun` char(2) NOT NULL,
  `bulan_bayar` char(2) NOT NULL,
  `nominal` varchar(7) NOT NULL,
  `updater_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id_user` int(2) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `level` varchar(9) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username`, `password`, `level`) VALUES
(1, 'TAUFIQ MUSLIH', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `peserta_didik`
--
ALTER TABLE `peserta_didik`
 ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `peserta_didik_rombel`
--
ALTER TABLE `peserta_didik_rombel`
 ADD PRIMARY KEY (`id_rombel`);

--
-- Indexes for table `referensi_kelas`
--
ALTER TABLE `referensi_kelas`
 ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `referensi_tahun`
--
ALTER TABLE `referensi_tahun`
 ADD PRIMARY KEY (`id_tahun`);

--
-- Indexes for table `transaksi_pembayaran`
--
ALTER TABLE `transaksi_pembayaran`
 ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `peserta_didik_rombel`
--
ALTER TABLE `peserta_didik_rombel`
MODIFY `id_rombel` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transaksi_pembayaran`
--
ALTER TABLE `transaksi_pembayaran`
MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
