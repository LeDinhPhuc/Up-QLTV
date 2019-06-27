-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 30, 2018 lúc 03:48 PM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB
-- Phiên bản PHP: 5.6.38
create database quanlythuvien;
use quanlythuvien;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlythuvien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctmuontra`
--

CREATE TABLE `ctmuontra` (
  `MaMuon_LDP` varchar(30) CHARACTER SET utf8 NOT NULL,
  `MaSach_LDP` varchar(30) CHARACTER SET utf8 NOT NULL,
  `NgayTra_LDP` date DEFAULT NULL,
  `TienCoc_LDP` int(11) NOT NULL,
  `TienPhat_LDP` int(11) DEFAULT NULL,
  `GhiChu_LDP` varchar(127) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `ctmuontra`
--

INSERT INTO `ctmuontra` (`MaMuon_LDP`, `MaSach_LDP`, `NgayTra_LDP`, `TienCoc_LDP`, `TienPhat_LDP`, `GhiChu_LDP`) VALUES
('MT001', 'S001', '2018-12-21', 30000, 500, 'Trả muộn 1 ngày'),
('MT001', 'S003', '2018-12-22', 50000, 1000, 'Trả muộn 2 ngày'),
('MT001', 'S005', '2018-10-21', 50000, 500, 'Trả muộn 1 ngày'),
('MT001', 'S008', '2018-12-29', 30000, 4500, 'Trả muộn 9 ngày'),
('MT002', 'S001', '2018-10-08', 2000, 0, ''),
('MT002', 'S004', '2018-11-11', 2000, 500, 'Trả muộn 1 ngày'),
('MT002', 'S008', '2018-11-20', 20000, 5000, 'Trả muộn 10 ngày'),
('MT003', 'S001', '2018-10-30', 60000, 0, 'Làm mất sách'),
('MT003', 'S002', '2018-10-10', 60000, 30000, 'Làm mất sách'),
('MT004', 'S005', '2018-10-01', 20000, 0, ''),
('MT005', 'S001', '2018-10-02', 20000, 0, ''),
('MT006', 'S002', '2019-01-01', 50000, 5000, NULL),
('MT007', 'S003', '2019-02-05', 20000, 2000, 'trả muộn 3 ngày');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `docgia`
--

CREATE TABLE `docgia` (
  `MaDG_LDP` varchar(30) CHARACTER SET utf8 NOT NULL,
  `TenDG_LDP` varchar(127) CHARACTER SET utf8 NOT NULL,
  `NgaySinh_LDP` date NOT NULL,
  `GT_LDP` varchar(10) CHARACTER SET utf8 NOT NULL,
  `DiaChi_LDP` varchar(127) CHARACTER SET utf8 NOT NULL,
  `SDT_LDP` varchar(11) CHARACTER SET utf8 NOT NULL,
  `CMND_LDP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `docgia`
--

INSERT INTO `docgia` (`MaDG_LDP`, `TenDG_LDP`, `NgaySinh_LDP`, `GT_LDP`, `DiaChi_LDP`, `SDT_LDP`, `CMND_LDP`) VALUES
('DG001', 'Lê Đình Phúc', '1998-08-04', 'Nam', 'Đống Đa, Hà Nội', '0396618787', 175077728),
('DG002', 'Vũ Duy Mạnh', '1998-06-27', 'Nam', 'Cầu Giấy, Hà Nội', '0969160198', 175077729),
('DG003', 'Phạm  Ngọc Minh', '1998-04-03', 'Nam', 'Hai Bà Trưng, Hà Nội', '0396671919', 175045789),
('DG004', 'Vũ Văn Phong', '1998-05-04', 'Nam', 'Cầu Giấy, Hà Nội', '085784161', 175077526),
('DG005', 'Trần Văn Phú', '1996-05-02', 'Nam', 'Chương Dương, Hà Nội', '0376548652', 175046523),
('DG006', 'Lê Thị Tâm', '1973-08-04', 'Nữ', 'Triệu Sơn, Thanh Hóa', '0378816166', 175077727);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `muontra`
--

CREATE TABLE `muontra` (
  `MaMuon_LDP` varchar(30) CHARACTER SET utf8 NOT NULL,
  `MaDG_LDP` varchar(30) CHARACTER SET utf8 NOT NULL,
  `MaNV_LDP` varchar(30) CHARACTER SET utf8 NOT NULL,
  `NgayMuon_LDP` date NOT NULL,
  `HanTra_LDP` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `muontra`
--

INSERT INTO `muontra` (`MaMuon_LDP`, `MaDG_LDP`, `MaNV_LDP`, `NgayMuon_LDP`, `HanTra_LDP`) VALUES
('MT001', 'DG002', 'NV001', '2018-08-20', '2018-12-20'),
('MT002', 'DG005', 'NV001', '2018-08-20', '2018-11-10'),
('MT003', 'DG002', 'NV003', '2018-08-20', '2019-01-01'),
('MT004', 'DG003', 'NV002', '2018-10-20', '2019-02-20'),
('MT005', 'DG002', 'NV004', '2018-10-02', '2019-02-02'),
('MT006', 'DG002', 'NV003', '2018-07-10', '2018-11-10'),
('MT007', 'DG003', 'NV004', '2018-10-12', '2019-02-01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV_LDP` varchar(30) CHARACTER SET utf8 NOT NULL,
  `TenNV_LDP` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NgaySinh_LDP` date NOT NULL,
  `GT_LDP` varchar(10) CHARACTER SET utf8 NOT NULL,
  `DiaChi_LDP` varchar(127) CHARACTER SET utf8 NOT NULL,
  `Email_LDP` varchar(127) CHARACTER SET utf8 NOT NULL,
  `SDT_LDP` varchar(11) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV_LDP`, `TenNV_LDP`, `NgaySinh_LDP`, `GT_LDP`, `DiaChi_LDP`, `Email_LDP`, `SDT_LDP`) VALUES
('NV001', 'Nguyễn Quang Hòa', '1991-02-04', 'Nam', 'Đống Đa, Hà Nội', 'nguyenquanghoa@gmail.com', '0396614578'),
('NV002', 'Trần Đình Chiến', '1992-03-04', 'Nam', 'Bắc Từ Liêm, Hà Nội', 'trandinhchien@gmail.com', '0395146478'),
('NV003', 'Nguyễn Thị Phương', '1994-09-22', 'Nữ', 'Hai Bà Trưng, Hà Nội', 'nguyenthiphuong@gmail.com', '0856973122'),
('NV004', 'Nguyễn Văn Cường', '1996-01-01', 'Nam ', 'Cầu Giấy, Hà Nội', 'nguyenvancuong@gmail.com', '0859876463'),
('NV005', 'Vũ Văn Phú', '1995-02-04', 'Nam', 'Chương Dương, Hà Nội', 'vuvanphu@gmail.com', '0127587629');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sach`
--

CREATE TABLE `sach` (
  `MaSach_LDP` varchar(30) CHARACTER SET utf8 NOT NULL,
  `TenSach_LDP` varchar(127) CHARACTER SET utf8 NOT NULL,
  `TenTG_LDP` varchar(127) COLLATE utf8_unicode_ci NOT NULL,
  `NXB_LDP` varchar(127) CHARACTER SET utf8 NOT NULL,
  `NamXB_LDP` date NOT NULL,
  `GiaTien_LDP` int(11) NOT NULL,
  `TheLoai_LDP` varchar(127) CHARACTER SET utf8 NOT NULL,
  `SoLuongCon_LDP` int(11) NOT NULL,
  `TongSoLuong_LDP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sach`
--

INSERT INTO `sach` (`MaSach_LDP`, `TenSach_LDP`, `TenTG_LDP`, `NXB_LDP`, `NamXB_LDP`, `GiaTien_LDP`, `TheLoai_LDP`, `SoLuongCon_LDP`, `TongSoLuong_LDP`) VALUES
('', '', '', '', '0000-00-00', 0, '', 0, 0),
('S001', 'Giáo trình tư tưởng Hồ Chí Minh', 'Vũ Quang Hiền ', 'Chính Trị Quốc Gia', '2012-04-20', 24000, 'Triết Học ', 18, 100),
('S002', 'Toán Cao Cấp ', 'Nguyễn Xuân Thảo', 'Giáo Dục', '2014-01-09', 25000, 'Toán Học', 30, 199),
('S003', 'Nghĩ Lớn Để Thành Công', 'Donald J.Trump', 'NXB Trẻ ', '2016-04-24', 73000, 'Kinh Tế - Quản Lý', 12, 100),
('S004', 'Đắc Nhân Tâm', 'Dale Carnegie', 'NXB Tổng Hợp TPHCM', '2015-09-08', 85000, 'Tâm Lý - Kỹ Năng Sống', 9, 50),
('S005', 'Lập Trình Java Swing Cơ Bản', 'Marc Loy', 'NXB Bách Khoa Hà Nội', '2018-02-09', 136000, 'Triết Học ', 49, 149),
('S006', 'Đắc Nhân Tâm', 'Dale Carnegie', 'NXB Tổng Hợp TPHCM', '2015-09-08', 85000, 'Tâm Lý - Kỹ Năng Sống', 7, 48),
('S007', 'Lập Trình Java Swing Cơ Bản', 'Marc Loy', 'NXB Bách Khoa Hà Nội', '2018-02-03', 136000, 'Triết Học ', 50, 150),
('S008', 'Giải Tích I', 'Vũ Xuân Thảo', 'NXB Bách Khoa Hà Nội', '2015-09-08', 30000, 'Toán Học', 5, 100),
('S009', 'Hoài bão lớn', 'Marc Loy', 'NXB Tổng Hợp TPHCM', '2018-02-03', 136000, 'Triết Học ', 50, 150),
('S010', 'Vũ  Trụ Rộng Lớn', 'Dale Carnegie', 'NXB Trẻ ', '2017-02-01', 150000, 'Khoa Học', 20, 50);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `ctmuontra`
--
ALTER TABLE `ctmuontra`
  ADD PRIMARY KEY (`MaMuon_LDP`,`MaSach_LDP`),
  ADD KEY `ctmuontra_ibfk_1` (`MaSach_LDP`);

--
-- Chỉ mục cho bảng `docgia`
--
ALTER TABLE `docgia`
  ADD PRIMARY KEY (`MaDG_LDP`);

--
-- Chỉ mục cho bảng `muontra`
--
ALTER TABLE `muontra`
  ADD PRIMARY KEY (`MaMuon_LDP`),
  ADD KEY `muontra_ibfk_1` (`MaDG_LDP`),
  ADD KEY `muontra_ibfk_2` (`MaNV_LDP`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNV_LDP`);

--
-- Chỉ mục cho bảng `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`MaSach_LDP`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `ctmuontra`
--
ALTER TABLE `ctmuontra`
  ADD CONSTRAINT `ctmuontra_ibfk_1` FOREIGN KEY (`MaSach_LDP`) REFERENCES `sach` (`MaSach_LDP`),
  ADD CONSTRAINT `ctmuontra_ibfk_2` FOREIGN KEY (`MaMuon_LDP`) REFERENCES `muontra` (`MaMuon_LDP`);

--
-- Các ràng buộc cho bảng `muontra`
--
ALTER TABLE `muontra`
  ADD CONSTRAINT `muontra_ibfk_1` FOREIGN KEY (`MaDG_LDP`) REFERENCES `docgia` (`MaDG_LDP`),
  ADD CONSTRAINT `muontra_ibfk_2` FOREIGN KEY (`MaNV_LDP`) REFERENCES `nhanvien` (`MaNV_LDP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
