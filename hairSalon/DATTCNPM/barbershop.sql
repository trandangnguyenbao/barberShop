-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 29, 2022 lúc 07:48 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `barbershop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `calam`
--

CREATE TABLE `calam` (
  `id` int(11) NOT NULL,
  `tennv` varchar(255) NOT NULL,
  `chinhanh` varchar(255) NOT NULL,
  `calam` int(11) NOT NULL,
  `ngaylam` date NOT NULL,
  `chucvu` varchar(255) NOT NULL,
  `tinhtrang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `calam`
--

INSERT INTO `calam` (`id`, `tennv`, `chinhanh`, `calam`, `ngaylam`, `chucvu`, `tinhtrang`) VALUES
(1, 'Nguyễn Chánh Bảo', '323 Xô Viết Nghệ Tĩnh, Phường 25, Q.Bình Thạnh, TP Hồ Chí Minh', 0, '0000-00-00', 'Barber', ''),
(2, 'Nguyễn Văn A', '323 Xô Viết Nghệ Tĩnh, Phường 25, Q.Bình Thạnh, TP Hồ Chí Minh', 0, '0000-00-00', 'Barber', ''),
(3, 'Nhân viên 2', '323 Xô Viết Nghệ Tĩnh, Phường 25, Q.Bình Thạnh, TP Hồ Chí Minh', 0, '0000-00-00', 'Nhân Viên Tư Vấn', ''),
(4, 'Nguyễn Chánh Bảo', '323 Xô Viết Nghệ Tĩnh, Phường 25, Q.Bình Thạnh, TP Hồ Chí Minh', 0, '2022-10-10', 'Barber', ''),
(5, 'Nguyễn Văn b', '323 Xô Viết Nghệ Tĩnh, Phường 25, Q.Bình Thạnh, TP Hồ Chí Minh', 0, '0000-00-00', 'Nhân Viên Tư Vấn', ''),
(6, 'Trần Đăng Nguyễn Bảo', '323 Xô Viết Nghệ Tĩnh, Phường 25, Q.Bình Thạnh, TP Hồ Chí Minh', 0, '0000-00-00', 'admin', ''),
(7, 'Nguyễn Chánh Bảo', '323 Xô Viết Nghệ Tĩnh, Phường 25, Q.Bình Thạnh, TP Hồ Chí Minh', 0, '0000-00-00', 'Barber', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chinhanh`
--

CREATE TABLE `chinhanh` (
  `id` int(11) NOT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `mathanhpho` int(11) DEFAULT NULL,
  `hinhanh` varchar(255) DEFAULT NULL,
  `quan` int(11) DEFAULT NULL,
  `nhanvien` int(11) NOT NULL,
  `doanhthu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chinhanh`
--

INSERT INTO `chinhanh` (`id`, `diachi`, `mathanhpho`, `hinhanh`, `quan`, `nhanvien`, `doanhthu`) VALUES
(1, '323 Xô Viết Nghệ Tĩnh, Phường 25, Q.Bình Thạnh, TP Hồ Chí Minh', 1, NULL, 4, 0, 0),
(2, '149 Nguyễn Duy Trinh, P. Bình Trưng Tây, Quận 2, TP hồ chí Minh', 1, NULL, 2, 0, 0),
(3, '483 Thống Nhất, Phường 16, Q.Gò Vấp, TP Hồ Chí Minh', 1, NULL, 7, 0, 0),
(4, '112 Phổ Quang, Phường 9, Q.Phú Nhuận, TP Hồ Chí Minh', 1, NULL, 6, 0, 0),
(5, '29 Hiệp Bình, P. Hiệp Bình Chánh, Q.Thủ Đức, TP Hồ Chí Minh', 1, NULL, 8, 0, 0),
(6, '12 Lê Đức Thọ, Phường 7, Q.Gò Vấp, TP Hồ Chí Minh', 1, NULL, 7, 0, 0),
(7, '29 Hiệp Bình, P. Hiệp Bình Chánh, Q.Thủ Đức, TP Hồ Chí Minh', 1, NULL, 8, 0, 0),
(8, '12 Lê Đức Thọ, Phường 7, Q.Gò Vấp, TP Hồ Chí Minh', 1, NULL, 7, 0, 0),
(9, '345 Nguyễn Văn Linh, P. Thạc Gián, Quận Thanh Khê, Hà Nội', 2, NULL, 9, 0, 0),
(10, '163 Hàng Bông, P. Hàng Bông, Q. Hoàn Kiếm, Hà Nội', 3, NULL, 10, 0, 0),
(11, '391 Trương Định, P. Tân Mai, Q. Hoàng Mai, Hà Nội', 3, NULL, 12, 0, 0),
(12, '151 Cầu Giấy, Q. CG, P. Quan Hoa, Q. Cầu Giấy, Hà Nội', 3, NULL, 11, 0, 0),
(13, '111 Lạc Long Quân, P. Nghĩa Đô, Q. Cầu Giấy, Hà Nội', 3, NULL, 11, 0, 0),
(14, '109 Trần Quốc Hoàn, P. Dịch Vọng Hậu, Q. Cầu Giấy,Hà Nội', 3, NULL, 11, 0, 0),
(15, '113 Trần Hưng Đạo, P. Mỹ Bình, Long Xuyên, An Giang', 4, NULL, 13, 0, 0),
(16, '294 Lê Hồng Phong, Phường 4, TP. Vũng Tàu, Vũng Tàu', 5, NULL, 14, 0, 0),
(17, '1361 Phạm Văn Thuận, P. Thống Nhất, TP. Biên Hòa,Đồng Nai', 6, NULL, 15, 0, 0),
(18, '451 Phạm Văn Thuận, P. Tam Hiệp, TP. Biên Hòa, Đồng Nai', 6, NULL, 15, 0, 0),
(19, ' 255 Nguyễn An Ninh, P. Dĩ An, Dĩ An, Bình Dương', 7, NULL, 16, 0, 0),
(20, '80 Phú Lợi, P. Phú Hoà, Thủ Dầu Một, Bình Dương', 7, NULL, 17, 0, 0),
(21, '641 Cách Mạng Tháng 8, P. Phú Cường, Thủ Dầu Một, Bình Dương', 7, NULL, 17, 0, 0),
(22, '65 Đường 22 Tháng 12, P. Thuận Giao, Thuận An, Bình Dương', 7, NULL, 18, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `id` int(11) NOT NULL,
  `tendichvu` varchar(255) DEFAULT NULL,
  `phidichvu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`id`, `tendichvu`, `phidichvu`) VALUES
(1, 'Combo7', 100000),
(2, 'Combo10', 150000),
(3, 'Gold Combo', 500000),
(4, 'Silver combo', 250000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `tenkh` varchar(255) DEFAULT NULL,
  `id_giohang` int(11) DEFAULT NULL,
  `tongtien` int(11) DEFAULT NULL,
  `tinhtrang` varchar(255) DEFAULT NULL,
  `sanpham` varchar(255) NOT NULL,
  `soluong` int(11) NOT NULL,
  `ngaydat` varchar(255) NOT NULL,
  `ngaygiao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `tenkh`, `id_giohang`, `tongtien`, `tinhtrang`, `sanpham`, `soluong`, `ngaydat`, `ngaygiao`) VALUES
(1, 'Nguyễn Văn A', NULL, 450000, 'Đã Thanh Toán', 'Reuzel Clay Matte Pomade', 1, '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `id_giohang` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `product_cost` int(11) DEFAULT NULL,
  `tongtien` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`id_giohang`, `product_name`, `soluong`, `product_cost`, `tongtien`, `username`) VALUES
(1, 'Concrete Hold Matte Pomade', 2, 450000, 900000, '0'),
(3, 'Clay Spray – VU TRI BARBERSHOP ', 2, 300000, 600000, '0'),
(4, 'Reuzel Clay Matte Pomade', 1, 450000, 450000, '0'),
(6, 'Clay Spray – VU TRI BARBERSHOP ', 4, 300000, 1200000, '0328272512'),
(7, 'Concrete Hold Matte Pomade', 3, 450000, 1350000, '0328272512');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `hoten` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `chinhanh` varchar(255) NOT NULL,
  `chucvu` varchar(255) NOT NULL,
  `gioitinh` varchar(255) NOT NULL,
  `ngaysinh` varchar(255) NOT NULL,
  `noisinh` varchar(255) NOT NULL,
  `background` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id`, `username`, `hoten`, `password`, `type`, `chinhanh`, `chucvu`, `gioitinh`, `ngaysinh`, `noisinh`, `background`) VALUES
(9, '0899978281', 'Nguyễn Chánh Bảo', 'e10adc3949ba59abbe56e057f20f883e', 'user', '', '', '', '', '', ''),
(11, 'chanhbao', 'Nguyễn Chánh Bảo', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '323 Xô Viết Nghệ Tĩnh, Phường 25, Q.Bình Thạnh, TP Hồ Chí Minh', 'Barber', 'Nam', '20/10/2001', 'Phú Yên', ''),
(12, 'nhanvien1', 'Nguyễn Văn A', 'e10adc3949ba59abbe56e057f20f883e', 'nhanvien', '323 Xô Viết Nghệ Tĩnh, Phường 25, Q.Bình Thạnh, TP Hồ Chí Minh', 'Barber', 'Nam', '1/1/1990', 'Phú Yên', ''),
(13, 'nhanvien2', 'Nhân viên 2', '14e1b600b1fd579f47433b88e8d85291', 'nhanvien', '323 Xô Viết Nghệ Tĩnh, Phường 25, Q.Bình Thạnh, TP Hồ Chí Minh', 'Nhân Viên Tư Vấn', 'Nam', '2/3/2001', 'Phú Yên', ''),
(14, 'nhanvien3', 'Nguyễn Văn b', '14e1b600b1fd579f47433b88e8d85291', 'nhanvien', '323 Xô Viết Nghệ Tĩnh, Phường 25, Q.Bình Thạnh, TP Hồ Chí Minh', 'Nhân Viên Tư Vấn', 'Nam', '20/10/2001', 'Phú Yên', ''),
(15, '0123456789', 'nguyễn văn c', 'e10adc3949ba59abbe56e057f20f883e', 'user', '', '', '', '', '', ''),
(16, '0328272512', 'Trần Đăng Nguyễn Bảo', 'fdf4cfc4d7d06e8f9f04df9e87386e1b', 'user', '', '', '', '', '', ''),
(19, 'admin', 'Trần Đăng Nguyễn Bảo', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '323 Xô Viết Nghệ Tĩnh, Phường 25, Q.Bình Thạnh, TP Hồ Chí Minh', 'admin', 'Nam', '28/10/2001', 'BRVT', ''),
(20, 'nguyenchanhbao', 'Nguyễn Chánh Bảo', 'e10adc3949ba59abbe56e057f20f883e', 'nhanvien', '323 Xô Viết Nghệ Tĩnh, Phường 25, Q.Bình Thạnh, TP Hồ Chí Minh', 'Barber', 'Nam', '20/10/2001', 'Phú Yên', ''),
(21, '0978567684', 'Trần Đăng Bảo An', 'e10adc3949ba59abbe56e057f20f883e', 'user', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichhen`
--

CREATE TABLE `lichhen` (
  `id_lichhen` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `ngay` date DEFAULT NULL,
  `thoigian` varchar(255) DEFAULT NULL,
  `chinhanh` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `dichvu` varchar(255) NOT NULL,
  `tongtien` int(11) NOT NULL,
  `tinhtrang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `lichhen`
--

INSERT INTO `lichhen` (`id_lichhen`, `name`, `phone`, `ngay`, `thoigian`, `chinhanh`, `note`, `dichvu`, `tongtien`, `tinhtrang`) VALUES
(1, 'Nguyễn Chánh Bảo', '0899978281', '2022-04-27', '14 giờ:25 phút', '323 Xô Viết Nghệ Tĩnh, Phường 25, Q.Bình Thạnh, TP Hồ Chí Minh', '', 'Combo10', 150000, ''),
(2, 'Nguyễn Chánh Bảo', '0899978281', '2022-04-27', '14 giờ:25 phút', '323 Xô Viết Nghệ Tĩnh, Phường 25, Q.Bình Thạnh, TP Hồ Chí Minh', '', 'Combo10', 150000, ''),
(3, 'Trần Đăng Nguyễn Bảo', '0328272512', '2022-07-12', '7 giờ:00 phút', '323 Xô Viết Nghệ Tĩnh, Phường 25, Q.Bình Thạnh, TP Hồ Chí Minh', '', 'Combo10', 150000, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mautoc`
--

CREATE TABLE `mautoc` (
  `id` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link_content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `mautoc`
--

INSERT INTO `mautoc` (`id`, `img`, `title`, `link_content`) VALUES
(1, 'h1.jpg', '4 mẫu tóc khi đội mũ bảo hiểm', 'https://30shine.com/discovers/14'),
(2, 'h2.jpg', 'Top 3 màu nhuộm lý tưởng', 'https://30shine.com/discovers/22'),
(3, 'h3.jpg', 'Kiểu tóc Middle Part', 'https://30shine.com/discovers/30'),
(4, 'h4.png', 'Kiểu tóc Sport nam tính', '\r\nhttps://30shine.com/kieu-toc-sport-cho-dan-ong-chuan-men'),
(5, 'h5.png', 'Các mẫu Side Part', 'https://30shine.com/Ca-si-Hoang-Dung-Cat-Toc-Tai-30Shine'),
(6, 'h6.jpg', '4 form tóc khi đội mũ bảo hiểm', 'https://30shine.com/discovers/15'),
(7, 'h7.png	', 'Mẹo để tóc hết chỉa vào trong', 'https://30shine.com/discovers/23'),
(8, 'h8.jpg', 'Tự làm tóc Dreadlock tại nhà', 'https://30shine.com/discovers/31'),
(9, 'h9.png', 'Mẹo Để Tóc Hết Chỉa Và', 'https://30shine.com/side-part-mau-nhuom-nau-khoi-2020-30shine'),
(10, 'h10.jpg', '4 mẫu tóc khi đội mũ bảo hiểm', 'https://30shine.com/Side-part-kieu-toc-phu-hop-voi-cac-ban-mat-vuong-30shine'),
(11, 'h11.jpg', 'Tự làm tóc Dreadlock tại nhà', 'https://30shine.com/discovers/16'),
(12, 'h12.jpg', 'Mẹo để tóc hết chỉa vào trong', 'https://30shine.com/discovers/24'),
(13, 'h13.jpg', 'Tự làm tóc Dreadlock tại nhà', 'https://30shine.com/30shine-concept-moi-dinh-nhu-starbucks'),
(14, 'h14.png', '4 mẫu tóc khi đội mũ bảo hiểm', 'https://30shine.com/30shine-concept-moi-dinh-nhu-starbucks'),
(15, 'h15.jpg', 'Tự làm tóc Dreadlock tại nhà', 'https://30shine.com/30shine-concept-moi-dinh-nhu-starbucks'),
(16, 'h16.jpg', 'Tự làm tóc Dreadlock tại nhà', 'https://30shine.com/30shine-concept-moi-dinh-nhu-starbucks'),
(17, 'h18.jpg', 'Mẹo Để Tóc Hết Chỉa Và', 'https://30shine.com/30shine-concept-moi-dinh-nhu-starbucks'),
(18, 'h19.jpg', 'Tự làm tóc Dreadlock tại nhà', 'https://30shine.com/30shine-concept-moi-dinh-nhu-starbucks'),
(19, 'h20.png', '4 form tóc khi đội mũ bảo hiểm', 'https://30shine.com/30shine-concept-moi-dinh-nhu-starbucks'),
(20, 'h21.jpg', 'Tự làm tóc Dreadlock tại nhà', 'https://30shine.com/30shine-concept-moi-dinh-nhu-starbucks'),
(21, 'h22.jpg', '4 form tóc khi đội mũ bảo hiểm', 'https://30shine.com/30shine-concept-moi-dinh-nhu-starbucks'),
(22, 'h23.jpg', 'Tự làm tóc Dreadlock tại nhà', 'https://30shine.com/30shine-concept-moi-dinh-nhu-starbucks'),
(23, 'h24.png', 'Tự làm tóc Dreadlock tại nhà', 'https://30shine.com/30shine-concept-moi-dinh-nhu-starbucks'),
(24, 'h25.png', 'Tự làm tóc Dreadlock tại nhà', 'https://30shine.com/30shine-concept-moi-dinh-nhu-starbucks'),
(25, 'h26.jpg', 'Tự làm tóc Dreadlock tại nhà', 'https://30shine.com/30shine-concept-moi-dinh-nhu-starbucks'),
(26, 'h27.jpg', 'Tự làm tóc Dreadlock tại nhà', ''),
(27, 'h28.jpg', 'Tự làm tóc Dreadlock tại nhà', ''),
(28, 'h29.png', 'Tự làm tóc Dreadlock tại nhà', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_type`
--

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descript` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_type`
--

INSERT INTO `product_type` (`id`, `name`, `descript`, `img`, `soluong`) VALUES
(1, 'Sản Phẩm Mới Nhất', ' Nơi chứa và hiện những sản phẩm mới nhất của hệ th…', 'item2.png', 0),
(2, 'Sản Phẩm Bán Chạy', 'Nơi chứa và hiện những sản phẩm bán chạy nhất của ...	', 'item19.jpg', 0),
(3, 'ComBo Siêu Tiết Kiệm', 'Nơi chứa và hiện những sản phẩm combo rẻ của hệ th…', 'cb1.jpg', 0),
(4, 'Chăm Sóc Cá Nhân', 'Nơi chứa và hiện những sản phẩm phục vụ cho cá nhân', 'cn1.png', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quan`
--

CREATE TABLE `quan` (
  `id` int(11) NOT NULL,
  `tenquan` varchar(255) DEFAULT NULL,
  `matp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `quan`
--

INSERT INTO `quan` (`id`, `tenquan`, `matp`) VALUES
(1, 'Quận 1', 1),
(2, 'Quận 2', 1),
(3, 'Quận 3', 1),
(4, 'Quận 4', 1),
(5, 'Quận Bình Thạnh', 1),
(6, 'Quận Phú Nhuận', 1),
(7, 'Quận Gò Vấp', 1),
(8, 'Quận Thủ Đức', 1),
(9, 'Quận Thanh Khê', 2),
(10, 'Quận Hoàn Kiếm', 3),
(11, 'Quận Cầu Giấy', 3),
(12, 'Quận Hoàng Mai', 3),
(13, 'Long Xuyên	', 4),
(14, 'TP. Vũng Tàu', 5),
(15, 'Tp. Biên Hoà', 6),
(16, 'Dĩ An	7', 7),
(17, 'Thủ Dầu Một', 7),
(18, 'Thuận An', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_cost` int(11) DEFAULT NULL,
  `product_oldcost` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `product_type` int(11) DEFAULT NULL,
  `product_img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `product_name`, `product_cost`, `product_oldcost`, `soluong`, `product_type`, `product_img`) VALUES
(1, 'Reuzel Clay Matte Pomade', 450000, 500000, 100, 1, 'item8.png '),
(2, 'Clay Spray – VU TRI BARBERSHOP ', 300000, 350000, 100, 1, 'item2.png'),
(3, 'Concrete Hold Matte Pomade', 450000, 480000, 100, 1, 'item4.png'),
(4, 'Reuzel Blue Pomade', 480000, 520000, 100, 1, 'item7.png '),
(5, 'Reuzel Extreme Hold Matte Pomade', 440000, 500000, 100, 1, 'item9.png'),
(6, 'Reuzel Hair Tonic', 480000, 500000, 100, 1, 'item10.png '),
(7, 'Reuzel Pink Pomade', 400000, 450000, 100, 1, 'item11.png '),
(8, 'Reuzel Spray Grooming Tonic', 420000, 480000, 100, 1, 'item12.png '),
(9, 'Máy sấy tóc Flyco FH6277VN 1800w ION', 399000, 459000, 100, 2, 'item18.jpg'),
(10, 'Lăn Khử Mùi Đặc Trị Perspi-Guard Maximum Streng…', 300000, 350000, 100, 2, 'item19.jpg'),
(11, 'Máy Sấy Tóc Flyco FH1610VN 2200W', 359000, 399000, 100, 2, 'item20.jpg'),
(12, 'Sữa Tắm Khử Mùi Perspi-Guard Odour Control Bod…', 250000, 280000, 100, 2, 'item21.jpg'),
(13, 'Toner Làm Dịu Da Nhạy Cảm Simple Soothing Faci…', 92000, 150000, 100, 2, 'item22.jpg'),
(14, 'Gel Rửa Mặt Simple Refreshing Facial Wash', 89000, 150000, 100, 2, 'item23.jpg'),
(15, 'Kem Dưỡng  ̉m Simple Hydrating Light Moisturiser', 99000, 150000, 100, 2, 'item24.jpg'),
(16, 'Nước Tẩy Trang Da Nhạy Cảm Simple Micellar ', 95000, 150000, 100, 2, 'item25.jpg'),
(17, 'Shimmering Shine Box - Trắng Sáng, Mờ Thâm', 299000, 345000, 100, 3, 'cb1.jpg'),
(18, 'Firming Shine Box - Trắng Da, Căng Bóng', 349000, 384000, 100, 3, 'cb2.jpg'),
(19, 'Brightening Shine Box - Trắng Mịn, Sạch Sâu', 299000, 360000, 100, 3, 'cb3.jpg'),
(20, 'Balance Skin Shine Box - Trắng Mịn, Kiềm Dầu', 399000, 449000, 100, 3, 'cb4.jpg'),
(21, 'Renewal Shine Box - Trị Mụn, Phục Hồi', 349000, 399000, 100, 3, 'cb5.jpg '),
(22, 'Smoothing Shine Box - Láng Mịn, Ẩm Mượt', 359000, 416000, 100, 3, '	cb6.jpg'),
(23, 'Regenerating Shine Box - Phục Hồi, Mịn Màng Làn Da', 349000, 399000, 100, 3, 'cb7.jpg'),
(24, 'Silky Shine Box - Trị Mụn, Cấp Ẩm', 300000, 359000, 100, 3, ' cb8.jpg'),
(25, 'Máy Cạo Râu FLYCO FS871 2 Lưỡi', 400000, 420000, 100, 4, 'cn1.png'),
(26, 'Máy Cạo Râu FLYCO FS360 3 Lưỡi', 490000, 519000, 100, 4, 'cn2.png'),
(27, 'Máy Cạo Râu FLYCO FS871 2 Lưỡi', 490000, 519000, 100, 4, 'cn3.png '),
(28, 'Máy Cạo Râu Flyco FS317VN', 549000, 560000, 100, 4, 'cn4.jpg'),
(29, 'Kem Đánh Răng Than Hoạt Tính Splat Special', 300000, 319000, 100, 4, 'cn5.png '),
(30, 'Kem Đánh Răng Thảo Mộc Splat Special Extreme White', 329000, 359000, 100, 4, 'cn6.png'),
(31, 'Kem Đánh Răng Thảo Mộc SPLAT WHITE PLUS Bảo Vệ', 99000, 119000, 100, 4, 'cn7.png'),
(32, 'Kem Đánh Răng Tẩy Trắng Eucryl Toothpaste', 120000, 139000, 100, 4, 'cn8.png '),
(33, 'Reuzel Clay Matte Pomade', 450000, 500000, 100, 1, 'item8.png '),
(34, 'Clay Spray – VU TRI BARBERSHOP ', 300000, 350000, 100, 1, 'item2.png'),
(35, 'Concrete Hold Matte Pomade', 450000, 480000, 100, 1, 'item4.png'),
(36, 'Reuzel Blue Pomade', 480000, 520000, 100, 1, 'item7.png '),
(37, 'Reuzel Extreme Hold Matte Pomade', 440000, 500000, 100, 1, 'item9.png'),
(38, 'Reuzel Hair Tonic', 480000, 500000, 100, 1, 'item10.png '),
(39, 'Reuzel Pink Pomade', 400000, 450000, 100, 1, 'item11.png '),
(40, 'Reuzel Spray Grooming Tonic', 420000, 480000, 100, 1, 'item12.png '),
(41, 'Máy sấy tóc Flyco FH6277VN 1800w ION', 399000, 459000, 100, 2, 'item18.jpg'),
(42, 'Lăn Khử Mùi Đặc Trị Perspi-Guard Maximum Streng…', 300000, 350000, 100, 2, 'item19.jpg'),
(43, 'Máy Sấy Tóc Flyco FH1610VN 2200W', 359000, 399000, 100, 2, 'item20.jpg'),
(44, 'Sữa Tắm Khử Mùi Perspi-Guard Odour Control Bod…', 250000, 280000, 100, 2, 'item21.jpg'),
(45, 'Toner Làm Dịu Da Nhạy Cảm Simple Soothing Faci…', 92000, 150000, 100, 2, 'item22.jpg'),
(46, 'Gel Rửa Mặt Simple Refreshing Facial Wash', 89000, 150000, 100, 2, 'item23.jpg'),
(47, 'Kem Dưỡng  ̉m Simple Hydrating Light Moisturiser', 99000, 150000, 100, 2, 'item24.jpg'),
(48, 'Nước Tẩy Trang Da Nhạy Cảm Simple Micellar ', 95000, 150000, 100, 2, 'item25.jpg'),
(49, 'Shimmering Shine Box - Trắng Sáng, Mờ Thâm', 299000, 345000, 100, 3, 'cb1.jpg'),
(50, 'Firming Shine Box - Trắng Da, Căng Bóng', 349000, 384000, 100, 3, 'cb2.jpg'),
(51, 'Brightening Shine Box - Trắng Mịn, Sạch Sâu', 299000, 360000, 100, 3, 'cb3.jpg'),
(52, 'Balance Skin Shine Box - Trắng Mịn, Kiềm Dầu', 399000, 449000, 100, 3, 'cb4.jpg'),
(53, 'Renewal Shine Box - Trị Mụn, Phục Hồi', 349000, 399000, 100, 3, 'cb5.jpg '),
(54, 'Smoothing Shine Box - Láng Mịn, Ẩm Mượt', 359000, 416000, 100, 3, '	cb6.jpg'),
(55, 'Regenerating Shine Box - Phục Hồi, Mịn Màng Làn Da', 349000, 399000, 100, 3, 'cb7.jpg'),
(56, 'Silky Shine Box - Trị Mụn, Cấp Ẩm', 300000, 359000, 100, 3, ' cb8.jpg'),
(57, 'Máy Cạo Râu FLYCO FS871 2 Lưỡi', 400000, 420000, 100, 4, 'cn1.png'),
(58, 'Máy Cạo Râu FLYCO FS360 3 Lưỡi', 490000, 519000, 100, 4, 'cn2.png'),
(59, 'Máy Cạo Râu FLYCO FS871 2 Lưỡi', 490000, 519000, 100, 4, 'cn3.png '),
(60, 'Máy Cạo Râu Flyco FS317VN', 549000, 560000, 100, 4, 'cn4.jpg'),
(61, 'Kem Đánh Răng Than Hoạt Tính Splat Special', 300000, 319000, 100, 4, 'cn5.png '),
(62, 'Kem Đánh Răng Thảo Mộc Splat Special Extreme White', 329000, 359000, 100, 4, 'cn6.png'),
(63, 'Kem Đánh Răng Thảo Mộc SPLAT WHITE PLUS Bảo Vệ', 99000, 119000, 100, 4, 'cn7.png'),
(64, 'Kem Đánh Răng Tẩy Trắng Eucryl Toothpaste', 120000, 139000, 100, 4, 'cn8.png '),
(65, 'Reuzel Clay Matte Pomade', 450000, 500000, 100, 1, 'item8.png '),
(66, 'Clay Spray – VU TRI BARBERSHOP ', 300000, 350000, 100, 1, 'item2.png'),
(67, 'Concrete Hold Matte Pomade', 450000, 480000, 100, 1, 'item4.png'),
(68, 'Reuzel Blue Pomade', 480000, 520000, 100, 1, 'item7.png '),
(69, 'Reuzel Extreme Hold Matte Pomade', 440000, 500000, 100, 1, 'item9.png'),
(70, 'Reuzel Hair Tonic', 480000, 500000, 100, 1, 'item10.png '),
(71, 'Reuzel Pink Pomade', 400000, 450000, 100, 1, 'item11.png '),
(72, 'Reuzel Spray Grooming Tonic', 420000, 480000, 100, 1, 'item12.png '),
(73, 'Máy sấy tóc Flyco FH6277VN 1800w ION', 399000, 459000, 100, 2, 'item18.jpg'),
(74, 'Lăn Khử Mùi Đặc Trị Perspi-Guard Maximum Streng…', 300000, 350000, 100, 2, 'item19.jpg'),
(75, 'Máy Sấy Tóc Flyco FH1610VN 2200W', 359000, 399000, 100, 2, 'item20.jpg'),
(76, 'Sữa Tắm Khử Mùi Perspi-Guard Odour Control Bod…', 250000, 280000, 100, 2, 'item21.jpg'),
(77, 'Toner Làm Dịu Da Nhạy Cảm Simple Soothing Faci…', 92000, 150000, 100, 2, 'item22.jpg'),
(78, 'Gel Rửa Mặt Simple Refreshing Facial Wash', 89000, 150000, 100, 2, 'item23.jpg'),
(79, 'Kem Dưỡng  ̉m Simple Hydrating Light Moisturiser', 99000, 150000, 100, 2, 'item24.jpg'),
(80, 'Nước Tẩy Trang Da Nhạy Cảm Simple Micellar ', 95000, 150000, 100, 2, 'item25.jpg'),
(81, 'Shimmering Shine Box - Trắng Sáng, Mờ Thâm', 299000, 345000, 100, 3, 'cb1.jpg'),
(82, 'Firming Shine Box - Trắng Da, Căng Bóng', 349000, 384000, 100, 3, 'cb2.jpg'),
(83, 'Brightening Shine Box - Trắng Mịn, Sạch Sâu', 299000, 360000, 100, 3, 'cb3.jpg'),
(84, 'Balance Skin Shine Box - Trắng Mịn, Kiềm Dầu', 399000, 449000, 100, 3, 'cb4.jpg'),
(85, 'Renewal Shine Box - Trị Mụn, Phục Hồi', 349000, 399000, 100, 3, 'cb5.jpg '),
(86, 'Smoothing Shine Box - Láng Mịn, Ẩm Mượt', 359000, 416000, 100, 3, '	cb6.jpg'),
(87, 'Regenerating Shine Box - Phục Hồi, Mịn Màng Làn Da', 349000, 399000, 100, 3, 'cb7.jpg'),
(88, 'Silky Shine Box - Trị Mụn, Cấp Ẩm', 300000, 359000, 100, 3, ' cb8.jpg'),
(89, 'Máy Cạo Râu FLYCO FS871 2 Lưỡi', 400000, 420000, 100, 4, 'cn1.png'),
(90, 'Máy Cạo Râu FLYCO FS360 3 Lưỡi', 490000, 519000, 100, 4, 'cn2.png'),
(91, 'Máy Cạo Râu FLYCO FS871 2 Lưỡi', 490000, 519000, 100, 4, 'cn3.png '),
(92, 'Máy Cạo Râu Flyco FS317VN', 549000, 560000, 100, 4, 'cn4.jpg'),
(93, 'Kem Đánh Răng Than Hoạt Tính Splat Special', 300000, 319000, 100, 4, 'cn5.png '),
(94, 'Kem Đánh Răng Thảo Mộc Splat Special Extreme White', 329000, 359000, 100, 4, 'cn6.png'),
(95, 'Kem Đánh Răng Thảo Mộc SPLAT WHITE PLUS Bảo Vệ', 99000, 119000, 100, 4, 'cn7.png'),
(96, 'Kem Đánh Răng Tẩy Trắng Eucryl Toothpaste', 120000, 139000, 100, 4, 'cn8.png ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhpho`
--

CREATE TABLE `thanhpho` (
  `id` int(11) NOT NULL,
  `thanhpho` varchar(255) DEFAULT NULL,
  `sochinhanh` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thanhpho`
--

INSERT INTO `thanhpho` (`id`, `thanhpho`, `sochinhanh`) VALUES
(1, 'Tp. Hồ Chí Minh', 24),
(2, 'Đà Nẵng', 5),
(3, 'Hà Nội', 16),
(4, 'An Giang', 5),
(5, 'Vũng Tàu', 5),
(6, 'Đồng Nai', 5),
(7, 'Bình Dương', 7),
(8, 'Tp. Hồ Chí Minh', 24),
(9, 'Đà Nẵng', 5),
(10, 'Hà Nội', 16),
(11, 'An Giang', 5),
(12, 'Vũng Tàu', 5),
(13, 'Đồng Nai', 5),
(14, 'Bình Dương', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video_gioithieu`
--

CREATE TABLE `video_gioithieu` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `link_video` varchar(255) DEFAULT NULL,
  `show_width` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `video_gioithieu`
--

INSERT INTO `video_gioithieu` (`id`, `title`, `content`, `img`, `link_video`, `show_width`) VALUES
(1, 'BẠN SINH VIÊN IT LỘT XÁC THÀNH HOT BOY VẠN NGƯỜI M...', 'Ai nghĩ sinh viên IT là người xuề xoà, không quá q...', 'h1.jpg', 'https://www.youtube.com/watch?v=m23tHreFffA', 2),
(2, 'PHÚC LỘT XÁC MÁI TÓC ĐỂ SUỐT BAO NĂM GIÚP NGOẠI HÌ...', 'Thay đổi kiểu tóc đã để suốt bao năm là một quyết ...', 'h2.jpg', 'https://www.youtube.com/watch?v=S2bVJbLCUQk', 2),
(3, 'Diễn viên Chung Super lột xác để chuẩn bị bộ phim', 'Vai diễn mới đòi hỏi Chung Super một tạo hình mới....', 'h3.jpg', 'https://www.youtube.com/watch?v=UYYE-c6LLXo', 3),
(4, 'Kiểu tóc mới cho tác phẩm solo đầu tay của rapper', '	Rapper trẻ RTEE sắp ra mắt tác phẩm solo đầu tay.', 'h4.jpg', 'https://www.youtube.com/watch?v=gpWkrf7FzDA', 3),
(5, 'Top những kiểu tóc kinh điển của Tronie Ngô', 'Ngoại hình khỏe khoắn và năng động của Tronie Ngô', 'h5.jpg', 'https://www.youtube.com/watch?v=BUFSmCsOXeE', 3),
(6, 'Diễn viên Hoàng Phi Kha lột xác cho vai diễn mới', 'Vẻ nam thần điển trai của Hoàng Phi Kha được thể h...', 'h6.jpg', 'https://www.youtube.com/watch?v=bagH7DpydZ0', 3),
(7, 'Thay đổi ngoại hình, chàng trai lạnh lùng, ít nói', 'Hiếu từng nghĩ đàn ông không cần quá quan tâm đến ...', 'h7.jpg', 'https://30shine.com/short-quiff-nhuom-nau-khoi-hot...', 3),
(8, 'Can đảm thay đổi mái tóc 7 năm, nam sinh Kiến Trúc...', 'Anh bạn sinh viên Kiến Trúc đắn đo rất nhiều về vi...', 'h8.jpg', 'https://www.youtube.com/watch?v=MccG8Gf6Oc4', 3),
(9, 'Mặt tròn để kiểu tóc này như An Nguyễn thì siêu hợ...', '	Nhiều người nghĩ mặt tròn khó tạo kiểu nhưng bạn s...', 'h9.jpg', 'https://www.youtube.com/watch?v=jSMy1NDt2Og', 3),
(10, 'Bạn sinh viên đại học QGHN đổi kiểu tóc.', '	Nam sinh đại học QGHN đã có màn lột xác cực kì ấn ...', '	h10.jpg	', 'https://www.youtube.com/watch?v=XBwFe2REmIw', 3),
(11, 'Lột xác anh bạn nghiện học quên mình thành', 'Quá chú tâm vào việc học nên Minh Quốc quên mất vi..', '	h11.jpg', 'https://www.youtube.com/watch?v=KMMOsLug8EM&list=P...', 3),
(12, 'Hiếu Xù từ bỏ biệt danh sau màn lột xác cực kì ngo...', 'Hiếu đã biết mình phải làm gì kể từ khi gặp Kim An...', 'h12.jpg', 'Hiếu đã biết mình phải làm gì kể từ khi gặp Kim An...', 2),
(13, 'ĐẠT ĐÃ THAY ĐỔI KIỂU TÓC GÌ KHIẾN CƠ HỘI NGÀY CÀNG...', 'Vì công việc mới đòi hỏi giao tiếp với khách hàng ...', 'h14.jpg', 'Vì công việc mới đòi hỏi giao tiếp với khách hàng ...', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `calam`
--
ALTER TABLE `calam`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chinhanh`
--
ALTER TABLE `chinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id_giohang`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `lichhen`
--
ALTER TABLE `lichhen`
  ADD PRIMARY KEY (`id_lichhen`);

--
-- Chỉ mục cho bảng `mautoc`
--
ALTER TABLE `mautoc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quan`
--
ALTER TABLE `quan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thanhpho`
--
ALTER TABLE `thanhpho`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `video_gioithieu`
--
ALTER TABLE `video_gioithieu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `calam`
--
ALTER TABLE `calam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `chinhanh`
--
ALTER TABLE `chinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id_giohang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `lichhen`
--
ALTER TABLE `lichhen`
  MODIFY `id_lichhen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `mautoc`
--
ALTER TABLE `mautoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `quan`
--
ALTER TABLE `quan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `thanhpho`
--
ALTER TABLE `thanhpho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `video_gioithieu`
--
ALTER TABLE `video_gioithieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
