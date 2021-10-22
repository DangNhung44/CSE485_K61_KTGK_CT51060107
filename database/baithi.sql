-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 22, 2021 lúc 06:09 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlithi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baithi`
--

CREATE TABLE `baithi` (
  `id` int(10) NOT NULL,
  `exam_title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_datetime` date NOT NULL DEFAULT current_timestamp(),
  `duration` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_question` int(5) NOT NULL,
  `marks_per_right_answer` float NOT NULL,
  `created_on` date NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `baithi`
--

INSERT INTO `baithi` (`id`, `exam_title`, `exam_datetime`, `duration`, `total_question`, `marks_per_right_answer`, `created_on`, `status`, `exam_code`) VALUES
(4, 'CSDL', '2021-10-22', '90', 20, 0.5, '2021-10-22', 'Created', 'CSDL01'),
(5, 'Mạng máy tính', '2021-10-13', '90', 40, 0.25, '2021-10-13', 'Pending', 'MMT01'),
(6, 'Đại số tuyến tính', '2021-10-07', '120', 10, 1, '2021-10-07', 'Started', 'ĐSTT01'),
(8, 'Triết', '2021-10-20', '50', 70, 0.14, '2021-10-20', 'Completed', 'T01');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baithi`
--
ALTER TABLE `baithi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exam_code` (`exam_code`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `baithi`
--
ALTER TABLE `baithi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
