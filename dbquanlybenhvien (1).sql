-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th8 27, 2020 lúc 02:11 AM
-- Phiên bản máy phục vụ: 5.7.26
-- Phiên bản PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dbquanlybenhvien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietbenhnhan`
--

DROP TABLE IF EXISTS `chitietbenhnhan`;
CREATE TABLE IF NOT EXISTS `chitietbenhnhan` (
  `id_chitietbenhnhan` int(11) NOT NULL AUTO_INCREMENT,
  `tenbenhnhan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioitinh` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaysinh` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaynhapvien` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_phong` int(11) NOT NULL,
  `img_benhnhan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_chitietbenhnhan`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietbenhnhan`
--

INSERT INTO `chitietbenhnhan` (`id_chitietbenhnhan`, `tenbenhnhan`, `gioitinh`, `ngaysinh`, `diachi`, `ngaynhapvien`, `id_phong`, `img_benhnhan`) VALUES
(1, 'Nguyễn Văn Khải', 'Nam', '27/01/2000', 'Gò vấp', '22/08/2020', 1, 'benhnhan1.jpg'),
(2, 'Trần Quốc Bảo', 'Nam', '22/02/2000', 'Thủ Đức', '24/08/2020', 1, 'benhnhan2.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

DROP TABLE IF EXISTS `chitiethoadon`;
CREATE TABLE IF NOT EXISTS `chitiethoadon` (
  `id_chitiethoadon` int(11) NOT NULL AUTO_INCREMENT,
  `id_thuoc` int(11) NOT NULL,
  `id_hoadon` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `sotien` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_chitiethoadon`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id_chitiethoadon`, `id_thuoc`, `id_hoadon`, `soluong`, `sotien`) VALUES
(1, 1, 1, 20, '700000'),
(2, 1, 1, 12, '7.000.000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietkhoa`
--

DROP TABLE IF EXISTS `chitietkhoa`;
CREATE TABLE IF NOT EXISTS `chitietkhoa` (
  `id_chitietkhoa` int(11) NOT NULL AUTO_INCREMENT,
  `id_khoa` int(11) NOT NULL,
  `id_chitietnhanvien` int(11) NOT NULL,
  `id_phong` int(11) NOT NULL,
  PRIMARY KEY (`id_chitietkhoa`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietkhoa`
--

INSERT INTO `chitietkhoa` (`id_chitietkhoa`, `id_khoa`, `id_chitietnhanvien`, `id_phong`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietnhanvien`
--

DROP TABLE IF EXISTS `chitietnhanvien`;
CREATE TABLE IF NOT EXISTS `chitietnhanvien` (
  `id_chitietnhanvien` int(11) NOT NULL AUTO_INCREMENT,
  `tennhanvien` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioitinh` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaysinh` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sodienthoai` int(10) NOT NULL,
  `id_chitietkhoa` int(11) NOT NULL,
  `id_loainhanvien` int(11) NOT NULL,
  `img_nhanvien` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_chitietnhanvien`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietnhanvien`
--

INSERT INTO `chitietnhanvien` (`id_chitietnhanvien`, `tennhanvien`, `gioitinh`, `ngaysinh`, `diachi`, `sodienthoai`, `id_chitietkhoa`, `id_loainhanvien`, `img_nhanvien`) VALUES
(1, 'Trần Nguyễn Nguyên Kỳ', 'Nam', '25/02/2000', 'Bình thạnh', 986437000, 1, 1, 'nhanvien1.jpg'),
(2, 'Lê Thành Đạt', 'Nam', '22/1/1999', 'Thủ Đức', 162345678, 1, 1, 'nhanvien2.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
CREATE TABLE IF NOT EXISTS `hoadon` (
  `id_hoadon` int(11) NOT NULL AUTO_INCREMENT,
  `id_chitietbenhnhan` int(11) NOT NULL,
  `id_chitietnhanvien` int(11) NOT NULL,
  `tongtien` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_hoadon`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id_hoadon`, `id_chitietbenhnhan`, `id_chitietnhanvien`, `tongtien`) VALUES
(1, 1, 1, '2.000.000'),
(2, 2, 2, '7.000.000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

DROP TABLE IF EXISTS `khoa`;
CREATE TABLE IF NOT EXISTS `khoa` (
  `id_khoa` int(11) NOT NULL AUTO_INCREMENT,
  `tenkhoa` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_khoa`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khoa`
--

INSERT INTO `khoa` (`id_khoa`, `tenkhoa`) VALUES
(1, 'Khoa Xét Nghiệm'),
(2, 'Khoa Nội');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loainhanvien`
--

DROP TABLE IF EXISTS `loainhanvien`;
CREATE TABLE IF NOT EXISTS `loainhanvien` (
  `id_loainhanvien` int(11) NOT NULL AUTO_INCREMENT,
  `ten_loainhanvien` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_loainhanvien`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loainhanvien`
--

INSERT INTO `loainhanvien` (`id_loainhanvien`, `ten_loainhanvien`) VALUES
(1, 'Bác sĩ'),
(2, 'Y Tá'),
(3, 'Bảo vệ'),
(4, 'Điều dưỡng'),
(5, 'Kỹ thuật viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id_login` int(11) NOT NULL AUTO_INCREMENT,
  `username` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` int(11) NOT NULL,
  PRIMARY KEY (`id_login`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `login`
--

INSERT INTO `login` (`id_login`, `username`, `password`) VALUES
(1, 'nguyenky_123', 12345678),
(2, 'quocbao_123', 12345678);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong`
--

DROP TABLE IF EXISTS `phong`;
CREATE TABLE IF NOT EXISTS `phong` (
  `id_phong` int(11) NOT NULL AUTO_INCREMENT,
  `tenphong` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_chitietnhanvien` int(11) NOT NULL,
  `trangthai` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_phong`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phong`
--

INSERT INTO `phong` (`id_phong`, `tenphong`, `id_chitietnhanvien`, `trangthai`) VALUES
(1, 'Phòng 1', 1, 'Trống'),
(2, 'Phòng 2', 1, 'Đầy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuoc`
--

DROP TABLE IF EXISTS `thuoc`;
CREATE TABLE IF NOT EXISTS `thuoc` (
  `id_thuoc` int(11) NOT NULL AUTO_INCREMENT,
  `tenthuoc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xuatxu` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_thuoc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_thuoc`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thuoc`
--

INSERT INTO `thuoc` (`id_thuoc`, `tenthuoc`, `gia`, `xuatxu`, `img_thuoc`) VALUES
(1, 'Thuốc cảm', '20.000', 'Việt Nam', 'thuoc1.jpg'),
(2, 'Thuốc ho', '30.000', 'Mỹ', 'thuoc2.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vatlieu`
--

DROP TABLE IF EXISTS `vatlieu`;
CREATE TABLE IF NOT EXISTS `vatlieu` (
  `id_vatlieu` int(11) NOT NULL AUTO_INCREMENT,
  `tenvatlieu` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_phong` int(11) NOT NULL,
  `img_vatlieu` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_vatlieu`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vatlieu`
--

INSERT INTO `vatlieu` (`id_vatlieu`, `tenvatlieu`, `id_phong`, `img_vatlieu`) VALUES
(1, 'Máy đo nhiệt', 1, 'vatlieu1.jpg'),
(2, 'Máy đo áp', 2, 'vatlieu2.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
