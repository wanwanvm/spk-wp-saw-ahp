-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Des 2022 pada 18.07
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
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `id_kasus` int(11) NOT NULL,
  `kd_alternatif` varchar(10) NOT NULL,
  `nm_alternatif` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `id_kasus`, `kd_alternatif`, `nm_alternatif`) VALUES
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
-- Struktur dari tabel `ir`
--

CREATE TABLE `ir` (
  `jumlah` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ir`
--

INSERT INTO `ir` (`jumlah`, `nilai`) VALUES
(1, 0),
(2, 0),
(3, 0.58),
(4, 0.9),
(5, 1.12),
(6, 1.24),
(7, 1.32),
(8, 1.41),
(9, 1.45),
(10, 1.49),
(11, 1.51),
(12, 1.48),
(13, 1.56),
(14, 1.57),
(15, 1.59);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kreteria` int(11) NOT NULL,
  `id_kasus` int(11) NOT NULL,
  `nm_kreteria` varchar(100) NOT NULL,
  `bobot` int(10) NOT NULL,
  `jns_kreteria` enum('cost','benefit') NOT NULL,
  `kd_kreteria` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kreteria`, `id_kasus`, `nm_kreteria`, `bobot`, `jns_kreteria`, `kd_kreteria`) VALUES
(1, 9, 'Harga Makanan', 5, 'cost', 'C1'),
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
-- Struktur dari tabel `perbandingan_alternatif`
--

CREATE TABLE `perbandingan_alternatif` (
  `id` int(11) NOT NULL,
  `alternatif1` int(11) NOT NULL,
  `alternatif2` int(11) NOT NULL,
  `pembanding` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `perbandingan_alternatif`
--

INSERT INTO `perbandingan_alternatif` (`id`, `alternatif1`, `alternatif2`, `pembanding`, `nilai`) VALUES
(1, 15, 16, 6, 1),
(2, 15, 17, 6, 1),
(3, 15, 18, 6, 1),
(4, 15, 19, 6, 1),
(5, 15, 20, 6, 1),
(6, 15, 21, 6, 1),
(7, 15, 22, 6, 1),
(8, 15, 23, 6, 1),
(9, 15, 24, 6, 1),
(10, 15, 25, 6, 1),
(11, 15, 26, 6, 1),
(12, 16, 17, 6, 1),
(13, 16, 18, 6, 1),
(14, 16, 19, 6, 1),
(15, 16, 20, 6, 1),
(16, 16, 21, 6, 1),
(17, 16, 22, 6, 1),
(18, 16, 23, 6, 1),
(19, 16, 24, 6, 1),
(20, 16, 25, 6, 1),
(21, 16, 26, 6, 1),
(22, 17, 18, 6, 1),
(23, 17, 19, 6, 1),
(24, 17, 20, 6, 1),
(25, 17, 21, 6, 1),
(26, 17, 22, 6, 1),
(27, 17, 23, 6, 1),
(28, 17, 24, 6, 1),
(29, 17, 25, 6, 1),
(30, 17, 26, 6, 1),
(31, 18, 19, 6, 1),
(32, 18, 20, 6, 1),
(33, 18, 21, 6, 1),
(34, 18, 22, 6, 1),
(35, 18, 23, 6, 1),
(36, 18, 24, 6, 1),
(37, 18, 25, 6, 1),
(38, 18, 26, 6, 1),
(39, 19, 20, 6, 1),
(40, 19, 21, 6, 1),
(41, 19, 22, 6, 1),
(42, 19, 23, 6, 1),
(43, 19, 24, 6, 1),
(44, 19, 25, 6, 1),
(45, 19, 26, 6, 1),
(46, 20, 21, 6, 1),
(47, 20, 22, 6, 1),
(48, 20, 23, 6, 1),
(49, 20, 24, 6, 1),
(50, 20, 25, 6, 1),
(51, 20, 26, 6, 1),
(52, 21, 22, 6, 1),
(53, 21, 23, 6, 1),
(54, 21, 24, 6, 1),
(55, 21, 25, 6, 1),
(56, 21, 26, 6, 1),
(57, 22, 23, 6, 1),
(58, 22, 24, 6, 1),
(59, 22, 25, 6, 1),
(60, 22, 26, 6, 1),
(61, 23, 24, 6, 1),
(62, 23, 25, 6, 1),
(63, 23, 26, 6, 1),
(64, 24, 25, 6, 1),
(65, 24, 26, 6, 1),
(66, 25, 26, 6, 1),
(67, 15, 16, 11, 1),
(68, 15, 17, 11, 1),
(69, 15, 18, 11, 1),
(70, 15, 19, 11, 1),
(71, 15, 20, 11, 1),
(72, 15, 21, 11, 1),
(73, 15, 22, 11, 1),
(74, 15, 23, 11, 1),
(75, 15, 24, 11, 1),
(76, 15, 25, 11, 1),
(77, 15, 26, 11, 1),
(78, 16, 17, 11, 1),
(79, 16, 18, 11, 1),
(80, 16, 19, 11, 1),
(81, 16, 20, 11, 1),
(82, 16, 21, 11, 1),
(83, 16, 22, 11, 1),
(84, 16, 23, 11, 1),
(85, 16, 24, 11, 1),
(86, 16, 25, 11, 1),
(87, 16, 26, 11, 1),
(88, 17, 18, 11, 1),
(89, 17, 19, 11, 1),
(90, 17, 20, 11, 1),
(91, 17, 21, 11, 1),
(92, 17, 22, 11, 1),
(93, 17, 23, 11, 1),
(94, 17, 24, 11, 1),
(95, 17, 25, 11, 1),
(96, 17, 26, 11, 1),
(97, 18, 19, 11, 1),
(98, 18, 20, 11, 1),
(99, 18, 21, 11, 1),
(100, 18, 22, 11, 1),
(101, 18, 23, 11, 1),
(102, 18, 24, 11, 1),
(103, 18, 25, 11, 1),
(104, 18, 26, 11, 1),
(105, 19, 20, 11, 1),
(106, 19, 21, 11, 1),
(107, 19, 22, 11, 1),
(108, 19, 23, 11, 1),
(109, 19, 24, 11, 1),
(110, 19, 25, 11, 1),
(111, 19, 26, 11, 1),
(112, 20, 21, 11, 1),
(113, 20, 22, 11, 1),
(114, 20, 23, 11, 1),
(115, 20, 24, 11, 1),
(116, 20, 25, 11, 1),
(117, 20, 26, 11, 1),
(118, 21, 22, 11, 1),
(119, 21, 23, 11, 1),
(120, 21, 24, 11, 1),
(121, 21, 25, 11, 1),
(122, 21, 26, 11, 1),
(123, 22, 23, 11, 1),
(124, 22, 24, 11, 1),
(125, 22, 25, 11, 1),
(126, 22, 26, 11, 1),
(127, 23, 24, 11, 1),
(128, 23, 25, 11, 1),
(129, 23, 26, 11, 1),
(130, 24, 25, 11, 1),
(131, 24, 26, 11, 1),
(132, 25, 26, 11, 1),
(133, 15, 16, 7, 1),
(134, 15, 17, 7, 1),
(135, 15, 18, 7, 1),
(136, 15, 19, 7, 1),
(137, 15, 20, 7, 1),
(138, 15, 21, 7, 1),
(139, 15, 22, 7, 1),
(140, 15, 23, 7, 1),
(141, 15, 24, 7, 1),
(142, 15, 25, 7, 1),
(143, 15, 26, 7, 1),
(144, 16, 17, 7, 1),
(145, 16, 18, 7, 1),
(146, 16, 19, 7, 1),
(147, 16, 20, 7, 1),
(148, 16, 21, 7, 1),
(149, 16, 22, 7, 1),
(150, 16, 23, 7, 1),
(151, 16, 24, 7, 1),
(152, 16, 25, 7, 1),
(153, 16, 26, 7, 1),
(154, 17, 18, 7, 1),
(155, 17, 19, 7, 1),
(156, 17, 20, 7, 1),
(157, 17, 21, 7, 1),
(158, 17, 22, 7, 1),
(159, 17, 23, 7, 1),
(160, 17, 24, 7, 1),
(161, 17, 25, 7, 1),
(162, 17, 26, 7, 1),
(163, 18, 19, 7, 1),
(164, 18, 20, 7, 1),
(165, 18, 21, 7, 1),
(166, 18, 22, 7, 1),
(167, 18, 23, 7, 1),
(168, 18, 24, 7, 1),
(169, 18, 25, 7, 1),
(170, 18, 26, 7, 1),
(171, 19, 20, 7, 1),
(172, 19, 21, 7, 1),
(173, 19, 22, 7, 1),
(174, 19, 23, 7, 1),
(175, 19, 24, 7, 1),
(176, 19, 25, 7, 1),
(177, 19, 26, 7, 1),
(178, 20, 21, 7, 1),
(179, 20, 22, 7, 1),
(180, 20, 23, 7, 1),
(181, 20, 24, 7, 1),
(182, 20, 25, 7, 1),
(183, 20, 26, 7, 1),
(184, 21, 22, 7, 1),
(185, 21, 23, 7, 1),
(186, 21, 24, 7, 1),
(187, 21, 25, 7, 1),
(188, 21, 26, 7, 1),
(189, 22, 23, 7, 1),
(190, 22, 24, 7, 1),
(191, 22, 25, 7, 1),
(192, 22, 26, 7, 1),
(193, 23, 24, 7, 1),
(194, 23, 25, 7, 1),
(195, 23, 26, 7, 1),
(196, 24, 25, 7, 1),
(197, 24, 26, 7, 1),
(198, 25, 26, 7, 1),
(199, 15, 16, 8, 1),
(200, 15, 17, 8, 1),
(201, 15, 18, 8, 1),
(202, 15, 19, 8, 1),
(203, 15, 20, 8, 1),
(204, 15, 21, 8, 1),
(205, 15, 22, 8, 1),
(206, 15, 23, 8, 1),
(207, 15, 24, 8, 1),
(208, 15, 25, 8, 1),
(209, 15, 26, 8, 1),
(210, 16, 17, 8, 1),
(211, 16, 18, 8, 1),
(212, 16, 19, 8, 1),
(213, 16, 20, 8, 1),
(214, 16, 21, 8, 1),
(215, 16, 22, 8, 1),
(216, 16, 23, 8, 1),
(217, 16, 24, 8, 1),
(218, 16, 25, 8, 1),
(219, 16, 26, 8, 1),
(220, 17, 18, 8, 1),
(221, 17, 19, 8, 1),
(222, 17, 20, 8, 1),
(223, 17, 21, 8, 1),
(224, 17, 22, 8, 1),
(225, 17, 23, 8, 1),
(226, 17, 24, 8, 1),
(227, 17, 25, 8, 1),
(228, 17, 26, 8, 1),
(229, 18, 19, 8, 1),
(230, 18, 20, 8, 1),
(231, 18, 21, 8, 1),
(232, 18, 22, 8, 1),
(233, 18, 23, 8, 1),
(234, 18, 24, 8, 1),
(235, 18, 25, 8, 1),
(236, 18, 26, 8, 1),
(237, 19, 20, 8, 1),
(238, 19, 21, 8, 1),
(239, 19, 22, 8, 1),
(240, 19, 23, 8, 1),
(241, 19, 24, 8, 1),
(242, 19, 25, 8, 1),
(243, 19, 26, 8, 1),
(244, 20, 21, 8, 1),
(245, 20, 22, 8, 1),
(246, 20, 23, 8, 1),
(247, 20, 24, 8, 1),
(248, 20, 25, 8, 1),
(249, 20, 26, 8, 1),
(250, 21, 22, 8, 1),
(251, 21, 23, 8, 1),
(252, 21, 24, 8, 1),
(253, 21, 25, 8, 1),
(254, 21, 26, 8, 1),
(255, 22, 23, 8, 1),
(256, 22, 24, 8, 1),
(257, 22, 25, 8, 1),
(258, 22, 26, 8, 1),
(259, 23, 24, 8, 1),
(260, 23, 25, 8, 1),
(261, 23, 26, 8, 1),
(262, 24, 25, 8, 1),
(263, 24, 26, 8, 1),
(264, 25, 26, 8, 1),
(265, 15, 16, 9, 1),
(266, 15, 17, 9, 1),
(267, 15, 18, 9, 1),
(268, 15, 19, 9, 1),
(269, 15, 20, 9, 1),
(270, 15, 21, 9, 1),
(271, 15, 22, 9, 1),
(272, 15, 23, 9, 1),
(273, 15, 24, 9, 1),
(274, 15, 25, 9, 1),
(275, 15, 26, 9, 1),
(276, 16, 17, 9, 1),
(277, 16, 18, 9, 1),
(278, 16, 19, 9, 1),
(279, 16, 20, 9, 1),
(280, 16, 21, 9, 1),
(281, 16, 22, 9, 1),
(282, 16, 23, 9, 1),
(283, 16, 24, 9, 1),
(284, 16, 25, 9, 1),
(285, 16, 26, 9, 1),
(286, 17, 18, 9, 1),
(287, 17, 19, 9, 1),
(288, 17, 20, 9, 1),
(289, 17, 21, 9, 1),
(290, 17, 22, 9, 1),
(291, 17, 23, 9, 1),
(292, 17, 24, 9, 1),
(293, 17, 25, 9, 1),
(294, 17, 26, 9, 1),
(295, 18, 19, 9, 1),
(296, 18, 20, 9, 1),
(297, 18, 21, 9, 1),
(298, 18, 22, 9, 1),
(299, 18, 23, 9, 1),
(300, 18, 24, 9, 1),
(301, 18, 25, 9, 1),
(302, 18, 26, 9, 1),
(303, 19, 20, 9, 1),
(304, 19, 21, 9, 1),
(305, 19, 22, 9, 1),
(306, 19, 23, 9, 1),
(307, 19, 24, 9, 1),
(308, 19, 25, 9, 1),
(309, 19, 26, 9, 1),
(310, 20, 21, 9, 1),
(311, 20, 22, 9, 1),
(312, 20, 23, 9, 1),
(313, 20, 24, 9, 1),
(314, 20, 25, 9, 1),
(315, 20, 26, 9, 1),
(316, 21, 22, 9, 1),
(317, 21, 23, 9, 1),
(318, 21, 24, 9, 1),
(319, 21, 25, 9, 1),
(320, 21, 26, 9, 1),
(321, 22, 23, 9, 1),
(322, 22, 24, 9, 1),
(323, 22, 25, 9, 1),
(324, 22, 26, 9, 1),
(325, 23, 24, 9, 1),
(326, 23, 25, 9, 1),
(327, 23, 26, 9, 1),
(328, 24, 25, 9, 1),
(329, 24, 26, 9, 1),
(330, 25, 26, 9, 1),
(331, 15, 16, 10, 1),
(332, 15, 17, 10, 1),
(333, 15, 18, 10, 1),
(334, 15, 19, 10, 1),
(335, 15, 20, 10, 1),
(336, 15, 21, 10, 1),
(337, 15, 22, 10, 1),
(338, 15, 23, 10, 1),
(339, 15, 24, 10, 1),
(340, 15, 25, 10, 1),
(341, 15, 26, 10, 1),
(342, 16, 17, 10, 1),
(343, 16, 18, 10, 1),
(344, 16, 19, 10, 1),
(345, 16, 20, 10, 1),
(346, 16, 21, 10, 1),
(347, 16, 22, 10, 1),
(348, 16, 23, 10, 1),
(349, 16, 24, 10, 1),
(350, 16, 25, 10, 1),
(351, 16, 26, 10, 1),
(352, 17, 18, 10, 1),
(353, 17, 19, 10, 1),
(354, 17, 20, 10, 1),
(355, 17, 21, 10, 1),
(356, 17, 22, 10, 1),
(357, 17, 23, 10, 1),
(358, 17, 24, 10, 1),
(359, 17, 25, 10, 1),
(360, 17, 26, 10, 1),
(361, 18, 19, 10, 1),
(362, 18, 20, 10, 1),
(363, 18, 21, 10, 1),
(364, 18, 22, 10, 1),
(365, 18, 23, 10, 1),
(366, 18, 24, 10, 1),
(367, 18, 25, 10, 1),
(368, 18, 26, 10, 1),
(369, 19, 20, 10, 1),
(370, 19, 21, 10, 1),
(371, 19, 22, 10, 1),
(372, 19, 23, 10, 1),
(373, 19, 24, 10, 1),
(374, 19, 25, 10, 1),
(375, 19, 26, 10, 1),
(376, 20, 21, 10, 1),
(377, 20, 22, 10, 1),
(378, 20, 23, 10, 1),
(379, 20, 24, 10, 1),
(380, 20, 25, 10, 1),
(381, 20, 26, 10, 1),
(382, 21, 22, 10, 1),
(383, 21, 23, 10, 1),
(384, 21, 24, 10, 1),
(385, 21, 25, 10, 1),
(386, 21, 26, 10, 1),
(387, 22, 23, 10, 1),
(388, 22, 24, 10, 1),
(389, 22, 25, 10, 1),
(390, 22, 26, 10, 1),
(391, 23, 24, 10, 1),
(392, 23, 25, 10, 1),
(393, 23, 26, 10, 1),
(394, 24, 25, 10, 1),
(395, 24, 26, 10, 1),
(396, 25, 26, 10, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `perbandingan_kriteria`
--

CREATE TABLE `perbandingan_kriteria` (
  `id` int(11) NOT NULL,
  `kriteria1` int(11) NOT NULL,
  `kriteria2` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `perbandingan_kriteria`
--

INSERT INTO `perbandingan_kriteria` (`id`, `kriteria1`, `kriteria2`, `nilai`) VALUES
(1, 6, 7, 2),
(2, 6, 8, 0.5),
(3, 6, 9, 1),
(4, 6, 10, 0.5),
(5, 6, 11, 1),
(6, 7, 8, 1),
(7, 7, 9, 1),
(8, 7, 10, 1),
(9, 7, 11, 1),
(10, 8, 9, 1),
(11, 8, 10, 0.5),
(12, 8, 11, 1),
(13, 9, 10, 1),
(14, 9, 11, 1),
(15, 10, 11, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pv_alternatif`
--

CREATE TABLE `pv_alternatif` (
  `id` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pv_alternatif`
--

INSERT INTO `pv_alternatif` (`id`, `id_alternatif`, `id_kriteria`, `nilai`) VALUES
(1, 15, 6, 0.0833333),
(2, 16, 6, 0.0833333),
(3, 17, 6, 0.0833333),
(4, 18, 6, 0.0833333),
(5, 19, 6, 0.0833333),
(6, 20, 6, 0.0833333),
(7, 21, 6, 0.0833333),
(8, 22, 6, 0.0833333),
(9, 23, 6, 0.0833333),
(10, 24, 6, 0.0833333),
(11, 25, 6, 0.0833333),
(12, 26, 6, 0.0833333),
(13, 15, 11, 0.0833333),
(14, 16, 11, 0.0833333),
(15, 17, 11, 0.0833333),
(16, 18, 11, 0.0833333),
(17, 19, 11, 0.0833333),
(18, 20, 11, 0.0833333),
(19, 21, 11, 0.0833333),
(20, 22, 11, 0.0833333),
(21, 23, 11, 0.0833333),
(22, 24, 11, 0.0833333),
(23, 25, 11, 0.0833333),
(24, 26, 11, 0.0833333),
(25, 15, 7, 0.0833333),
(26, 16, 7, 0.0833333),
(27, 17, 7, 0.0833333),
(28, 18, 7, 0.0833333),
(29, 19, 7, 0.0833333),
(30, 20, 7, 0.0833333),
(31, 21, 7, 0.0833333),
(32, 22, 7, 0.0833333),
(33, 23, 7, 0.0833333),
(34, 24, 7, 0.0833333),
(35, 25, 7, 0.0833333),
(36, 26, 7, 0.0833333),
(37, 15, 8, 0.0833333),
(38, 16, 8, 0.0833333),
(39, 17, 8, 0.0833333),
(40, 18, 8, 0.0833333),
(41, 19, 8, 0.0833333),
(42, 20, 8, 0.0833333),
(43, 21, 8, 0.0833333),
(44, 22, 8, 0.0833333),
(45, 23, 8, 0.0833333),
(46, 24, 8, 0.0833333),
(47, 25, 8, 0.0833333),
(48, 26, 8, 0.0833333),
(49, 15, 9, 0.0833333),
(50, 16, 9, 0.0833333),
(51, 17, 9, 0.0833333),
(52, 18, 9, 0.0833333),
(53, 19, 9, 0.0833333),
(54, 20, 9, 0.0833333),
(55, 21, 9, 0.0833333),
(56, 22, 9, 0.0833333),
(57, 23, 9, 0.0833333),
(58, 24, 9, 0.0833333),
(59, 25, 9, 0.0833333),
(60, 26, 9, 0.0833333),
(61, 15, 10, 0.0833333),
(62, 16, 10, 0.0833333),
(63, 17, 10, 0.0833333),
(64, 18, 10, 0.0833333),
(65, 19, 10, 0.0833333),
(66, 20, 10, 0.0833333),
(67, 21, 10, 0.0833333),
(68, 22, 10, 0.0833333),
(69, 23, 10, 0.0833333),
(70, 24, 10, 0.0833333),
(71, 25, 10, 0.0833333),
(72, 26, 10, 0.0833333);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pv_kriteria`
--

CREATE TABLE `pv_kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pv_kriteria`
--

INSERT INTO `pv_kriteria` (`id_kriteria`, `nilai`) VALUES
(6, 0.154884),
(7, 0.149451),
(8, 0.166117),
(9, 0.160562),
(10, 0.208425),
(11, 0.160562);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ranking`
--

CREATE TABLE `ranking` (
  `id_alternatif` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
(1, 6, 15, 0.12820512820513),
(2, 6, 26, 0.08841732979664098),
(3, 6, 25, 0.102564102564104),
(4, 6, 22, 0.1165501165501183),
(5, 6, 21, 0.08841732979664098),
(6, 6, 20, 0.102564102564104),
(7, 6, 19, 0.12820512820513),
(8, 6, 16, 0.09496676163342954),
(9, 6, 18, 0.1221001221001235),
(10, 6, 17, 0.09861932938856165),
(11, 6, 24, 0.11148272017837335),
(12, 6, 23, 0.10683760683760792),
(13, 7, 16, 0.20512820512821),
(14, 7, 24, 0.123076923076926),
(15, 7, 15, 0.041025641025642004),
(16, 7, 23, 0.16410256410256802),
(17, 7, 26, 0.20512820512821),
(18, 7, 25, 0.20512820512821),
(19, 7, 22, 0.20512820512821),
(20, 7, 21, 0.041025641025642004),
(21, 7, 20, 0.20512820512821),
(22, 7, 19, 0.08205128205128401),
(23, 7, 18, 0.123076923076926),
(24, 7, 17, 0.16410256410256802),
(25, 8, 18, 0.046153846153846004),
(26, 8, 17, 0.115384615384615),
(27, 8, 16, 0.046153846153846004),
(28, 8, 24, 0.161538461538461),
(29, 8, 15, 0.115384615384615),
(30, 8, 23, 0.161538461538461),
(31, 8, 26, 0.09230769230769201),
(32, 8, 25, 0.046153846153846004),
(33, 8, 22, 0.069230769230769),
(34, 8, 21, 0.23076923076923),
(35, 8, 20, 0.023076923076923002),
(36, 8, 19, 0.046153846153846004),
(37, 9, 19, 0.076923076923077),
(38, 9, 18, 0.0384615384615385),
(39, 9, 17, 0.076923076923077),
(40, 9, 16, 0.0384615384615385),
(41, 9, 24, 0.076923076923077),
(42, 9, 15, 0.076923076923077),
(43, 9, 23, 0.076923076923077),
(44, 9, 26, 0.076923076923077),
(45, 9, 25, 0.0384615384615385),
(46, 9, 22, 0.076923076923077),
(47, 9, 21, 0.0384615384615385),
(48, 9, 20, 0.076923076923077),
(49, 10, 20, 0.16535433070866276),
(50, 10, 19, 0.15828790631940326),
(51, 10, 18, 0.15404805168584684),
(52, 10, 17, 0.1625277609529579),
(53, 10, 16, 0.1554613365636984),
(54, 10, 24, 0.16535433070866276),
(55, 10, 23, 0.16111447607510634),
(56, 10, 26, 0.1526347668079953),
(57, 10, 25, 0.16535433070866276),
(58, 10, 22, 0.1554613365636984),
(59, 10, 15, 0.17948717948718),
(60, 10, 21, 0.1695941853422174),
(61, 11, 24, 0.16317016317016378),
(62, 11, 21, 0.17948717948718),
(63, 11, 22, 0.16317016317016378),
(64, 11, 19, 0.17948717948718),
(65, 11, 15, 0.17948717948718),
(66, 11, 17, 0.1495726495726494),
(67, 11, 16, 0.13806706114398476),
(68, 11, 18, 0.16317016317016378),
(69, 11, 23, 0.17948717948718),
(70, 11, 20, 0.16317016317016378),
(71, 11, 26, 0.12820512820512778),
(72, 11, 25, 0.12820512820512778);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kasus`
--

CREATE TABLE `tb_kasus` (
  `id_kasus` int(11) NOT NULL,
  `nm_kasus` varchar(100) NOT NULL,
  `tgl_kasus` datetime NOT NULL DEFAULT current_timestamp(),
  `id_panitia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kasus`
--

INSERT INTO `tb_kasus` (`id_kasus`, `nm_kasus`, `tgl_kasus`, `id_panitia`) VALUES
(4, 'Pemilihan Karyawan Baru', '2022-12-06 23:56:21', 23),
(7, 'Pemilihan Warung terbaik', '2022-12-11 15:06:31', 22),
(9, 'Coba Kasus', '2022-12-17 21:40:41', 1),
(10, 'Kasus 2', '2022-12-18 18:01:35', 1);

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
(1, 15, 4, 0.077489826369467),
(2, 16, 4, 0.074006842899599),
(3, 17, 4, 0.094664485670557),
(4, 18, 4, 0.070805559276213),
(5, 19, 4, 0.070691091557831),
(6, 20, 4, 0.069996385435722),
(7, 21, 4, 0.081367199898567),
(8, 22, 4, 0.090675319246773),
(9, 23, 4, 0.1066342797588),
(10, 24, 4, 0.099823636989288),
(11, 25, 4, 0.074574314217707),
(12, 26, 4, 0.089271058679478);

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
(1, 7, 7, 15, 0.2),
(2, 8, 8, 15, 0.5),
(3, 9, 9, 15, 1),
(4, 10, 11, 15, 1),
(5, 11, 6, 16, 0.74074074074074),
(6, 13, 10, 15, 1),
(7, 14, 7, 16, 1),
(8, 15, 8, 16, 0.2),
(9, 16, 9, 16, 0.5),
(10, 17, 10, 16, 0.86614173228346),
(11, 19, 11, 16, 0.76923076923077),
(12, 20, 6, 17, 0.76923076923077),
(13, 21, 7, 17, 0.8),
(14, 22, 8, 17, 0.5),
(15, 23, 9, 17, 1),
(16, 24, 10, 17, 0.90551181102362),
(17, 25, 11, 17, 0.83333333333333),
(18, 26, 6, 18, 0.95238095238095),
(19, 27, 7, 18, 0.6),
(20, 28, 8, 18, 0.2),
(21, 29, 9, 18, 0.5),
(22, 30, 10, 18, 0.85826771653543),
(23, 32, 6, 19, 1),
(24, 33, 7, 19, 0.4),
(25, 34, 8, 19, 0.2),
(26, 35, 9, 19, 1),
(27, 36, 10, 19, 0.88188976377953),
(28, 37, 11, 19, 1),
(29, 38, 6, 20, 0.8),
(30, 39, 7, 20, 1),
(31, 40, 8, 20, 0.1),
(32, 41, 9, 20, 1),
(33, 42, 10, 20, 0.92125984251969),
(34, 44, 6, 21, 0.68965517241379),
(35, 45, 7, 21, 0.2),
(36, 46, 8, 21, 1),
(37, 47, 9, 21, 0.5),
(38, 48, 10, 21, 0.94488188976378),
(39, 49, 11, 21, 1),
(40, 50, 6, 22, 0.90909090909091),
(41, 51, 7, 22, 1),
(42, 52, 8, 22, 0.3),
(43, 53, 9, 22, 1),
(44, 54, 10, 22, 0.86614173228346),
(45, 57, 6, 23, 0.83333333333333),
(46, 58, 7, 23, 0.8),
(47, 59, 8, 23, 0.7),
(48, 60, 9, 23, 1),
(49, 61, 10, 23, 0.89763779527559),
(50, 62, 11, 23, 1),
(51, 63, 6, 24, 0.8695652173913),
(52, 64, 7, 24, 0.6),
(53, 65, 8, 24, 0.7),
(54, 66, 9, 24, 1),
(55, 67, 10, 24, 0.92125984251969),
(56, 69, 11, 18, 0.90909090909091),
(57, 70, 11, 20, 0.90909090909091),
(58, 71, 11, 24, 0.90909090909091),
(59, 72, 6, 25, 0.8),
(60, 73, 7, 25, 1),
(61, 74, 8, 25, 0.2),
(62, 75, 9, 25, 0.5),
(63, 76, 10, 25, 0.92125984251969),
(64, 77, 11, 25, 0.71428571428571),
(65, 78, 6, 26, 0.68965517241379),
(66, 79, 7, 26, 1),
(67, 80, 8, 26, 0.4),
(68, 81, 9, 26, 1),
(69, 82, 10, 26, 0.8503937007874),
(70, 83, 11, 26, 0.71428571428571),
(71, 84, 6, 15, 1),
(72, 85, 11, 22, 0.90909090909091);

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
(6, 0.12820512820513, -0.12820512820513),
(7, 0.20512820512821, 0.20512820512821),
(8, 0.23076923076923, 0.23076923076923),
(9, 0.076923076923077, -0.076923076923077),
(10, 0.17948717948718, 0.17948717948718),
(11, 0.17948717948718, -0.17948717948718);

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
(1, 7, 7, 15, 1),
(2, 8, 8, 15, 1.4497755466306),
(3, 9, 9, 15, 1),
(4, 10, 11, 15, 0.74910698281746),
(5, 11, 6, 16, 0.65537794928599),
(6, 13, 10, 15, 2.3856448783969),
(7, 14, 7, 16, 1.3911644221635),
(8, 15, 8, 16, 1.1734604600046),
(9, 16, 9, 16, 0.94807751433917),
(10, 17, 10, 16, 2.3248975256784),
(11, 19, 11, 16, 0.71464848018189),
(12, 20, 6, 17, 0.65855668179767),
(13, 21, 7, 17, 1.3289219824743),
(14, 22, 8, 17, 1.4497755466306),
(15, 23, 9, 17, 1),
(16, 24, 10, 17, 2.3435209655074),
(17, 25, 11, 17, 0.72498968381369),
(18, 26, 6, 18, 0.67683795684647),
(19, 27, 7, 18, 1.2527690820942),
(20, 28, 8, 18, 1.1734604600046),
(21, 29, 9, 18, 0.94807751433917),
(22, 30, 10, 18, 2.3210897596383),
(23, 32, 6, 19, 0.68108494822114),
(24, 33, 7, 19, 1.1527887848493),
(25, 34, 8, 19, 1.1734604600046),
(26, 35, 9, 19, 1),
(27, 36, 10, 19, 2.3324286267852),
(28, 37, 11, 19, 0.74910698281746),
(29, 38, 6, 20, 0.66187643946244),
(30, 39, 7, 20, 1.3911644221635),
(31, 40, 8, 20, 1),
(32, 41, 9, 20, 1),
(33, 42, 10, 20, 2.3507846540932),
(34, 44, 6, 21, 0.64940118562714),
(35, 45, 7, 21, 1),
(36, 46, 8, 21, 1.7012542798526),
(37, 47, 9, 21, 0.94807751433917),
(38, 48, 10, 21, 2.3614914499121),
(39, 49, 11, 21, 0.74910698281746),
(40, 50, 6, 22, 0.67281323834696),
(41, 51, 7, 22, 1.3911644221635),
(42, 52, 8, 22, 1.288560769231),
(43, 53, 9, 22, 1),
(44, 54, 10, 22, 2.3248975256784),
(45, 57, 6, 23, 0.66534950912479),
(46, 58, 7, 23, 1.3289219824743),
(47, 59, 8, 23, 1.566832692303),
(48, 60, 9, 23, 1),
(49, 61, 10, 23, 2.3398501783973),
(50, 62, 11, 23, 0.74910698281746),
(51, 63, 6, 24, 0.66898981850912),
(52, 64, 7, 24, 1.2527690820942),
(53, 65, 8, 24, 1.566832692303),
(54, 66, 9, 24, 1),
(55, 67, 10, 24, 2.3507846540932),
(56, 69, 11, 18, 0.73640103303088),
(57, 70, 11, 20, 0.73640103303088),
(58, 71, 11, 24, 0.73640103303088),
(59, 72, 6, 25, 0.66187643946244),
(60, 73, 7, 25, 1.3911644221635),
(61, 74, 8, 25, 1.1734604600046),
(62, 75, 9, 25, 0.94807751433917),
(63, 76, 10, 25, 2.3507846540932),
(64, 77, 11, 25, 0.70520557411253),
(65, 78, 6, 26, 0.64940118562714),
(66, 79, 7, 26, 1.3911644221635),
(67, 80, 8, 26, 1.3770094511943),
(68, 81, 9, 26, 1),
(69, 82, 10, 26, 2.3172532213773),
(70, 83, 11, 26, 0.70520557411253),
(71, 84, 6, 15, 0.68108494822114),
(72, 85, 11, 22, 0.73640103303088);

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
(1, 6, 0.12820512820513),
(2, 7, 0.20512820512821),
(3, 8, 0.23076923076923),
(4, 9, 0.076923076923077),
(5, 10, 0.17948717948718),
(6, 11, 0.17948717948718);

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
(1, 1, 'miswanvm@gmail.com', 'demo', '$2y$10$dnOfUotZc76wCYNRYv8rA.DwXwVPco6GZC8rSXSAwHl6xGXxfWEMe', 'Demo', '', 'database', 'database'),
(10, 1, 'wanwanvm41@gmail.com', 'penghargaan', '$2y$10$vN7rZSb9o705fsUz1fCJve6icQ6XOY90THFZ7gpYFGSRayNePsHom', 'user penghargaan', '', 'penghargaan', 'penghargaan'),
(15, 4, 'wanwanvm@gmail.com', 'proposal', '$2y$10$Dkg2E9gwDkkf65vxISZacOfvcpgZmH4Myfp.LncftWwYktQTytfXO', 'Sekretaris Deputi III', '', 'proposal', 'proposal'),
(19, 1, 'asdepkpo@gmail.com', 'database', '$2y$10$N7E/83niKsLzAqEIUupjZOZdFhtyYZFyNIXIRdpBL0RPo3O5XLqRi', 'Asisten Deputi Kemitraan dan Penghargaan Olahraga', '', 'database', 'database'),
(18, 1, 'syanti.amir@gmail.com', 'Sriyanti', '$2y$10$eapWA/wV7/XA721JT3EL3OMT4ygv5FYJzcoIziaBGJ.MtVfAuscw.', 'Sriyanti', '-', 'database', 'database'),
(20, 4, 'wanwanvm41@gmail.com', 'database', '$2y$10$vN7rZSb9o705fsUz1fCJve6icQ6XOY90THFZ7gpYFGSRayNePsHom', 'Database', '', 'database', 'database'),
(21, 4, 'email@gmail.com', 'deputi', '$2y$10$PKZY4O/blREmoh5ide.1xOK5idXad6YRyd.zJMT6RoCpvtwF7K98S', 'Deputi Pembudayaan Olahraga', 'log_kemenpora.png', 'proposal', 'deputi'),
(22, 3, 'asdepsentra@gmail.com', 'asdepsentra', '$2y$10$PKZY4O/blREmoh5ide.1xOK5idXad6YRyd.zJMT6RoCpvtwF7K98S', 'Asisten Deputi Pengelolaan Pembinaan Sentra dan Sekolah Khusus Olahraga', 'log_kemenpora.png', 'proposal', 'asdep'),
(23, 1, 'wanwanvm2@gmail.com', 'wanwanvm2@gmail.com', '$2y$10$SYow8h5EPYLSQR263DcODu3QGx623xX3LRjMmMwAj6O5snUJD353W', 'Mis', '', 'database', 'database'),
(24, 0, 'xxxx@gmail.com', 'xxxx@gmail.com', '$2y$10$4/daMMdKjxJlvqDiPM3/7e49Jx8zAl.PbnlwM7BmpnLrTRUtn3x8O', 'miswan', '', 'database', '');

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
(1, 15, 4, 1.7646220198966),
(2, 16, 4, 1.6853064553403),
(3, 17, 4, 2.1557286129405),
(4, 18, 4, 1.6124058458225),
(5, 19, 4, 1.6097991519391),
(6, 20, 4, 1.5939790917084),
(7, 21, 4, 1.8529187554731),
(8, 22, 4, 2.0648860953837),
(9, 23, 4, 2.4283084238828),
(10, 24, 4, 2.2732143842675),
(11, 25, 4, 1.6982290857101),
(12, 26, 4, 2.0329078443691);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indeks untuk tabel `ir`
--
ALTER TABLE `ir`
  ADD PRIMARY KEY (`jumlah`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kreteria`);

--
-- Indeks untuk tabel `perbandingan_alternatif`
--
ALTER TABLE `perbandingan_alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `perbandingan_kriteria`
--
ALTER TABLE `perbandingan_kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pv_alternatif`
--
ALTER TABLE `pv_alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pv_kriteria`
--
ALTER TABLE `pv_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `ranking`
--
ALTER TABLE `ranking`
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
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kreteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `perbandingan_alternatif`
--
ALTER TABLE `perbandingan_alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=397;

--
-- AUTO_INCREMENT untuk tabel `perbandingan_kriteria`
--
ALTER TABLE `perbandingan_kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `pv_alternatif`
--
ALTER TABLE `pv_alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `tb_atribut`
--
ALTER TABLE `tb_atribut`
  MODIFY `id_atribut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT untuk tabel `tb_hitungsaw`
--
ALTER TABLE `tb_hitungsaw`
  MODIFY `id_hitungsaw` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `tb_kasus`
--
ALTER TABLE `tb_kasus`
  MODIFY `id_kasus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_nilaiwp`
--
ALTER TABLE `tb_nilaiwp`
  MODIFY `id_nilaiwp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_nomalisasi_artribut`
--
ALTER TABLE `tb_nomalisasi_artribut`
  MODIFY `id_normaliasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `tb_normalisasikreteriawp`
--
ALTER TABLE `tb_normalisasikreteriawp`
  MODIFY `id_kreteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tb_normalisasi_atribut_wp`
--
ALTER TABLE `tb_normalisasi_atribut_wp`
  MODIFY `id_normaliasiwp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `tb_normalisasi_bobot`
--
ALTER TABLE `tb_normalisasi_bobot`
  MODIFY `id_norbobot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_panitia`
--
ALTER TABLE `tb_panitia`
  MODIFY `id_panitia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `tb_si`
--
ALTER TABLE `tb_si`
  MODIFY `id_si` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
