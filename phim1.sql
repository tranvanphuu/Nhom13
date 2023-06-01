-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2023 at 03:14 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phim1`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu_doc`
--

CREATE TABLE `menu_doc` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sub_1` varchar(255) NOT NULL,
  `sub_2` varchar(255) NOT NULL,
  `sub_3` varchar(255) NOT NULL,
  `sub_4` varchar(255) NOT NULL,
  `sub_5` varchar(255) NOT NULL,
  `sub_6` varchar(255) NOT NULL,
  `sub_7` varchar(255) NOT NULL,
  `sub_1_link` varchar(1000) NOT NULL,
  `sub_2_link` varchar(1000) NOT NULL,
  `sub_3_link` varchar(1000) NOT NULL,
  `sub_4_link` varchar(1000) NOT NULL,
  `sub_5_link` varchar(1000) NOT NULL,
  `sub_6_link` varchar(1000) NOT NULL,
  `sub_7_link` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_doc`
--

INSERT INTO `menu_doc` (`id`, `title`, `sub_1`, `sub_2`, `sub_3`, `sub_4`, `sub_5`, `sub_6`, `sub_7`, `sub_1_link`, `sub_2_link`, `sub_3_link`, `sub_4_link`, `sub_5_link`, `sub_6_link`, `sub_7_link`) VALUES
(3, 'THỂ LOẠI', 'PHIM BỘ ', 'PHIM LẺ', 'PHIM KINH DỊ', 'PHIM HÀI', 'PHIM KHOA HỌC VIỄN TƯỞNG', 'PHIM HÀNH ĐỘNG', 'PHIM LỊCH SỬ', '?menu=bo', '?menu=le', '?menu=kinhdi', '?menu=hai', '?menu=khoahocvientuong', '?menu=hanhdong', '?menu=lichsu');

-- --------------------------------------------------------

--
-- Table structure for table `quan_tri`
--

CREATE TABLE `quan_tri` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `quyen_truy_cap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quan_tri`
--

INSERT INTO `quan_tri` (`id`, `name`, `pass`, `quyen_truy_cap`) VALUES
(6, 'admin2', '202cb962ac59075b964b07152d234b70', 1),
(7, 'nhanvien1', '202cb962ac59075b964b07152d234b70', 0);

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE `san_pham` (
  `map` int(11) NOT NULL,
  `tenp` varchar(255) NOT NULL,
  `img` varchar(1000) DEFAULT NULL,
  `img1` varchar(1000) DEFAULT NULL,
  `img2` varchar(1000) DEFAULT NULL,
  `img3` varchar(1000) DEFAULT NULL,
  `loaip` varchar(255) NOT NULL,
  `noi_bat` varchar(255) DEFAULT NULL,
  `xem_nhieu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `san_pham`
--

INSERT INTO `san_pham` (`map`, `tenp`, `img`, `img1`, `img2`, `img3`, `loaip`, `noi_bat`, `xem_nhieu`) VALUES
(14, 'Tây Du Ký', '1.jpg', '1a.jpg', '1b.jpg', '1c.jpg', 'bo', 'co', 7),
(15, 'Ỷ Thiên Đồ Long Ký', '2.jpg', '2a.jpg', '2b.jpg', '2c.jpg', 'bo', 'co', 3),
(16, 'Thần Điêu Đại Hiệp', '3.jpg', '', '', '', 'bo', NULL, 70),
(17, 'Kiếm Khách Phong Vân', '4.jpg', '', '', '', 'le', '', 70),
(18, 'Tay Sai Máu Lạnh', 'tsml.jpg', '', '', '', 'hanhdong', 'co', 0),
(19, '10 Lời Nguyền Trở Lại', '10loinguyen.jfif', '', '', '', 'kinhdi', '', 0),
(20, 'Cảnh Sát Giết  Người', 'csgn.jpg', '', '', '', 'le', '', 0),
(21, 'Búp Bê Ma', 'bupbema.jfif', '', '', '', 'kinhdi', '', 0),
(22, 'PaPa Con Gái', 'ppcg.jfif', '', '', '', 'hai', '', 0),
(23, 'Chìa Khóa Trăm Tỉ', 'cktt.jfif', '', '', '', 'hai', '', 0),
(24, 'Quái Thú Vô Hình', 'qtvh.jpg', '', '', '', 'kinhdi', '', 0),
(25, 'AVATAR', 'avt.jfif', '', '', '', 'khoahocvientuong', 'co', 1),
(26, 'Biển Lửa', 'bl.jpg', '', '', '', 'le', '', 40),
(29, 'Tốc Độ Kinh Hoàng', 'tdkh.jpg', '', '', '', 'hanhdong', 'co', 7),
(30, 'Cuộc Chiến Sinh Tử', 'ccst.jpg', '', '', '', 'le', '', 100),
(31, 'Thiên Mệnh Anh Hùng', 'tmah.jfif', '', '', '', 'lichsu', 'co', 0),
(32, 'Phương Khấu', 'pk.jpg', '', '', '', 'lichsu', '', 0),
(33, 'Sức Mạnh Vô Hình', 'smvh.jpg', '', '', '', 'kinhdi', '', 0),
(34, 'Con Đường Số 1', 'cds1.jpg', '', '', '', 'hanhdong', '', 0),
(35, 'Phương Án B', 'pab.jpg', '', '', '', 'hanhdong', '', 0),
(36, 'Nhiệm Vụ Cuối', 'nvc.jpg', '', '', '', 'hanhdong', '', 0),
(37, 'Vùng Đất Quỷ Dữ', 'vdqd.jpg', '', '', '', 'kinhdi', '', 0),
(38, 'Tử Chiến Liên Hành Tinh', 'tc.jpg', '', '', '', 'khoahocvientuong', '', 0),
(39, 'Mũi Tên Xanh', 'mtx.jpg', '', '', '', 'le', 'co', 0),
(40, 'Thiết Quyền Thủ', 'tqt.jpg', '', '', '', 'le', 'co', 77),
(41, 'Lừa Đểu Gặp Lừa Đảo', 'ldgld.jfif', '', '', '', 'hai', '', 0),
(43, 'Hẻm Cụt', 'hc.jfif', '', '', '', 'hai', '', 1),
(45, 'Ở Nhà Một Mình', 'onmm.jfif', '', '', '', 'hai', NULL, NULL),
(46, 'Thiếu Lâm Tự', 'tlt.jfif', '', '', '', 'bo', NULL, NULL),
(47, 'DOCTOR STRANGE', 'dts.jfif', '', '', '', 'khoahocvientuong', NULL, NULL),
(48, 'BLACK ADAM', 'bla.jpg', '', '', '', 'khoahocvientuong', NULL, NULL),
(49, 'Về Nhà Đi Con', 'vndc.jfif', '', '', '', 'bo', NULL, NULL),
(50, 'Người Nhện 3', 'nn3.jpg', '', '', '', 'le', NULL, NULL),
(51, 'Người Dơi 3', 'nd3.jpg', '', '', '', 'le', NULL, NULL),
(52, 'ITEWON CLASS', 'itw.jfif', '', '', '', 'bo', 'có', 50),
(53, 'Nổi Gió', 'ng.jfif', '', '', '', 'lichsu', 'có', 50),
(54, 'TAI', 'hoi-phap-su.jpg', '', '', '', 'hai', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slideshow`
--

CREATE TABLE `slideshow` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `note` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slideshow`
--

INSERT INTO `slideshow` (`id`, `name`, `note`) VALUES
(11, '111.png', 'active'),
(12, '112.jfif', NULL),
(13, '15.jpg', NULL),
(16, '16.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `thanh_vien`
--

CREATE TABLE `thanh_vien` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hoten` varchar(60) NOT NULL,
  `sdt` int(11) NOT NULL,
  `diachi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thanh_vien`
--

INSERT INTO `thanh_vien` (`id`, `email`, `password`, `hoten`, `sdt`, `diachi`) VALUES
(8, 'abc@gmail.com', '202cb962ac59075b964b07152d234b70', 'ABC', 113, 'abc'),
(11, 'batai20062001@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'Nguyễn Bá Tài', 353640203, '31 Nguyễn Kiệm');

-- --------------------------------------------------------

--
-- Table structure for table `thongtinsp`
--

CREATE TABLE `thongtinsp` (
  `id` int(11) NOT NULL,
  `map` int(11) NOT NULL,
  `mota1` varchar(1000) DEFAULT NULL,
  `mota2` varchar(1000) DEFAULT NULL,
  `mota3` varchar(1000) DEFAULT NULL,
  `mota4` varchar(1000) DEFAULT NULL,
  `mota5` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thongtinsp`
--

INSERT INTO `thongtinsp` (`id`, `map`, `mota1`, `mota2`, `mota3`, `mota4`, `mota5`) VALUES
(1, 14, 'Phim hay hấp dấn cho người xem', 'Nhiều kịch tính', 'Kết thúc tốt đẹp', '', ''),
(2, 15, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem'),
(3, 16, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem'),
(5, 17, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem'),
(6, 18, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem'),
(33, 19, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', NULL, NULL),
(34, 20, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', NULL, NULL, NULL),
(35, 21, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', NULL, NULL, NULL),
(36, 22, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', '', '', ''),
(37, 23, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', NULL, NULL, NULL),
(38, 24, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', NULL, NULL, NULL),
(39, 25, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', NULL, NULL, NULL),
(40, 26, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', NULL, NULL, NULL),
(41, 29, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', '', '', ''),
(42, 30, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', NULL, NULL, NULL),
(43, 31, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', NULL, NULL, NULL),
(44, 32, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', NULL, NULL, NULL),
(45, 33, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', NULL, NULL, NULL),
(46, 34, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', NULL, NULL, NULL),
(47, 35, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', NULL, NULL, NULL),
(48, 36, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', '', '', ''),
(49, 37, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', NULL, NULL, NULL),
(50, 38, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', NULL, NULL, NULL),
(51, 39, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', '', '', ''),
(52, 40, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', NULL, NULL, NULL),
(53, 41, 'Phim hay hấp dấn cho người xem', '', '', '', ''),
(55, 43, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', '', '', ''),
(56, 52, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', NULL, NULL),
(58, 45, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', '', '', ''),
(59, 46, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', '', '', ''),
(60, 47, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', '', '', ''),
(61, 48, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', '', '', ''),
(62, 49, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', '', '', ''),
(63, 50, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', '', '', ''),
(64, 51, 'Phim hay hấp dấn cho người xem', 'Phim hay hấp dấn cho người xem', '', '', ''),
(65, 54, 'hay hấp dẫn', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu_doc`
--
ALTER TABLE `menu_doc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quan_tri`
--
ALTER TABLE `quan_tri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`map`);

--
-- Indexes for table `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thanh_vien`
--
ALTER TABLE `thanh_vien`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `thongtinsp`
--
ALTER TABLE `thongtinsp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `masp` (`map`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `quan_tri`
--
ALTER TABLE `quan_tri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `map` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `thanh_vien`
--
ALTER TABLE `thanh_vien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `thongtinsp`
--
ALTER TABLE `thongtinsp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `thongtinsp`
--
ALTER TABLE `thongtinsp`
  ADD CONSTRAINT `thongtinsp_ibfk_1` FOREIGN KEY (`map`) REFERENCES `san_pham` (`map`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
