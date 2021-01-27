-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2021 at 04:57 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kaasplank`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`id`, `name`) VALUES
(1, '17 inch'),
(2, 'RGB Keyboard'),
(3, '15 inch'),
(4, 'Gaming extensions'),
(5, 'Mousepad'),
(6, 'RGB');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `specification_id` int(11) DEFAULT NULL,
  `laptop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`id`, `code`, `percentage`) VALUES
(1, 'WELKOM2021', 10);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `placed_at` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `placed_at`, `user_id`) VALUES
(1, '2020-12-07 11:07:32', 1),
(2, '2020-12-07 11:09:55', 1),
(3, '2020-12-07 11:10:15', 1),
(4, '2020-12-07 11:13:39', 1),
(5, '2020-12-07 11:13:52', 1),
(6, '2020-12-07 11:14:57', 1),
(7, '2020-12-07 11:25:08', 1),
(8, '2020-12-07 11:29:02', 1),
(9, '2020-12-07 11:30:30', 1),
(10, '2020-12-07 11:30:38', 1),
(11, '2020-12-07 15:45:33', 1),
(12, '2020-12-07 15:46:24', 1),
(13, '2020-12-07 15:48:28', 1),
(14, '2020-12-07 15:48:56', 1),
(15, '2020-12-07 15:49:02', 1),
(16, '2020-12-07 15:49:20', 1),
(17, '2020-12-07 15:49:34', 1),
(18, '2020-12-07 15:49:59', 1),
(19, '2020-12-07 15:50:31', 1),
(20, '2020-12-07 15:50:32', 1),
(21, '2020-12-07 15:50:35', 1),
(22, '2020-12-07 15:50:36', 1),
(23, '2020-12-07 15:58:25', 1),
(24, '2020-12-07 15:58:52', 1),
(25, '2020-12-07 15:59:02', 1),
(26, '2020-12-07 15:59:07', 1),
(27, '2020-12-07 15:59:25', 1),
(28, '2020-12-07 15:59:43', 1),
(29, '2020-12-07 15:59:56', 1),
(30, '2020-12-07 16:00:08', 1),
(31, '2020-12-07 16:00:19', 1),
(32, '2020-12-07 16:00:26', 1),
(33, '2020-12-07 16:00:33', 1),
(34, '2020-12-07 16:00:47', 1),
(35, '2020-12-07 16:01:13', 1),
(36, '2020-12-07 16:01:31', 1),
(37, '2020-12-07 16:02:19', 1),
(38, '2020-12-07 16:02:52', 1),
(39, '2020-12-07 16:09:12', 1),
(40, '2020-12-07 16:51:15', 3),
(41, '2020-12-07 16:51:45', 3),
(42, '2020-12-08 11:04:47', 1),
(43, '2020-12-08 12:12:46', 1),
(44, '2020-12-08 12:13:28', 1),
(45, '2020-12-08 12:13:58', 1),
(46, '2020-12-08 12:16:29', 4),
(47, '2020-12-09 10:23:29', 3),
(48, '2020-12-09 10:27:02', 3),
(49, '2020-12-09 10:27:47', 3),
(50, '2020-12-09 10:28:04', 3),
(51, '2020-12-09 10:28:13', 3),
(52, '2020-12-09 10:30:46', 3),
(53, '2020-12-09 10:30:53', 3),
(54, '2020-12-09 10:31:41', 3),
(55, '2020-12-09 10:31:53', 3),
(56, '2020-12-11 11:56:58', 1),
(57, '2020-12-11 12:01:23', 3),
(58, '2020-12-16 23:09:37', 1),
(59, '2020-12-18 11:36:36', 1),
(60, '2021-01-04 11:05:36', 1),
(61, '2021-01-05 12:01:42', 1),
(62, '2021-01-05 12:08:19', 1),
(63, '2021-01-08 11:56:00', 1),
(64, '2021-01-08 11:58:22', 1),
(65, '2021-01-08 11:59:30', 1),
(66, '2021-01-08 12:00:41', 1),
(67, '2021-01-11 11:41:50', 1),
(68, '2021-01-14 11:25:07', 1),
(69, '2021-01-14 11:26:15', 1),
(70, '2021-01-14 11:38:00', 1),
(71, '2021-01-14 11:38:31', 1),
(72, '2021-01-14 11:47:50', 1),
(73, '2021-01-14 12:04:52', 1),
(74, '2021-01-14 12:07:23', 1),
(75, '2021-01-14 12:11:37', 1),
(76, '2021-01-14 12:12:05', 1),
(77, '2021-01-14 12:12:41', 1),
(78, '2021-01-14 13:00:04', 1),
(79, '2021-01-15 14:48:30', 1),
(80, '2021-01-19 12:40:41', 1),
(81, '2021-01-25 11:05:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_has_product`
--

CREATE TABLE `order_has_product` (
  `id` int(11) NOT NULL,
  `orderkey_id` int(11) NOT NULL,
  `productkey_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_has_product`
--

INSERT INTO `order_has_product` (`id`, `orderkey_id`, `productkey_id`, `amount`) VALUES
(1, 8, 1, 1),
(2, 9, 1, 1),
(3, 10, 1, 1),
(4, 11, 2, 2),
(5, 12, 2, 2),
(6, 13, 2, 2),
(7, 14, 2, 2),
(8, 15, 2, 2),
(9, 16, 2, 2),
(10, 17, 2, 2),
(11, 18, 2, 2),
(12, 19, 2, 2),
(13, 20, 2, 2),
(14, 21, 2, 2),
(15, 22, 2, 2),
(16, 23, 2, 2),
(17, 24, 2, 2),
(18, 25, 2, 2),
(19, 26, 2, 2),
(20, 27, 2, 2),
(21, 28, 2, 2),
(22, 29, 2, 2),
(23, 30, 2, 2),
(24, 31, 2, 2),
(25, 32, 2, 2),
(26, 33, 2, 2),
(27, 34, 2, 2),
(28, 35, 2, 2),
(29, 36, 2, 2),
(30, 37, 2, 2),
(31, 37, 1, 1),
(32, 38, 2, 2),
(33, 38, 1, 2),
(34, 39, 1, 18),
(35, 40, 2, 1),
(36, 40, 3, 1),
(37, 41, 2, 2),
(38, 41, 3, 1),
(39, 42, 2, 2),
(40, 43, 2, 2),
(41, 43, 3, 2),
(42, 44, 2, 2),
(43, 44, 3, 2),
(44, 45, 2, 2),
(45, 45, 3, 2),
(46, 46, 1, 2),
(47, 47, 1, 4),
(48, 48, 1, 4),
(49, 49, 1, 4),
(50, 50, 1, 4),
(51, 51, 1, 4),
(52, 52, 1, 4),
(53, 53, 1, 4),
(54, 54, 1, 4),
(55, 55, 1, 4),
(56, 56, 5, 1),
(57, 57, 3, 3),
(58, 58, 4, 9),
(59, 58, 2, 1),
(60, 58, 6, 1),
(61, 58, 5, 1),
(62, 59, 3, 11),
(63, 60, 5, 4),
(64, 61, 4, 6),
(65, 61, 9, 2),
(66, 62, 4, 6),
(67, 62, 1, 1),
(68, 63, 4, 4),
(69, 64, 2, 1),
(70, 65, 2, 1),
(71, 66, 2, 1),
(72, 67, 11, 1),
(73, 67, 10, 1),
(74, 67, 9, 1),
(75, 68, 5, 2),
(76, 69, 5, 2),
(77, 70, 5, 2),
(78, 71, 5, 2),
(79, 72, 5, 2),
(80, 73, 5, 2),
(81, 74, 5, 2),
(82, 75, 5, 2),
(83, 76, 5, 2),
(84, 77, 5, 2),
(85, 78, 5, 2),
(86, 79, 3, 6),
(87, 80, 2, 2),
(88, 80, 4, 3),
(89, 81, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `prodname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `prodname`, `description`, `img`, `categorie_id`, `price`) VALUES
(1, 'HP Pavilion 17 inch', 'The HP Pavilion is a powerfull laptop that is quelified for gaming and graphic design', '/img/laptop.jpg', 1, 2000),
(2, 'HP Pavilion 15 inch', 'This is the HP Pavilion 15 inch gaming laptop that is quelified for gaming and graphic design.', '/img/laptop.jpg', 3, 1600),
(3, 'Corsair RGB Keyboard zephyr', 'This is an Corsair zephyr RGB gaming keyboard with cherry mx keys. It has great typing feedback, great for gaming or programming.', '/img/rgbkey.jpg', 2, 50),
(4, 'Logitech G502 Lightspeed', 'Logitech G502 Lightspeed gaming mouse. This mouse has switchable weights and is wireless', '/img/mouse.jpg', NULL, 120),
(5, 'MSI GL65X Gaming laptop 17 inch', 'This is the MSI GL65X 17 inch Gaming laptop that will fullfill all your dreams. It has RGB lightning and a powerfull core.', '/img/msi.png', 1, 1700),
(6, 'Asus vivobook', 'This laptop is qualified for edditing videos and making videos. Also it is a great for gaming.', '/img/asus.jpg', 3, 900),
(9, 'G Fuel Tropical Rain', 'G Fuel Tropical Rain has all the tropical flavors in the mix', '/img/gfuel.png', NULL, 50),
(10, 'RGB Mousepad TT', 'This is an RGB mousepad from TitanTabs', '/img/mousepad.jpg', 5, 25),
(11, 'Logitech G933 Artemis Spectrum', 'This is the Logitech G933 Artemis Spectrum. It has Dolby 7.1 surround sound and controllable RGB lights', '/img/g933.jpeg', 4, 160);

-- --------------------------------------------------------

--
-- Table structure for table `product_has_specification`
--

CREATE TABLE `product_has_specification` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `specification_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_has_specification`
--

INSERT INTO `product_has_specification` (`id`, `product_id`, `specification_id`) VALUES
(1, 1, 1),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 1, 3),
(7, 1, 4),
(8, 1, 5),
(9, 3, 6),
(10, 4, 7),
(11, 5, 4),
(12, 5, 3),
(13, 5, 5),
(14, 6, 8),
(15, 6, 5),
(16, 6, 9),
(17, 9, 10),
(19, 6, 2),
(20, 3, 12),
(21, 10, 12);

-- --------------------------------------------------------

--
-- Table structure for table `specification`
--

CREATE TABLE `specification` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specification`
--

INSERT INTO `specification` (`id`, `type`, `value`) VALUES
(1, 'Diagonaal', '17'),
(2, 'Diagonaal', '15'),
(3, 'processor', 'i7'),
(4, 'GPU', 'RTX 3090'),
(5, 'Samsung', '1TB evo 970 M.2 SSD'),
(6, 'Corsair', 'MX cherry keys'),
(7, 'Logitech', 'Gaming mouse'),
(8, 'processor', 'i7'),
(9, 'Graphics Card', 'NVIDIA RTX 2080ti'),
(10, 'Gaming drink', 'For more concentration while gaming!'),
(11, 'processor', 'i9'),
(12, 'RGB', 'RGB');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`roles`)),
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postalcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `name`, `lastname`, `phone`, `adress`, `city`, `postalcode`) VALUES
(1, 'lennart@lennart.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$TXl1WkVmVmJ5cDZhaVRjWQ$qqcOv4uBYDzmXuBsLNi1yGfO/bAHXFP4a6Pry5DHXTM', 'Lennart', 'de Ridder', '06 821000128', 'Kaaslaan', 'Leiden', '2314BL'),
(2, 'jmr@jmr.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$d2dsZnpmU2ZGVUpnMFhGQg$QUvYoKAhpY8wvfiaqN6gsNCxTesbp58e6Nb6+YW+IAM', 'cam', 'bar', '0682100128', 'blikje', 'Leiden', '2314BL'),
(3, 'lennart@user.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$bE9SWnA2dkNUdEFZTG9XUw$q6f6LGlz4gI/VPRtX3K5Ar30tADVqIxt35Ln8frA5J0', 'lennart', 'jmr', '12 12121212', 'Leiden', 'Leiden', '2244jm'),
(4, 'bart@bart.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$OGJwcm9MMmdHYzBKM0ljcg$0C5A/CHJVojTeEN6y7qytYW5VNKDXQGEw4eBI5yOa30', 'bakker', 'bart', '12 12 12 12 12', 'blikje', 'waterkan', '9901TZ'),
(5, 'redbull@redbull.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$QUZFS3RUaXhoNzhYU2t6cg$uZiYqDGXdqeVsjds48bq5ieeL7RBvn+HoaqkhmaozTI', 'lennart', 'redbull', '06 82100128', 'Redbullstraat 2', 'Leiden', '2314BL');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3AF34668908E2FFE` (`specification_id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F5299398A76ED395` (`user_id`);

--
-- Indexes for table `order_has_product`
--
ALTER TABLE `order_has_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_AF0913F04B2CD52` (`orderkey_id`),
  ADD KEY `IDX_AF0913F02670C2F3` (`productkey_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D34A04ADBCF5E72D` (`categorie_id`);

--
-- Indexes for table `product_has_specification`
--
ALTER TABLE `product_has_specification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_184354CE4584665A` (`product_id`),
  ADD KEY `IDX_184354CE908E2FFE` (`specification_id`);

--
-- Indexes for table `specification`
--
ALTER TABLE `specification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `order_has_product`
--
ALTER TABLE `order_has_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_has_specification`
--
ALTER TABLE `product_has_specification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `specification`
--
ALTER TABLE `specification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `FK_3AF34668908E2FFE` FOREIGN KEY (`specification_id`) REFERENCES `specification` (`id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_F5299398A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `order_has_product`
--
ALTER TABLE `order_has_product`
  ADD CONSTRAINT `FK_AF0913F02670C2F3` FOREIGN KEY (`productkey_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FK_AF0913F04B2CD52` FOREIGN KEY (`orderkey_id`) REFERENCES `order` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04ADBCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`);

--
-- Constraints for table `product_has_specification`
--
ALTER TABLE `product_has_specification`
  ADD CONSTRAINT `FK_184354CE4584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FK_184354CE908E2FFE` FOREIGN KEY (`specification_id`) REFERENCES `specification` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
