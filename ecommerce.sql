-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2024 at 03:57 PM
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
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_logo`
--

CREATE TABLE `add_logo` (
  `id` int(10) NOT NULL,
  `img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_logo`
--

INSERT INTO `add_logo` (`id`, `img`) VALUES
(2, 'logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(60) NOT NULL,
  `admin_pass` varchar(60) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_email`, `admin_pass`, `role`) VALUES
(1, 'saifulislamsapon@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `all_order_info`
-- (See below for the actual view)
--
CREATE TABLE `all_order_info` (
`order_id` int(255)
,`product_name` varchar(255)
,`pdt_quantity` int(11)
,`amount` int(11)
,`uses_coupon` varchar(35)
,`customer_name` varchar(60)
,`Shipping_mobile` varchar(20)
,`trans_id` varchar(25)
,`shiping_address` varchar(255)
,`order_status` int(3)
,`order_time` timestamp
,`order_date` date
);

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `ctg_id` int(11) NOT NULL,
  `ctg_name` varchar(60) NOT NULL,
  `ctg_des` varchar(150) NOT NULL,
  `ctg_status` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`ctg_id`, `ctg_name`, `ctg_des`, `ctg_status`) VALUES
(10, 'ششؤشسؤشس', 'شسؤشسؤش', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cupon`
--

CREATE TABLE `cupon` (
  `cupon_id` int(11) NOT NULL,
  `cupon_code` varchar(25) NOT NULL,
  `description` varchar(255) NOT NULL,
  `discount` int(5) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cupon`
--

INSERT INTO `cupon` (`cupon_id`, `cupon_code`, `description`, `discount`, `status`) VALUES
(1, 'fruitsbazar', 'It\'s a discount coupon.', 10, 1),
(2, 'eid2021', 'Eid discount', 15, 1),
(3, 'eid2021', 'Eid discount', 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_feedback`
--

CREATE TABLE `customer_feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `pdt_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_feedback`
--

INSERT INTO `customer_feedback` (`id`, `user_id`, `user_name`, `pdt_id`, `comment`, `comment_date`) VALUES
(1, 1, 'saiful', 4, 'This product is very good', '2021-09-11'),
(4, 5, 'karim', 6, 'Good product', '2021-09-15');

-- --------------------------------------------------------

--
-- Table structure for table `header_info`
--

CREATE TABLE `header_info` (
  `id` int(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tweeter` varchar(500) NOT NULL,
  `fb_link` varchar(500) NOT NULL,
  `pinterest` varchar(500) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `header_info`
--

INSERT INTO `header_info` (`id`, `email`, `tweeter`, `fb_link`, `pinterest`, `phone`) VALUES
(10, 'fruitsbazar@gmail.com', 'https://twitter.com/', 'https://facebook.com/', 'https://pinerest.com/', '01982364958');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(255) NOT NULL,
  `pdt_sound` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `pdt_quantity` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `uses_coupon` varchar(35) NOT NULL,
  `order_status` int(3) NOT NULL,
  `trans_id` varchar(25) NOT NULL,
  `Shipping_mobile` varchar(20) NOT NULL,
  `shiping` varchar(255) NOT NULL,
  `order_time` timestamp NULL DEFAULT current_timestamp(),
  `order_date` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `user_id`, `product_id`, `pdt_sound`, `product_name`, `pdt_quantity`, `amount`, `uses_coupon`, `order_status`, `trans_id`, `Shipping_mobile`, `shiping`, `order_time`, `order_date`) VALUES
(32, 7, 22, NULL, 'Product Name', 1, 2500, '', 0, 'sd s', '1145119185', ' El User@gmail.com ', '2024-03-11 22:09:10', '2024-03-12'),
(33, 7, 22, NULL, 'Product Name', 1, 2500, '', 1, 'asc', '1145119185', ' El User@gmail.com ', '2024-03-11 22:49:37', '2024-03-12'),
(34, 7, 23, NULL, 'cvnxcvnc', 0, 242, '', 0, 'acac', '1145119185', ' El User@gmail.com ', '2024-03-11 23:06:07', '2024-03-12'),
(35, 7, 22, NULL, 'Product Name', 0, 2500, '', 1, 'sac', '1145119185', ' El User@gmail.com ', '2024-03-12 14:33:33', '2024-03-12');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pdt_id` int(255) NOT NULL,
  `pdt_name` varchar(200) NOT NULL,
  `pdt_price` int(255) NOT NULL,
  `pdt_des` varchar(250) NOT NULL,
  `pdt_ctg` int(200) NOT NULL,
  `pdt_img` varchar(250) NOT NULL,
  `pdt_sound` varchar(250) NOT NULL,
  `pdt_status` tinyint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `product_info_ctg`
-- (See below for the actual view)
--
CREATE TABLE `product_info_ctg` (
`pdt_id` int(255)
,`pdt_name` varchar(200)
,`pdt_price` int(255)
,`pdt_des` varchar(250)
,`pdt_img` varchar(250)
,`pdt_sound` varchar(250)
,`pdt_status` tinyint(5)
,`ctg_id` int(11)
,`ctg_name` varchar(60)
);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `first_line` varchar(255) NOT NULL,
  `second_line` varchar(255) NOT NULL,
  `third_line` varchar(255) NOT NULL,
  `btn_left` varchar(25) NOT NULL,
  `btn_right` varchar(25) NOT NULL,
  `slider_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `first_line`, `second_line`, `third_line`, `btn_left`, `btn_right`, `slider_img`) VALUES
(1, 'Pomegranate', 'Fruits 100% Organic', 'A blend of freshly squeezed green apple & fruits', 'Shop now', 'View lookbook', 'green-slide-01.jpg'),
(2, 'Pomegranate', 'Orange 100% Organic', 'A blend of freshly squeezed green apple & fruits', 'Shop now', 'View lookbook', 'green-slide-02.jpg'),
(3, 'Pomegranate', 'Banana 100% Organic', 'A blend of freshly squeezed green apple & fruits', 'Shop now', 'View lookbook', 'green-slide-01.jpg'),
(4, 'Pomegranate', 'Apple 100% Organic', 'A blend of freshly squeezed green apple & fruits', 'Shop now', 'View lookbook', 'green-slide-02.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(6) NOT NULL,
  `user_name` varchar(60) NOT NULL,
  `user_firstname` varchar(60) NOT NULL,
  `user_lastname` varchar(60) NOT NULL,
  `user_email` varchar(60) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_mobile` int(11) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_roles` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_firstname`, `user_lastname`, `user_email`, `user_password`, `user_mobile`, `user_address`, `user_roles`, `created_at`, `modified_at`) VALUES
(1, 'saiful', ' saiful', ' islam', 'saifulislamsapon@gmail.com', '202cb962ac59075b964b07152d234b70', 1246798, 'SubarnaChar, Noakhali', 5, '2021-08-21 13:38:23', '2021-08-21 13:38:23'),
(2, 'Yearul', ' Yerarul', ' islam', 'yearul@gmail.com', '202cb962ac59075b964b07152d234b70', 1246798, 'Maijdee, Noakhali', 5, '2021-08-21 13:38:23', '2021-08-21 13:38:23'),
(3, 'Omar6627', ' Omar Bin', ' Faruk', 'omarbfaruk@gmail.com', 'ad126b79a449eb003915c3917c8a30e1', 1684734323, 'Feni', 5, '2021-08-21 18:56:24', '2021-08-21 18:56:24'),
(4, 'Omar_6627', ' Omar Bin', ' Faruk', 'omarbinfaruk97@gmail.com', '8d5dcd9520e2712d648297f0f116c284', 1684734323, 'Dhaka', 5, '2021-08-30 11:04:09', '2021-08-30 11:04:09'),
(5, 'karim', ' karim', ' ', 'karim@gmail.com', '202cb962ac59075b964b07152d234b70', 1840239402, 'Jatrabari, Dhaka', 5, '2021-09-14 05:03:25', '2021-09-14 05:03:25'),
(6, 'rahim', ' Rahim', ' ', 'rahim@gmail.com', '202cb962ac59075b964b07152d234b70', 1840239415, 'Mirpur, Dhaka. ', 5, '2021-09-14 07:05:48', '2021-09-14 07:05:48'),
(7, 'User@gmail.com', ' User@gmail.com', ' User@gmail.com', 'User@gmail.com', 'd14b0e51f9045ff10ec1f7dcc8151d8b', 1145119185, 'El User@gmail.com', 5, '2024-03-11 21:36:28', '2024-03-11 21:36:28');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  `postal_code` varchar(8) NOT NULL,
  `city` varchar(25) NOT NULL,
  `country` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_payment`
--

CREATE TABLE `user_payment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `provider` varchar(35) NOT NULL,
  `account_no` int(11) DEFAULT NULL,
  `expiry` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure for view `all_order_info`
--
DROP TABLE IF EXISTS `all_order_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `all_order_info`  AS SELECT `order_details`.`order_id` AS `order_id`, `order_details`.`product_name` AS `product_name`, `order_details`.`pdt_quantity` AS `pdt_quantity`, `order_details`.`amount` AS `amount`, `order_details`.`uses_coupon` AS `uses_coupon`, `users`.`user_firstname` AS `customer_name`, `order_details`.`Shipping_mobile` AS `Shipping_mobile`, `order_details`.`trans_id` AS `trans_id`, `order_details`.`shiping` AS `shiping_address`, `order_details`.`order_status` AS `order_status`, `order_details`.`order_time` AS `order_time`, `order_details`.`order_date` AS `order_date` FROM (`order_details` join `users`) WHERE `users`.`user_id` = `order_details`.`user_id` ;

-- --------------------------------------------------------

--
-- Structure for view `product_info_ctg`
--
DROP TABLE IF EXISTS `product_info_ctg`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_info_ctg`  AS SELECT `products`.`pdt_id` AS `pdt_id`, `products`.`pdt_name` AS `pdt_name`, `products`.`pdt_price` AS `pdt_price`, `products`.`pdt_des` AS `pdt_des`, `products`.`pdt_img` AS `pdt_img`, `products`.`pdt_sound` AS `pdt_sound`, `products`.`pdt_status` AS `pdt_status`, `catagory`.`ctg_id` AS `ctg_id`, `catagory`.`ctg_name` AS `ctg_name` FROM (`products` join `catagory` on(`products`.`pdt_ctg` = `catagory`.`ctg_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_logo`
--
ALTER TABLE `add_logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`ctg_id`);

--
-- Indexes for table `cupon`
--
ALTER TABLE `cupon`
  ADD PRIMARY KEY (`cupon_id`);

--
-- Indexes for table `customer_feedback`
--
ALTER TABLE `customer_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header_info`
--
ALTER TABLE `header_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pdt_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_payment`
--
ALTER TABLE `user_payment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_logo`
--
ALTER TABLE `add_logo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `ctg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cupon`
--
ALTER TABLE `cupon`
  MODIFY `cupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_feedback`
--
ALTER TABLE `customer_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `header_info`
--
ALTER TABLE `header_info`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pdt_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_payment`
--
ALTER TABLE `user_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
