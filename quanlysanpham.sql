-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 03, 2021 at 12:42 PM
-- Server version: 5.7.31
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlysanpham`
--

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `Id` int(10) NOT NULL,
  `MaSP` int(10) NOT NULL,
  `MaKH` int(10) NOT NULL,
  `SoLuong` int(50) NOT NULL,
  `TongTien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int(10) NOT NULL,
  `TenKH` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `DiaChi` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `SDT` varchar(10) CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL,
  `NgaySinh` varchar(20) CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL,
  `TaiKhoan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(10) NOT NULL,
  `TenSP` varchar(50) CHARACTER SET utf32 COLLATE utf32_vietnamese_ci NOT NULL,
  `MoTa` varchar(1000) COLLATE utf8_vietnamese_ci NOT NULL,
  `GiaBan` double NOT NULL,
  `SoLuong` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `MoTa`, `GiaBan`, `SoLuong`) VALUES
(1, 'Laptop Lenovo IdeaPad Gaming 3 15ARH05 82EY00LMVN', '( 15.6\" Full HD/ 120Hz/AMD Ryzen 5 4600H/8GB/256GB SSD/NVIDIA GeForce GTX 1650/Windows 10 Home 64-bit/2.2kg)', 17690000, 35),
(2, 'Laptop HP ProBook 430 G8 2H0N7PA', '( 13.3\" Full HD/Intel Core i5-1135G7/4GB/512GB SSD/Windows 10 Home SL 64-bit/1.2kg)', 20490000, 21),
(3, 'Laptop ASUS D515DA-EJ711T 90NB0T42-M11920', '( 15.6\" Full HD/AMD Ryzen 3 3250U/4GB/512GB SSD/Windows 10 Home 64-bit/1.8kg)', 12490000, 15),
(4, 'Laptop HP ProBook 440 G8-2H0R5PA', '(i3-1115G4) (Bạc)', 11780000, 40),
(5, 'Laptop HP OMEN 15-dh0169tx (8ZR37PA)', '(15\" FHD 240Hz/i9-9880H/16GB/512GB SSD/RTX 2080/Win10/2.4kg)', 76990000, 10),
(6, 'Laptop HP ZBook Fury 17 G7 26F43AV', '( 17.3\" Full HD/Intel Core i7-10750H/32GB/512GB SSD/NVIDIA Quadro T2000/Windows 10 Pro 64-bit/2.7kg)', 62490000, 13),
(7, 'Laptop ASUS ROG Strix Scar 15 G533QR-HQ098T', '( 15.6\" Quad HD (2K)/AMD Ryzen 9 5900HX/16GB/1TB SSD/NVIDIA GeForce RTX 3070/Windows 10 Home 64-bit/2.3kg)', 59990000, 20),
(8, 'Laptop Lenovo Yoga Slim 9 14ITL5 82D1004JVN ', '( 14\" Ultra HD (4K)/Intel Core i7-1165G7/16GB/1TB SSD/Windows 10 Home 64-bit/1.2kg)', 4990000, 30),
(9, 'Laptop MSI GS65 Stealth Thin 8RE-242VN', '(15.6\" FHD/i7-8750H/16GB/GTX 1060/Win10/1.9 kg)', 41090000, 20),
(10, 'Laptop ACER Nitro 5 AN515-45-R9SC (NH.QBRSV.001)', '( 15.6\" Full HD/ 144Hz/Ryzen 7 5800H/8GB/512GB SSD/NVIDIA GeForce RTX 3070/Windows 10 Home 64-bit/2.2kg)', 36990000, 14);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `Id` int(10) NOT NULL,
  `UserName` varchar(50) CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL,
  `Password` varchar(50) CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL,
  `Role` varchar(10) CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `MaSP` (`MaSP`),
  ADD KEY `MaKH` (`MaKH`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`),
  ADD KEY `TaiKhoan` (`TaiKhoan`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `khachhang_ibfk_1` FOREIGN KEY (`TaiKhoan`) REFERENCES `taikhoan` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
