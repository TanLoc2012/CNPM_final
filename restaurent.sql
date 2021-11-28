-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 24, 2021 lúc 09:14 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `restaurent`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(108, 'Món nước'),
(109, 'Món nướng'),
(110, 'Món chay'),
(111, 'Món kho'),
(112, 'Thức uống'),
(113, 'Ăn vặt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `note` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `note`, `user_id`, `product_id`, `created_at`, `updated_at`, `status`) VALUES
(39, 'Ngon', 36, 50, '2021-11-17 18:15:49', '2021-11-17 18:15:49', 0),
(40, '', 36, 52, '2021-11-19 05:12:42', '2021-11-19 05:12:42', 0),
(41, 'ngon', 36, 52, '2021-11-19 05:19:50', '2021-11-19 05:19:50', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `total_money` int(11) NOT NULL,
  `table_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `fullname`, `email`, `phone`, `user_id`, `status`, `deleted`, `address`, `created_at`, `total_money`, `table_id`) VALUES
(29, 'Nguyễn Tấn Lộc', 'loc.nguyencse2@gmail.com', '0347651292', 36, 3, 0, '462 trần hưng đạo phường 2 quận 5', '2021-10-17 07:46:04', 90000, 0),
(30, 'Nguyễn Tấn Lộc', 'loc.nguyencse2@gmail.com', '0347651292', 36, 3, 0, '462 trần hưng đạo phường 2 quận 5', '2021-09-17 12:07:25', 90000, 0),
(31, 'Nguyễn', 'loc.nguyencse1@gmail.com', '0347651292', 37, 3, 0, '462 trần hưng đạo phường 2 quận 5', '2021-08-17 23:40:56', 495000, 0),
(32, 'Tấn Lộc', 'loc.nguyencse3@gmail.com', '0347651292', 37, 3, 0, '462 trần hưng đạo phường 2 quận 5', '2021-11-17 23:59:30', 215000, 0),
(33, 'Nguyễn Tấn Lộc', 'loc.nguyencse@gmail.com', '0347651292', 37, 3, 0, '462 trần hưng đạo phường 2 quận 5', '2021-12-17 18:07:30', 1315000, 0),
(34, 'Nguyễn Tấn Lộc', 'loc.nguyencse2@gmail.com', '0347651292', 37, 3, 0, '462 trần hưng đạo phường 2 quận 5', '2021-07-17 18:07:56', 465000, 0),
(35, 'Nguyễn Tấn Lộc', 'admin@gmail.com', '0347651292', 37, 3, 0, '462 trần hưng đạo phường 2 quận 5', '2021-06-17 18:08:20', 120000, 0),
(36, 'Nguyễn Tấn Lộc', 'loc.nguyencse2@gmail.com', '0347651292', 37, 3, 0, '462 trần hưng đạo phường 2 quận 5', '2021-05-17 18:08:46', 1170000, 0),
(37, 'Nguyễn Tấn Lộc', 'loc.nguyencse2@gmail.com', '0347651292', 37, 3, 0, '462 trần hưng đạo phường 2 quận 5', '2021-04-17 18:09:28', 430000, 0),
(38, 'Nguyễn Tấn Lộc', 'ntnlc81@yahoo.com', '0347651292', 37, 3, 0, '462 trần hưng đạo phường 2 quận 5', '2021-03-17 18:09:47', 495000, 0),
(39, 'Nguyễn Tấn Lộc', 'ntnlc81@yahoo.com', '0347651292', 37, 3, 0, '462 trần hưng đạo phường 2 quận 5', '2021-02-17 18:09:47', 495000, 0),
(40, 'Nguyễn Tấn Lộc', 'loc.nguyencse@gmail.com', '0347651292', 37, 3, 0, '462 trần hưng đạo phường 2 quận 5', '2021-01-17 18:10:11', 45000, 0),
(41, 'Nguyễn Tấn Lộc', 'loc.nguyencse@gmail.com', '0347651292', 36, 1, 0, '462 trần hưng đạo phường 2 quận 5', '2021-11-19 05:20:08', 75000, 0),
(42, 'Nguyễn Tấn Lộc', 'loc.nguyencse@gmail.com', '0347651292', 36, 1, 0, '462 trần hưng đạo phường 2 quận 5', '2021-11-19 11:21:03', 340000, 0),
(43, 'Nguyễn Tấn Lộc', 'ntnlc81@yahoo.com', '0347651292', 36, 2, 0, '462 trần hưng đạo phường 2 quận 5', '2021-11-19 11:23:46', 120000, 0),
(44, 'Nguyễn Tấn Lộc', 'loc.nguyencse@gmail.com', '0347651292', 36, 3, 0, '462 trần hưng đạo phường 2 quận 5', '2021-11-19 06:02:01', 75000, 16),
(45, 'Nguyễn Tấn Lộc', 'loc.nguyencse1@gmail.com', '0347651292', 36, 3, 0, '462 trần hưng đạo phường 2 quận 5', '2021-11-19 06:05:42', 245000, 5),
(46, 'Nguyễn Tấn Lộc', 'loc.nguyencse@gmail.com', '0347651292', 36, 2, 0, '462 trần hưng đạo phường 2 quận 5', '2021-11-19 12:09:41', 135000, 0),
(47, 'Nguyễn Tấn Lộc', 'loc.nguyencse1@gmail.com', '0347651292', 36, 3, 0, '462 trần hưng đạo phường 2 quận 5', '2021-11-19 12:10:27', 185000, 20),
(48, 'Nguyễn Tấn Lộc', 'loc.nguyencse1@gmail.com', '0347651292', 36, 2, 0, '462 trần hưng đạo phường 2 quận 5', '2021-11-19 06:21:58', 30000, 0),
(49, 'Nguyễn Tấn Lộc', 'loc.nguyencse1@gmail.com', '0347651292', 36, 0, 0, '462 trần hưng đạo phường 2 quận 5', '2021-11-19 15:31:50', 380000, 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `total_money` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `price`, `num`, `total_money`) VALUES
(54, 29, 50, 45000, 1, 45000),
(55, 29, 52, 45000, 1, 45000),
(56, 30, 50, 45000, 1, 45000),
(57, 30, 52, 45000, 1, 45000),
(58, 31, 52, 45000, 1, 45000),
(59, 31, 54, 275000, 1, 275000),
(60, 31, 55, 175000, 1, 175000),
(61, 32, 49, 50000, 1, 50000),
(62, 32, 50, 45000, 1, 45000),
(63, 32, 58, 50000, 1, 50000),
(64, 32, 59, 70000, 1, 70000),
(65, 32, 55, 175000, 1, 175000),
(66, 32, 56, 175000, 3, 525000),
(67, 32, 57, 75000, 2, 150000),
(68, 32, 59, 70000, 2, 140000),
(69, 32, 62, 175000, 1, 175000),
(70, 32, 63, 150000, 1, 150000),
(71, 33, 53, 70000, 3, 210000),
(72, 33, 60, 30000, 1, 30000),
(73, 33, 63, 150000, 1, 150000),
(74, 33, 65, 75000, 1, 75000),
(75, 33, 51, 30000, 1, 30000),
(76, 33, 52, 45000, 2, 90000),
(77, 33, 49, 50000, 1, 50000),
(78, 33, 51, 30000, 1, 30000),
(79, 33, 54, 275000, 2, 550000),
(80, 33, 55, 175000, 2, 350000),
(81, 33, 59, 70000, 1, 70000),
(82, 33, 61, 120000, 1, 120000),
(83, 33, 49, 50000, 1, 50000),
(84, 33, 51, 30000, 1, 30000),
(85, 33, 54, 275000, 1, 275000),
(86, 33, 57, 75000, 1, 75000),
(87, 33, 53, 70000, 1, 70000),
(88, 33, 55, 175000, 1, 175000),
(89, 33, 58, 50000, 1, 50000),
(90, 33, 61, 120000, 1, 120000),
(91, 33, 68, 50000, 1, 50000),
(92, 33, 72, 30000, 1, 30000),
(93, 33, 50, 45000, 1, 45000),
(94, 41, 51, 30000, 1, 30000),
(95, 41, 52, 45000, 1, 45000),
(96, 42, 49, 50000, 1, 50000),
(97, 42, 50, 45000, 1, 45000),
(98, 42, 53, 70000, 1, 70000),
(99, 42, 55, 175000, 1, 175000),
(100, 43, 50, 45000, 1, 45000),
(101, 43, 51, 30000, 1, 30000),
(102, 43, 52, 45000, 1, 45000),
(103, 44, 51, 30000, 1, 30000),
(104, 44, 52, 45000, 1, 45000),
(105, 45, 51, 30000, 1, 30000),
(106, 45, 52, 45000, 1, 45000),
(107, 45, 53, 70000, 1, 70000),
(108, 45, 59, 70000, 1, 70000),
(109, 45, 60, 30000, 1, 30000),
(110, 46, 50, 45000, 1, 45000),
(111, 46, 52, 45000, 2, 90000),
(112, 47, 49, 50000, 1, 50000),
(113, 47, 50, 45000, 2, 90000),
(114, 47, 52, 45000, 1, 45000),
(115, 48, 51, 30000, 1, 30000),
(116, 49, 49, 350000, 1, 350000),
(117, 49, 51, 30000, 1, 30000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `money` float NOT NULL COMMENT 'số tiền thanh toán',
  `note` varchar(255) DEFAULT NULL COMMENT 'ghi chú thanh toán',
  `vnp_response_code` varchar(255) NOT NULL COMMENT 'mã phản hồi',
  `code_vnpay` varchar(255) NOT NULL COMMENT 'mã giao dịch vnpay',
  `code_bank` varchar(255) NOT NULL COMMENT 'mã ngân hàng',
  `time` datetime NOT NULL COMMENT 'thời gian chuyển khoản'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `user_id`, `money`, `note`, `vnp_response_code`, `code_vnpay`, `code_bank`, `time`) VALUES
(7, 2147483647, 36, 170000, 'Noi dung thanh toan', '00', '13629337', 'NCB', '2021-11-17 20:00:00'),
(8, 2147483647, 37, 585000, 'Noi dung thanh toan', '00', '13629339', 'NCB', '2021-11-17 21:00:00'),
(9, 2147483647, 37, 1040000, 'Noi dung thanh toan', '00', '13629346', 'NCB', '2021-11-17 21:00:00'),
(10, 2147483647, 36, 495000, 'Noi dung thanh toan', '00', '13629449', 'NCB', '2021-11-17 23:00:00'),
(11, 2147483647, 36, 495000, 'Noi dung thanh toan', '00', '13629449', 'NCB', '2021-11-17 23:00:00'),
(12, 2147483647, 36, 495000, 'Noi dung thanh toan', '00', '13629449', 'NCB', '2021-11-17 23:00:00'),
(13, 2147483647, 36, 495000, 'Noi dung thanh toan', '00', '13629449', 'NCB', '2021-11-17 23:00:00'),
(14, 2147483647, 36, 495000, 'Noi dung thanh toan', '00', '13629449', 'NCB', '2021-11-17 23:00:00'),
(15, 2147483647, 36, 495000, 'Noi dung thanh toan', '00', '13629449', 'NCB', '2021-11-17 23:00:00'),
(16, 2147483647, 37, 215000, 'Noi dung thanh toan', '00', '13629457', 'NCB', '2021-11-18 00:00:00'),
(17, 2147483647, 37, 215000, 'Noi dung thanh toan', '00', '13629457', 'NCB', '2021-11-18 00:00:00'),
(18, 2147483647, 37, 215000, 'Noi dung thanh toan', '00', '13629457', 'NCB', '2021-11-18 00:00:00'),
(19, 2147483647, 36, 21990000, 'Noi dung thanh toan1', '00', '13629463', 'NCB', '2021-11-18 00:00:00'),
(20, 2147483647, 36, 36480000, 'Noi dung thanh toan', '00', '13629466', 'NCB', '2021-11-18 00:00:00'),
(23, 2147483647, 36, 120000, 'a', '00', '13631577', 'NCB', '2021-11-19 11:00:00'),
(24, 2147483647, 36, 185000, '2', '00', '13631667', 'NCB', '2021-11-19 12:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `thumbnail` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `category_id`, `title`, `price`, `discount`, `thumbnail`, `description`, `created_at`, `updated_at`, `deleted`) VALUES
(49, 108, 'Mì kim chi chua cay', 350000, 0, 'https://cdn.tgdd.vn/2021/11/CookDishThumb/cach-nau-mi-kim-chi-chua-cay-dam-vi-sieu-nhanh-chong-ngay-tai-thumb-620x620.jpg', '', NULL, NULL, 0),
(50, 108, 'Bún riêu cua ốc', 45000, 50000, 'https://cdn.tgdd.vn/2021/04/CookProductThumb/thum-1-620x620-18.jpg', 'Bún riêu cua ốc', NULL, NULL, 0),
(51, 108, 'Hủ tiếu', 30000, 35000, 'https://cdn.tgdd.vn/2021/11/CookDishThumb/cach-nau-hu-tieu-sa-te-voi-bo-vien-cho-bua-sang-thom-ngon-thumb-620x620.jpg', 'Hủ tiếu', NULL, NULL, 0),
(52, 108, 'Phở nạm bò', 45000, 50000, 'https://cdn.tgdd.vn/2021/10/CookDishThumb/cach-nau-pho-nam-bo-thom-lung-dam-vi-cuc-don-gian-tai-nha-thumb-620x620.jpg', 'Phở nạm bò', NULL, NULL, 0),
(53, 109, 'Mực nướng', 70000, 80000, 'https://cdn.tgdd.vn/2021/11/CookDishThumb/tong-hop-5-cach-nuong-muc-bang-lo-nuong-dai-ngon-hap-dan-thumb-620x620.jpg', 'Mực nướng', NULL, NULL, 0),
(54, 109, 'Vịt nướng', 275000, 0, 'https://cdn.tgdd.vn/2021/11/CookDishThumb/2-cach-lam-vit-nuong-bang-lo-vi-song-thom-ngon-dam-vi-don-thumb-620x620.jpg', 'Vịt nướng', NULL, NULL, 0),
(55, 109, 'Thịt heo nướng', 175000, 190000, 'https://cdn.tgdd.vn/2021/11/CookDishThumb/cach-lam-thit-heo-nuong-sa-thom-ngon-hap-dan-ai-cung-lam-duoc-thumb-620x620.jpg', 'Thịt heo nướng', NULL, NULL, 0),
(56, 109, 'Cá basa nướng mỡ hàng', 175000, 0, 'https://cdn.tgdd.vn/2021/11/CookDishThumb/cach-lam-ca-saba-nuong-giay-bac-mo-hanh-thom-lung-mem-ngon-thumb-620x620.jpg', 'Cá basa nướng mỡ hàng', NULL, NULL, 0),
(57, 110, 'Chả giò chay', 75000, 80000, 'https://cdn.tgdd.vn/2021/11/CookDishThumb/cach-lam-cha-gio-chay-tu-dau-tuong-sieu-de-dang-lai-la-mieng-thumb-620x620.jpg', 'Chả giò chay', NULL, NULL, 0),
(58, 110, 'Bún mọc chay', 50000, 60000, 'https://cdn.tgdd.vn/2021/01/CookProductThumb/CachNauBunMocBacHaChayBunMocDocMungChayByDuyensKitchenGhiennauan0-3screenshot620-620x620.jpg', 'Bún mọc chay', NULL, NULL, 0),
(59, 110, 'Bún riêu chay', 70000, 75000, 'https://cdn.tgdd.vn/2020/08/CookProductThumb/thumbnew-620x620-3.jpg', 'Bún riêu chay', NULL, NULL, 0),
(60, 110, 'Ớt chuông xào chay', 30000, 0, 'https://cdn.tgdd.vn/2021/10/CookDishThumb/cach-lam-muc-xao-ot-chuong-don-gian-gion-ngon-cho-ca-gia-dinh-thumb-620x620.jpg', 'Ớt chuông xào chay', NULL, NULL, 0),
(61, 111, 'Cá sặc kho tiêu', 120000, 150000, 'https://cdn.tgdd.vn/2021/10/CookDishThumb/cach-lam-ca-sac-kho-tieu-thom-lung-dan-da-cho-bua-com-nha-thumb-620x620.jpg', 'Cá sặc kho tiêu', NULL, NULL, 0),
(62, 111, 'Cá thu rim mắm tỏi', 175000, 200000, 'https://cdn.tgdd.vn/2021/11/CookDishThumb/cach-lam-ca-thu-chien-nuoc-mam-thom-ngon-dam-vi-cuc-bat-com-thumb-620x620.jpg', 'Cá thu rim mắm tỏi', NULL, NULL, 0),
(63, 111, 'Cá lóc kho sả', 150000, 0, 'https://cdn.tgdd.vn/2021/11/CookDishThumb/cach-lam-ca-loc-kho-sa-thom-ngon-hap-dan-dam-da-huong-vi-bua-thumb-620x620.jpg', 'Cá lóc kho sả', NULL, NULL, 0),
(64, 111, 'Cá bạc má kho tiêu', 90000, 100000, 'https://cdn.tgdd.vn/2021/11/CookDishThumb/cach-lam-ca-bac-ma-kho-tieu-thom-ngon-dam-da-hap-dan-thumb-620x620.jpg', 'Cá bạc má kho tiêu', NULL, NULL, 0),
(65, 112, 'Cà phe cappuccino', 75000, 80000, 'https://cdn.tgdd.vn/2021/10/CookDishThumb/2-cach-pha-ca-phe-capuccino-nescafe-tequila-va-ca-phe-dua-thumb-620x620.jpg', 'Cà phe cappuccino', NULL, NULL, 0),
(66, 112, 'Soda', 45000, 0, 'https://cdn.tgdd.vn/2021/11/CookDishThumb/7-cach-pha-pha-soda-tu-7up-giup-giai-khat-ngay-he-cuc-don-thumb-620x620.jpg', 'Soda', NULL, NULL, 0),
(67, 112, 'Hồng trà sữa', 45000, 0, 'https://cdn.tgdd.vn/2021/11/CookDishThumb/4-cach-pha-hong-tra-thom-ngon-hap-dan-don-gian-tai-nha-thumb-620x620.jpg', 'Hồng trà sữa', NULL, NULL, 0),
(68, 112, 'Cà phê', 50000, 0, 'https://cdn.tgdd.vn/2021/10/CookDishThumb/2-cach-lam-ca-phe-cot-dua-va-ca-phe-sua-dua-beo-ngay-thom-thumb-620x620.jpg', 'Cà phê', NULL, NULL, 0),
(69, 113, 'Cóc ngâm chua', 30000, 0, 'https://cdn.tgdd.vn/2021/11/CookDishThumb/cach-lam-cach-lam-coc-bao-tu-ngam-chua-ngot-don-gian-thumb-620x620.jpg', 'Cóc ngâm chua', NULL, NULL, 0),
(70, 113, 'Chân gà sả tắc', 80000, 0, 'https://cdn.tgdd.vn/2021/09/CookDishThumb/3-cach-lam-chan-ga-sa-tac-gion-dam-vi-khong-the-cuong-lai-thumb-620x620.jpg', 'Chân gà sả tắc', NULL, NULL, 0),
(71, 113, 'Tàu hủ', 30000, 0, 'https://cdn.tgdd.vn/2021/08/CookProductThumb/Untitled-5-620x620.jpg', 'Tàu hủ', NULL, NULL, 0),
(72, 113, 'Bánh chuối yến mạch', 30000, 35000, 'https://cdn.tgdd.vn/2021/11/CookDishThumb/cach-lam-banh-chuoi-yen-mach-giam-can-cuc-don-gian-vua-ngon-thumb-620x620.jpg', 'Bánh chuối yến mạch', NULL, NULL, 0),
(73, 108, 'Mì hoành thánh', 45000, 45000, 'https://cdn.tgdd.vn/2021/11/CookDishThumb/cach-nau-mi-hoanh-thanh-cuc-ngon-tai-nha-cho-bua-sang-day-thumb-620x620-1.png', 'Mì hoành thánh', NULL, NULL, 0),
(74, 108, 'Bánh canh bột lọc', 35000, 45000, 'https://cdn.tgdd.vn/2021/11/CookDishThumb/cach-nau-banh-canh-bot-loc-xuong-heo-ngon-ngot-hap-dan-tai-thumb-620x620-1.png', 'Bánh canh bột lọc', NULL, NULL, 0),
(75, 108, 'Mì Kitsune Udon', 55000, 60000, 'https://cdn.tgdd.vn/2021/10/CookDishThumb/cach-nau-mi-kitsune-udon-udon-dau-hu-chien-thumb-620x620.jpg', 'Mì Kitsune Udon', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'User'),
(2, 'Admin'),
(3, 'staff'),
(4, 'chef');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_reservation`
--

CREATE TABLE `table_reservation` (
  `id` int(11) NOT NULL,
  `note` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `table_reservation`
--

INSERT INTO `table_reservation` (`id`, `note`, `status`) VALUES
(0, 'Không đặt chỗ', 0),
(1, 'Bàn 1(bàn lớn) - 12 chỗ ngồi', 0),
(2, 'Bàn 2(bàn lớn) - 12 chỗ ngồi', 0),
(3, 'Bàn 3(bàn lớn) - 12 chỗ ngồi', 0),
(4, 'Bàn 4(bàn vừa) - 8 chỗ ngồi', 0),
(5, 'Bàn 5(bàn vừa) - 8 chỗ ngồi', 0),
(6, 'Bàn 6(bàn vừa) - 8 chỗ ngồi', 0),
(7, 'Bàn 7(bàn nhỏ) - 4 chỗ ngồi', 0),
(8, 'Bàn 8(bàn nhỏ) - 4 chỗ ngồi', 0),
(9, 'Bàn 9(bàn nhỏ) - 4 chỗ ngồi', 0),
(10, 'Bàn 10(bàn nhỏ) - 4 chỗ ngồi', 0),
(11, 'Bàn 11(bàn nhỏ) - 4 chỗ ngồi', 0),
(12, 'Bàn 12(bàn nhỏ) - 4 chỗ ngồi', 0),
(13, 'Bàn 13(bàn nhỏ) - 4 chỗ ngồi', 0),
(14, 'Bàn 14(bàn nhỏ) - 4 chỗ ngồi', 0),
(15, 'Bàn 15(bàn nhỏ) - 4 chỗ ngồi', 1),
(16, 'Bàn 16(bàn đôi) - 2 chỗ ngồi', 0),
(17, 'Bàn 17(bàn đôi) - 2 chỗ ngồi', 0),
(18, 'Bàn 18(bàn đôi) - 2 chỗ ngồi', 0),
(19, 'Bàn 19(bàn đôi) - 2 chỗ ngồi', 0),
(20, 'Bàn 20(bàn đôi) - 2 chỗ ngồi', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tokens`
--

CREATE TABLE `tokens` (
  `user_id` int(11) NOT NULL,
  `token` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tokens`
--

INSERT INTO `tokens` (`user_id`, `token`, `created_at`) VALUES
(36, '08478f995be604304e5d5c985668f6ce', '2021-11-19 15:30:24'),
(36, '1cba373f538df802cc3bb30bdf12b982', '2021-11-17 18:15:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `deleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `fullname`, `email`, `phone_number`, `address`, `password`, `role_id`, `deleted`) VALUES
(35, 'Nguyễn Tấn Lộc', 'loc.nguyencse1@gmail.com', '0347651292', '462 trần hưng đạo phường 2 quận 5', 'b4cbd48886a5331c5eb2fedadabe311c', 2, 0),
(36, 'Nguyễn Tấn Lộc', 'loc.nguyencse2@gmail.com', '0347651292', '462 trần hưng đạo phường 2 quận 5', 'b4cbd48886a5331c5eb2fedadabe311c', 1, 0),
(37, 'Nguyễn Tấn Lộc', 'loc.nguyencse3@gmail.com', '0347651292', '462 trần hưng đạo phường 2 quận 5', 'b4cbd48886a5331c5eb2fedadabe311c', 1, 0),
(38, 'Nguyễn Tấn Lộc', 'loc.nguyencse8@gmail.com', '0347651292', '462 trần hưng đạo phường 2 quận 5', 'b4cbd48886a5331c5eb2fedadabe311c', 1, 0),
(39, 'Nguyễn Tấn Lộc', 'loc.nguyencse5@gmail.com', '0347651292', '462 trần hưng đạo phường 2 quận 5', 'b4cbd48886a5331c5eb2fedadabe311c', 1, 0),
(40, '213312321', 'ntnlc81@yahoo.com', '0347651292', '462 trần hưng đạo phường 2 quận 5', '2343b6a811d442d9b97f6fcd6bcbcc15', 1, 1),
(41, 'Nguyễn Tấn Lộc12', 'ntnlc8112@yahoo.com', '0347651292', '462 trần hưng đạo phường 2 quận 5', 'b4cbd48886a5331c5eb2fedadabe311c', 1, 0),
(42, 'Nguyễn Tấn Lộc12', 'loc.nguyencse12@gmail.com', '0347651292', '462 trần hưng đạo phường 2 quận 5', 'b4cbd48886a5331c5eb2fedadabe311c', 1, 0),
(43, 'Nguyễn Tấn Lộc132', 'loc.nguyencs123e@gmail.com', '0347651292', '462 trần hưng đạo phường 2 quận 5', 'e5cec731ca0d779baf1250fb20d63c61', 1, 1),
(44, 'Nguyễn Tấn Lộc132', 'loc.nguyenc132s123e@gmail.com', '0347651292', '462 trần hưng đạo phường 2 quận 5', '43c4e9a12b3acc364057ee4799a1d781', 1, 1),
(45, 'Nguyễn Tấn Lộc132', 'loc.nguyenc133212s123e@gmail.com', '0347651292', '462 trần hưng đạo phường 2 quận 5', '105faa207fab8ef35d8434e80d11ff38', 1, 1),
(46, 'admin', 'admin@gmail.com', '9876543212', 'Tây Ninh', 'b4cbd48886a5331c5eb2fedadabe311c', 2, 0),
(47, 'Staff', 'staff@gmail.com', '1234567891', 'staff@gmail.com', 'b4cbd48886a5331c5eb2fedadabe311c', 3, 0),
(48, 'chef', 'chef@gmail.com', '2345678912', 'chef', 'b4cbd48886a5331c5eb2fedadabe311c', 4, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userreview` (`user_id`),
  ADD KEY `productreview` (`product_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orderSuccess` (`user_id`),
  ADD KEY `fk_table` (`table_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `a` (`order_id`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paymentUserid` (`user_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `table_reservation`
--
ALTER TABLE `table_reservation`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`user_id`,`token`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `table_reservation`
--
ALTER TABLE `table_reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `productreview` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `userreview` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orderSuccess` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `fk_table` FOREIGN KEY (`table_id`) REFERENCES `table_reservation` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `a` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `paymentUserid` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `fk_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
