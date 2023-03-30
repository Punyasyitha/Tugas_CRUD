-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2023 at 03:35 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_temankelas`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mahasiswa`
--

CREATE TABLE `tbl_mahasiswa` (
  `No` int(11) NOT NULL,
  `NRP` varchar(15) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Jenis_Kelamin` varchar(15) NOT NULL,
  `Jurusan` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Alamat` text NOT NULL,
  `No_Handphone` varchar(50) NOT NULL,
  `Asal_Sekolah` text NOT NULL,
  `Matkul_Favorit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mahasiswa`
--

INSERT INTO `tbl_mahasiswa` (`No`, `NRP`, `Nama`, `Jenis_Kelamin`, `Jurusan`, `Email`, `Alamat`, `No_Handphone`, `Asal_Sekolah`, `Matkul_Favorit`) VALUES
(1, '3122500001', 'Ade Hafis Rabbani', 'Laki-laki', 'Teknik Informatika', 'adehafis@it.student.pens.ac.id', 'Gresik', '085830556606', 'SMK Negeri 1 Cerme', 'Matematika'),
(2, '3122500002', 'Nadila Aulya Salsabila Mirdianti', 'Perempuan', 'Teknik Informatika', 'nadiaaulya@it.student.pens.ac.id', 'Kediri', '082335995643', 'SMA Negeri 1 Patianrowo', 'Workshop Pemrograman Web'),
(3, '3122500003', 'Denti Widayati', 'Perempuan', 'Teknik Informatika', 'dentiwidayati@it.student.pens.ac.id', 'Sidoarjo', '089523304487', 'SMA Negeri 3 Taruna\r\nAngkasa Madiun', 'Basis Data'),
(4, '3122500004', 'Zahrotul Hidayah', 'Perempuan', 'Teknik Informatika', 'zahrotulhidayah@it.student.pens.ac.id', 'Lamongan', '085790342735', 'SMA Negeri 1 Babat', 'Workshop Pemrograman Web'),
(5, '3122500005', 'Gede Hari Yoga Nanda', 'Laki-laki', 'Teknik Informatika', 'gedehari@it.student.pens.ac.id', 'Tulungagung', '083135368657', 'SMA Negeri 1 Bonyolangu', 'Algoritma dan Struktur Data'),
(6, '3122500006', 'Virgiawan Ivada Raksi Sekar Wibana', 'Laki-laki', 'Teknik Informatika', 'virgiawan@it.student.pens.ac.id', 'Tuban', '085236113808', 'SMA Negeri Jatirogo', 'Basis Data'),
(7, '3122500007', 'Irfan Akmal Ardianto', 'Laki-laki', 'Teknik Informatika', 'irfanakmal@it.student.pens.ac.id', 'Palembang', '081274340490', 'SMA Plus Negeri 17\r\nPalembang', 'Kewarganegaraan'),
(8, '3122500008', 'Arsyita Devanaya Arianto', 'Perempuan', 'Teknik Informatika', 'arsyitadeva@it.student.pens.ac.id', 'Surabaya', '085171620044', 'SMA Negeri 17 Surabaya', 'Algoritma dan Struktur Data'),
(9, '3122500009', 'Mirta Chadhirotin Nachlah', 'Perempuan', 'Teknik Informatika', 'mirtanachlah@it.student.pens.ac.id', 'Gresik', '089603443665', 'SMA Negeri 1 Manyar', 'Sistem Operasi'),
(10, '3122500010', 'Leody Zelvon Herliansa', 'Laki-laki', 'Teknik Informatika', 'leodyzel@it.student.pens.ac.id', 'Tuban', '081331571335', 'SMA Negeri 2 Tuban', 'Algoritma dan Struktur Data'),
(11, '3122500011', 'Ali Azhar Pradana Braveian', 'Laki-laki', 'Teknik Informatika', 'aliazhar@it.student.pens.ac.id', 'Surabaya', '0895360141561', 'SMA Negeri 12 Surabaya', 'Agama'),
(12, '3122500012', 'Awal Raya', 'Laki-laki', 'Teknik Informatika', 'awalraya@it.student.pens.ac.id', 'Kediri', '081359200521', 'SMA Negeri 1 Kediri', 'Workshop Pemrograman Web'),
(13, '3122500013', 'Mahendra Khibrah Rabbani Sayyid', 'Laki-laki', 'Teknik Informatika', 'mahendrabrah@it.student.pens.ac.id', 'Surabaya', '08817934297', 'SMA Negeri 5 Surabaya', 'Algoritma dan Struktur Data'),
(14, '3122500014', 'Muhammad Iqbal Rahmatullah', 'Laki-laki', 'Teknik Informatika', 'iqbalrahma@it.student.pens.ac.id', 'Sidoarjo', '081231685459', 'SMA Muhammadiyah 3\r\nTulangan', 'Sistem Operasi'),
(15, '3122500015', 'Mayada Azizah', 'Perempuan', 'Teknik Informatika', 'mayadazz@it.student.pens.ac.id', 'Pasuruan', '081359049794', 'SMA Negeri 1 Pandaan', 'Workshop Pemrograman Web'),
(16, '3122500016', 'Gandi Rukmaning Ayu', 'Perempuan', 'Teknik Informatika', 'gandirukma@it.student.pens.ac.id', 'Lumajang', '083857964688', 'SMA Negeri 3 Lumajang', 'Sistem Operasi'),
(17, '3122500017', 'Handaru Dwiki Yuntara', 'Laki-laki', 'Teknik Informatika', 'handarudwi@it.student.pens.ac.id', 'Trenggalek', '083896168416', 'SMA Negeri 1 Trenggalek', 'Basis Data'),
(18, '3122500018', 'Adam Rasyid Nurmuhammad', 'Laki-laki', 'Teknik Informatika', 'adamrasyid@it.student.pens.ac.id', 'Surabaya', '08996086', 'SMA Negeri 1 Surabaya', 'Sistem Operasi'),
(19, '3122500019', 'Akmal Zidani Fikri', 'Laki-laki', 'Teknik Informatika', 'akmalzidan@it.student.pens.ac.id', 'Surabaya', '087703133145', 'SMA Negeri 2 Surabaya', 'Algoritma dan Struktur Data'),
(20, '3122500020', 'Adinda Zahra Qariru', 'Perempuan', 'Teknik Informatika', 'adindazahra@it.student.pens.ac.id', 'Malang', '081297901397', 'SMA Thursina IIBS', 'Workshop Pemrograman Web'),
(21, '3122500021', 'Mohammad Ilham Ramadani', 'Laki-laki', 'Teknik Informatika', 'ilhamdani@it.student.pens.ac.id', 'Surabaya', '089699609041', 'SMA Negeri 10 Surabaya', 'Sistem Operasi'),
(22, '3122500022', 'Virginia Faiqoh', 'Perempuan', 'Teknik Informatika', 'virginia@it.student.pens.ac.id', 'Sidoarjo', '089515888419', 'SMK Negeri 2 Buduran\r\nSidoarjo', 'Sistem Operasi'),
(23, '3122500023', 'Masyitha Fahra Nabila', 'Perempuan', 'Teknik Informatika', 'masyitharala@it.student.pens.ac.id', 'Tuban', '081216756463', 'SMA Negeri 1 Tuban', 'Sistem Operasi'),
(24, '3122500024', 'Muhamad Reza Muktasib', 'Laki-laki', 'Teknik Informatika', 'rezamukta@it.student.pens.ac.id', 'Surabaya', '085649915406', 'SMA Negeri 8 Suarabaya', 'Algoritma dan Struktur Data'),
(25, '3122500025', 'Adira Callysta', 'Perempuan', 'Teknik Informatika', 'adiralysta@it.student.pens.ac.id', 'Mojokerto', '085716039986', 'SMA Negeri 3 Mojokerto', 'Sistem Operasi'),
(26, '3122500026', 'Shofira Izza Nurrohmah', 'Perempuan', 'Teknik Informatika', 'shofiraizza@it.student.pens.ac.id', 'Ngawi', '085608295984', 'MAN 2 Madiun', 'Sistem Operasi'),
(27, '3122500027', 'Rifqi Rayita Dhiyaulhaq', 'Laki-laki', 'Teknik Informatika', 'rifqirayita@it.student.pens.ac.id', 'Ponorogo', '085746335238', 'SMA Negeri 1 Ponorogo', 'Kewarganegaraan'),
(28, '3122500028', 'Bagus Bimo Prakoso', 'Laki-laki', 'Teknik Informatika', 'bagusbimo@it.student.pens.ac.id', 'Tulungagung', '0896034436334', 'SMA Negeri 1 Boyolangu', 'Agama'),
(29, '3122500030', 'Muhammad Syahrul Ramadhan', 'Laki-laki', 'Teknik Informatika', 'syahrulramadhan@it.student.pens.ac.id', 'Sidoarjo', '0896596978', 'SMA Muhammadiyah\r\n3 Tulangan', 'Agama');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
  ADD PRIMARY KEY (`No`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
  MODIFY `No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
