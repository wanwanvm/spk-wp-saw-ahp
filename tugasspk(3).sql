-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Des 2022 pada 12.53
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugasspk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_alternatif`
--

CREATE TABLE `tb_alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `id_kasus` int(11) NOT NULL,
  `kd_alternatif` varchar(10) NOT NULL,
  `nm_alternatif` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_alternatif`
--

INSERT INTO `tb_alternatif` (`id_alternatif`, `id_kasus`, `kd_alternatif`, `nm_alternatif`) VALUES
(15, 4, 'A1', 'CK-1'),
(16, 4, 'A2', 'CK-2'),
(17, 4, 'A3', 'CK-3'),
(18, 4, 'A4', 'CK-4'),
(19, 4, 'A5', 'CK-5'),
(20, 4, 'A6', 'CK-6'),
(21, 4, 'A7', 'CK-7'),
(22, 4, 'A8', 'CK-8'),
(23, 4, 'A9', 'CK-9'),
(24, 4, 'A10', 'CK-10'),
(25, 4, 'A11', 'CK-11'),
(26, 4, 'A12', 'CK-12'),
(28, 7, 'R1', 'Warung Mang Ujang'),
(29, 7, 'R2', 'Warung Cinta Rasa'),
(30, 7, 'R3', 'Warung Pedo'),
(31, 7, 'R4', 'Warung Persiwangi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_atribut`
--

CREATE TABLE `tb_atribut` (
  `id_atribut` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_kreteria` int(11) NOT NULL,
  `nilai_atribut` double NOT NULL,
  `satuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_atribut`
--

INSERT INTO `tb_atribut` (`id_atribut`, `id_alternatif`, `id_kreteria`, `nilai_atribut`, `satuan`) VALUES
(7, 15, 7, 1, 'SMA'),
(8, 15, 8, 5, '5 Tahun'),
(9, 15, 9, 1, 'Single'),
(10, 15, 11, 5, '5 Juta'),
(11, 16, 6, 27, '27 Tahun'),
(13, 15, 10, 127, '127 IQ'),
(14, 16, 7, 5, 'S1'),
(15, 16, 8, 2, '2 Tahun'),
(16, 16, 9, 2, 'Menikah'),
(17, 16, 10, 110, '110 IQ'),
(19, 16, 11, 6.5, '6.5 Juta'),
(20, 17, 6, 26, '26 Tahun'),
(21, 17, 7, 4, 'D3'),
(22, 17, 8, 5, '5 Tahun'),
(23, 17, 9, 1, 'Single'),
(24, 17, 10, 115, '115 IQ'),
(25, 17, 11, 6, '6 Juta'),
(26, 18, 6, 21, '21 Tahun'),
(27, 18, 7, 3, 'D2'),
(28, 18, 8, 2, '2 Tahun'),
(29, 18, 9, 2, 'Menikah'),
(30, 18, 10, 109, '109 IQ'),
(32, 19, 6, 20, '20 Tahun'),
(33, 19, 7, 2, 'D1'),
(34, 19, 8, 2, '2 Tahun'),
(35, 19, 9, 1, 'Single'),
(36, 19, 10, 112, '112 IQ'),
(37, 19, 11, 5, '5 Juta'),
(38, 20, 6, 25, '25 Tahun'),
(39, 20, 7, 5, 'S1'),
(40, 20, 8, 1, '1 Tahun'),
(41, 20, 9, 1, 'Single'),
(42, 20, 10, 117, '117 IQ'),
(44, 21, 6, 29, '29 Tahun'),
(45, 21, 7, 1, 'SMA'),
(46, 21, 8, 10, '10 Tahun'),
(47, 21, 9, 2, 'Menikah'),
(48, 21, 10, 120, '120 IQ'),
(49, 21, 11, 5, '5 Juta'),
(50, 22, 6, 22, '22 Tahun'),
(51, 22, 7, 5, 'S1'),
(52, 22, 8, 3, '3 Tahun'),
(53, 22, 9, 1, 'Single'),
(54, 22, 10, 110, '110 IQ'),
(57, 23, 6, 24, '24 Tahun'),
(58, 23, 7, 4, 'D3'),
(59, 23, 8, 7, '7 Tahun'),
(60, 23, 9, 1, 'Single'),
(61, 23, 10, 114, '114 IQ'),
(62, 23, 11, 5, '5 Juta'),
(63, 24, 6, 23, '23 Tahun'),
(64, 24, 7, 3, 'D2'),
(65, 24, 8, 7, '7 Tahun'),
(66, 24, 9, 1, 'Single'),
(67, 24, 10, 117, '117 IQ'),
(69, 18, 11, 5.5, '5.5 Juta'),
(70, 20, 11, 5.5, '5.5 Juta'),
(71, 24, 11, 5.5, '5.5 Juta'),
(72, 25, 6, 25, '25 Tahun'),
(73, 25, 7, 5, 'S1'),
(74, 25, 8, 2, '2 Tahun'),
(75, 25, 9, 2, 'Menikah'),
(76, 25, 10, 117, '117 IQ'),
(77, 25, 11, 7, '7 Juta'),
(78, 26, 6, 29, '29 Tahun'),
(79, 26, 7, 5, 'S1'),
(80, 26, 8, 4, '4 Tahun'),
(81, 26, 9, 1, 'Single'),
(82, 26, 10, 108, '108 IQ'),
(83, 26, 11, 7, '7 Juta'),
(84, 15, 6, 20, '20 Tahun'),
(85, 22, 11, 5.5, '5.5 Juta'),
(91, 28, 13, 7, '-'),
(92, 29, 13, 9, '-'),
(93, 30, 13, 6, '-'),
(94, 31, 13, 9, '-'),
(95, 28, 14, 10000, '-'),
(96, 29, 14, 11000, '-'),
(97, 30, 14, 9000, '-'),
(98, 31, 14, 6000, '-'),
(99, 28, 15, 6, '-'),
(100, 29, 15, 8, '-'),
(101, 30, 15, 5, '-'),
(102, 31, 15, 7, '-'),
(103, 28, 16, 9, '-'),
(104, 29, 16, 8, '-'),
(105, 30, 16, 7, '-'),
(106, 31, 16, 8, '-'),
(107, 28, 17, 150, '-'),
(109, 30, 17, 120, '-'),
(110, 31, 17, 100, '-'),
(111, 29, 17, 250, '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_hitungsaw`
--

CREATE TABLE `tb_hitungsaw` (
  `id_hitungsaw` int(11) NOT NULL,
  `id_kreteria` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `nilai_hitung` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_hitungsaw`
--

INSERT INTO `tb_hitungsaw` (`id_hitungsaw`, `id_kreteria`, `id_alternatif`, `nilai_hitung`) VALUES
(1, 13, 28, 0.18300653594771388),
(2, 13, 29, 0.23529411764706),
(3, 13, 30, 0.1568627450980408),
(4, 13, 31, 0.23529411764706),
(5, 14, 30, 0.19607843137254763),
(6, 14, 31, 0.29411764705882),
(7, 14, 28, 0.176470588235292),
(8, 14, 29, 0.1604278074866304),
(9, 15, 28, 0.08823529411764751),
(10, 15, 29, 0.11764705882353),
(11, 15, 30, 0.07352941176470626),
(12, 15, 31, 0.10294117647058876),
(13, 16, 29, 0.15686274509803574),
(14, 16, 30, 0.1372549019607815),
(15, 16, 31, 0.15686274509803574),
(16, 16, 28, 0.17647058823529),
(17, 17, 29, 0.070588235294116),
(18, 17, 28, 0.11764705882352725),
(19, 17, 30, 0.14705882352940775),
(20, 17, 31, 0.17647058823529);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kasus`
--

CREATE TABLE `tb_kasus` (
  `id_kasus` int(11) NOT NULL,
  `nm_kasus` varchar(100) NOT NULL,
  `tgl_kasus` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kasus`
--

INSERT INTO `tb_kasus` (`id_kasus`, `nm_kasus`, `tgl_kasus`) VALUES
(4, 'Pemilihan Karyawan Baru', '2022-12-06 23:56:21'),
(7, 'Pemilihan Warung terbaik', '2022-12-11 15:06:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kreteria`
--

CREATE TABLE `tb_kreteria` (
  `id_kreteria` int(11) NOT NULL,
  `id_kasus` int(11) NOT NULL,
  `nm_kreteria` varchar(100) NOT NULL,
  `bobot` int(10) NOT NULL,
  `jns_kreteria` enum('cost','benefit') NOT NULL,
  `kd_kreteria` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kreteria`
--

INSERT INTO `tb_kreteria` (`id_kreteria`, `id_kasus`, `nm_kreteria`, `bobot`, `jns_kreteria`, `kd_kreteria`) VALUES
(6, 4, 'Usia', 5, 'cost', 'C1'),
(7, 4, 'Pendidikan', 8, 'benefit', 'C2'),
(8, 4, 'Pengalaman Kerja', 9, 'benefit', 'C3'),
(9, 4, 'Status Perkawinan', 3, 'cost', 'C4'),
(10, 4, 'Kecerdasan', 7, 'benefit', 'C5'),
(11, 4, 'Permintaan Gaji', 7, 'cost', 'C6'),
(13, 7, 'Rasa Makanan', 4, 'benefit', 'C1'),
(14, 7, 'Harga Makanan', 5, 'cost', 'C2'),
(15, 7, 'Pelayanan', 2, 'benefit', 'C3'),
(16, 7, 'Suasana', 3, 'benefit', 'C4'),
(17, 7, 'Jarak dalam meter', 3, 'cost', 'C5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nilaiwp`
--

CREATE TABLE `tb_nilaiwp` (
  `id_nilaiwp` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_kasus` int(11) NOT NULL,
  `nilai_wp` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_nilaiwp`
--

INSERT INTO `tb_nilaiwp` (`id_nilaiwp`, `id_alternatif`, `id_kasus`, `nilai_wp`) VALUES
(1, 28, 7, 0.2355877077721),
(2, 29, 7, 0.22499938905864),
(3, 30, 7, 0.22823595607632),
(4, 31, 7, 0.31117694709293);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nomalisasi_artribut`
--

CREATE TABLE `tb_nomalisasi_artribut` (
  `id_normaliasi` int(11) NOT NULL,
  `id_atribut` int(11) NOT NULL,
  `id_kreteria` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `nilainormalisasi` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_nomalisasi_artribut`
--

INSERT INTO `tb_nomalisasi_artribut` (`id_normaliasi`, `id_atribut`, `id_kreteria`, `id_alternatif`, `nilainormalisasi`) VALUES
(1, 91, 13, 28, 0.77777777777778),
(2, 92, 13, 29, 1),
(3, 93, 13, 30, 0.66666666666667),
(4, 94, 13, 31, 1),
(5, 95, 14, 28, 0.6),
(6, 96, 14, 29, 0.54545454545455),
(7, 97, 14, 30, 0.66666666666667),
(8, 98, 14, 31, 1),
(9, 99, 15, 28, 0.75),
(10, 100, 15, 29, 1),
(11, 101, 15, 30, 0.625),
(12, 102, 15, 31, 0.875),
(13, 103, 16, 28, 1),
(14, 104, 16, 29, 0.88888888888889),
(15, 105, 16, 30, 0.77777777777778),
(16, 106, 16, 31, 0.88888888888889),
(17, 107, 17, 28, 0.66666666666667),
(18, 109, 17, 30, 0.83333333333333),
(19, 110, 17, 31, 1),
(20, 111, 17, 29, 0.4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_normalisasikreteriawp`
--

CREATE TABLE `tb_normalisasikreteriawp` (
  `id_kreteria` int(11) NOT NULL,
  `nilainorbobot` double NOT NULL,
  `nilaiwjbobot` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_normalisasikreteriawp`
--

INSERT INTO `tb_normalisasikreteriawp` (`id_kreteria`, `nilainorbobot`, `nilaiwjbobot`) VALUES
(13, 0.23529411764706, 0.23529411764706),
(14, 0.29411764705882, -0.29411764705882),
(15, 0.11764705882353, 0.11764705882353),
(16, 0.17647058823529, 0.17647058823529),
(17, 0.17647058823529, -0.17647058823529);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_normalisasi_atribut_wp`
--

CREATE TABLE `tb_normalisasi_atribut_wp` (
  `id_normaliasiwp` int(11) NOT NULL,
  `id_atribut` int(11) NOT NULL,
  `id_kreteria` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `nilaiwj` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_normalisasi_atribut_wp`
--

INSERT INTO `tb_normalisasi_atribut_wp` (`id_normaliasiwp`, `id_atribut`, `id_kreteria`, `id_alternatif`, `nilaiwj`) VALUES
(1, 91, 13, 28, 1.5806896063645),
(2, 92, 13, 29, 1.6769790969218),
(3, 93, 13, 30, 1.5243841056674),
(4, 94, 13, 31, 1.6769790969218),
(5, 95, 14, 28, 0.066608462908094),
(6, 96, 14, 29, 0.064767195593942),
(7, 97, 14, 30, 0.068704866048747),
(8, 98, 14, 31, 0.077406787510512),
(9, 99, 15, 28, 1.2346595100138),
(10, 100, 15, 29, 1.2771616839561),
(11, 101, 15, 30, 1.2084585680075),
(12, 102, 15, 31, 1.2572547897561),
(13, 103, 16, 28, 1.4736547115524),
(14, 104, 16, 29, 1.4433405770299),
(15, 105, 16, 30, 1.4097267744919),
(16, 106, 16, 31, 1.4433405770299),
(17, 107, 17, 28, 0.41303218561695),
(18, 109, 17, 30, 0.42962115908022),
(19, 110, 17, 31, 0.44366873309787),
(20, 111, 17, 29, 0.37742800032744);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_normalisasi_bobot`
--

CREATE TABLE `tb_normalisasi_bobot` (
  `id_norbobot` int(11) NOT NULL,
  `id_kreteria` int(11) NOT NULL,
  `nilainorbobot` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_normalisasi_bobot`
--

INSERT INTO `tb_normalisasi_bobot` (`id_norbobot`, `id_kreteria`, `nilainorbobot`) VALUES
(1, 13, 0.23529411764706),
(2, 14, 0.29411764705882),
(3, 15, 0.11764705882353),
(4, 16, 0.17647058823529),
(5, 17, 0.17647058823529);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_panitia`
--

CREATE TABLE `tb_panitia` (
  `id_panitia` int(11) NOT NULL,
  `id_asdep` int(11) NOT NULL,
  `email_panitia` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `nama_panitia` varchar(100) NOT NULL,
  `foto_panitia` text NOT NULL,
  `status` enum('proposal','penghargaan','database') NOT NULL,
  `nama_kunci` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_panitia`
--

INSERT INTO `tb_panitia` (`id_panitia`, `id_asdep`, `email_panitia`, `username`, `password`, `nama_panitia`, `foto_panitia`, `status`, `nama_kunci`) VALUES
(1, 1, 'miswanvm@gmail.com', 'database2', '$2y$10$vN7rZSb9o705fsUz1fCJve6icQ6XOY90THFZ7gpYFGSRayNePsHom', 'Database', '', 'database', 'database'),
(10, 1, 'wanwanvm41@gmail.com', 'penghargaan', '$2y$10$vN7rZSb9o705fsUz1fCJve6icQ6XOY90THFZ7gpYFGSRayNePsHom', 'user penghargaan', '', 'penghargaan', 'penghargaan'),
(15, 4, 'wanwanvm@gmail.com', 'proposal', '$2y$10$Dkg2E9gwDkkf65vxISZacOfvcpgZmH4Myfp.LncftWwYktQTytfXO', 'Sekretaris Deputi III', '', 'proposal', 'proposal'),
(19, 1, 'asdepkpo@gmail.com', 'database', '$2y$10$N7E/83niKsLzAqEIUupjZOZdFhtyYZFyNIXIRdpBL0RPo3O5XLqRi', 'Asisten Deputi Kemitraan dan Penghargaan Olahraga', '', 'database', 'database'),
(18, 1, 'syanti.amir@gmail.com', 'Sriyanti', '$2y$10$eapWA/wV7/XA721JT3EL3OMT4ygv5FYJzcoIziaBGJ.MtVfAuscw.', 'Sriyanti', '-', 'database', 'database'),
(20, 4, 'wanwanvm41@gmail.com', 'database', '$2y$10$vN7rZSb9o705fsUz1fCJve6icQ6XOY90THFZ7gpYFGSRayNePsHom', 'Database', '', 'database', 'database'),
(21, 4, 'email@gmail.com', 'deputi', '$2y$10$PKZY4O/blREmoh5ide.1xOK5idXad6YRyd.zJMT6RoCpvtwF7K98S', 'Deputi Pembudayaan Olahraga', 'log_kemenpora.png', 'proposal', 'deputi'),
(22, 3, 'asdepsentra@gmail.com', 'asdepsentra', '$2y$10$PKZY4O/blREmoh5ide.1xOK5idXad6YRyd.zJMT6RoCpvtwF7K98S', 'Asisten Deputi Pengelolaan Pembinaan Sentra dan Sekolah Khusus Olahraga', 'log_kemenpora.png', 'proposal', 'asdep');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_si`
--

CREATE TABLE `tb_si` (
  `id_si` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_kasus` int(11) NOT NULL,
  `nilaisi` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_si`
--

INSERT INTO `tb_si` (`id_si`, `id_alternatif`, `id_kasus`, `nilaisi`) VALUES
(1, 28, 7, 0.079123018638552),
(2, 29, 7, 0.075566891933817),
(3, 30, 7, 0.076653905152319),
(4, 31, 7, 0.10450994925652);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_alternatif`
--
ALTER TABLE `tb_alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indeks untuk tabel `tb_atribut`
--
ALTER TABLE `tb_atribut`
  ADD PRIMARY KEY (`id_atribut`);

--
-- Indeks untuk tabel `tb_hitungsaw`
--
ALTER TABLE `tb_hitungsaw`
  ADD PRIMARY KEY (`id_hitungsaw`);

--
-- Indeks untuk tabel `tb_kasus`
--
ALTER TABLE `tb_kasus`
  ADD PRIMARY KEY (`id_kasus`);

--
-- Indeks untuk tabel `tb_kreteria`
--
ALTER TABLE `tb_kreteria`
  ADD PRIMARY KEY (`id_kreteria`);

--
-- Indeks untuk tabel `tb_nilaiwp`
--
ALTER TABLE `tb_nilaiwp`
  ADD PRIMARY KEY (`id_nilaiwp`);

--
-- Indeks untuk tabel `tb_nomalisasi_artribut`
--
ALTER TABLE `tb_nomalisasi_artribut`
  ADD PRIMARY KEY (`id_normaliasi`);

--
-- Indeks untuk tabel `tb_normalisasikreteriawp`
--
ALTER TABLE `tb_normalisasikreteriawp`
  ADD PRIMARY KEY (`id_kreteria`);

--
-- Indeks untuk tabel `tb_normalisasi_atribut_wp`
--
ALTER TABLE `tb_normalisasi_atribut_wp`
  ADD PRIMARY KEY (`id_normaliasiwp`);

--
-- Indeks untuk tabel `tb_normalisasi_bobot`
--
ALTER TABLE `tb_normalisasi_bobot`
  ADD PRIMARY KEY (`id_norbobot`);

--
-- Indeks untuk tabel `tb_panitia`
--
ALTER TABLE `tb_panitia`
  ADD PRIMARY KEY (`id_panitia`);

--
-- Indeks untuk tabel `tb_si`
--
ALTER TABLE `tb_si`
  ADD PRIMARY KEY (`id_si`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_alternatif`
--
ALTER TABLE `tb_alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `tb_atribut`
--
ALTER TABLE `tb_atribut`
  MODIFY `id_atribut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT untuk tabel `tb_hitungsaw`
--
ALTER TABLE `tb_hitungsaw`
  MODIFY `id_hitungsaw` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `tb_kasus`
--
ALTER TABLE `tb_kasus`
  MODIFY `id_kasus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_nilaiwp`
--
ALTER TABLE `tb_nilaiwp`
  MODIFY `id_nilaiwp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_nomalisasi_artribut`
--
ALTER TABLE `tb_nomalisasi_artribut`
  MODIFY `id_normaliasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `tb_normalisasikreteriawp`
--
ALTER TABLE `tb_normalisasikreteriawp`
  MODIFY `id_kreteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tb_normalisasi_atribut_wp`
--
ALTER TABLE `tb_normalisasi_atribut_wp`
  MODIFY `id_normaliasiwp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `tb_normalisasi_bobot`
--
ALTER TABLE `tb_normalisasi_bobot`
  MODIFY `id_norbobot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_panitia`
--
ALTER TABLE `tb_panitia`
  MODIFY `id_panitia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tb_si`
--
ALTER TABLE `tb_si`
  MODIFY `id_si` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
