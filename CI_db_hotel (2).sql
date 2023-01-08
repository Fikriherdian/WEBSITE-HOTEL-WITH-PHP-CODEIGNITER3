-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 24, 2022 at 07:20 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CI_db_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `F_Hotel`
--

CREATE TABLE `F_Hotel` (
  `id` int(11) NOT NULL,
  `nama_fasilitas` text NOT NULL,
  `img` text NOT NULL,
  `deks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `F_Hotel`
--

INSERT INTO `F_Hotel` (`id`, `nama_fasilitas`, `img`, `deks`) VALUES
(2, 'Asidaraji', 'https://atpetsi.or.id/uploads/article/view/210507061237200228114324hotel.jpg', 'Nandeyo deyo');

-- --------------------------------------------------------

--
-- Table structure for table `F_kamar`
--

CREATE TABLE `F_kamar` (
  `id` int(11) NOT NULL,
  `id_tipekamar` int(3) NOT NULL,
  `nama_fasilitas` text DEFAULT NULL,
  `kategory` varchar(255) DEFAULT NULL,
  `img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `F_kamar`
--

INSERT INTO `F_kamar` (`id`, `id_tipekamar`, `nama_fasilitas`, `kategory`, `img`) VALUES
(1, 1, 'TV LED 360inc', 'Electronic', 'http://img.global.news.samsung.com/global/wp-content/uploads/2015/04/TV_SUHD_Main_1.jpg'),
(2, 1, 'Sofa Biru', 'Aksesoris', 'https://cf.shopee.co.id/file/2a42be431db7b8262da1f1bbcf44e815'),
(3, 1, 'Meja meeting', 'Aksesoris', 'https://images.tokopedia.net/img/cache/500-square/product-1/2018/11/4/160040/160040_017a91fd-9b71-476f-a4ea-6a611c761be1_2048_2048.jpg'),
(4, 1, 'Kasur Twince', 'Aksesoris', 'https://asset.kompas.com/crop/407x139:1811x1076/750x500/data/photo/2019/03/28/2463628903.jpg'),
(5, 1, 'Fasilitas 3', 'Aksesoris', 'http://localhost/phpmyadmin/themes/pmahomme/img/logo_left.png'),
(6, 1, 'Spiker', 'Electonik', 'http://localhost/phpmyadmin/themes/pmahomme/img/logo_left.png'),
(7, 2, 'Gelas', 'ATK', 'http://localhost/phpmyadmin/themes/pmahomme/img/logo_left.png');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pesanan` int(11) NOT NULL,
  `nama_pemesan` varchar(50) NOT NULL,
  `email` varchar(35) NOT NULL,
  `no_hp` varchar(35) NOT NULL,
  `nama_tamu` varchar(50) NOT NULL,
  `id_kamar` int(11) NOT NULL,
  `tgl_cekin` date NOT NULL,
  `tgl_cekout` date NOT NULL,
  `jml_kamar` int(11) NOT NULL,
  `Harga` int(11) NOT NULL,
  `PayBay` varchar(244) NOT NULL,
  `PayEND` int(1) NOT NULL,
  `Status_Kamar` varchar(255) NOT NULL,
  `RefPB` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_pesanan`, `nama_pemesan`, `email`, `no_hp`, `nama_tamu`, `id_kamar`, `tgl_cekin`, `tgl_cekout`, `jml_kamar`, `Harga`, `PayBay`, `PayEND`, `Status_Kamar`, `RefPB`) VALUES
(9, 'Agustinus Yoube', 'admin@lms.com', '081221723872', 'Gariner', 1, '2022-02-02', '2022-02-04', 0, 0, 'Bayar Di Tempat', 1, 'Cekin', '020222XYEGA152113'),
(10, 'Agustinus Yoube', 'lagustinus211@gmail.com', '081221723872', 'Gariner,Suge', 1, '2022-02-02', '2022-02-03', 2, 20000, 'Bayar Di Tempat', 1, 'Cekin', '020222Q5R8n161514'),
(11, 'Agustinus Yoube', 'lagustinus211@gmail.com', '081221723872', 'agus,iksan', 1, '2022-02-04', '2022-02-06', 2, 20000, 'Bayar Di Tempat', 1, 'Cekin', '020422rvqT3075446'),
(12, 'Agustinus Yoube', 'lagustinus211@gmail.com', '081221723872', 'Gariner', 1, '2022-02-05', '2022-02-06', 1, 10000, 'Bayar Di Tempat', 1, '0', '020522UfPOX102400'),
(13, 'Agustinus Yoube', 'lagustinus211@gmail.com', '081221723872', 'Gariner', 1, '2022-02-05', '2022-02-06', 1, 10000, 'Bayar Di Tempat', 1, 'Cekin', '020522B0paw102401'),
(14, 'Agustinus Pardamean lumban Tobing', 'lagustinus211@gmail.com', '081221723872', 'Alya,Debi', 1, '2022-02-13', '2022-02-15', 2, 60000, 'Bayar Di Tempat', 1, 'Cekin', '021322Bayar Di Tempat021539'),
(15, 'Tinus', 'leonarddamanik7@gmail.com', '081221723872', 'sarah', 1, '2022-02-14', '2022-02-15', 1, 30000, 'Bayar Di Tempat', 0, '', '021422Bayar Di Tempat154326'),
(16, 'Tinus', '', '081221723872', 'agus,iksan', 2, '2022-02-10', '2022-02-14', 6, 120000, 'Bayar Di Tempat', 0, '0', '0224226BqGK050027'),
(17, 'nur lela', 'ne010600@gmail.com', '081221723861', 'lela,alya', 1, '2022-02-24', '2022-02-25', 1, 30000, 'Bayar Di Tempat', 1, 'Cekin', '022422S0vG3050730');

-- --------------------------------------------------------

--
-- Table structure for table `Tipe_room`
--

CREATE TABLE `Tipe_room` (
  `id` int(11) NOT NULL,
  `Nama_room` varchar(244) NOT NULL,
  `harga` int(11) DEFAULT NULL,
  `Stok` int(11) NOT NULL,
  `onuse` int(11) NOT NULL,
  `onbook` int(11) NOT NULL,
  `img_room` text NOT NULL,
  `deskrip` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Tipe_room`
--

INSERT INTO `Tipe_room` (`id`, `Nama_room`, `harga`, `Stok`, `onuse`, `onbook`, `img_room`, `deskrip`) VALUES
(1, 'Kamar Tipe VIP', 30000, 12, 0, 0, 'http://localhost/phpmyadmin/themes/pmahomme/img/logo_left.png', 'deskrip1'),
(2, 'Deluxkeren', 20000, 10, 0, 0, 'https://arsitagx-master.s3.ap-southeast-1.amazonaws.com/img_large/1889/988/6193/photo-hotel-room-1-sultan-hotel-at-senayan-desain-arsitek-oleh-yaph-studio.jpeg', 'deskrip2'),
(3, 'Unisharp', 1000000, 30, 0, 0, 'https://codebeautify.org/img/slogo.webp', 'deskrip3');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_login` int(11) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(35) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `Jenis_Kelamin` varchar(255) NOT NULL,
  `tgllahir` date NOT NULL,
  `nowa` varchar(14) NOT NULL,
  `level` enum('admin','resepsionis','tamu') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_login`, `username`, `password`, `Nama`, `Jenis_Kelamin`, `tgllahir`, `nowa`, `level`) VALUES
(6, 'sunitsug', '12345678', 'Agustinus Pardamean lumban Tobing', 'Laki-Laki', '2022-01-30', '081221723872', 'resepsionis'),
(7, 'admin', '12345678', 'admin inimah
', 'Laki-Laki', '0000-00-00', '081221823861', 'admin'),
(8, 'agustinus', '12345678', 'Tinus', 'Laki-Laki', '2022-02-13', '081221723872', 'tamu'),
(9, 'huila', '12345678', 'Humila', 'Perempuan', '2022-02-14', '081221823861', 'tamu'),
(11, 'lela', '12345678', 'nur lela', 'CEWE', '2022-02-23', '081221723861', 'tamu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `F_Hotel`
--
ALTER TABLE `F_Hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `F_kamar`
--
ALTER TABLE `F_kamar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD KEY `id_kamar` (`id_kamar`);

--
-- Indexes for table `Tipe_room`
--
ALTER TABLE `Tipe_room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `F_Hotel`
--
ALTER TABLE `F_Hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `F_kamar`
--
ALTER TABLE `F_kamar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `Tipe_room`
--
ALTER TABLE `Tipe_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
