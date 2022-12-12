-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2022 at 06:10 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covid1`
--

-- --------------------------------------------------------

--
-- Table structure for table `benhvien`
--

CREATE TABLE `benhvien` (
  `MaBenhVien` int(11) NOT NULL,
  `TenBenhVien` varchar(50) NOT NULL,
  `DiaChi` varchar(100) DEFAULT NULL,
  `TangSo` varchar(5) NOT NULL,
  `SoCaMac` int(11) NOT NULL,
  `SoCaKhoi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `benhvien`
--

INSERT INTO `benhvien` (`MaBenhVien`, `TenBenhVien`, `DiaChi`, `TangSo`, `SoCaMac`, `SoCaKhoi`) VALUES
(1, 'Bệnh viện Chợ Rẫy', '201B Nguyễn Chí Thanh, Phường 12, Quận 5, Thành phố Hồ Chí Minh', '3', 100, 20),
(2, 'Bệnh viện 175', '782 Nguyễn Kiệm, Quận Gò Vấp', '3', 100, 10),
(3, 'Bệnh Viện 30 tháng 4', '9 Sư Vạn Hạnh, P.9, Quận 5', '2', 200, 50),
(4, 'Bệnh Viện 30 tháng 4', 'ừecdsd', '1', 100, 26),
(5, 'BỆNH VIỆN BÌNH DÂN', '371 ĐIỆN BIÊN PHỦ, P.4, Q.3, TP. HCM', '4', 160, 30),
(6, 'BỆNH VIỆN BỆNH NHIỆT ĐỚI', '190 BẾN HÀM TỬ, P.1, Q.5, TP. HCM', '5', 130, 20),
(7, 'BỆNH VIỆN NHÂN DÂN 115', '88 THÀNH THÁI, P.12, Q.10, TP. HCM', '5', 160, 30),
(8, 'BỆNH VIỆN 30 THÁNG 4', '9 SƯ VẠN HẠNH, P.9, Q.5, TP. HCM', '2', 100, 30),
(9, 'BỆNH VIỆN NHI ĐỒNG 1', '341 SƯ VẠN HẠNH, P.10, Q.10, TP. HCM', '3', 150, 30),
(10, 'BỆNH VIỆN NHI ĐỒNG 2', '14 LÝ TỰ TRỌNG, P.BN, Q.1, TP. HCM', '3', 160, 50),
(11, 'BỆNH VIỆN HÙNG VƯƠNG', '128 HỒNG BÀNG, P.12, Q.5, TP. HCM', '4', 100, 50),
(12, 'BỆNH VIỆN ĐA KHOA HOÀN MỸ', '124 TRẦN QUỐC THẢO, P.7, Q.3, TP. HCM', '5', 200, 20),
(13, 'BỆNH VIỆN NGUYỄN TRÃI', '314 NGUYỄN TRÃI, P.8, Q.5, TP. HCM', '2', 160, 50),
(14, 'BỆNH VIỆN NGUYỄN TRI PHƯƠNG', '468 NGUYỄN TRÃI, P.8, Q.5, TP. HCM', '1', 100, 50),
(15, 'BỆNH VIỆN NHÂN DÂN GIA ĐỊNH', '1 NƠ TRANG LONG, P.7, Q.BT, TP. HCM', '3', 160, 20),
(16, 'BỆNH VIỆN PHẠM NGỌC THẠCH', '120 HÙNG VƯƠNG, P.12, Q.5, TP. HCM', '1', 200, 20),
(17, 'QUÂN Y VIỆN 175', '782 NGUYỄN KIỆM, P.3, Q.GV, TP. HCM', '5', 160, 20),
(18, 'BỆNH VIỆN ĐA KHOA SÀI GÒN', '125 LÊ LỢI, P.BT, Q.1, TP. HCM', '2', 200, 30),
(19, 'BỆNH VIỆN TRƯNG VƯƠNG', '266 LÝ THƯỜNG KIỆT, P.14, Q.10, TP. HCM', '4', 130, 20),
(20, 'VIỆN Y DƯỢC HỌC DÂN TỘC', '273-275 NGUYỄN VĂN TRỖI, P.10, Q.PN, TP. HCM', '2', 130, 50),
(21, 'bệnh viện 1', 'bệnh viện 1', '2', 100, 10);

-- --------------------------------------------------------

--
-- Table structure for table `csytp`
--

CREATE TABLE `csytp` (
  `MaCSYT` int(11) NOT NULL,
  `TenCSYT` varchar(50) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `ThongTin` varchar(100) NOT NULL,
  `Phuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `csytp`
--

INSERT INTO `csytp` (`MaCSYT`, `TenCSYT`, `DiaChi`, `ThongTin`, `Phuong`) VALUES
(1, 'Phường 1, Quận Gò Vấp', '487/14 Lê Quang Định, Phường 1, Gò Vấp, Thành phố Hồ Chí Minh', 'Nhân viên y tế tham gia hoạt động tiêm chủng phải được tập huấn chuyên môn về tiêm chủng. Nhân viên ', 1),
(2, 'Phường 3, Quận Gò Vấp', '123/5 Lê Lợi, Phường 3, Gò Vấp, Thành phố Hồ Chí Minh', 'Nhân viên y tế tham gia hoạt động tiêm chủng phải được tập huấn chuyên môn về tiêm chủng. Nhân viên ', 3),
(3, 'Phường 4, Quận Gò Vấp', '84 Đường Lê Lợi, Phường 4, Gò Vấp, Thành phố Hồ Chí Minh', 'Nhân viên y tế tham gia hoạt động tiêm chủng phải được tập huấn chuyên môn về tiêm chủng. Nhân viên ', 4),
(4, 'Phường 5, Quận Gò Vấp', '390, Nguyễn Thái Sơn P. 5, Q. Gò Vấp', 'Phường 5 là 1 phường của quận Gò Vấp, Thành phố Hồ Chí Minh, nước Việt Nam.\r\nPhường 5 có tổng số diệ', 5),
(5, 'Phường 6, Quận Gò Vấp', '340 (Số Cũ 90/978), Lê Đức Thọ\r\nP. 6, Q. Gò Vấp', 'Phường 6 là 1 phường của quận Gò Vấp, Thành phố Hồ Chí Minh, nước Việt Nam.\r\nPhường 6 có tổng số diệ', 6),
(6, 'Phường 12, Quận Gò Vấp', '261C Quang Trung, Phường 12 quận Gò Vấp', 'Phường 12 là một phường thuộc quận Gò Vấp, Thành phố Hồ Chí Minh, Việt Nam.', 12),
(7, 'Phường 7, Quận Gò Vấp', '302 Nguyễn Văn Nghi, Phường 7 quận Gò Vấp', 'Phường 7 là 1 phường của quận Gò Vấp, thành phố Hồ Chí Minh, nước Việt Nam.', 7),
(8, 'Phường 8, Quận Gò Vấp', '175 Nguyễn Văn Khối, Phường 8, Quận Gò Vấp, TP Hồ Chí Minh.', 'Phường 8 là một phường của quận Gò Vấp, thành phố Hồ Chí Minh.', 8),
(9, 'Phường 9, Quận Gò Vấp', 'Số 9, Đường số 3, Phường 9, Hồ Chí Minh, nước Việt Nam', 'Phường 9 là 1 phường của quận Gò Vấp thành phố Hồ Chí Minh.', 9),
(10, 'Phường 10, Quận Gò Vấp', '19, Quang Trung P. 10, Q. Gò Vấp', 'Phường 10 là một phường của quận Gò Vấp, thành phố Hồ Chí Minh.', 10),
(11, 'Phường 11, Quận Gò Vấp', '3/8 Quang Trung, P.11, Phường 11, Quận Gò Vấp, TP Hồ Chí Minh.', 'Phường 11 là một phường thuộc quận Gò Vấp, Thành phố Hồ Chí Minh, Việt Nam.', 11),
(12, 'Phường 13, Quận Gò Vấp', '106/1135, Lê Đức Thọ P. 13, Q. Gò Vấp', 'Phường 13 là 1 phường của quận Gò Vấp, Thành phố Hồ Chí Minh, nước Việt Nam.', 13),
(13, 'Phường 14, Quận Gò Vấp', '397 Phan Huy ích, Phường 14, Quận Gò Vấp, TP Hồ Chí Minh.', 'Phường 14 là một phường thuộc quận Gò Vấp, Thành phố Hồ Chí Minh, Việt Nam.', 14),
(14, 'Phường 15, Quận Gò Vấp', '3/42A Lê Đức Thọ, Phường 15 quận Gò Vấp', 'Phường 15 là 1 phường của quận Gò Vấp, thành phố Hồ Chí Minh, nước Việt Nam.', 15),
(15, 'Phường 16, Quận Gò Vấp', '328 Thống Nhất, Phường 16, Gò Vấp, Hồ Chí Minh, Vietnam', 'Phường 16 là một phường thuộc quận Gò Vấp, Thành phố Hồ Chí Minh, Việt Nam.', 16),
(16, 'Phường 17, Quận Gò Vấp', '06 Nguyễn Văn Lượng, Phường 17 quận Gò Vấp', 'Phường 17 là 1 phường của quận Gò Vấp, Thành phố Hồ Chí Minh, nước Việt Nam.', 17);

-- --------------------------------------------------------

--
-- Table structure for table `hosobenhnhan`
--

CREATE TABLE `hosobenhnhan` (
  `MaHoSo` int(11) NOT NULL,
  `TinhTrangSucKhoe` varchar(100) DEFAULT NULL,
  `NgayNhapvien` date DEFAULT NULL,
  `NgayKhoiBenh` date DEFAULT NULL,
  `MaCSYT` int(11) DEFAULT NULL,
  `MaBenhVien` int(11) DEFAULT NULL,
  `MaTaiKhoan` int(11) NOT NULL,
  `GhiChu` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hosobenhnhan`
--

INSERT INTO `hosobenhnhan` (`MaHoSo`, `TinhTrangSucKhoe`, `NgayNhapvien`, `NgayKhoiBenh`, `MaCSYT`, `MaBenhVien`, `MaTaiKhoan`, `GhiChu`) VALUES
(2, 'Sốt, ho, khó thở, mất vị giác', '2021-08-16', '2022-05-19', 1, 1, 1, 'Âm tính'),
(3, 'Sôt, ho', '2021-07-13', '2022-05-11', 2, 1, 2, 'Dương tính'),
(4, 'sốt, ho', '2022-05-17', '2022-05-28', 1, 1, 2, 'Dương tính'),
(5, 'Ho, Sốt', '2022-05-30', NULL, 1, 1, 8, ''),
(6, 'Ho, Sốt', '2022-05-30', NULL, 3, 1, 9, ''),
(7, NULL, '2022-05-10', '2022-05-31', 2, 1, 10, ''),
(8, 'Ho, Sốt', '2022-05-16', '2022-05-30', 2, 1, 11, '');

-- --------------------------------------------------------

--
-- Table structure for table `phieuyeucauchuyenvien`
--

CREATE TABLE `phieuyeucauchuyenvien` (
  `MaPhieuYeuCau` int(11) NOT NULL,
  `NgayYeuCau` date NOT NULL,
  `MoTa` varchar(255) NOT NULL,
  `MaTaiKhoan` int(11) NOT NULL,
  `MaHoSo` int(11) NOT NULL,
  `MaBenhVien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phieuyeucauchuyenvien`
--

INSERT INTO `phieuyeucauchuyenvien` (`MaPhieuYeuCau`, `NgayYeuCau`, `MoTa`, `MaTaiKhoan`, `MaHoSo`, `MaBenhVien`) VALUES
(3, '2022-05-28', 'Mức độ 1', 1, 2, 1),
(5, '2022-05-29', 'Mức độ 1', 1, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `MaTaiKhoan` int(11) NOT NULL,
  `TenDangNhap` varchar(50) NOT NULL,
  `MatKhau` varchar(100) NOT NULL,
  `HoTen` varchar(30) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `SDT` varchar(15) DEFAULT NULL,
  `Email` varchar(30) NOT NULL,
  `CCCD` varchar(12) DEFAULT NULL,
  `DiaChi` varchar(50) DEFAULT NULL,
  `Role` int(11) NOT NULL,
  `Phuong_BVCongTac` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`MaTaiKhoan`, `TenDangNhap`, `MatKhau`, `HoTen`, `NgaySinh`, `SDT`, `Email`, `CCCD`, `DiaChi`, `Role`, `Phuong_BVCongTac`) VALUES
(1, 'benhnhan1', '1fea0332c0f449af93a5ff8fcd95c6ac', 'Bệnh nhân', '2022-05-10', '0348932471', 'benhnhan1@gmail.com', '029381283741', '12, nvb', 0, '1'),
(2, 'benhnhan2', '7d6f5c2d0dffbef8f045ba906344b73f', 'Bệnh nhân 2', '2022-05-02', '0957483524', 'benhnhan2@gmail.com', '080201010601', '14, Phan Văn Trị', 0, '3'),
(3, 'adminbv', 'b0faec689539e039457db89f01b29a42', 'Nhân viên quản lý bệnh viện', '2001-04-18', '0123456789', 'adminbv@gmail.com', '123456789191', 'Nguyễn Oanh quận Gò Vấp', 1, NULL),
(4, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Nhân viên quản lý hệ thống', '2001-02-12', '0984638275', 'admin@gmail.com', '093758264758', '12 NVB', 2, NULL),
(5, 'nvytbv', 'f815cec89ad2f159878e864ed7d3d4ef', 'Nhân viên y tế bệnh viện', '2000-07-18', '0475638492', 'nvytbv@gmail.com', '084573549283', '123 Nguyễn Du - Quận 1 - TPHCM', 3, NULL),
(6, 'nvytp1', 'ca6df5581932465d0f90589020226561', 'Nhân viên y tế phường 1', '1999-03-17', '0954856385', 'nvytp1@gmail.com', '084628756429', '357 Lê Hồng Phong Q.10', 4, '1'),
(7, 'nvytp3', '558b074ce0ffcb6cd8451a9aa673fabe', 'Nhân viên y tế phường 3', '1999-03-17', '0954856363', 'nvytp3@gmail.com', '094735869372', '250 Nguyễn Thị Minh Khai Q.3', 4, '3'),
(8, 'benhnhan3', 'f5cd7e6e1ffb8894d2881d46d97e8c07', 'Bệnh nhân 3', NULL, '0945372635', 'benhnhan3@gmail.com', NULL, NULL, 0, NULL),
(9, 'benhnhan4', '00618ea56e634b134a5a212f2c005c1c', 'Bệnh nhân 4', NULL, '0947564783', 'benhnhan4@gmail.com', NULL, NULL, 0, NULL),
(10, 'benhnhan5', 'b26a463b4846f0f97788e5d15ba8f550', 'Bệnh nhân 5', NULL, '0937254856', 'benhnhan5@gmail.com', NULL, NULL, 0, NULL),
(11, 'benhnhan6', '7b0317595ded661ece3f4bd27550a665', 'Bệnh nhân 6', NULL, '0945274859', 'benhnhan6@gmail.com', NULL, NULL, 0, NULL),
(12, 'benhnhan8', '67f59b6f7ed713976197ebd05353827c', 'Bệnh nhân 8', NULL, '0578397462', 'benhnhan8@gmail.com', NULL, NULL, 0, NULL),
(13, 'benhnhan7', 'e9bc0e13a8a16cbb07b175d92a113126', 'Nguyễn Văn F', NULL, '0343299816', 'testbn6@gmail.com', NULL, NULL, 0, NULL),
(14, 'benhnhan9', 'e9bc0e13a8a16cbb07b175d92a113126', 'Nguyễn Văn G', NULL, '0343299817', 'testbn7@gmail.com', NULL, NULL, 0, NULL),
(15, 'benhnhan10', 'e9bc0e13a8a16cbb07b175d92a113126', 'Nguyễn Văn G', NULL, '0343299818', 'testbn8@gmail.com', NULL, NULL, 0, NULL),
(16, 'benhnhan11', 'e9bc0e13a8a16cbb07b175d92a113126', 'Nguyễn Văn H', NULL, '0323232329', 'testbn9@gmail.com', NULL, NULL, 0, NULL),
(17, 'benhnhan12', 'e9bc0e13a8a16cbb07b175d92a113126', 'Nguyễn Văn H', NULL, '0323232330', 'testbn10@gmail.com', NULL, NULL, 0, NULL),
(18, 'benhnhan13', 'e9bc0e13a8a16cbb07b175d92a113126', 'Nguyễn Văn I', NULL, '0323232331', 'testbn11@gmail.com', NULL, NULL, 0, NULL),
(19, 'benhnhan14', 'e9bc0e13a8a16cbb07b175d92a113126', 'Nguyễn Văn K', NULL, '0323232332', 'testbn12@gmail.com', NULL, NULL, 0, NULL),
(20, 'benhnhan15', 'e9bc0e13a8a16cbb07b175d92a113126', 'Nguyễn Văn L', NULL, '0323232333', 'testbn13@gmail.com', NULL, NULL, 0, NULL),
(21, 'benhnhan16', 'e9bc0e13a8a16cbb07b175d92a113126', 'Nguyễn Văn M', NULL, '0323232334', 'testbn14@gmail.com', NULL, NULL, 0, NULL),
(22, 'benhnhan17', 'e9bc0e13a8a16cbb07b175d92a113126', 'Nguyễn Văn N', NULL, '0323232335', 'testbn15@gmail.com', NULL, NULL, 0, NULL),
(23, 'benhnhan18', 'e9bc0e13a8a16cbb07b175d92a113126', 'Nguyễn Văn O', NULL, '0323232336', 'testbn16@gmail.com', NULL, NULL, 0, NULL),
(24, 'benhnhan19', 'e9bc0e13a8a16cbb07b175d92a113126', 'Nguyễn Văn P', NULL, '0323232337', 'testbn17@gmail.com', NULL, NULL, 0, NULL),
(25, 'benhnhan20', 'e9bc0e13a8a16cbb07b175d92a113126', 'Nguyễn Văn P', NULL, '0323232338', 'testbn18@gmail.com', NULL, NULL, 0, NULL),
(26, 'benhnhan21', 'e9bc0e13a8a16cbb07b175d92a113126', 'Nguyễn Văn Q', NULL, '0323232339', 'testbn19@gmail.com', NULL, NULL, 0, NULL),
(27, 'benhnhan22', 'e9bc0e13a8a16cbb07b175d92a113126', 'Nguyễn Văn R', NULL, '0323232340', 'testbn20@gmail.com', NULL, NULL, 0, NULL),
(28, 'benhnha', '8b3eb4e877350a670e49d0ee83dc1eee', 'benhnha', '2022-05-06', '0323456789', 'hoangthichitc3@gmail.com', '011111111111', '12 nvb', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tokhaiyte`
--

CREATE TABLE `tokhaiyte` (
  `MaToKhai` int(11) NOT NULL,
  `Ngaykhaibao` datetime NOT NULL DEFAULT current_timestamp(),
  `LoaiKhaiBao` varchar(50) NOT NULL,
  `NoiKhaiBao` varchar(255) NOT NULL,
  `TienSuBenh` varchar(100) NOT NULL,
  `TrieuChungBenh` varchar(500) NOT NULL,
  `YeuToDichTe` varchar(700) NOT NULL,
  `MaTaiKhoan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tokhaiyte`
--

INSERT INTO `tokhaiyte` (`MaToKhai`, `Ngaykhaibao`, `LoaiKhaiBao`, `NoiKhaiBao`, `TienSuBenh`, `TrieuChungBenh`, `YeuToDichTe`, `MaTaiKhoan`) VALUES
(21, '2022-05-23 17:41:02', 'Bệnh nhân/Người nhà', '12, hồ chí minh', 'viêm phổi', 'Đau họng,Mệt', 'Có tiếp xúc với ca nhiễm,Cách ly tập trung', 1),
(22, '2022-05-23 21:55:40', 'Bệnh nhân/Người nhà', '1244, hồ chí minh', 'viêm phổi', 'Đau họng,Mệt', 'Cách ly tập trung', 1),
(26, '2022-05-28 13:59:57', 'Theo dõi sức khỏe tại nhà', '43, Hồ Chí Minh', 'không có', 'Đau họng,Mệt', 'Có tiếp xúc với ca nhiễm,Cách ly tập trung', 1),
(27, '2022-05-29 10:35:30', 'Theo dõi sức khỏe tại nhà', '43, Hồ Chí Minh', 'không có', '', 'Đang mắc covid,Có tiếp xúc với ca nhiễm', 12);

-- --------------------------------------------------------

--
-- Table structure for table `yeucau`
--

CREATE TABLE `yeucau` (
  `MaYeuCau` int(11) NOT NULL,
  `CauHoi` varchar(500) DEFAULT NULL,
  `CauTraLoi` varchar(500) DEFAULT NULL,
  `MaTaiKhoan` int(11) NOT NULL,
  `Phuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yeucau`
--

INSERT INTO `yeucau` (`MaYeuCau`, `CauHoi`, `CauTraLoi`, `MaTaiKhoan`, `Phuong`) VALUES
(1, 'Câu hỏi số 1', 'abc', 1, 1),
(2, 'câu hỏi số 2', 'trả lời câu hỏi số 2', 1, 1),
(3, 'Câu hỏi 3', NULL, 2, 3),
(4, 'Câu hỏi 4', NULL, 2, 3),
(5, 'hello', '', 1, 1),
(6, 'câu hỏi 111', '', 1, 0),
(7, 'câu hỏi 7', NULL, 22, 1),
(8, 'câu hỏi 8', NULL, 19, 1),
(9, 'câu hỏi 9', NULL, 12, 1),
(10, 'câu hỏi 10', NULL, 24, 3),
(11, 'câu hỏi 11', NULL, 9, 3),
(12, 'câu hỏi 12', NULL, 27, 3),
(13, 'câu hỏi 13', NULL, 14, 1),
(14, 'câu hỏi 14', NULL, 12, 3),
(15, 'câu hỏi 15', NULL, 21, 6),
(16, 'câu hỏi 16', NULL, 18, 5),
(17, 'câu hỏi 17', NULL, 20, 9),
(18, 'câu hỏi 18', NULL, 1, 1),
(19, 'câu hỏi 19', NULL, 27, 5),
(20, 'câu hỏi 20', NULL, 20, 9),
(21, 'câu hỏi 21', NULL, 18, 5),
(22, 'câu hỏi 22', NULL, 16, 1),
(23, 'câu hỏi 23', NULL, 17, 6),
(24, 'câu hỏi 24', NULL, 15, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `benhvien`
--
ALTER TABLE `benhvien`
  ADD PRIMARY KEY (`MaBenhVien`);

--
-- Indexes for table `csytp`
--
ALTER TABLE `csytp`
  ADD PRIMARY KEY (`MaCSYT`);

--
-- Indexes for table `hosobenhnhan`
--
ALTER TABLE `hosobenhnhan`
  ADD PRIMARY KEY (`MaHoSo`),
  ADD KEY `MaCSYT` (`MaCSYT`),
  ADD KEY `MaBenhVien` (`MaBenhVien`),
  ADD KEY `MaTaiKhoan` (`MaTaiKhoan`);

--
-- Indexes for table `phieuyeucauchuyenvien`
--
ALTER TABLE `phieuyeucauchuyenvien`
  ADD PRIMARY KEY (`MaPhieuYeuCau`),
  ADD KEY `MaBenhVien` (`MaBenhVien`),
  ADD KEY `MaHoSo` (`MaHoSo`),
  ADD KEY `MaTaiKhoan` (`MaTaiKhoan`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`MaTaiKhoan`);

--
-- Indexes for table `tokhaiyte`
--
ALTER TABLE `tokhaiyte`
  ADD PRIMARY KEY (`MaToKhai`),
  ADD KEY `MaTaiKhoan` (`MaTaiKhoan`);

--
-- Indexes for table `yeucau`
--
ALTER TABLE `yeucau`
  ADD PRIMARY KEY (`MaYeuCau`),
  ADD KEY `MaTaiKhoan` (`MaTaiKhoan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `benhvien`
--
ALTER TABLE `benhvien`
  MODIFY `MaBenhVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `csytp`
--
ALTER TABLE `csytp`
  MODIFY `MaCSYT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `hosobenhnhan`
--
ALTER TABLE `hosobenhnhan`
  MODIFY `MaHoSo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `phieuyeucauchuyenvien`
--
ALTER TABLE `phieuyeucauchuyenvien`
  MODIFY `MaPhieuYeuCau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `MaTaiKhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tokhaiyte`
--
ALTER TABLE `tokhaiyte`
  MODIFY `MaToKhai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `yeucau`
--
ALTER TABLE `yeucau`
  MODIFY `MaYeuCau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hosobenhnhan`
--
ALTER TABLE `hosobenhnhan`
  ADD CONSTRAINT `hosobenhnhan_ibfk_3` FOREIGN KEY (`MaCSYT`) REFERENCES `csytp` (`MaCSYT`),
  ADD CONSTRAINT `hosobenhnhan_ibfk_4` FOREIGN KEY (`MaBenhVien`) REFERENCES `benhvien` (`MaBenhVien`),
  ADD CONSTRAINT `hosobenhnhan_ibfk_5` FOREIGN KEY (`MaTaiKhoan`) REFERENCES `taikhoan` (`MaTaiKhoan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `phieuyeucauchuyenvien`
--
ALTER TABLE `phieuyeucauchuyenvien`
  ADD CONSTRAINT `phieuyeucauchuyenvien_ibfk_1` FOREIGN KEY (`MaTaiKhoan`) REFERENCES `taikhoan` (`MaTaiKhoan`),
  ADD CONSTRAINT `phieuyeucauchuyenvien_ibfk_2` FOREIGN KEY (`MaHoSo`) REFERENCES `hosobenhnhan` (`MaHoSo`),
  ADD CONSTRAINT `phieuyeucauchuyenvien_ibfk_3` FOREIGN KEY (`MaBenhVien`) REFERENCES `benhvien` (`MaBenhVien`);

--
-- Constraints for table `tokhaiyte`
--
ALTER TABLE `tokhaiyte`
  ADD CONSTRAINT `tokhaiyte_ibfk_1` FOREIGN KEY (`MaTaiKhoan`) REFERENCES `taikhoan` (`MaTaiKhoan`);

--
-- Constraints for table `yeucau`
--
ALTER TABLE `yeucau`
  ADD CONSTRAINT `yeucau_ibfk_1` FOREIGN KEY (`MaTaiKhoan`) REFERENCES `taikhoan` (`MaTaiKhoan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
