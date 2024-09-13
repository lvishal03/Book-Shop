-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2024 at 10:40 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_book`
--

CREATE TABLE `add_book` (
  `id` int(11) NOT NULL,
  `write_name` varchar(250) NOT NULL,
  `book_name` varchar(250) NOT NULL,
  `category` varchar(252) NOT NULL,
  `sub_category` varchar(250) NOT NULL,
  `price` varchar(251) NOT NULL,
  `image` varchar(250) NOT NULL,
  `quantity_stock` varchar(250) NOT NULL,
  `b_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_book`
--

INSERT INTO `add_book` (`id`, `write_name`, `book_name`, `category`, `sub_category`, `price`, `image`, `quantity_stock`, `b_status`) VALUES
(53, 'J.R ', 'VIRAT KOHLI', '49', 'VIRAT KOHLI', '500', 'bs7.jfif', '1', 0),
(54, 'J.R Ra', 'Moon Dance', '47', 'Horror of The Nights', '100', 'horror sub1.jfif', '15', 0),
(55, 'J.R Ra', 'Moon Dance', '50', 'RISPY BOOK', '80', 'cs3.jfif', '5', 0),
(56, 'J.R ', 'Dark Space', '47', 'Horror of The Nights', '52', 'best_selling7.jpg.webp', '10', 0),
(58, 'J.R Rain', 'History India', '47', 'Horror of The Nights', '100', 'best_selling9.jpg.webp', '20', 0),
(59, 'J.R ', 'ABD', '49', 'YUVRAJ SINGH', '100', 'bs1.jfif', '25', 0),
(60, 'J.R Rain', 'R. ASHWIN', '49', 'R. ASHWIN', '900', 'bs9.jfif', '5', 0),
(61, 'STEPHAN KING', 'Moon Dance', '50', 'RISPY BOOK', '80', 'cs4.jfif', '10', 0),
(70, 'J.R Rai', 'Moon Dance', '47', 'PER SEMATARY', '50', 'horror sub3.jfif', '50', 0),
(85, 'STEPHAN KING', 'Moon Dance', '47', 'NIGHT OF TERROR', '150', 'horror sub4.jfif', '100', 0),
(86, 'V.K Rao', 'India', '48', 'HISTORY OF INDIA', '300', 'hs7.webp', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `billing_details`
--

CREATE TABLE `billing_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `zip` varchar(250) NOT NULL,
  `mobile` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `order_status` enum('1','2','3') NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billing_details`
--

INSERT INTO `billing_details` (`id`, `user_id`, `order_id`, `name`, `address`, `city`, `zip`, `mobile`, `email`, `order_status`, `created_at`, `updated_at`) VALUES
(171, 7, 179, 'vishal saini', 'plot no. 1 ajay nagar chomu,jaipur', 'Chomu', '303702', '2547896544', 'vishal12@gmail.com', '2', '2024-08-08 09:38:17', '2024-08-08 09:38:17'),
(172, 11, 180, 'vishal', 'plot no. 1 ajay nagar chomu,jaipur', 'Chomu', '303702', '0000000856', 'saini@gmail.com', '1', '2024-08-13 10:13:46', '2024-08-13 10:13:46'),
(173, 12, 181, 'vishal', 'plot no. 1 ajay nagar chomu,jaipur', 'Chomu', '303702', '0000000856', 'abhi@gmail.com', '3', '2024-08-22 09:58:00', '2024-08-22 09:58:00'),
(174, 12, 182, '', '', '', '', '', '', '1', '2024-09-09 22:03:41', '2024-09-09 22:03:41');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `b_name` varchar(250) NOT NULL,
  `b_tittle` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `b_image` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `b_name`, `b_tittle`, `description`, `b_image`, `created_at`) VALUES
(13, 'Vishal', 'Google inks pact for new 35-storey office', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower', 'single_blog_1.jpg.webp', '2024-07-16 13:25:03'),
(14, 'Bride', 'Google inks pact for new 35-storey office', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower', 'single_blog_3.jpg', '2024-07-16 14:10:16'),
(15, 'Story', 'Google inks pact for new 35-storey office', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower', 'single_blog_4.jpg', '2024-07-16 14:12:13'),
(16, 'Story', 'Google inks pact for new 35-storey office', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower', 'single_blog_2.jpg.webp', '2024-07-16 14:12:32');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` varchar(11) NOT NULL DEFAULT current_timestamp(),
  `price` varchar(250) NOT NULL,
  `quantity` varchar(250) NOT NULL,
  `create_at` varchar(251) NOT NULL DEFAULT current_timestamp(),
  `update_at` varchar(250) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `image`) VALUES
(47, 'Horror', 'Horror cat.jfif'),
(48, 'History', 'History cat.jpg'),
(49, 'Biography', 'Biography cat.jpg'),
(50, 'Cookbook', 'Cookbook cat.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `payment_method` varchar(250) NOT NULL,
  `amount` varchar(250) NOT NULL,
  `orde_status` enum('1','2','3') NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `payment_method`, `amount`, `orde_status`, `created_at`) VALUES
(179, 'Cash On Delivery', '1056', '1', '2024-08-08 09:38:17'),
(180, 'Phone Pay', '152', '2', '2024-08-13 10:13:46'),
(181, 'Phone Pay', '204', '3', '2024-08-22 09:58:00'),
(182, 'Phone Pay', '80', '1', '2024-09-09 22:03:41');

-- --------------------------------------------------------

--
-- Table structure for table `order_book`
--

CREATE TABLE `order_book` (
  `id` int(11) NOT NULL,
  `order_id` int(10) NOT NULL,
  `book_id` varchar(250) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `quantity` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_book`
--

INSERT INTO `order_book` (`id`, `order_id`, `book_id`, `user_id`, `quantity`) VALUES
(100, 179, '60', '7', '1'),
(101, 179, '62', '7', '3'),
(102, 180, '62', '11', '1'),
(103, 180, '59', '11', '1'),
(104, 181, '62', '12', '2'),
(105, 181, '54', '12', '1'),
(106, 182, '61', '12', '1');

-- --------------------------------------------------------

--
-- Table structure for table `order_tracking`
--

CREATE TABLE `order_tracking` (
  `tracking_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `status` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(251) NOT NULL,
  `email` varchar(251) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `email`, `password`) VALUES
(7, 'vishal', 'saini@gmail.com', '1234567890'),
(8, 'Ankit', 'saini11@gmail.com', '00000001'),
(9, 'vishal saini', 'saini1@gmail.com', '10000000'),
(10, 'Vishal saini', 'vishal12@gmail.com', '00000000'),
(11, 'vishal', 'saini13@gmail.com', '12301230'),
(12, 'Vishal', 'vishal@gmail.com', '00000002');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `category_name` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `cat_id`, `category_name`, `image`) VALUES
(27, 47, 'NIGHT OF TERROR', 'horror sub3.jfif'),
(28, 47, 'STEPHAN KING', 'horror sub4.jfif'),
(30, 47, 'PER SEMATARY', 'horror sub6.jfif'),
(31, 47, 'HEARLD OF RUN', 'horror sub7.jfif'),
(32, 48, 'HISTORY OF INDIA', 'hs1.jfif'),
(33, 48, 'HISTORY', 'hs3.jfif'),
(34, 48, 'U.S HISTORY', 'hs4.jfif'),
(35, 48, 'HISTORY OF MANIPUR', 'hs5.jfif'),
(36, 48, 'THE RAMAYANA', 'hs6.webp'),
(37, 48, 'HISTORY', 'hs7.webp'),
(38, 49, 'VIRAT KOHLI', 'bs7.jfif'),
(39, 49, 'SACHIN TENDULKAR', 'bs2.jfif'),
(40, 49, 'ABD', 'bs1.jfif'),
(41, 49, 'YUVRAJ SINGH', 'bs3.jfif'),
(42, 49, 'RAHUL DRAVID', 'bs4.jfif'),
(43, 49, 'MIKE BREARLEY', 'bs5.jfif'),
(44, 49, 'MS DHONI', 'bs6.jfif'),
(45, 49, 'RIKI PONTING', 'bs8.jfif'),
(46, 49, 'R. ASHWIN', 'bs9.jfif'),
(47, 50, 'COOK BOOK', 'cs1.webp'),
(48, 50, 'RISPY BOOK', 'cs2.jfif'),
(49, 50, 'COOK BOOK', 'cs3.jfif'),
(50, 50, 'COOK BOOK', 'cs4.jfif'),
(51, 50, 'AMISH COOKBOOK', 'cs5.jfif'),
(52, 48, 'COOK BOOK', 'best_selling8.jpg.webp'),
(55, 48, 'Nitin Singhania', 'History cat.jpg'),
(56, 49, 'ABD', 'bs1.jfif'),
(57, 61, 'Nitin Singhania', 'aa1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tri`
--

CREATE TABLE `tri` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `age` varchar(250) NOT NULL,
  `class` varchar(250) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `mob` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_book`
--
ALTER TABLE `add_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_details`
--
ALTER TABLE `billing_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_book`
--
ALTER TABLE `order_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_tracking`
--
ALTER TABLE `order_tracking`
  ADD PRIMARY KEY (`tracking_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_book`
--
ALTER TABLE `add_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `billing_details`
--
ALTER TABLE `billing_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `order_book`
--
ALTER TABLE `order_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `order_tracking`
--
ALTER TABLE `order_tracking`
  MODIFY `tracking_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
