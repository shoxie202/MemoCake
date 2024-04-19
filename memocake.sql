-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2024 at 06:07 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `memocake`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `Id` int(11) NOT NULL,
  `HinhAnh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`Id`, `HinhAnh`) VALUES
(2, 'img/banners/huh.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`) VALUES
(25, 57, 1, 200000);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDM` int(11) NOT NULL,
  `TenDM` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
(1, 'Bánh'),
(2, 'Kẹo'),
(3, 'Phụ kiện sinh nhật');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaND` int(11) NOT NULL,
  `NgayLap` datetime NOT NULL,
  `NguoiNhan` varchar(50) NOT NULL,
  `SDT` varchar(20) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `PhuongThucTT` varchar(20) NOT NULL,
  `TongTien` float NOT NULL,
  `TrangThai` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaND`, `NgayLap`, `NguoiNhan`, `SDT`, `DiaChi`, `PhuongThucTT`, `TongTien`, `TrangThai`) VALUES
(25, 23, '2024-04-19 22:09:18', 'Thao Nguyễn', '1232321212', 'BN', '', 200000, '1');

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int(11) NOT NULL,
  `TenKM` varchar(100) NOT NULL,
  `LoaiKM` varchar(20) NOT NULL,
  `GiaTriKM` float(11,0) NOT NULL,
  `NgayBD` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `LoaiKM`, `GiaTriKM`, `NgayBD`, `TrangThai`) VALUES
(1, 'Không khuyến mãi', 'Nothing', 0, '2024-04-19 22:06:12', 0),
(2, 'Giảm giá', 'GiamGia', 10, '2024-04-19 22:06:10', 1),
(3, 'Giá rẻ online', 'GiaReOnline', 30000, '2024-04-19 22:08:27', 1),
(4, 'Giảm giá 10%', 'Giamgia', 20000, '2024-04-19 22:08:29', 1),
(5, 'Mới ra mắt', 'MoiRaMat', 0, '2024-04-19 22:08:31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLSP` int(11) NOT NULL,
  `TenLSP` varchar(70) NOT NULL,
  `HinhAnh` varchar(200) NOT NULL,
  `Mota` varchar(200) NOT NULL,
  `MaDM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLSP`, `TenLSP`, `HinhAnh`, `Mota`, `MaDM`) VALUES
(1, 'Bánh kem', 'bánh 1.jpg', 'Bánh kem', 1),
(6, 'Bánh in', 'a2.jpg', 'Các sản phẩm của bánh in', 1),
(7, 'Bánh tét', 'a11.jpg', 'Các loại sản phẩm bánh tét', 1),
(33, 'Bánh ngọt', 'tira.jpg', 'Các loại bánh ngọt nổi tiếng', 1),
(34, 'Bánh cưới', 'bánh cưới.webp', 'Bánh dành cho dịp lễ cưới hỏi', 1),
(36, 'Bánh tráng miệng', 'tráng miênngj.webp', 'Các loại bánh dùng ăn tráng miệng', 1),
(38, 'Kẹo Nougat', 'no.webp', 'Kẹo hạnh phúc', 2),
(39, 'Quà tặng', 'qt.webp', 'Quà tặng đóng gói cho dịp sinh nhật', 3),
(40, 'Bánh đông lạnh', 'đl.webp', 'Các loại bánh đông lạnh', 1),
(42, 'Kẹo dừa', 'kd.jpg', 'Các loại kẹo dẻo', 2),
(43, 'Phụ kiện sinh nhật', 'Trụ bóng sinh nhật 3.jpg', 'Các loại phụ kiện sinh nhật', 3),
(44, 'Bánh tuổi thơ', 'bao2.jpg', '', 1),
(45, 'Bánh quy', 'quyman1.jpg', '', 1),
(46, 'Bánh phồng sữa', 'gau5.jpg', '', 1),
(47, 'Nón- Băng đô sinh nhật', 'nón.jpg', 'Các loại nón và băng đô cho dịp sinh nhật', 3),
(48, 'Kẹo truyền thống', 'tt.jpg', 'Các loại kẹo truyền thống Việt Nam', 2);

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MaND` int(11) NOT NULL,
  `Ho` varchar(20) NOT NULL,
  `Ten` varchar(20) NOT NULL,
  `GioiTinh` varchar(10) NOT NULL,
  `SDT` varchar(20) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `DiaChi` varchar(200) NOT NULL,
  `TaiKhoan` varchar(100) NOT NULL,
  `MatKhau` varchar(100) NOT NULL,
  `MaQuyen` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`MaND`, `Ho`, `Ten`, `GioiTinh`, `SDT`, `Email`, `DiaChi`, `TaiKhoan`, `MatKhau`, `MaQuyen`, `TrangThai`) VALUES
(23, 'Thao', 'Nguyễn', '', '1232321212', 'nguyendangbaoa2n.profile@gmail.com', '', 'admin3010', '00e7443512eceb5ab6da98f967658026', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phanquyen`
--

CREATE TABLE `phanquyen` (
  `MaQuyen` int(11) NOT NULL,
  `TenQuyen` varchar(20) NOT NULL,
  `ChiTietQuyen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenQuyen`, `ChiTietQuyen`) VALUES
(1, 'Customer', 'Khách hàng có tài khoản'),
(2, 'Admin', 'Quản trị viên'),
(3, 'Personnel', 'Nhân Viên');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `MaLSP` int(11) NOT NULL,
  `MaDM` int(11) NOT NULL,
  `TenSP` varchar(70) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `SoLuong` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `HinhAnh1` varchar(200) NOT NULL,
  `HinhAnh2` varchar(255) DEFAULT NULL,
  `HinhAnh3` varchar(255) DEFAULT NULL,
  `MaKM` int(11) NOT NULL,
  `Khoi_luong` varchar(50) DEFAULT NULL,
  `Kich_thuoc` varchar(50) DEFAULT NULL,
  `Mau` varchar(50) DEFAULT NULL,
  `Chat_lieu` varchar(50) DEFAULT NULL,
  `Xuat_xu` varchar(50) DEFAULT NULL,
  `Hinh_dang` varchar(50) DEFAULT NULL,
  `Size` varchar(50) DEFAULT NULL,
  `HSD` varchar(50) DEFAULT NULL,
  `Luu_y` varchar(50) DEFAULT NULL,
  `SoSao` int(11) NOT NULL,
  `SoDanhGia` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `MoTa` text NOT NULL,
  `ThoiGian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaLSP`, `MaDM`, `TenSP`, `DonGia`, `SoLuong`, `HinhAnh1`, `HinhAnh2`, `HinhAnh3`, `MaKM`, `Khoi_luong`, `Kich_thuoc`, `Mau`, `Chat_lieu`, `Xuat_xu`, `Hinh_dang`, `Size`, `HSD`, `Luu_y`, `SoSao`, `SoDanhGia`, `TrangThai`, `MoTa`, `ThoiGian`) VALUES
(1, 33, 1, 'Oval dâu', 30000, 100, 'img/products/ov.jpg', 'img/products/ov.jpg', 'img/products/ov.jpg', 1, '500g', '4cm', 'Vàng', 'Bột mì', 'Việt Nam', 'Tròn', 'Nhỏ', '6 tháng', 'Bánh siêu thơm', 0, 0, 0, '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: black; font-family: &quot;Open Sans&quot;, serif; font-size: 14px;\">Bánh Oval Dâu nổi bật với màu dâu được phủ lên trên với dừa vụn, vị dâu chua chua ngọt ngọt, thơm nứt mũi, kết hợp với phần bánh mềm mịn, vô cùng kích thích vị giác.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: black; font-family: &quot;Open Sans&quot;, serif; font-size: 14px;\">•&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thành phần gồm bột mì, đường, bơ, bột sữa, trứng, dừa, mứt...</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: black; font-family: &quot;Open Sans&quot;, serif; font-size: 14px;\">•&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Không sử dụng chất bảo quản, đảm bảo vệ sinh an toàn thực phẩm.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: black; font-family: &quot;Open Sans&quot;, serif; font-size: 14px;\">•&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cam kết giống 100% mẫu mã và kích cỡ.</p>', '2024-04-19 10:23:40'),
(2, 39, 3, 'Hộp quà sinh nhật', 220000, 10, 'img/products/hộp 1.jpg', 'img/products/hộp 2.jpg', 'img/products/hộp 3.jpg', 2, '300g', '', '', '', 'Việt Nam', '', '', '', '', 0, 0, 1, '<p style=\"color: rgb(51, 51, 51); font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 16.1px;\"><span style=\"font-weight: 700;\">Flower Box</span> - hộp hoa lụa lồng bóng jumbo trong veo là một sản phẩm quà tặng handmade ấn tượng, bóng jumbo sẽ mang thông điệp yêu thương gửi đến người nhận. hộp hoa có để được ứng dụng như một món đồ trang trí cũng rất hợp lý   </p><p style=\"color: rgb(51, 51, 51); font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 16.1px;\"><span style=\"font-weight: 700;\">Thông tin chi tiết sản phẩm:</span></p><ul style=\"color: rgb(51, 51, 51); font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 16.1px;\"><li>1 bóng jumbo 40cm</li><li>hoa lụa cao cấp phối màu</li><li>1 hộp giấy </li></ul>', '2024-04-19 21:49:48'),
(5, 33, 1, 'Muffin Vanila', 8000, 100, 'img/products/Muffin VAnila.jpg', 'img/products/Muffin VAnila.jpg', 'img/products/Muffin VAnila.jpg', 4, '100g', '4cm', 'Vàng nhạt', 'Bột muffin vanila, dầu, đường, trứng gà,...', 'Việt Nam', 'Tròn', 'Nhỏ', '6 tháng kể từ ngày sản xuất', 'Bánh rất ngon', 0, 0, 0, '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: black; font-family: &quot;Open Sans&quot;, serif; font-size: 14px;\">Muffin Vanila là món ăn được nhiều người yêu thích với từng miếng bánh ngọt ngào, mềm mại và thơm ngon, được sử dụng làm món tráng miệng hoặc bữa sáng đầy đủ dinh dưỡng cho cả nhà.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: black; font-family: &quot;Open Sans&quot;, serif; font-size: 14px;\">•&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thành phần gồm bột muffin vanila, dầu, đường, trứng gà,...</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: black; font-family: &quot;Open Sans&quot;, serif; font-size: 14px;\">•&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Không sử dụng chất bảo quản, đảm bảo vệ sinh an toàn thực phẩm.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: black; font-family: &quot;Open Sans&quot;, serif; font-size: 14px;\">•&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cam kết giống 100% mẫu mã và kích cỡ.</p>', '2024-04-19 10:21:44'),
(7, 1, 1, 'Bánh kem yêu thương', 250000, 10, 'img/products/bánh 1.jpg', 'img/products/bánh 1.jpg', 'img/products/bánh 1.jpg', 2, '1500g', '6-18 cm', 'Trắng nâu', 'Kem tươi', 'Việt Nam', 'Tròn, dài', '', '2 tháng kể từ ngày sản xuất', 'Bánh rất ngon', 0, 0, 1, '<p><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif; font-size: 13px;\"><b>Bánh kem tươi cốt bánh 5 lớp chiffon hoa quả khô hỗn hợp, nhân kem tươi, trang trí bánh quy.&nbsp;</b></span></p><p><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif; font-size: 13px;\"><b>Sản phẩm đi kèm: Dao cắt bánh+ Nến sinh nhật + Thìa + Đĩa + Pháo sinh nhật + 1 Mũ sinh nhật</b></span></p><p><br></p>', '2024-04-19 09:48:28'),
(8, 1, 1, 'Bánh kem gấu đỏ', 250000, 20, 'img/products/bánh cho bé.jpg', 'img/products/bánh cho bé.jpg', 'img/products/bánh cho bé.jpg', 2, '1200g', '6-20', 'Xanh, đỏ', 'Kem tươi', 'Việt Nam', 'Tròn, dài', '', '2 tháng kể từ ngày sản xuất', 'Bánh tuyệt vời, ngon tuyệt vời', 0, 0, 1, '<p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px; font-family: Lato, sans-serif;\"><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif;\"><b style=\"font-weight: bold;\">Bánh kem tươi cốt bánh 3 lớp chiffon hoa quả khô hỗn hợp, nhân kem tươi, trang trí hình gấu đỏ </b></span></p><p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px; font-family: Lato, sans-serif;\"><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif;\"><b style=\"font-weight: bold;\">Sản phẩm đi kèm: Dao cắt bánh+ Nến sinh nhật + Thìa + Đĩa + Pháo sinh nhật + 1 Mũ sinh nhật</b></span></p>', '2024-04-19 10:09:21'),
(9, 7, 1, 'Bánh tét đậu mỡ', 225000, 10, 'img/products/bánh tét đậu mỡ.jpg', 'img/products/8q.jpg', 'img/products/8q.jpg', 1, '1800g', '20*50', 'Xanh', 'gạo nếp', 'Việt Nam', 'Tròn, dài', '1', '6 tháng kể từ ngày sản xuất', 'Bánh rất ngon', 0, 0, 1, '<p style=\"color: rgb(33, 37, 41); font-family: Roboto; text-align: justify;\"><span style=\"font-family: Arial;\">﻿</span><span style=\"font-family: Arial;\">Bánh tét đậu mỡ là loại bánh gắn liền với những ngày Giỗ, Lễ, Tết và mang đậm hương vị truyền thống của người Việt. Thế nhưng, mỗi vùng miền sẽ mang hương vị riêng đặc trưng của họ.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(33, 37, 41); font-family: Arial;\">Trong rất nhiều các tỉnh thành thì bánh tét nổi tiếng nhất là ở khu vực</span><span style=\"color: rgb(33, 37, 41); font-family: Arial;\">&nbsp;miền Tây. Những chiếc bánh tét nhân đậu mỡ có vị béo của thịt mớ, vị dẻo thơm của nếp hòa cùng nhân đậu xanh bùi bùi khiến ai nấy đều mê tít khi thưởng thức.</span></p><p><br></p>', '2024-04-19 10:37:50'),
(10, 7, 1, 'Bánh tét thập cẩm đặc biệt', 160000, 10, 'img/products/bánh tét tc1.jpg', 'img/products/bánh tét tc2.jpg', 'img/products/bánh tét tc3.jpg', 4, '200g', '10cm', 'Xanh', 'Gạo, đỗ', 'Việt Nam', 'Hình cầu', '', '6 tháng kể từ ngày sản xuất', '', 0, 0, 1, '<p><span style=\"color: rgb(74, 77, 78); font-family: Comfortaa, sans-serif; font-size: 15px;\">Bánh tét của MemoCake được làm thủ công từ những nghệ nhân có 20-30 năm kinh nghiệm, nên mang kiểu dáng và hương vị chuẩn của miền Tây. Tất cả nguyên liệu từ lạp xưởng, gạo nếp, đậu xanh hay lá gói bánh cũng đều được lấy chính từ địa phương, bảo đảm màu sắc, mùi vị hệt như trong ký ức của những người con miền Tây xa xứ.</span><br></p>', '2024-04-19 10:35:16'),
(11, 7, 1, 'bánh tét lá cẩm', 210000, 5, 'img/products/lcam1.webp', 'img/products/lcam2.jpg', 'img/products/lcam3.jpg', 5, '750g', '30*65', 'Tím từ lá cẩm', 'gạo nếp', 'Việt Nam', 'Hình cầu', '', '6 tháng kể từ ngày sản xuất', 'Bánh rất ngon', 0, 0, 1, '<p><em style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; text-align: justify;\">Bánh tét – một trong những món bánh ngon đặc sản của người dân Việt, từng miếng bánh ngon với hương thơm của gạo nếp, độ béo ngậy của thịt ba chỉ, bùi bùi của đậu xanh hòa quyện tạo nên vị ngon đặc biệt</em><br></p>', '2023-02-17 14:48:09'),
(12, 7, 1, 'Bánh tét chuối', 220000, 10, 'img/products/tet/2q.jpg', '/img/products/tet/1q.jpg', '/img/products/tet/3q.jpg', 2, '750g', '30*60', 'Xanh', 'gáo nếp, đậu xanh', 'Việt Nam', 'Hình cầu', '', '6 tháng kể từ ngày sản xuất', 'bánh ngon', 0, 0, 1, '<p><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Bánh tét&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">có hình trụ dài nên còn được gọi là đòn bánh, hai đòn thường có một quai bánh chung bằng gân lá chuối tạo thành một cặp</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Người ta còn làm bánh không có nhân thịt để có thể để được lâu hơn hoặc ăn chay với nhân có thể là chuối chín.</span><br></p>', '2023-02-17 14:49:44'),
(13, 7, 1, 'Bánh tét 3 màu', 259000, 10, 'img/products/mau3.jpg', 'img/products/mau33.jpg', 'img/products/mau333.jpg', 4, '1250g', '30*80', 'Xanh', 'gáo nếp, đậu xanh', 'Việt Nam', 'Hình cầu', '', '6 tháng kể từ ngày sản xuất', 'Bánh rất ngon', 0, 0, 1, '<p><span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px; white-space: break-spaces;\">BÁNH TÉT VỀ SẴN TẠI SHOP Ạ !!! </span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; white-space: break-spaces;\">❤️❤️Bánh tét 3 màu chuẩn ngon\r\n Màu tím được làm từ màu lá cẩm\r\n Màu cam được làm từ trái gấc\r\n Màu xanh được làm từ lá dứa</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; white-space: break-spaces;\">Nhân bánh được làm từ đậu xanh tán nhuyễn cùng với thịt ba chỉ khìa nước dừa , trứng muối. Đặt biệt là bánh nhà Em cắt khoanh nào đều có trứng muối hết nhé cả nhà.</p><p data-spm-anchor-id=\"a2o4n.pdp_revamp.product_detail.i0.30273b88Ilw9sh\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; white-space: break-spaces;\">100% màu thiên nhiên, lá cẩm, lá dứa, trái gấc, khách yên tâm thưởng thức nha</p>', '2023-02-17 14:55:12'),
(30, 1, 1, 'Bánh kem 8/3', 250000, 100, 'img/products/Bánh kem 8-3.jpg', 'img/products/Bánh kem 8-3.jpg', 'img/products/Bánh kem 8-3.jpg', 1, '180g', '6-20', 'Hồng đỏ', 'Kem tươi', 'Việt Nam', 'Tròn, dài', '', '2 tháng kể từ ngày sản xuất', 'Bánh tuyệt vời, ngon tuyệt vời, màu sắc đẹp', 0, 0, 1, '<h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 1.3em;\" dejavu=\"\" sans\",=\"\" \"liberation=\"\" freesans,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" outline:=\"\" none;=\"\" zoom:=\"\" 1;\"=\"\"><p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px; font-family: Lato, sans-serif;\"><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif;\"><b style=\"font-weight: bold;\">Bánh kem tươi cốt bánh 5 lớp chiffon hoa quả khô hỗn hợp, nhân kem tươi, trang trí hoa vani. </b></span></p><p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px; font-family: Lato, sans-serif;\"><br></p></h2>', '2024-04-19 10:17:28'),
(32, 33, 1, 'Bánh con rùa', 11000, 100, 'img/products/Bánh con rùa.jpg', 'img/products/Bánh con rùa.jpg', 'img/products/Bánh con rùa.jpg', 1, '100g', '4cm', 'Vàng nhạt', 'Bột mì', 'Việt Nam', 'Tròn', 'Nhỏ', '6 tháng', 'Bánh siêu thơm', 0, 0, 1, '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: black; font-family: &quot;Open Sans&quot;, serif; font-size: 14px;\">Bánh con rùa được phổ biến và ưa thích tại Nhật, phần thân ánh giống trái dưa lưới như lưng rùa, hình dạng đáng yêu thu hút được mọi khách hàng. &nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: black; font-family: &quot;Open Sans&quot;, serif; font-size: 14px;\">•&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thành phần gồm bột mì, đường, bơ, bột sữa, trứng gà ...</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: black; font-family: &quot;Open Sans&quot;, serif; font-size: 14px;\">•&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Không sử dụng chất bảo quản, đảm bảo vệ sinh an toàn thực phẩm.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: black; font-family: &quot;Open Sans&quot;, serif; font-size: 14px;\">•&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cam kết giống 100% mẫu mã và kích cỡ.</p><h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 20px; line-height: 1.3em; font-family: Helvetica, Arial, \" dejavu=\"\" sans\",=\"\" \"liberation=\"\" freesans,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" outline:=\"\" none;=\"\" zoom:=\"\" 1;\"=\"\"></h2>', '2024-04-19 10:25:33'),
(39, 43, 3, 'Bóng bay sinh nhật', 220000, 10, 'img/products/bóng bay 1.jpg', 'img/products/bóng bay 2.jpg', 'img/products/bóng bay 3.jpg', 1, '500g', '120*120cm', 'Trắng đen', '', 'Việt Nam', '', '', '', '', 0, 0, 1, '<h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 20px; line-height: 1.3em; font-family: Helvetica, Arial, \" dejavu=\"\" sans\",=\"\" \"liberation=\"\" freesans,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" outline:=\"\" none;=\"\" zoom:=\"\" 1;\"=\"\"><p style=\"color: rgb(51, 51, 51); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 15.4px; background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700;\">Combo bóng bay và bóng tạo hình M.03 sẽ bao gồm:&nbsp;</span></p><ul style=\"padding-left: 2rem; color: rgb(51, 51, 51); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 15.4px; background-color: rgb(248, 248, 248);\"><li>2 bóng tim bơm bay (HELI)</li><li>1 bó hoa bóng 7 cành</li><li>1 bánh kem bong bóng tạo hình</li></ul></h2>', '2024-04-19 10:49:14'),
(40, 44, 3, 'Trụ bánh sinh nhật', 390000, 10, 'img/products/Trụ bóng sinh nhật.jpg', 'img/products/Trụ bóng sinh nhật 2.jpg', 'img/products/Trụ bóng sinh nhật 3.jpg', 1, '500g', 'Đa dạng', 'Đa dạng', 'Bóng bay ', 'Việt Nam', 'Đa dạng', '2 con', '12 tháng', 'Trụ trang trí siêu cute', 0, 0, 1, '<ul style=\"color: rgb(51, 51, 51); font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 16.1px;\"><li>1 bóng số (khách  có thể chọn màu bóng) </li><li>1 bóng hình </li><li>1 bóng jumbo </li><li>1 bộ decal nội dung tùy chọn</li><li>bong bóng cao su nhiều màu</li></ul>', '2024-04-19 10:16:51'),
(41, 33, 1, 'Cake Chocolate', 20000, 100, 'img/products/Cake chocolate.jpg', 'img/products/Cake chocolate.jpg', 'img/products/Cake chocolate.jpg', 1, '100g', '10cm', 'Nâu', 'Bột bông lan', 'Việt Nam', 'Dài', 'Lớn', '6 tháng', 'Bánh siêu ngọt', 0, 0, 1, '<div><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: black; font-family: &quot;Open Sans&quot;, serif; font-size: 14px;\">Cake Chocolate Lớn là chiếc bánh phù hợp cho 1-2 người ăn, bánh mềm mại được kết hợp cùng với chocolate nguyên chất, thơm lừng xen vị đăng nhẹ hòa quyện với vị ngọt thanh, tạo cảm giác ngon miệng mà không về ngán.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: black; font-family: &quot;Open Sans&quot;, serif; font-size: 14px;\">•&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thành phần gồm bột bông lan, dầu ăn, trứng gà, socola...</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: black; font-family: &quot;Open Sans&quot;, serif; font-size: 14px;\">•&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Không sử dụng chất bảo quản, đảm bảo vệ sinh an toàn thực phẩm.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: black; font-family: &quot;Open Sans&quot;, serif; font-size: 14px;\">•&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cam kết giống 100% mẫu mã và kích cỡ.</p></div>', '2024-04-19 10:27:14'),
(43, 38, 2, 'Kẹo Nougat vị matcha', 180000, 10, 'img/products/mc1.webp', 'img/products/mc2.webp', 'img/products/mc1.webp', 1, '300g', '', 'Xanh', 'Bơ, lòng trắng trứng, sữa bột', 'Việt Nam', '', '', ' Hạn sử dụng 1 tháng kể từ ngày sản xuất.', '  Kẹo đóng gói 300g/hộp (số lượng kẹo 17-19 chiếc)', 0, 0, 1, '<blockquote><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(137, 137, 137); font-family: Roboto, HelveticaNeue, \"Helvetica Neue\", sans-serif; font-size: 14px; letter-spacing: 0.25px;\">Kẹo hương vị trà xanh với các nguyên liệu bơ, lòng trắng trứng, sữa bột kết hợp cùng hạt dinh dưỡng hạnh nhân, bí xanh và mứt hoa quả như nho, nam việt quất, mơ.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(137, 137, 137); font-family: Roboto, HelveticaNeue, \"Helvetica Neue\", sans-serif; font-size: 14px; letter-spacing: 0.25px;\">Kẹo bảo quản ở nhiệt độ phòng.</p></blockquote>', '2024-04-19 14:29:46'),
(44, 1, 1, 'Bánh kem hình thỏ siêu đáng yêu', 200000, 10, 'img/products/thỏ.jpg', 'img/products/thỏ.jpg', 'img/products/thỏ.jpg', 1, '300g', '20cm', 'Hộp màu hồng', 'Kem tươi', 'Việt Nam', 'Hình tròn', '', '', '', 0, 0, 1, '<blockquote><p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px; font-family: Lato, sans-serif;\"><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif;\"><b style=\"font-weight: bold;\">Bánh kem tươi cốt bánh 3 lớp chiffon hoa quả khô hỗn hợp, nhân kem tươi, trang trí hình thỏ siêu đáng yêu</b></span></p><p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px; font-family: Lato, sans-serif;\"><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif;\"><b style=\"font-weight: bold;\">Sản phẩm đi kèm: Dao cắt bánh+ Nến sinh nhật + Thìa + Đĩa + Pháo sinh nhật + 1 Mũ sinh nhật</b></span></p></blockquote>', '2024-04-19 21:51:57'),
(45, 1, 1, 'Bánh kem hình công chúa và người nhện', 200000, 10, 'img/products/spiderman.jpg', 'img/products/spiderman.jpg', 'img/products/spiderman.jpg', 4, '300g', '20cm', 'Hộp màu hồng', 'Kem tươi', 'Việt Nam', 'Hình tròn', '', '', '', 0, 0, 1, '<blockquote><p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px; font-family: Lato, sans-serif;\"><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif;\"><b style=\"font-weight: bold;\">Bánh kem tươi cốt bánh 3 lớp chiffon hoa quả khô hỗn hợp, nhân kem tươi, trang trí hình công chúa và người nhện</b></span></p><p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px; font-family: Lato, sans-serif;\"><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif;\"><b style=\"font-weight: bold;\">Sản phẩm đi kèm: Dao cắt bánh+ Nến sinh nhật + Thìa + Đĩa + Pháo sinh nhật + 1 Mũ sinh nhật</b></span></p><br></blockquote>', '2024-04-19 21:53:32'),
(46, 1, 1, 'Bánh kem hình Doraemon', 200000, 10, 'img/products/dore.jpg', 'img/products/dore.jpg', 'img/products/dore.jpg', 4, '300g', '20cm', 'Xanh', 'Kem tươi', 'Việt Nam', 'tròn', '', '', '', 0, 0, 1, '<blockquote><p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px; font-family: Lato, sans-serif;\"><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif;\"><b style=\"font-weight: bold;\">Bánh kem tươi cốt bánh 3 lớp chiffon hoa quả khô hỗn hợp, nhân kem tươi, trang trí hình Doraemon</b></span></p><p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px; font-family: Lato, sans-serif;\"><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif;\"><b style=\"font-weight: bold;\">Sản phẩm đi kèm: Dao cắt bánh+ Nến sinh nhật + Thìa + Đĩa + Pháo sinh nhật + 1 Mũ sinh nhật</b></span></p></blockquote>', '2024-04-19 21:54:59'),
(47, 1, 1, 'Bánh sinh nhật mini', 100000, 10, 'img/products/mini.jpg', 'img/products/mini2.jpg', 'img/products/mini.jpg', 2, '100g', '10cm', 'Xanh', 'Kem tươi', 'Việt Nam', 'Tròn', '', '', '', 0, 0, 1, '<blockquote><span style=\"color: rgb(102, 102, 102); font-family: Lato, sans-serif; font-size: 17.5px;\">Bánh trọng lượng nhỏ, đ</span><span style=\"color: rgb(102, 102, 102); font-family: Lato, sans-serif; font-size: 17.5px;\">ặc biệt khi cắn miếng bánh bạn có thể cảm nhận được nhân bánh tan chảy trong miệng, khi nhai nhân bánh và vỏ bánh bánh hòa quyện.</span><br style=\"color: rgb(102, 102, 102); font-family: Lato, sans-serif; font-size: 17.5px;\"><span style=\"color: rgb(102, 102, 102); font-family: Lato, sans-serif; font-size: 17.5px;\">Vị bánh béo, ngọt vừa phải ăn không ngán.</span><br></blockquote>', '2024-04-19 21:57:05'),
(48, 1, 1, 'Bánh sinh nhật người thương', 200000, 20, 'img/products/sn1.jpg', 'img/products/sinh nhật2.jpg', 'img/products/sn2.jpg', 1, '300g', '30cm', 'Xanh', 'Kem tươi', 'Việt Nam', 'Tròn', '', '', '', 0, 0, 1, '<blockquote><p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px; font-family: Lato, sans-serif;\"><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif;\"><b style=\"font-weight: bold;\">Bánh kem tươi cốt bánh 3 lớp chiffon hoa quả khô hỗn hợp, nhân kem tươi, trang trí siêu đáng yêu</b></span></p><p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px; font-family: Lato, sans-serif;\"><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif;\"><b style=\"font-weight: bold;\">Sản phẩm đi kèm: Dao cắt bánh+ Nến sinh nhật + Thìa + Đĩa + Pháo sinh nhật + 1 Mũ sinh nhật</b></span></p></blockquote>', '2024-04-19 21:59:19'),
(56, 1, 1, 'Bánh kem hình con hổ siêu đáng yêu', 200000, 10, 'img/products/hổ2.jpg', 'img/products/hổ.jpg', 'img/products/hổ2.jpg', 1, '300g', '40cm', 'Xanh', 'Kem tươi', 'Việt Nam', 'Tròn', '', '', '', 0, 0, 1, '<p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px; font-family: Lato, sans-serif;\"><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif;\"><b style=\"font-weight: bold;\">Bánh kem tươi cốt bánh 3 lớp chiffon hoa quả khô hỗn hợp, nhân kem tươi, trang trí hình con hổ siêu đáng yêu</b></span></p><p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px; font-family: Lato, sans-serif;\"><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif;\"><b style=\"font-weight: bold;\">Sản phẩm đi kèm: Dao cắt bánh+ Nến sinh nhật + Thìa + Đĩa + Pháo sinh nhật + 1 Mũ sinh nhật</b></span></p><div><br></div>', '2024-04-19 22:01:58'),
(57, 1, 1, 'Bánh kem chocolate love', 200000, 10, 'img/products/choco.webp', 'img/products/choco.webp', 'img/products/choco.webp', 1, '300g', '20cm', 'Xanh', 'Kem tươi', 'Việt Nam', 'Tròn', '', '', '', 0, 0, 1, '<p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px; font-family: Lato, sans-serif;\"><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif;\"><b style=\"font-weight: bold;\">Bánh kem tươi cốt bánh 3 lớp chiffon hoa quả khô hỗn hợp, nhân kem tươi, trang trí hình siêu đáng yêu</b></span></p><p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px; font-family: Lato, sans-serif;\"><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif;\"><b style=\"font-weight: bold;\">Sản phẩm đi kèm: Dao cắt bánh+ Nến sinh nhật + Thìa + Đĩa + Pháo sinh nhật + 1 Mũ sinh nhật</b></span></p>', '2024-04-19 22:03:28'),
(83, 44, 1, 'Bánh bông lan sữa tuổi thơ', 49000, 10, 'img/products/bao2.jpg', '/img/products/bao1.jpg', '/img/products/bao3.jpg', 1, '500g', '40*120cm', 'trắng', 'sữa, bột mì', 'Việt Nam', 'tròn', '50 chiếc bông lan sữa trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Bánh rất ngon', 0, 0, 0, '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Chất bột từ xưa hương vị tuổi thơ không thay đổi nhé. </span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">????Bánh bao làm tại lò bánh của nhà em ăn bao ngon????\r\n???? Ăn một lần là ghiền luôn nè ????</span><br></p>', '2023-02-17 17:49:25'),
(84, 44, 1, 'Bánh bông lan sữa vị lá dứa', 320000, 10, 'img/products/bao32.jpg', '/img/products/bao22.jpg', '/img/products/bao222.jpg', 1, '500g', '80*120cm', 'Xanh', 'Bột mì, lá dứa, mem', 'Việt Nam', 'tròn', '50 chiếc bánh bao được bọc gọn gàng', '75 ngày kể từ ngày sản xuất', 'Bánh rất ngon', 0, 0, 0, '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">????????BÁNH BAO SỮA THẦN THÁNH???????? Còn ai nhớ món này không, một thời tuổi thơ bị ghiền món này đây. \r\nBánh bao sua tuổi thơ quá trời ngon luôn trời ơi, ko phải em bán mà nói đâu mà nó ngon thiệt ❤️ . </span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Bánh bao sữa tuổi thơ mùi vị trẻ con của ngày xưa vẫn không thay đổi, béo và thơm phức  mùi sữa tươi luôn ạ. </span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Đặc biệt trẻ con rất thích bánh này luôn ạ????????</span><br></p>', '2023-02-17 18:12:03'),
(85, 45, 1, 'Bánh quy mặn tròn', 79000, 10, 'img/products/quyman2.jpg', '/img/products/quyman1.jpg', '/img/products/quyman3.jpg', 1, '500g', '80*120cm', 'Vàng nhạt', 'bột mì, sữa, trứng', 'Việt Nam', 'tròn', '50 chiếc bánh mặn trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 0, '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Đồ ăn tiệm ăn cô Trà được sản xuất từ những nguyên liệu sạch, bánh mới mỗi ngày được chọn lọc kỹ càng, chế biến đảm bảo an toàn VSTP. </span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Sản phẩm được đóng gói bằng túi zip chắc chắn. </span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Hàng được Ship đi bằng hộp Cát-tông cứng nên bạn yên tâm đồ ăn chắc chắn sẽ luôn còn mới và ngon lành cho đến khi bạn nhận được sản phẩm Cô Trà nè!</span><br></p>', '2023-02-17 18:20:33'),
(86, 45, 1, 'Bánh quy đũa', 599000, 10, 'img/products/quydua3.jpg', '/img/products/quydua2.jpg', '/img/products/quydua1.jpg', 1, '500g', '80*120cm', 'Vàng nhạt', 'bột mì, sữa, trứng', 'Việt Nam', 'tròn', '50 chiếc bánh quy đũa trong 1 gói', '75 ngày kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 0, '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Đồ ăn vặt nhà Cô Trà được sản xuất từ những nguyên liệu sạch, bánh mới mỗi ngày được chọn lọc kỹ càng, chế biến đảm bảo an toàn VSTP. </span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Sản phẩm được đóng gói bằng túi zip chắc chắn. </span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Hàng được Ship đi bằng hộp Cát-tông cứng nên bạn yên tâm đồ ăn chắc chắn sẽ luôn còn mới và ngon lành cho đến khi bạn nhận được sản phẩm Cô Trà nè!</span><br></p>', '2023-02-17 18:22:11'),
(87, 46, 1, 'Bánh gấu truyền thống', 500000, 30, 'img/products/gau2.jpg', '/img/products/gau3.jpg', '/img/products/gau1.jpg', 1, '500g', '80*120cm', 'Vàng nhạt', 'bột mì, sữa ', 'Việt Nam', 'hình mặt chú gấu', '50 chiếc bánh gấu trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 0, '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Bánh gấu nhân kem từ lâu đã là món ăn vặt yêu thích của nhiều người, từ các em nhỏ cho đến người lớn.</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\"> Khi các bạn bỏ chiếc bánh vào miệng các bạn sẽ sẽ từ từ cảm nhận được vị ngon của nhân sữa đậm đà bên trong và vị giòn tan của vỏ bánh bên ngoài. </span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Nhâm nhi những chiếc bánh gấu kèm một tách trà nóng hay một ly sữa hoặc trà sữa sẽ làm cho bạn thêm sảng khoái và tràn đầy năng lượng.</span><br></p>', '2023-02-17 18:35:21'),
(88, 46, 1, 'Bánh Gấu vị matcha', 599000, 40, 'img/products/gau9.jpg', '/img/products/gau5.jpg', '/img/products/gau8.jpg', 1, '500g', '80*120cm', 'Xanh', 'bột mì, sữa, trứng, matcha', 'Việt Nam', 'hình mặt chú gấu', '50 chiếc bánh gấu trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 0, '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Bánh gấu nhân kem từ lâu đã là món ăn vặt yêu thích của nhiều người, từ các em nhỏ cho đến người lớn. </span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Khi các bạn bỏ chiếc bánh vào miệng các bạn sẽ sẽ từ từ cảm nhận được vị ngon của nhân sữa đậm đà bên trong và vị giòn tan của vỏ bánh bên ngoài. </span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Nhâm nhi những chiếc bánh gấu kèm một tách trà nóng hay một ly sữa hoặc trà sữa sẽ làm cho bạn thêm sảng khoái và tràn đầy năng lượng.</span><br></p>', '2023-02-17 18:36:49'),
(94, 6, 1, 'Bánh in dừa non', 85000, 14, 'img/products/bánh in dừa non.jpg', 'img/products/bánh in dừa non.jpg', 'img/products/bánh in dừa non.jpg', 1, '360g', '100*100', 'trắng', 'gạo nếp, dừa non, đường...', 'Việt Nam', 'Hình bông hoa', '1 ', '75 ngày kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 0, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(51, 51, 51); font-family: Cuprum-Regular, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Bánh in tươi nhân dừa được mệnh danh là một trong những món bánh đặc sản miền Tây sông nước. Món bánh được các nghệ nhân làm tất cả tâm huyết, mang vẻ đẹp của quê hương Việt Nam. Đối với món bánh này, các thực khách luôn ưu tiên mua làm quà tặng cho người thân yêu của mình.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(51, 51, 51); font-family: Cuprum-Regular, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Bột nếp thơm mềm mịn mà không hề bị khô. Nhân bánh làm bằng dừa non mềm dẻo, vị ngọt thanh, kết hợp với một số loại trái cây tươi như Dứa, Sầu Riêng, Đậu xanh, ... đem lại nhiều hương vị thơm ngon và không bị ngán khi ăn nhiều, cứ ăn là phải ghiền.</p>', '2024-04-19 14:08:14'),
(95, 1, 1, 'Bánh kem forever love', 200000, 42, 'img/products/for.webp', 'img/products/for.webp', 'img/products/for.webp', 1, '300g', '30cm', 'Xanh', 'Kem tươi', 'Việt Nam', 'Tròn', '', '', '', 0, 0, 1, '<p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px; font-family: Lato, sans-serif;\"><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif;\"><b style=\"font-weight: bold;\">Bánh kem tươi cốt bánh 3 lớp chiffon hoa quả khô hỗn hợp, nhân kem tươi, trang trí hình siêu đáng yêu</b></span></p><p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px; font-family: Lato, sans-serif;\"><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif;\"><b style=\"font-weight: bold;\">Sản phẩm đi kèm: Dao cắt bánh+ Nến sinh nhật + Thìa + Đĩa + Pháo sinh nhật + 1 Mũ sinh nhật</b></span></p>', '2024-04-19 22:04:53'),
(97, 6, 1, 'Bánh in nhân đậu xanh', 65000, 32, 'img/products/đậu xanh.jpg', 'img/products/đậu xanh.jpg', 'img/products/đậu xanh.jpg', 1, '320g', '80*120cm', 'trắng', 'bột nếp, đường', 'Việt Nam', 'Hình hoa', '1', '75 ngày kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, \"Helvetica Neue\", helvetica, arial, sans-serif; font-size: 15px;\">Nông sản Việt đã nâng tầm món bánh Việt thêm ngon và hấp dẫn. </span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, \"Helvetica Neue\", helvetica, arial, sans-serif; font-size: 15px;\">Thương làm sao những chiếc bánh in nếp than mềm mịn, cắn một miếng lớp bột hòa tan trong miệng rồi phần nhân hòa quyện lại, có một chút ngọt thanh, một chút thơm như níu kéo mọi vị giác.</span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, \"Helvetica Neue\", helvetica, arial, sans-serif; font-size: 15px;\"> Bánh nếu được dùng chung với trà nóng càng thơm ngon và dậy vị hơn!</span><br></p>', '2024-04-19 14:14:28'),
(98, 38, 2, 'Kẹo Nougat truyền thống', 180000, 23, 'img/products/ngtt.webp', 'img/products/ngtt2.webp', 'img/products/ngtt3.webp', 1, '300g', '80*120cm', 'Xanh', 'Bơ, lòng trắng trứng, sữa bột', 'Việt Nam', 'tròn', '1', ' Hạn sử dụng 1 tháng kể từ ngày sản xuất.', '  Kẹo đóng gói 300g/hộp (số lượng kẹo 17-19 chiếc)', 0, 0, 1, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(137, 137, 137); font-family: Roboto, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px; letter-spacing: 0.25px;\">Nougat là dòng kẹo mềm, dẻo.&nbsp;<strong style=\"font-weight: bold;\">Kẹo nougat</strong>&nbsp;ngọt vừa phải với&nbsp;hạt dinh dưỡng hạnh nhân, bí xanh và mứt hoa quả như nho, nam việt quất, mơ làm nên chiếc kẹo ko thể ko ăn&nbsp;thử.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(137, 137, 137); font-family: Roboto, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px; letter-spacing: 0.25px;\">Kẹo bảo quản ở nhiệt độ phòng.</p>', '2024-04-19 14:31:18'),
(99, 6, 1, 'Bánh in cacao', 75000, 34, 'img/products/bánh in cacao.jpg', 'img/products/bánh in cacao.jpg', 'img/products/bánh in cacao.jpg', 1, '320g', '80*120cm', 'trắng', 'gáo nếp, đậu xanh', 'Việt Nam', 'tròn', '1', '75 ngày kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, \"Helvetica Neue\", helvetica, arial, sans-serif; font-size: 15px;\">Nông sản Việt đã nâng tầm món bánh Việt thêm ngon và hấp dẫn.</span><span style=\"color: rgb(34, 34, 34); font-family: Roboto, \"Helvetica Neue\", helvetica, arial, sans-serif; font-size: 15px;\">Thương làm sao những chiếc bánh in nếp than mềm mịn, cắn một miếng lớp bột hòa tan trong miệng rồi phần nhân hòa quyện lại, có một chút ngọt thanh, một chút thơm như níu kéo mọi vị giác.</span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, \"Helvetica Neue\", helvetica, arial, sans-serif; font-size: 15px;\">Bánh nếu được dùng chung với trà nóng càng thơm ngon và dậy vị hơn!</span><br></p>', '2024-04-19 14:11:26'),
(100, 38, 2, 'Kẹo Nougat vị cà phê', 195000, 100, 'img/products/cf1.webp', 'img/products/cf2.webp', 'img/products/cf3.webp', 1, '300g', '80*120cm', 'Nâu', 'Bơ, lòng trắng trứng, sữa bột', 'Việt Nam', '', '', ' Hạn sử dụng 1 tháng kể từ ngày sản xuất.', '  Kẹo đóng gói 300g/hộp (số lượng kẹo 17-19 chiếc)', 0, 0, 1, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(137, 137, 137); font-family: Roboto, HelveticaNeue, \"Helvetica Neue\", sans-serif; font-size: 14px; letter-spacing: 0.25px;\">Kẹo nougat cafe là một trong những hương vị đỉnh cao của dòng kẹo nougat. Kẹo được làm từ bơ, sữa, cafe và hai loại hạt dinh dưỡng cao cấp là macca và hạnh nhân. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(137, 137, 137); font-family: Roboto, HelveticaNeue, \"Helvetica Neue\", sans-serif; font-size: 14px; letter-spacing: 0.25px;\">Kẹo bùi bùi ngậy ngậy của các loại hạt, thoang thoảng hương cafe và vị ngọt nhẹ, phù hợp với những người không thích ăn ngọt. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(137, 137, 137); font-family: Roboto, HelveticaNeue, \"Helvetica Neue\", sans-serif; font-size: 14px; letter-spacing: 0.25px;\">Kẹo bảo quản ở nhiệt độ phòng.</p>', '2024-04-19 14:35:51'),
(101, 38, 2, 'Nougat Spring', 195000, 30, 'img/products/ngs.webp', 'img/products/ngsss.webp', 'img/products/ngss.webp', 1, '300g', '30*65', 'Nâu', 'Bơ, lòng trắng trứng, sữa bột', 'Việt Nam', '', '12 bánh trong 1 hộp', ' Hạn sử dụng 1 tháng kể từ ngày sản xuất.', '  Kẹo đóng gói 300g/hộp (số lượng kẹo 17-19 chiếc)', 0, 0, 1, '<p><span style=\"color: rgb(137, 137, 137); font-family: Roboto, HelveticaNeue, \"Helvetica Neue\", sans-serif; font-size: 14px; letter-spacing: 0.25px;\">Nougat mùa xuân được làm từ những nguyên liệu cao cấp với nhiều ý nghĩa may mắn. Hãy cùng khám phá hạt dẻ cười béo ngậy, hương dâu thơm lừng, vị sung mỹ cực ghiền và vị chua nhẹ của nam việt quất trong viên kẹo tuyệt vời này</span><br></p>', '2024-04-19 14:35:35'),
(102, 38, 2, 'Kẹo Nougat mix 8 vị', 195000, 23, 'img/products/ngtt2.webp', 'img/products/mc1.webp', 'img/products/mc2.webp', 1, '300g', '', 'Nâu', 'Bơ, lòng trắng trứng, sữa bột', 'Việt Nam', '', '', ' Hạn sử dụng 1 tháng kể từ ngày sản xuất.', '  Kẹo đóng gói 300g/hộp (số lượng kẹo 17-19 chiếc)', 0, 0, 1, '<p><strong style=\"font-weight: bold; color: rgb(137, 137, 137); font-family: Roboto, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px; letter-spacing: 0.25px;\">Kẹo Nougat mix 8 vị cao cấp: Vị truyền thống, vị Xoài, vị Cafe, vị Matcha, vị Bạc Hà, Vị trà bá tước, vị Spring, vị sữa dừa</strong><br></p>', '2024-04-19 14:38:11'),
(103, 38, 2, 'Kẹo Nougat bạc hà', 195000, 15, 'img/products/bh.webp', 'img/products/bh2.webp', 'img/products/cf3.webp', 1, '300g', '20*30', 'Nâu', 'Bơ, lòng trắng trứng, sữa bột', 'Việt Nam', 'Hình chữ nhật', '', ' Hạn sử dụng 1 tháng kể từ ngày sản xuất.', '  Kẹo đóng gói 300g/hộp (số lượng kẹo 17-19 chiếc)', 0, 0, 1, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(137, 137, 137); font-family: Roboto, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px; letter-spacing: 0.25px;\">Vị thơm mát của bạc hà sẽ loại bỏ đi hoàn toàn vị ngọt của kẹo, kết hợp cùng hạnh nhân giòn bùi và chocolate oreo chắc chắn sẽ là hương vị gây bão tiếp theo của dòng kẹo Nougat.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(137, 137, 137); font-family: Roboto, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px; letter-spacing: 0.25px;\">Kẹo bảo quản ở nhiệt độ phòng.</p>', '2024-04-19 14:39:50'),
(104, 7, 1, 'Bánh tét lá dứa', 125000, 34, 'img/products/lá dứa 1.jpg', '/img/products/ladua1.jpg', '/img/products/ladua3.jpg', 1, '1200g', '15*40', 'Xanh', 'gạo nếp, lá dứa, đậu xanh, thịt', 'Việt Nam', 'tròn dài', '1', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 0, '<p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px;\"><span style=\"color: rgb(74, 77, 78); font-family: Comfortaa, sans-serif; font-size: 15px;\">Bánh tét lá dứa được làm thủ công từ những nghệ nhân có 20-30 năm kinh nghiệm, nên mang kiểu dáng và hương vị chuẩn của miền Tây. Tất cả nguyên liệu từ lạp xưởng, gạo nếp, đậu xanh hay lá gói bánh cũng đều được lấy chính từ địa phương, bảo đảm màu sắc, mùi vị hệt như trong ký ức của những người con miền Tây xa xứ.</span><br></p>', '2024-04-19 10:41:08'),
(105, 34, 1, 'Bánh cưới mini', 50000, 100, 'img/products/bc3.jpg', 'img/products/bc2.jpg', 'img/products/bc.jpg', 1, '200g', '5cm', 'Đa dạng', 'Kem tươi', 'Việt Nam', '', '1', '2 tháng kể từ ngày sản xuất', 'Ăn ngay khi bóc bánh', 0, 0, 0, '<p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px;\"><span style=\"color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 17.3333px;\">Bánh cưới của MemoCake mang đến sự ngọt ngàom hơn hết chính thông điệp tình yêu trường tồn và vĩnh cửu.</span></p>', '2024-04-19 14:20:43'),
(106, 34, 1, 'Bánh cưới 2 tầng', 400000, 100, 'img/products/bc2t.jpg', 'img/products/bc2t.jpg', 'img/products/bc2t.jpg', 1, '200g', '', 'Đa dạng', 'Kem tươi', 'Việt Nam', 'Tròn, dài', '1', '', '', 0, 0, 0, '<p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px;\"><span style=\"color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 17.3333px;\">Bánh cưới của MemoCake mang đến sự ngọt ngào, hơn hết chính thông điệp tình yêu trường tồn và vĩnh cửu.</span><br></p>', '2024-04-19 14:23:18'),
(107, 34, 1, 'Bánh cưới 3 tầng', 500000, 34, 'img/products/bc3t.webp', 'img/products/bc3t.webp', 'img/products/bc3t.webp', 1, '', '', 'Đa dạng', 'Kem tươi', 'Việt Nam', 'Tròn, dài', '1', '', '', 0, 0, 0, '<p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px;\"><span style=\"color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 17.3333px;\">Bánh cưới của MemoCake mang đến sự ngọt ngào, hơn hết chính thông điệp tình yêu trường tồn và vĩnh cửu.</span><br></p><div><br style=\"color: rgb(102, 102, 102); font-family: Lato, sans-serif; font-size: 13px;\"></div>', '2024-04-19 14:25:07');
INSERT INTO `sanpham` (`MaSP`, `MaLSP`, `MaDM`, `TenSP`, `DonGia`, `SoLuong`, `HinhAnh1`, `HinhAnh2`, `HinhAnh3`, `MaKM`, `Khoi_luong`, `Kich_thuoc`, `Mau`, `Chat_lieu`, `Xuat_xu`, `Hinh_dang`, `Size`, `HSD`, `Luu_y`, `SoSao`, `SoDanhGia`, `TrangThai`, `MoTa`, `ThoiGian`) VALUES
(108, 42, 2, 'Kẹo dừa dẻo bách vị', 75000, 67, 'img/products/dẻo mix.jpg', 'img/products/dẻo mix.jpg', 'img/products/dẻo mix.jpg', 1, '500g', '30*60', 'Xanh, đỏ, vàng', 'nước cốt dừa , cơm dừa non , mạch nha nếp, đường k', 'Việt Nam', 'vuông', '30 cái trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 1, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, \"Helvetica Neue\", helvetica, arial, sans-serif; font-size: 15px;\">Kẹo dừa dẻo bách vị có vị ngọt đậm đà, được nhiều người lựa chọn làm quà biếu.</span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, \"Helvetica Neue\", helvetica, arial, sans-serif; font-size: 15px;\"> Vì được chế biến với nguyên liệu chính là kẹo mạch nha và nước cốt dừa, nên kẹo dừa truyền thống có thuần vị béo ngọt và thơm đặc trưng của dừa và mạch nha.</span><br></p>', '2024-04-19 11:04:00'),
(109, 42, 2, '  Kẹo dừa dứa non cà phê sữa', 80000, 200, 'img/products/keo-dua-dua-non-ca-phe-sua-5.jpg', 'img/products/keo-dua-dua-non-ca-phe-sua-5.jpg', 'img/products/keo-dua-dua-non-ca-phe-sua-5.jpg', 1, '500g', '30*60', 'Nâu', 'đường, cà phê, dừa non...', 'Việt Nam', 'vuông', '30 cái trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 1, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, \"Helvetica Neue\", helvetica, arial, sans-serif; font-size: 15px;\">Dừa Dứa khác biệt so với dừa bình thường ở hương vị cơm dừa có mùi thơm của dứa, mùa nắng thì Dừa Dứa thơm hơn, nước cũng ngọt hơn. </span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, \"Helvetica Neue\", helvetica, arial, sans-serif; font-size: 15px;\">Nước Dừa Dứa thì ngọt và mát. Nếu bạn đã ăn kẹo dừa truyền thống thì Kẹo Dừa Dứa còn ngon hơn gấp nhiều lần, đặt biệt hơn nhiều lần như thế.</span><br></p>', '2024-04-19 11:01:55'),
(110, 42, 2, 'Kẹo dừa trái cây ', 79000, 54, 'img/products/keo-dua-trai-cay-say-8.jpg', 'img/products/keo-dua-trai-cay-say-8.jpg', 'img/products/keo-dua-trai-cay-say-8.jpg', 1, '500g', '30*60', 'Nhiều màu', 'Trái cây, cacao, lá dứa, mạch nha...', 'Việt Nam', 'vuông', '30 cái trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 1, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Kẹo Dừa Trái Cây Bánh Tráng Bách Vị là đặc sản hoàn toàn mới và đầy sáng tạo được sản xuất từ Ccơm dừa non, là sự pha trộn giữa món mứt dừa non dẻo, lá dứa và kẹo dừa.</span></p>', '2024-04-19 11:01:00'),
(111, 42, 2, 'Kẹo dừa non mix 3 vị', 58000, 30, 'img/products/kẹo dừa non mix.jpg', 'img/products/kẹo dừa non mix.jpg', 'img/products/kẹo dừa non mix.jpg', 1, '500g', '30*60', 'Xanh, trắng', 'dứa non, mạch nha, lá dứa', 'Việt Nam', 'vuông', '30 cái trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 1, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Kẹo dừa non mix 3 vị được làm từ cùi dừa non của quả dừa xiêm dứa một loại dừa vô cùng đặc biệt, tuy trái nhỏ nhưng nước ngọt và thơm mùi lá sâm dứa đặc trưng. </span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Vì thế kẹo dừa dứa non mềm dẻo và thơm ngậy vị dừa dứa rất ngon và lạ miệng</span><br></p>', '2024-04-19 11:10:39'),
(112, 42, 2, 'Kẹo dừa non dẻo mè', 90000, 54, 'img/products/keo-dua-non-deo-me-la-dua-3.jpg', 'img/products/keo-dua-non-deo-me-la-dua-3.jpg', 'img/products/keo-dua-non-deo-me-la-dua-3.jpg', 1, '500g', '30*60', 'Xanh của lá dứa', 'mạnh nha, lá dứa...', 'Việt Nam', 'vuông', '30 cái trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 1, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Một đặc sản hoàn toàn mới và đầy sáng tạo được sản xuất từ cơm dừa non là sự pha trộn giữa món mứt dừa non dẻo, lá dứa và kẹo dừa – kẹo dừa non lá dứa bánh tráng dẻo. </span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Được làm từ cơm dừa non tươi, trộn mạch nha nếp, mè, xào lên cho vừa chín, sau đó được trải đều lên lớp bánh tráng mỏng, cắt thành từng viên vuông nho nhỏ vừa miệng ăn.</span><br></p>', '2024-04-19 11:07:34'),
(113, 42, 2, 'Kẹo dừa nướng cà phê sữa', 75000, 10, 'img/products/keo-dua-nuong-cafe-4.jpg', 'img/products/keo-dua-nuong-cafe-4.jpg', 'img/products/keo-dua-nuong-cafe-4.jpg', 1, '500g', '30*65', 'nâu cafe', 'đường cát, mạch nha, nước cốt dừa, cơm sầu riêng, ', 'Việt Nam', 'vuông', '30 cái trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 1, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, \"Helvetica Neue\", helvetica, arial, sans-serif; font-size: 15px;\">Kẹo Dừa Nướng Cà Phê Sữa có vị ngọt đậm đà, được nhiều người lựa chọn làm quà biếu. </span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, \"Helvetica Neue\", helvetica, arial, sans-serif; font-size: 15px;\">Kẹo được chế biến với nguyên liệu chính là kẹo mạch nha, nước cốt dừa, đậu phộng và cà phê sữa.</span><br></p>', '2024-04-19 11:04:56'),
(114, 42, 2, 'Kẹo dừa cuộn bách vị', 70000, 30, 'img/products/keo-dua-cuon-bach-vi-7.jpg', 'img/products/keo-dua-cuon-bach-vi-7.jpg', 'img/products/keo-dua-cuon-bach-vi-7.jpg', 1, '500g', '30*60', 'Nhiều màu', 'đường cát, mạch nha, nước cốt dừa…', 'Việt Nam', 'vuông', '30 cái trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 1, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, \"Helvetica Neue\", helvetica, arial, sans-serif; font-size: 15px;\">Kẹo dừa cuộn bách vị có vị ngọt đậm đà, được nhiều người lựa chọn làm quà biếu. </span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, \"Helvetica Neue\", helvetica, arial, sans-serif; font-size: 15px;\">Vì được chế biến với nguyên liệu chính là kẹo mạch nha và nước cốt dừa, nên kẹo dừa truyền thống có thuần vị béo ngọt và thơm đặc trưng của dừa và mạch nha.</span><br></p>', '2024-04-19 10:59:55'),
(115, 1, 1, 'Bánh sinh nhật công chúa', 285000, 30, 'img/products/sinh nhật.jpg', 'img/products/sinh nhật.jpg', 'img/products/sinh nhật.jpg', 1, '500g', '30*60', 'Hồng', 'Kem tươi', 'Việt Nam', 'Tròn ', '', '1 tháng kể từ ngày sản xuất', '', 0, 0, 0, '<p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px; font-family: Lato, sans-serif;\"><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif;\"><b style=\"font-weight: bold;\">Bánh kem tươi cốt bánh 3 lớp chiffon hoa quả khô hỗn hợp, nhân kem tươi, trang trí hình công chúa</b></span></p><p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px; font-family: Lato, sans-serif;\"><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif;\"><b style=\"font-weight: bold;\"><br></b></span><b style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif; font-weight: bold;\">Sản phẩm đi kèm: Dao cắt bánh+ Nến sinh nhật + Thìa + Đĩa + Pháo sinh nhật + 1 Mũ sinh nhật</b></p>', '2024-04-19 11:09:21'),
(116, 42, 2, 'Kẹo dừa dứa non', 80000, 10, 'img/products/kẹo dừa dứa.jpg', 'img/products/kẹo dừa dứa.jpg', 'img/products/kẹo dừa dứa.jpg', 1, '500g', '30*60', 'trắng ngà', 'dừa, mạch nha, mè, dứa...', 'Việt Nam', 'tròn cuộn', '30 cái trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 1, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, \"Helvetica Neue\", helvetica, arial, sans-serif; font-size: 15px;\">Kẹo dừa dứa non được làm từ cùi dừa non của quả dừa xiêm dứa một loại dừa vô cùng đặc biệt, tuy trái nhỏ nhưng nước ngọt và thơm mùi lá sâm dứa đặc trưng. </span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, \"Helvetica Neue\", helvetica, arial, sans-serif; font-size: 15px;\">Vì thế kẹo dừa dứa non mềm dẻo và thơm ngậy vị dừa dứa rất ngon và lạ miệng.</span><br></p>', '2024-04-19 11:11:52'),
(117, 42, 2, 'Kẹo dừa dứa nướng đậu phộng', 85000, 30, 'img/products/nướng đậu phộng.jpg', 'img/products/nướng đậu phộng.jpg', 'img/products/nướng đậu phộng.jpg', 1, '500g', '30*60', 'Xanh nhạt', 'đường cát, mạch nha, nước cốt dừa, cơm sầu riêng, ', 'Việt Nam', 'tròn cuộn', '30 cái trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 1, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, \"Helvetica Neue\", helvetica, arial, sans-serif; font-size: 15px;\">Kẹo dừa có vị ngọt đậm đà, được nhiều người lựa chọn làm quà biếu. </span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, \"Helvetica Neue\", helvetica, arial, sans-serif; font-size: 15px;\">Vì được chế biến với nguyên liệu chính là kẹo mạch nha và nước cốt dừa, nên kẹo dừa truyền thống có thuần vị béo ngọt và thơm đặc trưng của dừa và mạch nha.</span><br></p>', '2024-04-19 11:06:11'),
(118, 1, 1, 'Bánh mừng thọ ', 300000, 23, 'img/products/thọ.jpg', 'img/products/thọ.jpg', 'img/products/thọ.jpg', 1, '300g', '20cm', 'Vàng', 'Kem tươi', 'Việt Nam', 'Tròn', '30 cái trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 1, '<p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px; font-family: Lato, sans-serif;\"><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif;\"><b style=\"font-weight: bold;\">Bánh kem tươi cốt bánh 3 lớp chiffon hoa quả khô hỗn hợp, nhân kem tươi, trang trí hình ông bà&nbsp;</b></span></p><p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px; font-family: Lato, sans-serif;\"><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif;\"><b style=\"font-weight: bold;\">Sản phẩm đi kèm: Dao cắt bánh+ Nến sinh nhật + Thìa + Đĩa + Pháo sinh nhật + 1 Mũ sinh nhật</b></span></p>', '2024-04-19 21:29:32'),
(119, 43, 3, 'Thiệp sinh nhật chủ đề cún con', 15000, 23, 'img/products/c2.jpg', 'img/products/c2.jpg', 'img/products/c2.jpg', 1, '', '', '', '', 'Việt Nam', '', '', '', 'Ăn ngay khi mở túi', 0, 0, 1, '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(35, 35, 35); font-family: sans-serif; font-size: medium;\"><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Khách hàng có thể tùy biến lại thiết kế cho phù hợp sở thích ( Tên bé, hình ảnh bé, ngày tháng năm sinh,...)</li></ul>', '2024-04-19 21:36:47'),
(120, 43, 3, 'Thiệp sinh nhật chủ đề Mickey', 15000, 100, 'img/products/mickey.jpg', 'img/products/mickey.jpg', 'img/products/mickey.jpg', 1, '', '', '', '', 'Việt Nam', '', '', '', '', 0, 0, 1, '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(35, 35, 35); font-family: sans-serif; font-size: medium;\"><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Khách hàng có thể tùy biến lại thiết kế cho phù hợp sở thích ( Tên bé, hình ảnh bé, ngày tháng năm sinh,...)</li></ul>', '2024-04-19 21:38:07'),
(121, 43, 3, 'Thiệp sinh nhật chủ đề phi công', 15000, 57, 'img/products/pc.jpg', 'img/products/pc.jpg', 'img/products/pc.jpg', 1, '', '', '', '', 'Việt Nam', '', '', '', '', 0, 0, 1, '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(35, 35, 35); font-family: sans-serif; font-size: medium;\"><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Khách hàng có thể tùy biến lại thiết kế cho phù hợp sở thích ( Tên bé, hình ảnh bé, ngày tháng năm sinh,...)</li></ul>', '2024-04-19 21:39:18'),
(122, 43, 3, 'Thiệp sinh nhật chủ đề gà con', 15000, 34, 'img/products/gà con.jpg', 'img/products/gà con.jpg', 'img/products/gà con.jpg', 1, '', '', '', '', 'Việt Nam', '', '', '', '', 0, 0, 1, '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(35, 35, 35); font-family: sans-serif; font-size: medium;\"><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Khách hàng có thể tùy biến lại thiết kế cho phù hợp sở thích ( Tên bé, hình ảnh bé, ngày tháng năm sinh,...)</li></ul>', '2024-04-19 21:40:22'),
(123, 43, 3, 'Thiệp sinh nhật chủ đề heo con', 15000, 30, 'img/products/HEO-CON-1-652x652.jpg', 'img/products/HEO-CON-1-652x652.jpg', 'img/products/HEO-CON-1-652x652.jpg', 1, '', '', '', '', 'Việt Nam', '', '', '', '', 0, 0, 1, '<h4 style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; color: rgb(119, 119, 119); font-size: 13px; line-height: 20px; font-family: \" open=\"\" sans\",=\"\" sans-serif;\"=\"\"><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(35, 35, 35); font-family: sans-serif; font-size: medium;\"><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Khách hàng có thể tùy biến lại thiết kế cho phù hợp sở thích ( Tên bé, hình ảnh bé, ngày tháng năm sinh,...)</li></ul></h4>', '2024-04-19 21:41:31'),
(125, 38, 2, 'Kẹo Nougat vị trà bá tước', 195000, 100, 'img/products/trà bá tước.webp', 'img/products/trà bá tước.webp', 'img/products/trà bá tước.webp', 1, '300g', '', 'Nâu', 'Sữa, hạnh nhất', 'Việt Nam', 'Chữ nhật', '17-19 thanh', '3 tháng kể từ ngày sản xuất', '', 0, 0, 1, '<p style=\"margin-bottom: 1.3em; color: rgb(40, 40, 40); font-family: Roboto, sans-serif; font-size: 14.88px;\"><div class=\"form-product \" style=\"box-sizing: border-box;\"><form enctype=\"multipart/form-data\" id=\"add-to-cart-form\" action=\"https://nhagao.com/cart/add\" method=\"post\" class=\"form-inline margin-bottom-10 dqdt-form\" style=\"box-sizing: border-box; margin-bottom: 10px !important;\"><div class=\"box-variant clearfix \" style=\"box-sizing: border-box; color: rgb(54, 54, 54); font-family: Roboto, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.25px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></div><div class=\"form-group form-groupx form-detail-action clearfix \" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; display: inline-block; vertical-align: middle; width: 481.875px; color: rgb(54, 54, 54); font-family: Roboto, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.25px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></div></form></div></p><div class=\"product-summary product_description margin-bottom-15\" style=\"box-sizing: border-box; margin-bottom: 20px; padding-bottom: 20px; border-bottom: 1px solid rgb(235, 235, 235);\"><div class=\"rte description\" style=\"box-sizing: border-box; color: rgb(137, 137, 137);\"><p style=\"box-sizing: border-box; margin: 0px 0px 15px;\">Một chiếc kẹo gây ấn tượng đầu tiên bở vẻ ngoài sang chảnh, hương thơm kết hợp tinh tế giữa vị Trà Bá Tước, vị sữa, hạt hạnh nhân béo ngậy cùng quả Sung Mỹ sấy giòn. Đặc biệt mang đến vị ngọt nhè nhẹ, nền kẹo mềm dẻo, không gắt, không ngán.</p></div></div>', '2024-04-19 21:43:59'),
(134, 38, 2, 'Kẹo Nougat vị trà sữa dừa', 195000, 100, 'img/products/sữa.webp', 'img/products/sữa1.webp', 'img/products/sữa.webp', 1, '300g', '30*60', 'Nâu', 'Sữa, hạnh nhất', 'Việt Nam', 'Chữ nhật', '17-19 thanh', '3 tháng kể từ ngày sản xuất', 'Bảo quản: Nơi thoáng mát tránh ánh nắng chiếu trực', 0, 0, 1, '<p><b id=\"docs-internal-guid-9dcf0012-7fff-bf7b-031a-b50674ebfd01\" style=\"font-weight: bold; color: rgb(137, 137, 137); font-family: Roboto, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px; letter-spacing: 0.25px;\">Chiếc kẹo nougat mang ta về tuổi thơ với hương thơm ngào ngạt của đồng quê. Nougat vị sữa dừa mang hương vị cổ truyền kết hợp nguyên liệu cao cấp. Kẹo có vị ngọt nhẹ, chút dẻo, chút thơm từ sữa dừa, từ hạt vừng, hạt lạc rang và dừa sấy lạnh không đường tạo nên hương vị khiến ta xao xuyến không quên.</b><br></p>', '2024-04-19 21:45:30'),
(135, 38, 2, 'Kẹo Nougat vị xoài macca', 205000, 100, 'img/products/xoài.webp', 'img/products/xoài2.webp', 'img/products/xoài 3.webp', 1, '300g', '30*60', 'Nâu', 'Sữa, hạnh nhất', 'Việt Nam', 'Chữ nhật', '17-19 thanh', '3 tháng kể từ ngày sản xuất', 'Bảo quản: Nơi thoáng mát tránh ánh nắng chiếu trực', 0, 0, 1, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(137, 137, 137); font-family: Roboto, HelveticaNeue, \"Helvetica Neue\", sans-serif; font-size: 14px; letter-spacing: 0.25px;\">Nougat xoài hiện đang là dòng kẹo cao cấp nhất với nguyên liệu xoài sấy lạnh, hạt macca, hạnh nhân làm nên hương vị kẹo cực kì tuyệt vời.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(137, 137, 137); font-family: Roboto, HelveticaNeue, \"Helvetica Neue\", sans-serif; font-size: 14px; letter-spacing: 0.25px;\">Kẹo bảo quản ở nhiệt độ phòng.</p>', '2024-04-19 21:47:29'),
(143, 1, 1, 'Bánh kem hình gà siêu đáng yêu', 200000, 100, 'img/products/gà.jpg', 'img/products/gà.jpg', 'img/products/gà.jpg', 1, '300g', '20cm', 'Vàng', 'Kem tươi', 'Việt Nam', '', '', '', '', 0, 0, 1, '<p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px; font-family: Lato, sans-serif;\"><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif;\"><b style=\"font-weight: bold;\">Bánh kem tươi cốt bánh 3 lớp chiffon hoa quả khô hỗn hợp, nhân kem tươi, trang trí hình con gà</b></span></p><p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px; font-family: Lato, sans-serif;\"><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif;\"><b style=\"font-weight: bold;\">Sản phẩm đi kèm: Dao cắt bánh+ Nến sinh nhật + Thìa + Đĩa + Pháo sinh nhật + 1 Mũ sinh nhật</b></span></p>', '2024-04-19 21:13:05'),
(144, 1, 1, 'Bánh kem hình mèo siêu đáng yêu', 200000, 100, 'img/products/mèo.jpg', 'img/products/mèo.jpg', 'img/products/mèo.jpg', 1, '300g', '20cm', 'Vàng', 'Kem tươi', 'Việt Nam', '', '', '', '', 0, 0, 1, '<p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px; font-family: Lato, sans-serif;\"><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif;\"><b style=\"font-weight: bold;\">Bánh kem tươi cốt bánh 3 lớp chiffon hoa quả khô hỗn hợp, nhân kem tươi, trang trí hình mèo</b></span></p><p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px; font-family: Lato, sans-serif;\"><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif;\"><b style=\"font-weight: bold;\">Sản phẩm đi kèm: Dao cắt bánh+ Nến sinh nhật + Thìa + Đĩa + Pháo sinh nhật + 1 Mũ sinh nhật</b></span></p>', '2024-04-19 21:16:29'),
(145, 1, 1, 'Bánh Kem tài lộc phát', 300000, 100, 'img/products/tài.jpg', 'img/products/lộc.jpg', 'img/products/phát.jpg', 1, '300g', '20cm', 'Vàng', 'Kem tươi', 'Việt Nam', 'Tròn', '', '', '', 0, 0, 1, '<p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px; font-family: Lato, sans-serif;\"><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif;\"><b style=\"font-weight: bold;\">Bánh kem tươi cốt bánh 3 lớp chiffon hoa quả khô hỗn hợp, nhân kem tươi, trang trí hình tài lộc phát</b></span></p><p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px; font-family: Lato, sans-serif;\"><span style=\"color: rgb(75, 73, 78); font-family: Montserrat, sans-serif;\"><b style=\"font-weight: bold;\">Sản phẩm đi kèm: Dao cắt bánh+ Nến sinh nhật + Thìa + Đĩa + Pháo sinh nhật + 1 Mũ sinh nhật</b></span></p>', '2024-04-19 21:22:06'),
(147, 33, 1, 'Dount Socola trắng', 20000, 100, 'img/products/dount.jpg', 'img/products/dount.jpg', 'img/products/dount.jpg', 1, '100g', '10cm', 'Trắng ', 'Bột mì, đường, bơ', 'Việt Nam', 'Tròn', 'Nhỏ', '6 tháng kể từ ngày sản xuất', '', 0, 0, 0, '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: black; font-family: &quot;Open Sans&quot;, serif; font-size: 14px;\">Donut Sô-Cô-La Trắng không đắng nhẹ như Sô-Cô-La đen mà có vị ngọt thanh, khiến nhiều người mê đắm, đặc biệt là những tín đồ đam mê bánh ngọt.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: black; font-family: &quot;Open Sans&quot;, serif; font-size: 14px;\">•&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thành phần gồm Bột mì, đường, bơ, bột sữa, trứng gà, socola ...</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: black; font-family: &quot;Open Sans&quot;, serif; font-size: 14px;\">•&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Không sử dụng chất bảo quản, đảm bảo vệ sinh an toàn thực phẩm.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: black; font-family: &quot;Open Sans&quot;, serif; font-size: 14px;\">•&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cam kết giống 100% mẫu mã và kích cỡ.</p>', '2024-04-19 10:29:05'),
(148, 33, 1, 'Bánh muffin nhí nhảnh', 30000, 100, 'img/products/Muffin nhí.jpg', 'img/products/Muffin nhí.jpg', 'img/products/Muffin nhí.jpg', 1, '100g', '6cm ', 'Nâu', 'Bột mì, đường, bơ', 'Việt Nam', 'Tròn', 'Nhỏ', '6 tháng kể từ ngày sản xuất', '', 0, 0, 0, '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: black; font-family: &quot;Open Sans&quot;, serif; font-size: 14px;\">Muffin Nhí Nhảnh (Hộp) luôn để lại ấn tượng sâu sắc với khách hàng bởi hương vị thơm ngon đặc trưng, bánh có độ xốp và mềm, được phổ biến trong các quán cà phê và bữa tiệc.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: black; font-family: &quot;Open Sans&quot;, serif; font-size: 14px;\">•&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thành phần gồm bột bông lan, bơ, đường, trứng gà, sữa, socola,...</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: black; font-family: &quot;Open Sans&quot;, serif; font-size: 14px;\">•&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Không sử dụng chất bảo quản, đảm bảo vệ sinh an toàn thực phẩm.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: black; font-family: &quot;Open Sans&quot;, serif; font-size: 14px;\">•&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cam kết giống 100% mẫu mã và kích cỡ.</p>', '2024-04-19 10:30:51'),
(149, 43, 3, 'Phông treo sinh nhật', 200000, 10, 'img/products/pk1.jpg', 'img/products/pk2.jpg', 'img/products/pk3.jpg', 4, '100g', '80*120', 'Đa dạng', '', 'Việt Nam', '', '', '', 'Sản phẩm cần được liên hệ đặt trước 1-2 ngày (khôn', 0, 0, 0, '<p style=\"color: rgb(51, 51, 51); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16.1px;\"><span style=\"font-weight: 700;\">Backdrop (Phông nền) sinh nhật</span>&nbsp;với chất liệu chính được sử dụng phổ biến hiện nay để là giấy pp, vải silk, bạt hi-flex,… Dựa vào quy mô của buổi tiệc mà bạn sẽ chọn kích thước hay chất liệu phù hợp.</p><p style=\"color: rgb(51, 51, 51); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16.1px;\">Ứng dụng của backdrop:</p><ul style=\"color: rgb(51, 51, 51); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16.1px;\"><li>Sử dụng backdrop trong các bữa tiệc như sinh nhật, liên hoan, họp lớp,....giúp che khuyết điểm cho khu vực trang trí ( tường xấu, đồ vật không thể di chuyển,...</li><li>Chụp hình với backdrop trong bữa tiệc bạn sẽ có những tấm ảnh lưu giữ kỉ niệm thật nổi bật và đáng nhớ&nbsp;</li><li>Dùng để trang trí tiệc sinh nhật hoặc có thể làm phông nền chụp hình cho bé yêu vừa đơn giản vừa đẹp lại mang nhiều ý nghĩa phù hợp với ngày quan trọng của bé.</li></ul>', '2024-04-19 10:45:39'),
(155, 47, 3, 'Nón sinh nhật', 60000, 100, 'img/products/nón.jpg', '/img/products/nón.jpg', '/img/products/nón.jpg', 1, '', '', 'Đa dạng', 'Giấy', '', '', '', '', '', 0, 0, 1, '', '2024-04-19 15:21:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`Id`) USING BTREE;

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `MaHD` (`MaHD`) USING BTREE,
  ADD KEY `MaSP` (`MaSP`) USING BTREE;

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDM`) USING BTREE;

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`) USING BTREE,
  ADD KEY `MaKH` (`MaND`) USING BTREE;

--
-- Indexes for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`) USING BTREE;

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLSP`) USING BTREE,
  ADD KEY `MaDM` (`MaDM`) USING BTREE,
  ADD KEY `MaLSP` (`MaLSP`,`MaDM`) USING BTREE,
  ADD KEY `MaLSP_2` (`MaLSP`) USING BTREE;

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaND`) USING BTREE,
  ADD KEY `MaQuyen` (`MaQuyen`) USING BTREE;

--
-- Indexes for table `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaQuyen`) USING BTREE;

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`) USING BTREE,
  ADD KEY `LoaiSP` (`MaLSP`) USING BTREE,
  ADD KEY `MaKM` (`MaKM`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `MaND` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `MaQuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`);

--
-- Constraints for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD CONSTRAINT `MaDM` FOREIGN KEY (`MaDM`) REFERENCES `danhmuc` (`MaDM`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `nguoidung_ibfk_1` FOREIGN KEY (`MaQuyen`) REFERENCES `phanquyen` (`MaQuyen`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`MaLSP`) REFERENCES `loaisanpham` (`MaLSP`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
