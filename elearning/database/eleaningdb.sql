-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2022 at 07:40 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eleaningdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `el_field_tambahan`
--

CREATE TABLE `el_field_tambahan` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_field_tambahan`
--

INSERT INTO `el_field_tambahan` (`id`, `nama`, `value`) VALUES
('check-urgent-info', 'Check Urgent Info', '{\"info\":\"\",\"last_check\":\"2022-08-23 23:06:47\"}');

-- --------------------------------------------------------

--
-- Table structure for table `el_kelas`
--

CREATE TABLE `el_kelas` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `urutan` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=aktif 0=tidak'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_kelas`
--

INSERT INTO `el_kelas` (`id`, `nama`, `parent_id`, `urutan`, `aktif`) VALUES
(1, 'KELAS X\r\n', NULL, 1, 1),
(2, 'Kelas X EA\r\n', 1, 2, 1),
(3, 'KELAS X EB\r\n', 1, 3, 1),
(4, 'KELAS XI\r\n', NULL, 4, 1),
(5, 'KELAS XI MIPA\r\n', 4, 5, 1),
(6, 'KELAS XI IIS\r\n', 4, 7, 1),
(7, 'KELAS XII\r\n', NULL, 8, 1),
(8, 'KELAS XII MIPA\r\n', 7, 9, 1),
(9, 'KELAS XII IIS\r\n', 7, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `el_kelas_siswa`
--

CREATE TABLE `el_kelas_siswa` (
  `id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL COMMENT '0 jika bukan, 1 jika ya'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_kelas_siswa`
--

INSERT INTO `el_kelas_siswa` (`id`, `kelas_id`, `siswa_id`, `aktif`) VALUES
(1, 0, 0, 0),
(2, 2, 2, 1),
(3, 2, 3, 1),
(4, 2, 4, 1),
(5, 2, 5, 1),
(6, 2, 6, 1),
(7, 2, 7, 1),
(8, 2, 8, 1),
(9, 2, 9, 1),
(10, 2, 10, 1),
(11, 2, 11, 1),
(12, 2, 12, 1),
(13, 2, 13, 1),
(14, 2, 14, 1),
(15, 2, 15, 1),
(16, 2, 16, 1),
(17, 2, 17, 1),
(18, 2, 18, 1),
(19, 2, 19, 1),
(20, 2, 20, 1),
(21, 2, 21, 1),
(22, 2, 22, 1),
(23, 2, 23, 1),
(24, 2, 24, 1),
(25, 3, 25, 1),
(26, 3, 26, 1),
(27, 3, 27, 1),
(28, 3, 28, 1),
(29, 3, 29, 1),
(30, 3, 30, 1),
(31, 3, 31, 1),
(32, 3, 32, 1),
(33, 3, 33, 1),
(34, 3, 34, 1),
(35, 3, 35, 1),
(36, 3, 36, 1),
(37, 3, 37, 1),
(38, 3, 38, 1),
(39, 3, 39, 1),
(40, 3, 40, 1),
(41, 3, 41, 1),
(42, 3, 42, 1),
(43, 3, 43, 1),
(44, 3, 44, 1),
(45, 3, 45, 1),
(46, 3, 46, 1),
(47, 3, 47, 1),
(48, 3, 48, 1),
(49, 3, 49, 1),
(50, 6, 50, 1),
(51, 6, 51, 1),
(52, 6, 52, 1),
(53, 6, 53, 1),
(54, 6, 54, 1),
(55, 6, 55, 1),
(56, 6, 56, 1),
(57, 6, 57, 1),
(58, 6, 58, 1),
(59, 6, 59, 1),
(60, 6, 60, 1),
(61, 6, 61, 1),
(62, 6, 62, 1),
(63, 6, 63, 1),
(64, 6, 64, 1),
(65, 6, 65, 1),
(66, 6, 66, 1),
(67, 6, 67, 1),
(68, 6, 68, 1),
(69, 6, 69, 1),
(70, 6, 70, 1),
(71, 6, 71, 1),
(72, 6, 72, 1),
(73, 6, 73, 1),
(74, 6, 74, 1),
(75, 5, 75, 1),
(76, 5, 76, 1),
(77, 5, 77, 1),
(78, 5, 78, 1),
(79, 5, 79, 1),
(80, 5, 80, 1),
(81, 5, 81, 1),
(82, 5, 82, 1),
(83, 5, 83, 1),
(84, 5, 84, 1),
(85, 5, 85, 1),
(86, 5, 86, 1),
(87, 5, 87, 1),
(88, 5, 88, 1),
(89, 5, 89, 1),
(90, 5, 90, 1),
(91, 5, 91, 1),
(92, 5, 92, 1),
(93, 5, 93, 1),
(94, 5, 94, 1),
(95, 9, 95, 1),
(96, 9, 96, 1),
(97, 9, 97, 1),
(98, 9, 98, 1),
(99, 9, 99, 1),
(100, 9, 100, 1),
(101, 9, 101, 1),
(102, 9, 102, 1),
(103, 9, 103, 1),
(104, 9, 104, 1),
(105, 9, 105, 1),
(106, 9, 106, 1),
(107, 9, 107, 1),
(108, 9, 108, 1),
(109, 9, 109, 1),
(110, 9, 110, 1),
(111, 9, 111, 1),
(112, 9, 112, 1),
(113, 9, 113, 1),
(114, 9, 114, 1),
(115, 9, 115, 1),
(116, 9, 116, 1),
(117, 9, 117, 1),
(118, 9, 118, 1),
(119, 9, 119, 1),
(120, 9, 120, 1),
(121, 9, 121, 1),
(122, 9, 122, 1),
(123, 9, 123, 1),
(124, 9, 124, 1),
(125, 9, 125, 1),
(126, 9, 126, 1),
(127, 9, 127, 1),
(128, 9, 128, 1),
(129, 9, 129, 1),
(130, 8, 130, 1),
(131, 8, 131, 1),
(132, 8, 132, 1),
(133, 8, 133, 1),
(134, 8, 134, 1),
(135, 8, 135, 1),
(136, 8, 136, 1),
(137, 8, 137, 1),
(138, 8, 138, 1),
(139, 8, 139, 1),
(140, 8, 140, 1),
(141, 8, 141, 1),
(142, 8, 142, 1),
(143, 8, 143, 1),
(144, 8, 144, 1),
(145, 8, 145, 1),
(146, 8, 146, 1),
(147, 8, 147, 1),
(148, 8, 148, 1),
(149, 8, 149, 1),
(150, 8, 150, 1),
(151, 8, 151, 1),
(152, 8, 152, 1),
(153, 8, 153, 1),
(154, 8, 154, 1),
(155, 8, 155, 1),
(156, 8, 156, 1),
(157, 8, 157, 1),
(158, 8, 158, 1),
(159, 8, 159, 1),
(160, 8, 160, 1);

-- --------------------------------------------------------

--
-- Table structure for table `el_komentar`
--

CREATE TABLE `el_komentar` (
  `id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `materi_id` int(11) NOT NULL,
  `tampil` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0=tidak,1=tampil',
  `konten` text DEFAULT NULL,
  `tgl_posting` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `el_login`
--

CREATE TABLE `el_login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `pengajar_id` int(11) DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL COMMENT '0=tidak,1=ya',
  `reset_kode` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_login`
--

INSERT INTO `el_login` (`id`, `username`, `password`, `siswa_id`, `pengajar_id`, `is_admin`, `reset_kode`) VALUES
(1, 'admin@mail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, 1, NULL),
(159, 'desiari@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 158, 0, 0, NULL),
(158, 'madewiwin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 157, 0, 0, NULL),
(157, 'putuayu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 156, 0, 0, NULL),
(156, 'ayumahima@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 155, 0, 0, NULL),
(155, 'komangsudiani@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 154, 0, 0, NULL),
(154, 'martaamelia@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 153, 0, 0, NULL),
(153, 'radalelya@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 152, 0, 0, NULL),
(152, 'ketutparwati@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 151, 0, 0, NULL),
(151, 'kadekratih@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 150, 0, 0, NULL),
(150, 'kadekpadmayanti@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 149, 0, 0, NULL),
(149, 'omingandani@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 148, 0, 0, NULL),
(148, 'kadekari@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 147, 0, 0, NULL),
(147, 'kadekapriani@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 146, 0, 0, NULL),
(146, 'wayanwahyudi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 145, 0, 0, NULL),
(145, 'agusdarma@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 144, 0, 0, NULL),
(144, 'agusadi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 143, 0, 0, NULL),
(143, 'nyomanpasek@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 142, 0, 0, NULL),
(142, 'wahyuagus@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 141, 0, 0, NULL),
(141, 'nengahdediana@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 140, 0, 0, NULL),
(140, 'madeagus@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 139, 0, 0, NULL),
(139, 'komangmerta@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 138, 0, 0, NULL),
(138, 'komangagus@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 137, 0, 0, NULL),
(137, 'ketutmerta@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 136, 0, 0, NULL),
(136, 'agusarya@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 135, 0, 0, NULL),
(135, 'ketutagus@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 134, 0, 0, NULL),
(134, 'sudabudi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 133, 0, 0, NULL),
(133, 'kadekerik@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 132, 0, 0, NULL),
(132, 'wisnuputra@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 131, 0, 0, NULL),
(131, 'gedeari@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 130, 0, 0, NULL),
(130, 'wayandesiani@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 129, 0, 0, NULL),
(129, 'luhwidi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 128, 0, 0, NULL),
(128, 'putunovi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 127, 0, 0, NULL),
(127, 'luhpadmi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 126, 0, 0, NULL),
(126, 'komangwidiani@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 125, 0, 0, NULL),
(125, 'komangputri@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 124, 0, 0, NULL),
(124, 'komangayu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 123, 0, 0, NULL),
(123, 'kadesumartini@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 122, 0, 0, NULL),
(122, 'kadekatya@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 121, 0, 0, NULL),
(121, 'wayanwidiartana@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 120, 0, 0, NULL),
(120, 'wayansumerta@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 119, 0, 0, NULL),
(119, 'wayanroberta@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 118, 0, 0, NULL),
(118, 'wayanokta@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 117, 0, 0, NULL),
(117, 'esaditya@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 116, 0, 0, NULL),
(116, 'putuyudi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 115, 0, 0, NULL),
(115, 'putuyogi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 114, 0, 0, NULL),
(114, 'putusudirka@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 113, 0, 0, NULL),
(113, 'putusudiantara@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 112, 0, 0, NULL),
(112, 'putuegantara@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 111, 0, 0, NULL),
(111, 'putuedi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 110, 0, 0, NULL),
(110, 'putudarma@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 109, 0, 0, NULL),
(109, 'aryaanom@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 108, 0, 0, NULL),
(108, 'putuari@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 107, 0, 0, NULL),
(107, 'putuaditya@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 106, 0, 0, NULL),
(106, 'putuadi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 105, 0, 0, NULL),
(105, 'komangagus@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 104, 0, 0, NULL),
(104, 'ketutwidiantara@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 103, 0, 0, NULL),
(103, 'ketutwahyu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 102, 0, 0, NULL),
(102, 'ketutbudisastra@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 101, 0, 0, NULL),
(101, 'wahyuwira@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 100, 0, 0, NULL),
(100, 'kadekmerta@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 99, 0, 0, NULL),
(99, 'kademiarsana@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 98, 0, 0, NULL),
(98, 'gedewahyu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 97, 0, 0, NULL),
(97, 'gedeedi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 96, 0, 0, NULL),
(96, 'agusputra@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 95, 0, 0, NULL),
(95, 'wayansugiantari@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 94, 0, 0, NULL),
(94, 'wayansherlyani@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 93, 0, 0, NULL),
(93, 'widhiasih@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 92, 0, 0, NULL),
(92, 'putusri@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 91, 0, 0, NULL),
(91, 'luhnik@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 90, 0, 0, NULL),
(90, 'komangsuartini@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 89, 0, 0, NULL),
(89, 'komangpurwaningsih@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 88, 0, 0, NULL),
(88, 'nisaprabawati@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 87, 0, 0, NULL),
(87, 'kadektari@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 86, 0, 0, NULL),
(86, 'kadekrediasih@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 85, 0, 0, NULL),
(85, 'kadekdiantari@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 84, 0, 0, NULL),
(84, 'maniksuanjaya@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 83, 0, 0, NULL),
(83, 'komangrudi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 82, 0, 0, NULL),
(82, 'komangdarmayasa@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 81, 0, 0, NULL),
(81, 'komangagus@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 80, 0, 0, NULL),
(80, 'yudaadi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 79, 0, 0, NULL),
(79, 'kadeksumantara@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 78, 0, 0, NULL),
(78, 'kadekrai@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 77, 0, 0, NULL),
(77, 'kadeari@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 76, 0, 0, NULL),
(76, 'lanangalit@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 75, 0, 0, NULL),
(75, 'madeyuliantari@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 74, 0, 0, NULL),
(74, 'egameysta@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 73, 0, 0, NULL),
(73, 'komangsri@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 72, 0, 0, NULL),
(72, 'komanglia@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 71, 0, 0, NULL),
(71, 'kadesumiati@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 70, 0, 0, NULL),
(70, 'wayanyasa@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 69, 0, 0, NULL),
(69, 'wayandangin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 68, 0, 0, NULL),
(68, 'tegarputra@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 67, 0, 0, NULL),
(67, 'putumerta@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 66, 0, 0, NULL),
(66, 'putujuni@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 65, 0, 0, NULL),
(65, 'nyomanagus@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 64, 0, 0, NULL),
(64, 'nyomanaditya@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 63, 0, 0, NULL),
(63, 'nengahbudi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 62, 0, 0, NULL),
(62, 'madehendrayasa@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 61, 0, 0, NULL),
(61, 'tridarma@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 60, 0, 0, NULL),
(60, 'komangsuparta@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 59, 0, 0, NULL),
(59, 'komangbudiartana@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 58, 0, 0, NULL),
(58, 'anggakusuma@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 57, 0, 0, NULL),
(57, 'kadekari@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 56, 0, 0, NULL),
(56, 'kadesuardana@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 55, 0, 0, NULL),
(55, 'kadejanuarta@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 54, 0, 0, NULL),
(54, 'ayukadek@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 53, 0, 0, NULL),
(53, 'gedeyudi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 52, 0, 0, NULL),
(52, 'gedevalentino@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 51, 0, 0, NULL),
(51, 'aguscahya@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 50, 0, 0, NULL),
(50, 'virawindari@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 49, 0, 0, NULL),
(49, 'nengahsri@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 48, 0, 0, NULL),
(48, 'nengahmita@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 47, 0, 0, NULL),
(47, 'madenonik@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 46, 0, 0, NULL),
(46, 'madeayu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 45, 0, 0, NULL),
(45, 'madeapriliani@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 44, 0, 0, NULL),
(44, 'winichaori@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 43, 0, 0, NULL),
(43, 'kadekmelinda@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 42, 0, 0, NULL),
(42, 'kadeaprilia@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 41, 0, 0, NULL),
(41, 'kadesuantari@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 40, 0, 0, NULL),
(40, 'wayanwidiantara@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 39, 0, 0, NULL),
(39, 'wayanagus@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 38, 0, 0, NULL),
(38, 'putueuro@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 37, 0, 0, NULL),
(37, 'bobbysatria@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 36, 0, 0, NULL),
(36, 'krisnaedi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 35, 0, 0, NULL),
(35, 'madesuardika@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 34, 0, 0, NULL),
(34, 'madekartika@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 33, 0, 0, NULL),
(33, 'madedwi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 32, 0, 0, NULL),
(32, 'madeagus@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 31, 0, 0, NULL),
(31, 'komangcandra@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 30, 0, 0, NULL),
(30, 'komangarya@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 29, 0, 0, NULL),
(29, 'ketutmerta@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 28, 0, 0, NULL),
(28, 'ketutadi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 27, 0, 0, NULL),
(27, 'kadekokta@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 26, 0, 0, NULL),
(26, 'kadekdwi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 25, 0, 0, NULL),
(25, 'putulia@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 24, 0, 0, NULL),
(24, 'komangdewi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 23, 0, 0, NULL),
(23, 'komangayu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 22, 0, 0, NULL),
(22, 'ketutmuliyani@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 21, 0, 0, NULL),
(21, 'ketutayu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 20, 0, 0, NULL),
(20, 'kadekyuliantari@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 19, 0, 0, NULL),
(19, 'kadeksudiantari@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 18, 0, 0, NULL),
(18, 'kadedesi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 17, 0, 0, NULL),
(17, 'endramaharani@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 16, 0, 0, NULL),
(16, 'wayankariasa@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 15, 0, 0, NULL),
(15, 'wayaneka@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 14, 0, 0, NULL),
(14, 'wayanagus@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 13, 0, 0, NULL),
(13, 'putudedi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 12, 0, 0, NULL),
(12, 'nengahwirawan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 11, 0, 0, NULL),
(11, 'madeyogik@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 10, 0, 0, NULL),
(10, 'komangdanu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 9, 0, 0, NULL),
(9, 'agusadi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 8, 0, 0, NULL),
(8, 'komangadnyana@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 7, 0, 0, NULL),
(7, 'kadekraditya@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 6, 0, 0, NULL),
(6, 'kadekkrisna@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 5, 0, 0, NULL),
(5, 'kadekaryana@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 4, 0, 0, NULL),
(4, 'anggajuli@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 3, 0, 0, NULL),
(3, 'lanangwiguna@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 2, 0, 0, NULL),
(2, 'gedepebri@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 0, 0, NULL),
(160, 'putumelly@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 159, 0, 0, NULL),
(161, 'putusriasih@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 160, 0, 0, NULL),
(162, 'gedesuardana69@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 25, 0, NULL),
(163, 'aryasemara0@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 26, 0, NULL),
(164, 'sadia_bonet@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 3, 0, NULL),
(165, 'suelendra@yahoo.co.id', 'e10adc3949ba59abbe56e057f20f883e', 0, 4, 0, NULL),
(166, 'abidarma40@yahoo.co.id', 'e10adc3949ba59abbe56e057f20f883e', 0, 5, 0, NULL),
(167, 'bowyeajus@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 6, 0, NULL),
(168, 'madeadiarsa66@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 7, 0, NULL),
(169, 'nyomateresna99@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 8, 0, NULL),
(170, 'putuadecardina@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 9, 0, NULL),
(171, 'adisusanta12345@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 10, 0, NULL),
(172, 'wayanmerta10@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 11, 0, NULL),
(173, 'suteja_wayan@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 12, 0, NULL),
(174, 'Wynsuwendra30@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 13, 0, NULL),
(175, 'shintadex@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 14, 0, NULL),
(176, 'sujiantari4@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 15, 0, NULL),
(177, 'popogoli12@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 16, 0, NULL),
(178, 'luhputusariasih20@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 17, 0, NULL),
(179, 'nengah_mastini@yahoo.co.id', 'e10adc3949ba59abbe56e057f20f883e', 0, 18, 0, NULL),
(180, 'sugiartaminengah@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 19, 0, NULL),
(181, 'nyoman.sukarmini@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 20, 0, NULL),
(182, 'niputuastiti66@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 21, 0, NULL),
(183, 'yan_wid2000@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 22, 0, NULL),
(184, 'ktri9406@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 23, 0, NULL),
(185, 'ayu.canty@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 24, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `el_login_log`
--

CREATE TABLE `el_login_log` (
  `id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `lasttime` datetime NOT NULL,
  `agent` text NOT NULL,
  `last_activity` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_login_log`
--

INSERT INTO `el_login_log` (`id`, `login_id`, `lasttime`, `agent`, `last_activity`) VALUES
(1, 1, '2022-08-23 23:06:44', '{\"is_mobile\":0,\"browser\":\"Firefox 103.0\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko\\/20100101 Firefox\\/103.0\",\"ip\":\"127.0.0.1\"}', 1661271710),
(2, 1, '2022-08-24 10:23:44', '{\"is_mobile\":0,\"browser\":\"Chrome 104.0.0.0\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/104.0.0.0 Safari\\/537.36\",\"ip\":\"::1\"}', 1661315422),
(3, 1, '2022-08-24 11:51:35', '{\"is_mobile\":0,\"browser\":\"Chrome 104.0.0.0\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/104.0.0.0 Safari\\/537.36\",\"ip\":\"::1\"}', 1661318453),
(4, 1, '2022-08-24 12:23:10', '{\"is_mobile\":0,\"browser\":\"Chrome 104.0.0.0\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/104.0.0.0 Safari\\/537.36\",\"ip\":\"::1\"}', 1661319616);

-- --------------------------------------------------------

--
-- Table structure for table `el_mapel`
--

CREATE TABLE `el_mapel` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `info` text DEFAULT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = ya, 0 = tidak'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_mapel`
--

INSERT INTO `el_mapel` (`id`, `nama`, `info`, `aktif`) VALUES
(1, 'Bahasa Indonesia', NULL, 1),
(2, 'Bahasa Inggris', NULL, 1),
(3, 'Matematika', NULL, 0),
(4, 'Ekonomi', NULL, 1),
(5, 'Geografi', NULL, 0),
(6, 'Biologi', NULL, 1),
(7, 'Penjas', NULL, 0),
(8, 'Agama', NULL, 0),
(9, 'Fisika', NULL, 1),
(10, 'Kimia', NULL, 1),
(11, 'BAHASA BALI\r\n', NULL, 1),
(12, 'PENDIDIKAN PANCASILA\r\n', NULL, 1),
(13, 'BAHASA INGGRIS PARIWISATA\r\n', NULL, 1),
(14, 'PRAKARYA\r\n', NULL, 1),
(15, 'PENJAS\r\n', NULL, 1),
(16, 'PROJEK\r\n', NULL, 1),
(17, 'SEJARAH INDONESIA\r\n', NULL, 1),
(18, 'BAHASA JEPANG\r\n', NULL, 1),
(19, 'SEJARAH PEMINATAN\r\n', NULL, 1),
(20, 'SENI BUDAYA\r\n', NULL, 1),
(21, 'FISIKA PEMINATAN\r\n', NULL, 1),
(22, 'SOSIOLOGI\r\n', NULL, 1),
(23, 'MATEMATIKA UMUM\r\n', NULL, 1),
(24, 'MATEMATIKA PEMINATAN\r\n', NULL, 1),
(25, 'GEOGRAFI\r\n', NULL, 1),
(26, 'INFORMATIKA\r\n', NULL, 1),
(27, 'AGAMA DAN BUDI PEKERTI\r\n', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `el_mapel_ajar`
--

CREATE TABLE `el_mapel_ajar` (
  `id` int(11) NOT NULL,
  `hari_id` tinyint(1) NOT NULL COMMENT '1=senin,2=selasa,3=rabu,4=kamis,5=jum''at,6=sabtu,7=minggu',
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `pengajar_id` int(11) NOT NULL,
  `mapel_kelas_id` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = aktif 0 = tidak'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `el_mapel_kelas`
--

CREATE TABLE `el_mapel_kelas` (
  `id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `el_materi`
--

CREATE TABLE `el_materi` (
  `id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `pengajar_id` int(11) DEFAULT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `konten` text DEFAULT NULL,
  `file` text DEFAULT NULL,
  `tgl_posting` datetime NOT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `el_materi_kelas`
--

CREATE TABLE `el_materi_kelas` (
  `id` int(11) NOT NULL,
  `materi_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `el_messages`
--

CREATE TABLE `el_messages` (
  `id` int(11) NOT NULL,
  `type_id` tinyint(1) NOT NULL COMMENT '1=inbox,2=outbox',
  `content` text NOT NULL,
  `owner_id` int(11) NOT NULL,
  `sender_receiver_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `opened` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=belum,1=sudah'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `el_nilai_tugas`
--

CREATE TABLE `el_nilai_tugas` (
  `id` int(11) NOT NULL,
  `nilai` float NOT NULL,
  `tugas_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `el_pengajar`
--

CREATE TABLE `el_pengajar` (
  `id` int(11) NOT NULL,
  `nip` varchar(45) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL,
  `tempat_lahir` varchar(45) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `foto` text DEFAULT NULL,
  `status_id` tinyint(1) NOT NULL COMMENT '0=pending, 1=aktif, 2=blok'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_pengajar`
--

INSERT INTO `el_pengajar` (`id`, `nip`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `alamat`, `foto`, `status_id`) VALUES
(1, '01', 'Administrator', 'Laki-laki', 'Bali', '1999-05-08', 'Alamat Admin', NULL, 1),
(25, '196910012008011016\r\n', 'I Gede Suardana\r\n', 'Laki-laki', 'Karangasem\r\n', '1969-10-01', 'Antiga\r\n', NULL, 1),
(3, '196512311999031030', 'I Ketut Sadia', 'Laki-laki', 'Pesedahan', '1965-12-31', 'Pesedahan', NULL, 1),
(4, '197407112008011011', 'I Ketut Sulendra', 'Laki-laki', 'Karangasem', '1974-07-11', 'Bugbug', NULL, 1),
(5, '196112311987031180', 'I Komang Putu', 'Laki-laki', 'Karangasem', '1961-12-31', 'Desa Padangkerta', NULL, 1),
(6, '0', 'I Komang Surya Astika', 'Laki-laki', 'Bebandem', '1986-06-19', 'Bebandem', NULL, 1),
(7, '0', 'I Made Adiarsa', 'Laki-laki', 'Pupuan', '1989-02-18', 'Desa Ngis', NULL, 1),
(8, '196708081990021004', 'I Nyoman Teresna', 'Laki-laki', 'Karangasem', '1967-08-08', 'Selumbung', NULL, 1),
(9, '0', 'I Putu Ade Cardina', 'Laki-laki', 'Bugbug', '1992-03-22', 'Bugbug', NULL, 1),
(10, '0', 'I Wayan Adi Susanta', 'Laki-laki', 'Samuh', '1986-06-14', 'Bugbug', NULL, 1),
(11, '197001101997021004', 'I Wayan Merta', 'Laki-laki', 'Bugbug', '1970-01-10', 'Bugbug', NULL, 1),
(12, '0', 'I Wayan Suteja', 'Laki-laki', 'Selat', '1980-06-21', 'Selat', NULL, 1),
(13, '0', 'I Wayan Suwendra Adi Putra', 'Laki-laki', 'Sengkidu', '1973-06-17', 'Sengkidu', NULL, 1),
(14, '0', 'Ni Kadek Sri Wulandari', 'Perempuan', 'PEKARANGAN', '1990-02-10', 'Desa Ngis', NULL, 1),
(15, '199205072022212022', 'Ni Kadek Sujiantari', 'Perempuan', 'Sibetan', '1992-05-07', 'Sibetan', NULL, 1),
(16, '0', 'Ni Ketut Sri Rahaningsih', 'Perempuan', 'SAMUH', '1985-03-16', 'Bugbug', NULL, 1),
(17, '0', 'Ni Luh Putu Sariasih', 'Perempuan', 'Antiga', '1991-09-29', 'Antiga', NULL, 1),
(18, '196512102005012006', 'Ni Nengah Mastini', 'Perempuan', 'Karangasem', '1965-12-10', 'Pesedahan', NULL, 1),
(19, '0', 'Ni Nengah Sugiartami', 'Perempuan', 'Karangasem', '1991-03-16', 'Padangkerta', NULL, 1),
(20, '196802072007012015', 'Ni Nyoman Sukarmini', 'Perempuan', 'Karangasem', '1968-02-07', 'Sengkidu', NULL, 1),
(21, '0', 'Ni Putu Astiti', 'Perempuan', 'SEBANGKI', '1987-08-25', 'Pesedahan', NULL, 1),
(22, '0', 'Ni Wayan Widiasih', 'Perempuan', 'Ngis', '1981-07-21', 'Ngis', NULL, 1),
(23, '0', 'Nyoman Tri Purnami Jayanthi', 'Perempuan', 'Kempo', '1991-11-22', 'Bebandem', NULL, 1),
(24, '0', 'Putu Ayu Santi Suwandiari', 'Perempuan', 'Sengkidu', '1984-02-17', 'Pesedahan', NULL, 1),
(26, '0', 'I Kadek Arya Semara Dwipa\r\n', 'Laki-laki', 'Karangasem\r\n', '1990-03-11', 'Lingkungan Galiran Kaler\r\n', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `el_pengaturan`
--

CREATE TABLE `el_pengaturan` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_pengaturan`
--

INSERT INTO `el_pengaturan` (`id`, `nama`, `value`) VALUES
('email-server', 'Email server', 'no-reply@domain.com'),
('email-template-approve-pengajar', 'Approve pengajar (email pengajar)', '{\"subject\":\"Pengaktifan Akun\",\"body\":\"<p>Hai {$nama},<\\/p>\\n<p>Anda telah diterima sebagai pengajar pada {$nama_sekolah}, berikut informasi data diri anda:<\\/p>\\n<p>{$tabel_profil}<\\/p>\\n<p>Anda dapat login ke sistem E-Learning menggunakan username dan password yang telah anda buat saat pendaftaran, login pada url berikut : {$url_login}<\\/p>\"}'),
('email-template-approve-siswa', 'Approve siswa (email siswa)', '{\"subject\":\"Pengaktifan Akun\",\"body\":\"<p>Hai {$nama},<\\/p>\\n<p>Anda telah diterima sebagai siswa pada {$nama_sekolah}, berikut informasi data diri anda:<\\/p>\\n<p>{$tabel_profil}<\\/p>\\n<p>Anda dapat login ke sistem E-Learning menggunakan username dan password yang telah anda buat saat pendaftaran, login pada url berikut : {$url_login}<\\/p>\"}'),
('email-template-link-reset', 'Link Reset Password', '{\"subject\":\"Reset Password\",\"body\":\"<p>Hai,<\\/p>\\n<p>Anda mengirimkan permintaan untuk reset password anda, klik link berikut untuk memulai reset password : {$link_reset}<\\/p>\"}'),
('email-template-register-pengajar', 'Register pengajar (email pengajar)', '{\"subject\":\"Registrasi Berhasil\",\"body\":\"<p>Hai {$nama},<\\/p>\\n<p>Terimakasih telah melakukan pendaftaran sebagai pengajar di E-Learning {$nama_sekolah}. Akun anda akan segera diaktifkan oleh admin.<\\/p>\"}'),
('email-template-register-siswa', 'Register siswa (email siswa)', '{\"subject\":\"Registrasi Berhasil\",\"body\":\"<p>Hai {$nama},<\\/p>\\n<p>Terimakasih telah melakukan pendaftaran sebagai siswa di E-Learning {$nama_sekolah}. Akun anda akan segera diaktifkan oleh admin.<\\/p>\"}'),
('info-registrasi', 'Info Registrasi', '<p>Silakan mendaftar sebagai siswa atau pengajar (jika anda sebagai pengajar) dengan memilih sesuai tab berikut :</p>'),
('peraturan-elearning', 'Peraturan E-learning', ''),
('registrasi-pengajar', 'Registrasi Pengajar', '1'),
('registrasi-siswa', 'Registrasi Siswa', '1'),
('versi', 'Versi', '2.0'),
('jenjang', 'jenjang', 'SMP'),
('nama-sekolah', 'nama-sekolah', 'Test Sekolah'),
('alamat', 'alamat', 'Alamat sekolah'),
('telp', 'telp', '087741198029'),
('install-success', 'install-success', '1');

-- --------------------------------------------------------

--
-- Table structure for table `el_pengumuman`
--

CREATE TABLE `el_pengumuman` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `konten` text NOT NULL,
  `tgl_tampil` date NOT NULL,
  `tgl_tutup` date NOT NULL,
  `tampil_siswa` tinyint(1) NOT NULL DEFAULT 1,
  `tampil_pengajar` tinyint(1) NOT NULL DEFAULT 1,
  `pengajar_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `el_pilihan`
--

CREATE TABLE `el_pilihan` (
  `id` int(11) NOT NULL,
  `pertanyaan_id` int(11) NOT NULL,
  `konten` text NOT NULL,
  `kunci` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=tidak',
  `urutan` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `el_siswa`
--

CREATE TABLE `el_siswa` (
  `id` int(11) NOT NULL,
  `nis` varchar(45) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL COMMENT 'Laki-laki dan Perempuan',
  `tempat_lahir` varchar(45) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` char(7) DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `tahun_masuk` year(4) NOT NULL,
  `foto` text DEFAULT NULL,
  `status_id` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=aktif, 2=blok, 3=alumni, 4=deleted'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_siswa`
--

INSERT INTO `el_siswa` (`id`, `nis`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `agama`, `alamat`, `tahun_masuk`, `foto`, `status_id`) VALUES
(1, '0075825630', 'I Gede Pebri Suartawan', 'Laki-laki', 'Karangasem', '2007-02-15', 'Hindu', 'Banjar Dinas Mendira', 2022, NULL, 1),
(2, '0061789054', 'I GUSTI LANANG WIGUNA JELANTIK PUTRA WIJAYA', 'Laki-laki', 'AMLAPURA', '2006-11-10', 'Hindu', 'Banjar Dinas Tengah', 2022, NULL, 1),
(3, '0076631293', 'I KADEK ANGGA JULI MERTA YASA', 'Laki-laki', 'PERASI', '2007-07-30', 'Hindu', 'Banjar Dinas Tengah', 2022, NULL, 1),
(4, '0076554996', 'I Kadek Aryana', 'Laki-laki', 'Sengkidu', '2007-02-22', 'Hindu', 'Banjar Dinas Karangasem', 2022, NULL, 1),
(5, '0065044554', 'I Kadek Krisna', 'Laki-laki', 'Sengkidu', '2006-03-15', 'Hindu', 'Banjar Dinas Karangasem', 2022, NULL, 1),
(6, '0065149221', 'I Kadek Raditya', 'Laki-laki', 'Sengkidu', '2006-10-07', 'Hindu', 'Banjar Dinas Subagan', 2022, NULL, 1),
(7, '0074304167', 'I Komang Adnyana Putra', 'Laki-laki', 'Karangasem', '2007-05-21', 'Hindu', 'Banjar Dinas Kaler', 2022, NULL, 1),
(8, '0046251809', 'I Komang Agus Adi Putra', 'Laki-laki', 'Karangasem', '2004-11-02', 'Hindu', 'Samuh', 2022, NULL, 1),
(9, '0078856490', 'I KOMANG DANU WARDANA', 'Laki-laki', 'NYUHTEBEL', '2007-08-07', 'Hindu', 'Banjar Dinas Tauman', 2022, NULL, 1),
(10, '0078861833', 'I MADE YOGIK SAPUTRA', 'Laki-laki', 'KARANGASEM', '2007-03-09', 'Hindu', 'Banjar Dinas Tengah', 2022, NULL, 1),
(11, '0074596895', 'I Nengah Wirawan', 'Laki-laki', 'Karangasem', '2007-07-07', 'Hindu', 'Banjar Dinas Bukit Kauh', 2022, NULL, 1),
(12, '0067309704', 'I PUTU DEDI WIRASMANA', 'Laki-laki', 'KARANGASEM', '2006-02-03', 'Hindu', 'Banjar Dinas Karanganyar', 2022, NULL, 1),
(13, '0071828945', 'I Wayan Agus Febriantara', 'Laki-laki', 'Karangasem', '2007-02-22', 'Hindu', 'Banjar Dinas Subagan', 2022, NULL, 1),
(14, '0075592500', 'I Wayan Eka Widiarta', 'Laki-laki', 'Samuh', '2007-01-14', 'Hindu', 'Samuh', 2022, NULL, 1),
(15, '0063372325', 'I Wayan Kariasa', 'Laki-laki', 'Tenganan', '2006-08-05', 'Hindu', 'Banjar Dinas Tenganan Pegringsingan', 2022, NULL, 1),
(16, '0046251805', 'Luh Endra Maharani', 'Perempuan', 'Karangasem', '2004-08-13', 'Hindu', 'Banjar Dinas Bugbug Samuh', 2022, NULL, 1),
(17, '0074416957', 'Ni Kade Desi Amelia', 'Perempuan', 'Karangasem', '2007-12-21', 'Hindu', 'Samuh', 2022, NULL, 1),
(18, '0078584729', 'Ni kadek Sudiantari', 'Perempuan', 'Tenganan', '2007-02-03', 'Hindu', 'Banjar Dinas Tenganan Pegringsingan', 2022, NULL, 1),
(19, '0076725800', 'Ni Kadek Yuliantari', 'Perempuan', 'Tenganan', '2007-07-11', 'Hindu', 'Banjar Dinas Tenganan Pegringsingan', 2022, NULL, 1),
(20, '0053380615', 'Ni Ketut Ayu Setiari', 'Perempuan', 'Karangasem', '2005-05-23', 'Hindu', 'Samuh', 2022, NULL, 1),
(21, '0066520346', 'Ni Ketut Muliyani', 'Perempuan', 'Bugbug Samuh', '2006-01-29', 'Hindu', 'Samuh', 2022, NULL, 1),
(22, '0067838344', 'Ni Komang Ayu Septiani', 'Perempuan', 'Samuh', '2006-09-27', 'Hindu', 'Banjar Dinas Bugbug Samuh', 2022, NULL, 1),
(23, '0061218221', 'NI KOMANG DEWI DIANAWATI', 'Perempuan', 'TAUMAN', '2006-12-27', 'Hindu', 'Banjar Dinas Tauman', 2022, NULL, 1),
(24, '0072056029', 'Ni Putu Lia Suryati', 'Perempuan', 'Karangasem', '2007-01-02', 'Hindu', 'Banjar Dinas Mendira', 2022, NULL, 1),
(25, '0054189350', 'I Kadek Dwi Artawan', 'Laki-laki', 'Pekarangan', '2005-12-23', 'Hindu', 'Banjar Dinas Pekarangan', 2022, NULL, 1),
(26, '0078844762', 'I KADEK OKTA WIGUNA', 'Laki-laki', 'NYUHTEBEL', '2007-10-31', 'Hindu', 'Banjar Dinas Tauman', 2022, NULL, 1),
(27, '0064261792', 'I Ketut Adi Septiawan', 'Laki-laki', 'Sengkidu', '2006-09-17', 'Hindu', 'Banjar Dinas Karangasem', 2022, NULL, 1),
(28, '0072456349', 'I Ketut Merta Yasa', 'Laki-laki', 'Tenganan Dauh Tukad', '2007-03-12', 'Hindu', 'Banjar Dinas Tenganan Dauh Tukad', 2022, NULL, 1),
(29, '0074901064', 'I KOMANG ARYA SUMERTA', 'Laki-laki', 'TAUMAN', '2007-07-23', 'Hindu', 'Banjar Dinas Tauman', 2022, NULL, 1),
(30, '0066872269', 'I KOMANG CANDRA DIPA', 'Laki-laki', 'SAMPIANG', '2006-12-05', 'Hindu', 'Banjar Dinas Tauman', 2022, NULL, 1),
(31, '0074672651', 'I Made Agus Juliawan', 'Laki-laki', 'Tenganan Dauh Tukad', '2007-07-04', 'Hindu', 'Banjar Dinas Tenganan Dauh Tukad', 2022, NULL, 1),
(32, '0062533775', 'I Made Dwi Permana', 'Laki-laki', 'Tenganan Dauh Tukad', '2006-06-12', 'Hindu', 'Banjar Dinas Tenganan Dauh Tukad', 2022, NULL, 1),
(33, '0078214732', 'I Made Kartika', 'Laki-laki', 'Tenganan Dauh Tukad', '2007-04-21', 'Hindu', 'Banjar Dinas Tenganan Dauh Tukad', 2022, NULL, 1),
(34, '0062057247', 'I MADE SUARDIKA', 'Laki-laki', 'TAUMAN', '2006-10-13', 'Hindu', 'Banjar Dinas Tauman', 2022, NULL, 1),
(35, '0068571374', 'I NYOMAN KRISNA EDI PUTRA', 'Laki-laki', 'KARANGASEM', '2006-07-30', 'Hindu', 'Banjar Dinas Tauman', 2022, NULL, 1),
(36, '0074656676', 'I PUTU BOBBY SATRIA ARIMBAWA', 'Laki-laki', 'TAUMAN', '2007-06-15', 'Hindu', 'Banjar Dinas Tauman', 2022, NULL, 1),
(37, '0075849347', 'I Putu Euro Wahenantara', 'Laki-laki', 'Amlapura', '2007-03-31', 'Hindu', 'Jalan Gurita I gang Scorpio No. 7', 2022, NULL, 1),
(38, '0076000305', 'I WAYAN AGUS JUNIARTA', 'Laki-laki', 'KARANGASEM', '2007-06-14', 'Hindu', 'Banjar Dinas Tauman', 2022, NULL, 1),
(39, '0071344994', 'I Wayan Widiantara', 'Laki-laki', 'Samuh', '2007-04-28', 'Hindu', 'Samuh', 2022, NULL, 1),
(40, '0076640603', 'Kade Suantari', 'Perempuan', 'Samuh', '2007-02-16', 'Hindu', 'Samuh', 2022, NULL, 1),
(41, '0076231390', 'Ni Kade Aprilia Rustini', 'Perempuan', 'Karangasem', '2007-04-04', 'Hindu', 'Samuh', 2022, NULL, 1),
(42, '0068166927', 'Ni Kadek Melinda Mahendrayani', 'Perempuan', 'Mendira', '2006-08-07', 'Hindu', 'Banjar Dinas Mendira', 2022, NULL, 1),
(43, '0069281622', 'Ni Kadek Wini Chaori Putri', 'Perempuan', 'Sengkidu', '2006-12-20', 'Hindu', 'Banjar Dinas Karangasem', 2022, NULL, 1),
(44, '0075400257', 'Ni Made Apriliani Suarningsih', 'Perempuan', 'Sengkidu', '2007-04-26', 'Hindu', 'Banjar Dinas Subagan', 2022, NULL, 1),
(45, '0078072257', 'NI MADE AYU ASTITI', 'Perempuan', 'PERASI', '2007-06-26', 'Hindu', 'Banjar Dinas Karanganyar', 2022, NULL, 1),
(46, '0063931289', 'Ni Made Nonik Yanti', 'Perempuan', 'Samuh', '2008-11-06', 'Hindu', 'Samuh', 2022, NULL, 1),
(47, '0075632662', 'NI NENGAH MITA PURNAMI', 'Perempuan', 'KARANGASEM', '2007-05-31', 'Hindu', 'Banjar Dinas Tengah', 2022, NULL, 1),
(48, '0069497086', 'NI NENGAH SRI MELANI', 'Perempuan', 'NYUHTEBEL', '2006-05-29', 'Hindu', 'Banjar Dinas Karanganyar', 2022, NULL, 1),
(49, '0056103864', 'Ni Putu Vira Windari Putri', 'Perempuan', 'Kusamba', '2005-09-24', 'Hindu', 'Banjar Dinas Karangasem', 2022, NULL, 1),
(50, '0067371914', 'I GEDE AGUS CAHYA SETIAWAN', 'Laki-laki', 'TAUMAN', '2006-08-05', 'Hindu', 'BR DINAS TAUMAN', 2021, NULL, 1),
(51, '0067260846', 'I Gede Valentino Pratama', 'Laki-laki', 'Karangasem', '2006-02-13', 'Hindu', 'Br. Dinas Karangasem', 2021, NULL, 1),
(52, '0066762513', 'I Gede Yudi Suryawan', 'Laki-laki', 'Jasri', '2006-03-25', 'Hindu', 'Samuh', 2021, NULL, 1),
(53, '0069066857', 'I Gusti Ayu Kadek Sintya Dewi', 'Perempuan', 'Karangasem', '2006-01-25', 'Hindu', 'candidasa', 2021, NULL, 1),
(54, '0063197483', 'I Kade Januarta', 'Laki-laki', 'Samuh', '2006-01-20', 'Hindu', 'Samuh', 2021, NULL, 1),
(55, '0068030201', 'I Kade Suardana', 'Laki-laki', 'Bugbug', '2006-03-12', 'Hindu', 'Samuh', 2021, NULL, 1),
(56, '0052849071', 'I Kadek Ari Subawa', 'Laki-laki', 'Ngis', '2005-10-30', 'Hindu', '(tidak diisi)', 2021, NULL, 1),
(57, '0058459619', 'I Ketut Angga Kusuma Jaya', 'Laki-laki', 'Bugbug', '2005-11-29', 'Hindu', 'Samuh', 2021, NULL, 1),
(58, '0062652006', 'I Komang Budiartana', 'Laki-laki', 'Karangasem', '2005-05-26', 'Hindu', 'Samuh', 2021, NULL, 1),
(59, '0061259400', 'I Komang Suparta', 'Laki-laki', 'Samuh', '2006-05-12', 'Hindu', 'Samuh', 2021, NULL, 1),
(60, '0060058258', 'I Komang Tri Darma Permana', 'Laki-laki', 'Tenganan Dauh Tukad', '2006-06-12', 'Hindu', 'Br Dinas Tenganan Dauh Tukad', 2021, NULL, 1),
(61, '0051436177', 'I MADE HENDRAYASA', 'Laki-laki', 'TAUMAN', '2005-04-02', 'Hindu', 'Br Dinas Tauman', 2021, NULL, 1),
(62, '0060058257', 'I Nengah Budi Adnyana', 'Laki-laki', 'Tenganan Dauh Tukad', '2006-05-14', 'Hindu', 'Banjar Dinas Tenganan Dauh Tukad', 2021, NULL, 1),
(63, '0054058825', 'I Nyoman Aditya Palguna', 'Laki-laki', 'Bugbug', '2005-12-10', 'Hindu', 'Samuh', 2021, NULL, 1),
(64, '0068049765', 'I Nyoman Agus Priyatna', 'Laki-laki', 'Bugbug', '2006-05-31', 'Hindu', 'Samuh', 2021, NULL, 1),
(65, '0063007573', 'I Putu Juni Wirawan', 'Laki-laki', 'Pegubugan', '2006-06-02', 'Hindu', 'Banjar Dinas Pegubugan', 2021, NULL, 1),
(66, '0044835950', 'I Putu Merta', 'Laki-laki', 'PESEDAHAN', '2004-03-08', 'Hindu', 'Br. Dinas Kauhan ', 2021, NULL, 1),
(67, '0068230334', 'I Putu Tegar Putra Mahardika', 'Laki-laki', 'Ngis', '2006-07-16', 'Hindu', 'Br. Dinas Kelodan', 2021, NULL, 1),
(68, '0056827998', 'I Wayan Dangin Adnyana', 'Laki-laki', 'Siig', '2005-04-07', 'Hindu', 'Banjar Dinas Siig', 2021, NULL, 1),
(69, '0061502101', 'I Wayan Yasa Kumara', 'Laki-laki', 'Samuh', '2006-04-30', 'Hindu', 'Br. Dinas Bugbug Samuh', 2021, NULL, 1),
(70, '0068556184', 'Ni Kade Sumiati', 'Perempuan', 'Bugbug', '2006-03-07', 'Hindu', 'Samuh', 2021, NULL, 1),
(71, '0061196740', 'Ni Komang Lia Sukarini', 'Perempuan', 'Denpasar', '2006-03-06', 'Hindu', 'Br Dinas Tenganan Dauh Tukad', 2021, NULL, 1),
(72, '0052354599', 'Ni Komang Sri Wahyuni', 'Perempuan', 'Samuh', '2005-08-09', 'Hindu', 'Samuh', 2021, NULL, 1),
(73, '0056226550', 'NI MADE EGA MEYSTA NINGSIH', 'Perempuan', 'TAUMAN', '2005-05-15', 'Hindu', 'BANJAR DINAS TAUMAN', 2021, NULL, 1),
(74, '0055305898', 'Ni Made Yuliantari', 'Perempuan', 'Karangasem', '2005-12-10', 'Hindu', 'Samuh', 2021, NULL, 1),
(75, '0069828392', 'I GUSTI LANANG ALIT GARGA WIJAYA', 'Laki-laki', 'Nyuhtebel', '2006-03-02', 'Hindu', 'Banjar Dinas Tengah', 2021, NULL, 1),
(76, '0069068167', 'I Kade Ari Indrayana', 'Laki-laki', 'Samuh', '2006-09-13', 'Hindu', 'Samuh', 2021, NULL, 1),
(77, '0067442625', 'I KADEK RAI ARTAWAN', 'Laki-laki', 'TAUMAN', '2006-02-27', 'Hindu', 'BANJAR DINAS TAUMAN', 2021, NULL, 1),
(78, '0069735083', 'I Kadek Sumantara', 'Laki-laki', 'Buitan', '2006-05-15', 'Hindu', 'Dusun Buitan', 2021, NULL, 1),
(79, '0051213440', 'I Kadek Yuda Adi Pranata', 'Laki-laki', 'Sengkidu', '2005-06-06', 'Hindu', 'Banjar Dinas Mendira', 2021, NULL, 1),
(80, '0038497122', 'I Komang Agus Sumartawan', 'Laki-laki', 'Sengkidu', '2003-08-31', 'Hindu', 'Br Dinas Karangasem', 2021, NULL, 1),
(81, '0033320074', 'I Komang Darmayasa', 'Laki-laki', 'Bugbug', '2003-09-05', 'Hindu', 'Samuh', 2021, NULL, 1),
(82, '0059865538', 'I KOMANG RUDI ANTARA', 'Laki-laki', 'NYUHTEBEL', '2005-09-26', 'Hindu', 'BANJAR DINAS TAUMAN', 2021, NULL, 1),
(83, '0064796499', 'I Putu Manik Suanjaya Putra', 'Laki-laki', 'Tenganan Dauh Tukad', '2006-12-09', 'Hindu', 'Banjar Dinas Tenganan Dauh Tukad', 2021, NULL, 1),
(84, '0052720618', 'Ni Kadek Diantari', 'Perempuan', 'Pekarangan', '2005-06-04', 'Hindu', 'Banjar Dinas Pekarangan', 2021, NULL, 1),
(85, '0063657628', 'Ni Kadek Rediasih', 'Perempuan', 'Denpasar', '2006-06-01', 'Hindu', 'Br.Dinas Karangasem', 2021, NULL, 1),
(86, '0061437108', 'Ni Kadek Tari', 'Perempuan', 'Pesedahan', '2006-09-21', 'Hindu', 'Br. Dinas kanginan', 2021, NULL, 1),
(87, '0052115716', 'NI KOMANG NISA PRABAWATI UTAMI', 'Perempuan', 'TAUMAN', '2005-11-10', 'Hindu', 'Br. Dinas Tauman', 2021, NULL, 1),
(88, '0069630825', 'NI KOMANG PURWANINGSIH', 'Perempuan', 'TAUMAN', '2006-09-07', 'Hindu', 'BANJAR DINAS TAUMAN', 2021, NULL, 1),
(89, '0066794078', 'Ni Komang Suartini', 'Perempuan', 'Sengkidu', '2005-05-05', 'Hindu', 'Banjar Dinas Karanganyar', 2021, NULL, 1),
(90, '0054844092', 'Ni Luh Nik Sumahyuni', 'Perempuan', 'Sengkidu', '2005-03-23', 'Hindu', 'Banjar Dinas Subagan', 2021, NULL, 1),
(91, '0059294922', 'Ni Putu Sri Udayani', 'Perempuan', 'Karangasem', '2005-10-12', 'Hindu', 'BD.Tauman', 2021, NULL, 1),
(92, '0068982689', 'Ni Putu Widhi Asih Yuliawati', 'Perempuan', 'Sengkidu', '2006-07-12', 'Hindu', 'Br. Dinas Karangasem', 2021, NULL, 1),
(93, '0058852458', 'Ni Wayan Sherlyani', 'Perempuan', 'Samuh', '2005-06-15', 'Hindu', 'Samuh', 2021, NULL, 1),
(94, '0062657070', 'Ni Wayan Sugiantari', 'Perempuan', 'Perasi', '2006-04-27', 'Hindu', 'Samuh', 2021, NULL, 1),
(95, '0040576435', 'I GEDE AGUS PUTRA ADNYANA', 'Laki-laki', 'PANGITEBEL', '2004-02-03', 'Hindu', 'BANJAR PANGITEBEL', 2020, NULL, 1),
(96, '0045235255', 'I GEDE EDI YUDIARTAWAN', 'Laki-laki', 'NYUHTEBEL', '2004-04-07', 'Hindu', 'Banjar Dinas Tauman', 2020, NULL, 1),
(97, '0058841281', 'I GEDE WAHYU WIDYAMERTA', 'Laki-laki', 'TAUMAN', '2005-05-27', 'Hindu', 'Banjar Dinas Tauman', 2020, NULL, 1),
(98, '0052793993', 'I Kade Miarsana', 'Laki-laki', 'Samuh', '2005-05-04', 'Hindu', 'Candidasa', 2020, NULL, 1),
(99, '0040703230', 'I KADEK MERTA ADI', 'Laki-laki', 'TAUMAN', '2004-03-16', 'Hindu', 'Banjar Dinas Tauman', 2020, NULL, 1),
(100, '0045138619', 'I Kadek Wahyu Wira Adiguna', 'Laki-laki', 'Karangasem', '2004-09-17', 'Hindu', 'Buitan', 2020, NULL, 1),
(101, '0048518590', 'I Ketut Budisastra Wijaya', 'Laki-laki', 'Sengkidu', '2004-12-07', 'Hindu', 'Banjar Dinas Karangasem', 2020, NULL, 1),
(102, '0044835957', 'I Ketut Wahyu Wiarta ', 'Laki-laki', 'Pesedahan ', '2004-11-08', 'Hindu', 'Br. Dinas Kanginan ', 2020, NULL, 1),
(103, '0050878084', 'I Ketut Widiantara', 'Laki-laki', 'Bugbug', '2005-02-01', 'Hindu', 'Samuh', 2020, NULL, 1),
(104, '0041216785', 'I Komang Agus Juniarta', 'Laki-laki', 'Samuh', '2004-06-20', 'Hindu', 'Samuh', 2020, NULL, 1),
(105, '0039705111', 'I Putu Adi Wiguna', 'Laki-laki', 'Bungkulan Singaraja', '2003-01-15', 'Hindu', 'Banjar Dinas Tenganan Dauh Tukad', 2020, NULL, 1),
(106, '0050837639', 'I Putu Aditya Pratama', 'Laki-laki', 'Sengkidu', '2005-02-08', 'Hindu', 'Banjar Dinas Subagan', 2020, NULL, 1),
(107, '0060058256', 'I Putu Ari Pranata', 'Laki-laki', 'Tenganan Dauh Tukad', '2006-02-03', 'Hindu', 'Banjar Dinas Tenganan Dauh Tukad', 2020, NULL, 1),
(108, '0051436180', 'I PUTU ARYA ANOM WARDHANA', 'Laki-laki', 'NYUHTEBEL', '2005-04-29', 'Hindu', 'Banjar Dinas Tauman', 2020, NULL, 1),
(109, '0025092017', 'I Putu Darma Putra', 'Laki-laki', 'Sengkidu', '2002-12-27', 'Hindu', 'Banjar Dinas Subagan', 2020, NULL, 1),
(110, '0051293077', 'I PUTU EDI MULIARTA', 'Laki-laki', 'KARANGASEM', '2005-09-12', 'Hindu', 'Banjar Dinas Tengah', 2020, NULL, 1),
(111, '0035194419', 'I Putu Egantara', 'Laki-laki', 'Tenganan Dauh Tukad', '2003-12-12', 'Hindu', 'Banjar Dinas Tenganan Dauh Tukad', 2020, NULL, 1),
(112, '0020822338', 'I Putu Sudiantara', 'Laki-laki', 'Pekarangan', '2002-11-30', 'Hindu', 'Banjar Dinas Pekarangan', 2020, NULL, 1),
(113, '0027892919', 'I Putu Sudirka', 'Laki-laki', 'Pesedahan', '2002-08-28', 'Hindu', 'Banjar Dinas Tenganan Pegringsingan', 2020, NULL, 1),
(114, '0046251803', 'I Putu Yogi Swara', 'Laki-laki', 'Samuh', '2004-07-29', 'Hindu', 'Samuh', 2020, NULL, 1),
(115, '0051054466', 'I Putu Yudi Setiawan', 'Laki-laki', 'Ngis', '2005-05-27', 'Hindu', 'Banjar Dinas Kajanan', 2020, NULL, 1),
(116, '0045235261', 'I WAYAN ESA DITYA KUNDALA', 'Laki-laki', 'TAUMAN', '2004-12-27', 'Hindu', 'Banjar Dinas Tauman', 2020, NULL, 1),
(117, '0044810742', 'I Wayan Okta Murdayawan', 'Laki-laki', 'Sengkidu', '2004-10-30', 'Hindu', 'Banjar Dinas Karangasem', 2020, NULL, 1),
(118, '0051213444', 'I Wayan Roberta', 'Laki-laki', 'Karangasem', '2005-07-21', 'Hindu', 'Banjar Dinas Subagan', 2020, NULL, 1),
(119, '0050837638', 'I Wayan Sumerta', 'Laki-laki', 'Sengkidu', '2005-01-27', 'Hindu', 'Banjar Dinas Karangasem', 2020, NULL, 1),
(120, '0035194420', 'I Wayan Widiartana', 'Laki-laki', 'Tenganan Dauh Tukad', '2003-12-13', 'Hindu', 'Banjar Dinas Tenganan Dauh Tukad', 2020, NULL, 1),
(121, '0046251806', 'Ni Kade Katya Amanda', 'Perempuan', 'Samuh', '2004-09-09', 'Hindu', 'Samuh', 2020, NULL, 1),
(122, '0052793995', 'Ni Kade Sumartini', 'Perempuan', 'Samuh', '2005-06-23', 'Hindu', 'Samuh', 2020, NULL, 1),
(123, '0045135110', 'NI KOMANG AYU PARTINA', 'Perempuan', 'KARANGASEM', '2004-04-29', 'Hindu', 'Banjar Dinas Tengah', 2020, NULL, 1),
(124, '0035696350', 'Ni Komang Putri Juliantini', 'Perempuan', 'Bugbug', '2003-07-22', 'Hindu', 'Banjar Dinas Karanganyar', 2020, NULL, 1),
(125, '0051058966', 'Ni Komang Widiani', 'Perempuan', 'Ngis', '2005-05-12', 'Hindu', 'Ngis', 2020, NULL, 1),
(126, '0034972632', 'Ni Luh Padmi Wulandari', 'Perempuan', 'Sengkidu', '2003-11-25', 'Hindu', 'Banjar Dinas Karangasem', 2020, NULL, 1),
(127, '0045135120', 'NI LUH PUTU NOVI WIDIYANTINI', 'Perempuan', 'NYUHTEBEL', '2004-11-08', 'Hindu', 'Banjar Dinas Karanganyar', 2020, NULL, 1),
(128, '0050936083', 'Ni Luh Widi Setyaningsih', 'Perempuan', 'Samuh', '2005-11-18', 'Hindu', 'Samuh', 2020, NULL, 1),
(129, '0035395877', 'Ni Wayan Desiani', 'Perempuan', 'Samuh', '2002-12-31', 'Hindu', 'Samuh', 2020, NULL, 1),
(130, '0051436183', 'I GEDE ARI YOGA', 'Laki-laki', 'NYUHTEBEL', '2005-05-17', 'Hindu', 'Banjar Dinas Tauman', 2020, NULL, 1),
(131, '0052793984', 'I Gede Wisnu Putra Ariwinaya', 'Laki-laki', 'Perasi', '2005-02-08', 'Hindu', 'Candidasa', 2020, NULL, 1),
(132, '0051436174', 'I KADEK ERIK SUDIANTIKA', 'Laki-laki', 'TAUMAN', '2005-02-07', 'Hindu', 'Banjar Dinas Tauman', 2020, NULL, 1),
(133, '3046091161', 'I Kadek Suda Budi Pawerti', 'Laki-laki', 'Samuh', '2004-05-22', 'Hindu', 'Banjar Dinas Perasi Kelod', 2020, NULL, 1),
(134, '0047283392', 'I Ketut Agus Ardita', 'Laki-laki', 'Pekarangan', '2004-08-06', 'Hindu', 'Banjar Pekarangan, Perbekelan Ngis, Kec.Manggis, Kab.Karangasem', 2020, NULL, 1),
(135, '0051296612', 'I Ketut Agus Arya Winata', 'Laki-laki', 'Tenganan Dauh Tukad', '2005-04-30', 'Hindu', 'Banjar Dinas Tenganan Dauh Tukad', 2020, NULL, 1),
(136, '0055721042', 'I Ketut Merta Yasa', 'Laki-laki', 'Bugbug', '2005-03-14', 'Hindu', '(tidak diisi)', 2020, NULL, 1),
(137, '0035237311', 'I Komang Agus Sudiarsana', 'Laki-laki', 'Sengkidu', '2003-08-09', 'Hindu', 'Banjar Dinas Subagan', 2020, NULL, 1),
(138, '0065075946', 'I Komang Merta', 'Laki-laki', 'Pekarangan', '2003-12-16', 'Hindu', 'Banjar Pekarangan, Perbekelan Ngis, Kec.Manggis, Kab.Karangasem', 2020, NULL, 1),
(139, '0045097181', 'I Made Agus Wiraguna', 'Laki-laki', 'Pekarangan', '2004-04-28', 'Hindu', 'Banjar Dinas Pekarangan', 2020, NULL, 1),
(140, '0046251812', 'I Nengah Dediana', 'Laki-laki', 'Samuh', '2004-12-24', 'Hindu', 'Samuh', 2020, NULL, 1),
(141, '0055470890', 'I NENGAH WAHYU AGUS NUGRAHA', 'Laki-laki', 'PERASI', '2005-08-03', 'Hindu', 'Banjar Dinas Tauman', 2020, NULL, 1),
(142, '0044595223', 'I Nyoman Pasek Sastrawan', 'Laki-laki', 'Sengkidu', '2005-03-08', 'Hindu', 'Banjar Dinas Karangasem', 2020, NULL, 1),
(143, '0050837646', 'I Putu Agus Adi Saputra', 'Laki-laki', 'Sengkidu', '2005-08-22', 'Hindu', 'Banjar Dinas Karangasem', 2020, NULL, 1),
(144, '0051436187', 'I PUTU AGUS DARMA YOGA', 'Laki-laki', 'TAUMAN', '2005-07-26', 'Hindu', 'Banjar Dinas Tauman', 2020, NULL, 1),
(145, '0035237314', 'I Wayan Wahyudi Gunantara', 'Laki-laki', 'Sengkidu', '2003-10-31', 'Hindu', 'Banjar Dinas Karangasem', 2020, NULL, 1),
(146, '0044892792', 'Ni Kadek Apriani', 'Perempuan', 'Tenganan', '2004-04-21', 'Hindu', 'Banjar Dinas Tenganan Pegringsingan', 2020, NULL, 1),
(147, '0044168248', 'Ni Kadek Ari Oktaviani', 'Perempuan', 'Denpasar', '2004-10-13', 'Hindu', 'Banjar Dinas Subagan', 2020, NULL, 1),
(148, '0045235258', 'NI KADEK OMING ANDANI PRADNYAWATI', 'Perempuan', 'NYUHTEBEL', '2004-10-07', 'Hindu', 'Banjar Dinas Tauman', 2020, NULL, 1),
(149, '0040995800', 'Ni Kadek Padmayanti', 'Perempuan', 'Sengkidu', '2005-01-07', 'Hindu', 'Banjar Dinas Karangasem', 2020, NULL, 1),
(150, '0051436190', 'NI KADEK RATIH SUGIANTARI', 'Perempuan', 'KARANGASEM', '2005-09-30', 'Hindu', 'Banjar Dinas Tauman', 2020, NULL, 1),
(151, '0052793992', 'Ni Ketut Parwati', 'Perempuan', 'Bugbug', '2005-05-01', 'Hindu', 'Candidasa', 2020, NULL, 1),
(152, '0051436192', 'NI KETUT RADA LELYA PUTRI', 'Perempuan', 'TAUMAN', '2005-11-04', 'Hindu', 'Banjar Dinas Tauman', 2020, NULL, 1),
(153, '0051217536', 'Ni Komang Marta Amelia Putri', 'Perempuan', 'Belong', '2005-03-24', 'Hindu', 'Lingkungan Pebukit', 2020, NULL, 1),
(154, '0045135038', 'Ni Komang Sudiani', 'Perempuan', 'Ulakan', '2004-06-26', 'Hindu', 'Banjar Dinas Mangku', 2020, NULL, 1),
(155, '0051436172', 'NI LUH AYU MAHIMA CANIS', 'Perempuan', 'SAMPIANG', '2005-01-22', 'Hindu', 'Banjar Dinas Tauman', 2020, NULL, 1),
(156, '0045691227', 'Ni Luh Putu Ayu Carry Fitriyani', 'Perempuan', 'Denpasar', '2004-11-09', 'Hindu', 'Banjar Dinas Karangasem', 2020, NULL, 1),
(157, '0045235262', 'NI MADE WIWIN WINDAYANTI', 'Perempuan', 'TAUMAN', '2004-12-27', 'Hindu', 'Banjar Dinas Tauman', 2020, NULL, 1),
(158, '0045135124', 'NI PUTU DESI ARI UTAMI', 'Perempuan', 'SAMPIANG', '2004-12-30', 'Hindu', 'Banjar Dinas Karanganyar', 2020, NULL, 1),
(159, '0056582428', 'NI PUTU MELLY KURNIAWATI', 'Perempuan', 'Karangasem', '2005-05-10', 'Hindu', 'Banjar Dinas Tauman', 2020, NULL, 1),
(160, '0045138606', 'Ni Putu Sriasih', 'Perempuan', 'Buitan', '2004-01-16', 'Hindu', 'Dusun Buitan', 2020, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `el_tugas`
--

CREATE TABLE `el_tugas` (
  `id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `pengajar_id` int(11) NOT NULL,
  `type_id` tinyint(1) NOT NULL COMMENT '1=upload,2=essay,3=ganda',
  `judul` varchar(255) NOT NULL,
  `durasi` int(11) DEFAULT NULL COMMENT 'lama pengerjaan dalam menit',
  `info` text DEFAULT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 0,
  `tgl_buat` datetime DEFAULT NULL,
  `tampil_siswa` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=tidak tampil di siswa, 1=tampil siswa'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `el_tugas_kelas`
--

CREATE TABLE `el_tugas_kelas` (
  `id` int(11) NOT NULL,
  `tugas_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `el_tugas_pertanyaan`
--

CREATE TABLE `el_tugas_pertanyaan` (
  `id` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `urutan` int(11) NOT NULL,
  `tugas_id` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `el_field_tambahan`
--
ALTER TABLE `el_field_tambahan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `el_kelas`
--
ALTER TABLE `el_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `parent_id_2` (`parent_id`);

--
-- Indexes for table `el_kelas_siswa`
--
ALTER TABLE `el_kelas_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_id` (`kelas_id`,`siswa_id`),
  ADD KEY `kelas_id_2` (`kelas_id`,`siswa_id`);

--
-- Indexes for table `el_komentar`
--
ALTER TABLE `el_komentar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_id` (`login_id`,`materi_id`),
  ADD KEY `login_id_2` (`login_id`,`materi_id`);

--
-- Indexes for table `el_login`
--
ALTER TABLE `el_login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`siswa_id`,`pengajar_id`),
  ADD KEY `username_2` (`username`,`siswa_id`,`pengajar_id`);

--
-- Indexes for table `el_login_log`
--
ALTER TABLE `el_login_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_id` (`login_id`),
  ADD KEY `login_id_2` (`login_id`),
  ADD KEY `login_id_3` (`login_id`);

--
-- Indexes for table `el_mapel`
--
ALTER TABLE `el_mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `el_mapel_ajar`
--
ALTER TABLE `el_mapel_ajar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hari_id` (`hari_id`,`pengajar_id`,`mapel_kelas_id`),
  ADD KEY `hari_id_2` (`hari_id`,`pengajar_id`,`mapel_kelas_id`);

--
-- Indexes for table `el_mapel_kelas`
--
ALTER TABLE `el_mapel_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_id` (`kelas_id`,`mapel_id`),
  ADD KEY `kelas_id_2` (`kelas_id`,`mapel_id`);

--
-- Indexes for table `el_materi`
--
ALTER TABLE `el_materi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mapel_id` (`mapel_id`,`pengajar_id`,`siswa_id`),
  ADD KEY `mapel_id_2` (`mapel_id`,`pengajar_id`,`siswa_id`);

--
-- Indexes for table `el_materi_kelas`
--
ALTER TABLE `el_materi_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materi_id` (`materi_id`,`kelas_id`),
  ADD KEY `materi_id_2` (`materi_id`,`kelas_id`);

--
-- Indexes for table `el_messages`
--
ALTER TABLE `el_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`,`owner_id`,`sender_receiver_id`),
  ADD KEY `type_id_2` (`type_id`,`owner_id`,`sender_receiver_id`);

--
-- Indexes for table `el_nilai_tugas`
--
ALTER TABLE `el_nilai_tugas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tugas_id` (`tugas_id`,`siswa_id`),
  ADD KEY `tugas_id_2` (`tugas_id`,`siswa_id`);

--
-- Indexes for table `el_pengajar`
--
ALTER TABLE `el_pengajar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nip` (`nip`),
  ADD KEY `nip_2` (`nip`);

--
-- Indexes for table `el_pengaturan`
--
ALTER TABLE `el_pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `el_pengumuman`
--
ALTER TABLE `el_pengumuman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengajar_id` (`pengajar_id`),
  ADD KEY `pengajar_id_2` (`pengajar_id`);

--
-- Indexes for table `el_pilihan`
--
ALTER TABLE `el_pilihan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pertanyaan_id` (`pertanyaan_id`),
  ADD KEY `pertanyaan_id_2` (`pertanyaan_id`,`kunci`);

--
-- Indexes for table `el_siswa`
--
ALTER TABLE `el_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nis` (`nis`,`nama`,`status_id`),
  ADD KEY `nis_2` (`nis`,`nama`,`status_id`);

--
-- Indexes for table `el_tugas`
--
ALTER TABLE `el_tugas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mapel_id` (`mapel_id`,`pengajar_id`,`type_id`),
  ADD KEY `mapel_id_2` (`mapel_id`,`pengajar_id`,`type_id`);

--
-- Indexes for table `el_tugas_kelas`
--
ALTER TABLE `el_tugas_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tugas_id` (`tugas_id`,`kelas_id`),
  ADD KEY `tugas_id_2` (`tugas_id`,`kelas_id`);

--
-- Indexes for table `el_tugas_pertanyaan`
--
ALTER TABLE `el_tugas_pertanyaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tugas_id` (`tugas_id`),
  ADD KEY `tugas_id_2` (`tugas_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `el_kelas`
--
ALTER TABLE `el_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `el_kelas_siswa`
--
ALTER TABLE `el_kelas_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `el_komentar`
--
ALTER TABLE `el_komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `el_login`
--
ALTER TABLE `el_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `el_login_log`
--
ALTER TABLE `el_login_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `el_mapel`
--
ALTER TABLE `el_mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `el_mapel_ajar`
--
ALTER TABLE `el_mapel_ajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `el_mapel_kelas`
--
ALTER TABLE `el_mapel_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `el_materi`
--
ALTER TABLE `el_materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `el_materi_kelas`
--
ALTER TABLE `el_materi_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `el_messages`
--
ALTER TABLE `el_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `el_nilai_tugas`
--
ALTER TABLE `el_nilai_tugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `el_pengajar`
--
ALTER TABLE `el_pengajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `el_pengumuman`
--
ALTER TABLE `el_pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `el_pilihan`
--
ALTER TABLE `el_pilihan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `el_siswa`
--
ALTER TABLE `el_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;

--
-- AUTO_INCREMENT for table `el_tugas`
--
ALTER TABLE `el_tugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `el_tugas_kelas`
--
ALTER TABLE `el_tugas_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `el_tugas_pertanyaan`
--
ALTER TABLE `el_tugas_pertanyaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
