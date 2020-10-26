-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Okt 2020 pada 06.35
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(2, 'One Piece', 'one piece', 'Raditya DIka', 'Gramedia', 'one.jpg', NULL, NULL),
(3, 'Captain Tsubasa', 'captain-tsubasa', 'Nankatsu', 'lazada', '1603640769_375e5c9f981adc670567.jpg', '2020-10-21 06:15:06', '2020-10-25 10:46:09'),
(12, 'doraemon', 'doraemon', 'Fujiko F', 'Grmedoia', '1603640722_9685360258b91a3a6817.png', '2020-10-25 10:45:22', '2020-10-25 10:45:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-10-26-025742', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1603681645, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Galiono Tampubolon', 'Psr. Taman No. 142, Cirebon 26232, Papua', '2017-12-16 06:02:30', '2020-10-25 22:58:02'),
(2, 'Puput Yuliarti M.M.', 'Psr. HOS. Cjokroaminoto (Pasirkaliki) No. 211, Banjar 11024, DKI', '1998-02-27 07:52:17', '2020-10-25 22:58:36'),
(3, 'Carla Kamila Usada S.E.I', 'Ki. PHH. Mustofa No. 421, Padangpanjang 42307, KalTeng', '2005-07-22 05:57:10', '2020-10-25 22:58:36'),
(4, 'Cinta Usamah', 'Gg. Bahagia No. 601, Sabang 22670, BaBel', '1989-12-17 19:49:49', '2020-10-25 22:58:36'),
(5, 'Viman Indra Januar M.Kom.', 'Psr. Gardujati No. 463, Banjarmasin 43672, DIY', '1974-11-01 14:41:09', '2020-10-25 22:58:36'),
(6, 'Kamila Mulyani', 'Kpg. Imam Bonjol No. 337, Binjai 57527, NTT', '2005-03-22 11:55:50', '2020-10-25 22:58:36'),
(7, 'Ibrani Unggul Sihombing S.Farm', 'Jln. Kyai Mojo No. 208, Sibolga 87433, SumBar', '1976-12-02 16:54:10', '2020-10-25 22:58:36'),
(8, 'Heryanto Emong Situmorang S.E.I', 'Jln. Ikan No. 119, Administrasi Jakarta Barat 56798, SulSel', '2007-01-18 07:09:40', '2020-10-25 22:58:36'),
(9, 'Tasnim Waskita', 'Ki. Gardujati No. 660, Palembang 92378, JaTim', '1975-02-15 22:31:58', '2020-10-25 22:58:36'),
(10, 'Adikara Prakasa', 'Psr. Panjaitan No. 288, Ternate 69161, KalSel', '1993-07-09 01:54:35', '2020-10-25 22:58:36'),
(11, 'Mila Suryatmi', 'Dk. Tambun No. 683, Denpasar 99764, KalTeng', '1970-08-24 08:02:25', '2020-10-25 22:58:36'),
(12, 'Panca Kambali Utama', 'Gg. Banal No. 700, Tebing Tinggi 59255, KalTeng', '1972-08-12 03:15:29', '2020-10-25 22:58:36'),
(13, 'Zahra Kuswandari S.Ked', 'Ds. Bakau Griya Utama No. 414, Sawahlunto 38518, SumUt', '2013-10-27 01:15:38', '2020-10-25 22:58:36'),
(14, 'Humaira Zelaya Novitasari S.T.', 'Jln. Sampangan No. 83, Padang 89997, NTB', '2011-04-26 19:11:25', '2020-10-25 22:58:36'),
(15, 'Gangsar Galang Irawan', 'Psr. Mulyadi No. 135, Sukabumi 47235, SulUt', '1999-01-20 08:21:28', '2020-10-25 22:58:36'),
(16, 'Oni Zulaika', 'Ds. Baing No. 717, Pasuruan 23865, DKI', '1990-04-03 12:11:23', '2020-10-25 22:58:36'),
(17, 'Kenes Saputra', 'Ki. Samanhudi No. 985, Ambon 98904, NTT', '2004-04-25 17:30:21', '2020-10-25 22:58:36'),
(18, 'Ilsa Mayasari', 'Jr. Aceh No. 444, Banjar 98169, BaBel', '1976-03-10 19:57:26', '2020-10-25 22:58:36'),
(19, 'Nadia Rahayu S.E.', 'Ds. Flores No. 268, Surabaya 15205, SumSel', '1985-08-25 20:38:19', '2020-10-25 22:58:36'),
(20, 'Mujur Hidayanto', 'Jln. Sukajadi No. 151, Kediri 57558, JaBar', '1981-08-17 13:49:08', '2020-10-25 22:58:36'),
(21, 'Kasim Jailani', 'Gg. Basket No. 128, Bogor 97102, Aceh', '1971-02-10 10:08:30', '2020-10-25 22:58:36'),
(22, 'Putri Hamima Hartati S.E.I', 'Psr. Pacuan Kuda No. 61, Mojokerto 23547, Riau', '1975-02-08 08:50:46', '2020-10-25 22:58:36'),
(23, 'Harjasa Eja Kurniawan', 'Jln. Bara Tambar No. 423, Blitar 36664, SulTeng', '1985-06-07 22:04:45', '2020-10-25 22:58:36'),
(24, 'Hilda Maryati', 'Dk. Gedebage Selatan No. 352, Cirebon 56564, JaBar', '2017-04-25 18:48:24', '2020-10-25 22:58:36'),
(25, 'Raditya Waluyo S.H.', 'Ds. Raya Setiabudhi No. 638, Magelang 84948, SulBar', '2012-01-17 08:30:01', '2020-10-25 22:58:36'),
(26, 'Ayu Queen Andriani', 'Jln. Dipatiukur No. 581, Tual 62233, SumBar', '2016-04-20 06:59:53', '2020-10-25 22:58:36'),
(27, 'Banawa Simbolon', 'Jln. R.M. Said No. 714, Batu 31820, SumSel', '2014-03-29 10:14:16', '2020-10-25 22:58:36'),
(28, 'Ajiman Mahendra', 'Ds. Baladewa No. 852, Tual 87862, SulTra', '2000-04-14 01:06:49', '2020-10-25 22:58:36'),
(29, 'Lukita Kasiran Siregar', 'Ki. Abang No. 772, Cimahi 47871, SulSel', '1974-11-27 08:37:05', '2020-10-25 22:58:36'),
(30, 'Ratih Tira Anggraini', 'Ki. Adisucipto No. 236, Palopo 34145, BaBel', '1971-08-30 23:01:02', '2020-10-25 22:58:36'),
(31, 'Mahesa Waskita', 'Jln. Surapati No. 479, Banjarbaru 82246, SumBar', '2012-06-16 20:03:26', '2020-10-25 22:58:36'),
(32, 'Baktiono Martana Firmansyah', 'Dk. Gedebage Selatan No. 912, Gunungsitoli 71225, NTB', '1995-07-24 14:06:04', '2020-10-25 22:58:36'),
(33, 'Bakidin Sihombing', 'Gg. Rajawali No. 615, Padangpanjang 81085, KalBar', '1999-04-20 10:53:30', '2020-10-25 22:58:36'),
(34, 'Siska Jessica Maryati S.T.', 'Jr. Mulyadi No. 75, Kediri 93502, SulBar', '2002-06-30 23:45:10', '2020-10-25 22:58:36'),
(35, 'Intan Sabrina Oktaviani S.Kom', 'Kpg. Gedebage Selatan No. 687, Pematangsiantar 80570, Papua', '1997-01-11 03:18:47', '2020-10-25 22:58:36'),
(36, 'Darijan Anggriawan M.Farm', 'Psr. Teuku Umar No. 24, Tidore Kepulauan 43904, DKI', '2008-11-12 07:59:37', '2020-10-25 22:58:36'),
(37, 'Dadap Hutapea', 'Jr. Gremet No. 16, Bau-Bau 85550, NTT', '2006-01-20 06:18:19', '2020-10-25 22:58:36'),
(38, 'Caket Pangeran Prasetya', 'Jln. Baranang Siang Indah No. 200, Palembang 42701, SulSel', '2000-02-07 08:54:57', '2020-10-25 22:58:36'),
(39, 'Ghaliyati Suryatmi S.Ked', 'Dk. Tambak No. 332, Administrasi Jakarta Selatan 28329, Jambi', '1991-04-08 13:22:42', '2020-10-25 22:58:36'),
(40, 'Safina Sudiati', 'Psr. Bazuka Raya No. 746, Tangerang 94646, SulUt', '1996-03-20 21:49:36', '2020-10-25 22:58:36'),
(41, 'Empluk Akarsana Mansur S.Pt', 'Jln. Baya Kali Bungur No. 881, Banjarmasin 82585, SulTra', '2013-11-11 13:04:33', '2020-10-25 22:58:36'),
(42, 'Ina Maria Sudiati S.Pd', 'Ds. Madrasah No. 103, Parepare 60055, Riau', '1988-11-18 16:41:11', '2020-10-25 22:58:36'),
(43, 'Vivi Hastuti S.Pt', 'Kpg. Bagas Pati No. 848, Bima 91848, SulBar', '1994-02-21 19:45:24', '2020-10-25 22:58:36'),
(44, 'Yani Puspasari', 'Jr. Otista No. 592, Mataram 89295, SulTeng', '1970-01-18 06:18:57', '2020-10-25 22:58:36'),
(45, 'Vanya Nasyiah', 'Ki. BKR No. 23, Bogor 89132, SulTra', '1990-01-31 22:00:10', '2020-10-25 22:58:36'),
(46, 'Intan Suartini', 'Ki. Reksoninten No. 972, Cirebon 69912, Bengkulu', '2013-02-25 17:53:21', '2020-10-25 22:58:36'),
(47, 'Ina Permata S.IP', 'Jln. Uluwatu No. 241, Kupang 66310, JaTim', '1981-08-22 04:51:51', '2020-10-25 22:58:36'),
(48, 'Sadina Melani', 'Kpg. Imam Bonjol No. 43, Dumai 65757, KalTim', '1988-05-27 08:28:51', '2020-10-25 22:58:36'),
(49, 'Yuliana Kuswandari', 'Ki. Jakarta No. 130, Pekalongan 84759, JaBar', '2006-02-24 20:39:12', '2020-10-25 22:58:36'),
(50, 'Irfan Habibi', 'Gg. Bagas Pati No. 593, Administrasi Jakarta Timur 92717, KalTim', '2008-09-02 15:49:41', '2020-10-25 22:58:36'),
(51, 'Yuni Kuswandari', 'Ds. Bak Air No. 308, Jambi 88203, Maluku', '1984-09-02 17:42:14', '2020-10-25 22:58:36'),
(52, 'Ella Lailasari', 'Ki. Jamika No. 195, Bekasi 65294, NTB', '2012-01-12 20:02:09', '2020-10-25 22:58:36'),
(53, 'Ina Rahimah', 'Dk. Supono No. 910, Sawahlunto 25786, Bengkulu', '1995-05-20 00:20:02', '2020-10-25 22:58:36'),
(54, 'Jatmiko Cengkir Maheswara', 'Ds. Baranang Siang No. 775, Semarang 11610, SulBar', '1972-04-03 16:57:24', '2020-10-25 22:58:36'),
(55, 'Warsita Warta Ramadan', 'Psr. Sunaryo No. 435, Bengkulu 57245, JaBar', '2011-11-13 10:17:32', '2020-10-25 22:58:36'),
(56, 'Lintang Hesti Kusmawati M.Kom.', 'Ds. Baik No. 833, Bandar Lampung 10496, JaBar', '1973-12-08 14:30:40', '2020-10-25 22:58:36'),
(57, 'Gabriella Laksita S.Farm', 'Jr. Flores No. 630, Ternate 39334, Riau', '1981-07-25 18:51:02', '2020-10-25 22:58:36'),
(58, 'Ikhsan Pradana S.Gz', 'Kpg. Jambu No. 614, Batam 70261, SumSel', '1981-02-12 22:32:55', '2020-10-25 22:58:36'),
(59, 'Padmi Sudiati M.M.', 'Psr. Sutarjo No. 157, Sibolga 63146, Gorontalo', '2019-06-18 23:53:38', '2020-10-25 22:58:36'),
(60, 'Bella Pratiwi', 'Jr. Muwardi No. 399, Lubuklinggau 37597, Maluku', '2002-07-19 09:21:45', '2020-10-25 22:58:36'),
(61, 'Daniswara Raditya Wahyudin', 'Ds. Salam No. 95, Ambon 35257, JaTim', '1972-07-15 18:54:55', '2020-10-25 22:58:36'),
(62, 'Violet Astuti', 'Ki. Wahidin No. 981, Tanjung Pinang 95886, JaBar', '1993-11-03 11:46:25', '2020-10-25 22:58:36'),
(63, 'Nova Dalima Wulandari S.Pt', 'Psr. Ters. Jakarta No. 539, Mojokerto 65096, KalTim', '2015-01-11 17:32:46', '2020-10-25 22:58:36'),
(64, 'Kemal Gambira Nugroho', 'Kpg. Merdeka No. 616, Bengkulu 36309, BaBel', '2020-01-01 15:23:24', '2020-10-25 22:58:36'),
(65, 'Harsana Adriansyah', 'Ds. Baan No. 515, Sungai Penuh 68938, Lampung', '1983-05-31 00:13:10', '2020-10-25 22:58:36'),
(66, 'Ilsa Mandasari S.H.', 'Ds. Babakan No. 195, Metro 11017, MalUt', '1995-12-10 11:55:32', '2020-10-25 22:58:36'),
(67, 'Maryanto Dimas Maheswara', 'Gg. Tentara Pelajar No. 713, Cilegon 35909, Banten', '1981-10-18 08:36:20', '2020-10-25 22:58:36'),
(68, 'Jaswadi Haryanto M.TI.', 'Jln. W.R. Supratman No. 356, Padangpanjang 41089, KalTeng', '2019-12-17 20:18:44', '2020-10-25 22:58:36'),
(69, 'Ridwan Mandala', 'Dk. Labu No. 969, Metro 70362, Bengkulu', '1971-03-26 15:10:36', '2020-10-25 22:58:36'),
(70, 'Galuh Situmorang S.IP', 'Ki. Yosodipuro No. 873, Banjarbaru 22770, NTB', '2015-04-07 12:32:37', '2020-10-25 22:58:36'),
(71, 'Paramita Susanti', 'Gg. Baranang No. 954, Madiun 92376, KalSel', '2018-02-17 11:32:29', '2020-10-25 22:58:36'),
(72, 'Asirwanda Saptono', 'Jln. Bass No. 796, Depok 12934, NTB', '2014-03-21 13:55:20', '2020-10-25 22:58:36'),
(73, 'Prayoga Sitompul', 'Ki. Kartini No. 416, Manado 19190, Papua', '1982-03-06 02:54:53', '2020-10-25 22:58:36'),
(74, 'Xanana Umaya Rajata', 'Jln. Ujung No. 827, Sungai Penuh 71389, JaTim', '1970-08-19 23:24:43', '2020-10-25 22:58:36'),
(75, 'Warsa Jailani', 'Dk. Raya Ujungberung No. 912, Ambon 53437, Gorontalo', '1997-06-17 08:56:15', '2020-10-25 22:58:36'),
(76, 'Gading Suryono', 'Jln. Sampangan No. 818, Payakumbuh 42901, Aceh', '1973-01-15 02:57:31', '2020-10-25 22:58:36'),
(77, 'Tirtayasa Waluyo', 'Jr. Bakau Griya Utama No. 26, Bandung 42905, SulTra', '2010-05-06 12:01:38', '2020-10-25 22:58:36'),
(78, 'Jamalia Kania Hasanah S.Psi', 'Gg. Asia Afrika No. 320, Yogyakarta 38009, Jambi', '2017-12-23 08:24:37', '2020-10-25 22:58:36'),
(79, 'Faizah Uyainah', 'Dk. Bagas Pati No. 314, Balikpapan 40121, PapBar', '2010-07-08 11:04:44', '2020-10-25 22:58:36'),
(80, 'Salsabila Usamah', 'Gg. Rumah Sakit No. 507, Serang 42632, KepR', '1979-01-20 22:47:37', '2020-10-25 22:58:36'),
(81, 'Wasis Salahudin', 'Jr. Pahlawan No. 146, Pariaman 37500, Gorontalo', '1991-01-17 22:59:16', '2020-10-25 22:58:36'),
(82, 'Bakiman Samsul Sihotang S.Gz', 'Jln. Jend. A. Yani No. 922, Tarakan 86574, Aceh', '2006-10-24 16:40:21', '2020-10-25 22:58:36'),
(83, 'Rachel Suartini', 'Dk. Tangkuban Perahu No. 914, Tanjung Pinang 95116, Lampung', '1985-12-20 00:06:28', '2020-10-25 22:58:36'),
(84, 'Radit Nashiruddin', 'Jln. Agus Salim No. 758, Cimahi 75796, NTB', '1970-03-01 00:58:04', '2020-10-25 22:58:36'),
(85, 'Kemba Hakim', 'Dk. Gremet No. 412, Mojokerto 42988, KalSel', '1983-04-15 06:43:24', '2020-10-25 22:58:36'),
(86, 'Bakiadi Nainggolan', 'Kpg. Baranang Siang Indah No. 787, Gunungsitoli 61089, SumSel', '1982-02-15 00:24:15', '2020-10-25 22:58:36'),
(87, 'Raden Jailani', 'Ki. Kyai Gede No. 749, Palembang 68904, NTB', '1992-02-25 04:20:44', '2020-10-25 22:58:36'),
(88, 'Laksana Nardi Wibowo', 'Psr. Siliwangi No. 784, Gunungsitoli 18310, KalTim', '1974-04-13 09:31:27', '2020-10-25 22:58:36'),
(89, 'Dimaz Wibowo', 'Jln. Gading No. 71, Surabaya 48764, SulBar', '2002-05-08 10:53:06', '2020-10-25 22:58:36'),
(90, 'Baktiadi Firgantoro', 'Gg. Suharso No. 725, Pematangsiantar 55913, JaTeng', '1996-01-07 06:58:42', '2020-10-25 22:58:36'),
(91, 'Eja Anggriawan S.Gz', 'Gg. Dipatiukur No. 588, Administrasi Jakarta Selatan 26436, Banten', '1985-12-02 03:46:15', '2020-10-25 22:58:36'),
(92, 'Danu Hardiansyah', 'Psr. R.M. Said No. 496, Tanjungbalai 69001, Banten', '2017-05-17 07:07:47', '2020-10-25 22:58:36'),
(93, 'Emin Maras Wacana', 'Ki. Honggowongso No. 806, Sungai Penuh 88507, KalSel', '1986-01-25 11:22:52', '2020-10-25 22:58:36'),
(94, 'Dagel Kunthara Winarno S.I.Kom', 'Kpg. Jambu No. 446, Padang 75246, KalTim', '1998-03-06 08:07:27', '2020-10-25 22:58:36'),
(95, 'Nyana Firmansyah', 'Jln. Yohanes No. 667, Binjai 71584, Aceh', '1974-06-07 07:09:22', '2020-10-25 22:58:36'),
(96, 'Adinata Latupono', 'Kpg. Laksamana No. 51, Banjarbaru 56164, Gorontalo', '1987-06-15 12:34:37', '2020-10-25 22:58:36'),
(97, 'Kajen Permadi', 'Psr. Sutarjo No. 305, Kotamobagu 63256, JaTim', '1998-05-16 15:01:11', '2020-10-25 22:58:36'),
(98, 'Dian Novitasari', 'Kpg. Teuku Umar No. 188, Serang 14734, JaTim', '1970-07-23 08:24:51', '2020-10-25 22:58:36'),
(99, 'Lukita Luthfi Waskita S.Sos', 'Jr. Cikapayang No. 646, Palopo 10721, NTT', '1998-03-20 13:02:30', '2020-10-25 22:58:36'),
(100, 'Laras Halimah S.E.', 'Ds. Kusmanto No. 759, Sibolga 73881, BaBel', '1993-12-08 15:05:20', '2020-10-25 22:58:36'),
(101, 'Pardi Kemal Simbolon S.E.', 'Jr. Dr. Junjunan No. 582, Probolinggo 97084, JaTim', '2010-04-05 06:35:42', '2020-10-25 22:58:36');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
