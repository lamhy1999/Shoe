-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 02, 2020 lúc 07:36 AM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shoe`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`username`, `name`, `email`, `phone`, `address`, `password`) VALUES
('Admin', 'Admin', 'admin@gmail.com', '0868313206', 'HCM', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_banner`
--

INSERT INTO `tbl_banner` (`id`, `title`, `image`, `active`) VALUES
(1, 'Banner 2', 'sl3.jpg', 1),
(2, 'Đăng ký thành viên', 'slideshow_3.jpg', 1),
(3, '1', 'cap-nhat-nhung-mau-yeezy-moi-nhat-2019.png', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `content`) VALUES
(6, 'standard', ''),
(7, 'nike', ''),
(9, 'Converse', ''),
(10, 'Vans', ''),
(11, 'adidas', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id` int(11) NOT NULL,
  `idproduct` int(11) NOT NULL,
  `namemember` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_img_product`
--

CREATE TABLE `tbl_img_product` (
  `idpost` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uploaded_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_img_product`
--

INSERT INTO `tbl_img_product` (`idpost`, `id_product`, `file_name`, `uploaded_on`) VALUES
(43, 80, 'adidas-ultra-boost-20-consotium-all-white-reflective.jpg', '2020-12-02 00:22:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_oder`
--

CREATE TABLE `tbl_oder` (
  `id` int(11) UNSIGNED NOT NULL,
  `diachi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tongtien` float NOT NULL,
  `tenkhachhang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinhthuc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tinhtrang` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_oder`
--

INSERT INTO `tbl_oder` (`id`, `diachi`, `tongtien`, `tenkhachhang`, `email`, `phone`, `note`, `hinhthuc`, `tinhtrang`) VALUES
(1, '123', 25000, '123', 'truongcongloi1998@gm', '123', '123', 'Thanh toán tại cửa hàng', 'Thành công'),
(4, '21', 900000, '123', '123@gmail.com', '1123123123', '213', 'Thanh toán tại cửa hàng', 'Chờ duyệt'),
(5, 'tphcm', 900000, 'lamthanhhy', 'lamphong331@gmail.co', '0948487498', 'ddddd', 'Thanh toán tại cửa hàng', 'Chờ duyệt'),
(6, 'hcm', 0, 'hycute', 'lamthanhhy@gmail.com', '0948487498', 'crrcrcr', 'Thanh toán tại cửa hàng', 'Chờ duyệt'),
(7, 'hcm', 0, 'meo', 'meo@gmail.com', '0948487498', 'efefe', 'Thanh toán tại cửa hàng', 'Chờ duyệt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_oder_detail`
--

CREATE TABLE `tbl_oder_detail` (
  `maOder` int(10) UNSIGNED NOT NULL,
  `idproduct` int(10) UNSIGNED NOT NULL,
  `soluong` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_oder_detail`
--

INSERT INTO `tbl_oder_detail` (`maOder`, `idproduct`, `soluong`) VALUES
(1, 74, 1),
(1, 48, 1),
(2, 73, 4),
(3, 72, 5),
(4, 63, 10),
(5, 72, 1),
(6, 79, 2),
(7, 78, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_session`
--

CREATE TABLE `tbl_order_session` (
  `id` int(11) NOT NULL,
  `idproduct` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_session`
--

INSERT INTO `tbl_order_session` (`id`, `idproduct`, `name`, `color`, `size`) VALUES
(76, 123, 'LEXEBE 2', 'Black', 'L'),
(77, 72, 'LEXEBE 2', 'Blue', 'M'),
(78, 72, 'LEXEBE 2', 'Blue', 'M'),
(79, 72, 'LEXEBE 2', 'Blue', 'M'),
(80, 72, 'LEXEBE 2', 'Black', 'L');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `sale` int(11) DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uploaded_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `code`, `price`, `amount`, `image`, `category`, `detail`, `sale`, `description`, `uploaded_on`) VALUES
(81, 'Air Force 1 Shadow ', 'Air Force 1 Shadow ', 3500, 0, 'Air Force 1 Shadow 3tr.jpg', '7', '<p><br />\r\n<strong>Notice</strong>: Undefined index: chitiet in <strong>C:xampphtdocsshoeadminpageschange_product.php</strong> on line <strong>44</strong></p>\r\n', 3000, '<br />\r\n<b>Notice</b>:  Undefined index: mota in <b>C:xampphtdocsshoeadminpageschange_product.php</b> on line <b>42</b><br />\r\n', '2020-12-02 11:25:10'),
(82, 'AF1 Shadow White Glacier Blue Ghos ', 'AF1 Shadow White Glacier Blue Ghos ', 3650000, 10, 'AF1 Shadow White Glacier Blue Ghos 3650.jpg', '7', '', 3500000, 'Đẹp chất Thoải Mái', '2020-12-02 10:35:46'),
(83, 'Air Force 1 Shadow ', 'Air Force 1 Shadow ', 2500000, 10, 'Air Force 1 Shadow 2tr3.jpg', '7', '', 2300000, 'Đẹp', '2020-12-02 10:36:40'),
(84, 'Giay_Continental_80_trang_G27706_01_standard', 'Giay_Continental_80_trang_G27706_01_standard', 4000000, 10, 'Giay_Continental_80_trang_G27706_01_standard.jpg', '6', '', 3500000, 'Đẹp', '2020-12-02 10:37:41'),
(87, 'vans-checkerboard', 'vans-checkerboard', 5000000, 10, 'vans-checkerboard-slip-on-classic-white-black-vn000eyebww-1.png', '10', '', 4500000, 'đẹp', '2020-12-02 10:41:02'),
(88, 'vans-classic', 'vans-classic', 5600000, 10, 'vans-classic-slip-on-true-white-vn000eyew00-1.png', '10', '', 5200000, 'đẹp', '2020-12-02 10:42:19'),
(89, 'GUAVA ICE', 'GUAVA ICE', 6500000, 10, 'GUAVA ICE 6tr.jpg', '11', '', 6000000, 'đẹp', '2020-12-02 11:24:42'),
(90, ' Converse Chuck Taylor ', ' Converse Chuck Taylor ', 5200000, 10, 'converse-chuck-taylor-all-star-high-top-unisex-shoe-xX439O.jpg', '9', '', 4900000, 'đẹp', '2020-12-02 11:28:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(50) UNSIGNED NOT NULL,
  `ten` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(50) NOT NULL,
  `diachi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_img_product`
--
ALTER TABLE `tbl_img_product`
  ADD PRIMARY KEY (`idpost`);

--
-- Chỉ mục cho bảng `tbl_oder`
--
ALTER TABLE `tbl_oder`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order_session`
--
ALTER TABLE `tbl_order_session`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_img_product`
--
ALTER TABLE `tbl_img_product`
  MODIFY `idpost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `tbl_order_session`
--
ALTER TABLE `tbl_order_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
