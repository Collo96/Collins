-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2024 at 01:14 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rposystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `mpesa_payments`
--

CREATE TABLE `mpesa_payments` (
  `id` int(11) NOT NULL,
  `TransactionType` varchar(100) DEFAULT NULL,
  `TransID` varchar(100) DEFAULT NULL,
  `TransTime` varchar(100) DEFAULT NULL,
  `TransAmount` decimal(10,2) DEFAULT NULL,
  `BusinessShortCode` varchar(100) DEFAULT NULL,
  `BillRefNumber` varchar(100) DEFAULT NULL,
  `MSISDN` varchar(100) DEFAULT NULL,
  `FirstName` varchar(100) DEFAULT NULL,
  `MiddleName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `OrgAccountBalance` decimal(10,2) DEFAULT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rpos_admin`
--

CREATE TABLE `rpos_admin` (
  `admin_id` varchar(200) NOT NULL,
  `admin_name` varchar(200) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rpos_admin`
--

INSERT INTO `rpos_admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
('10e0b6dc958adfb5b094d8935a13aeadbe783c25', 'System Admin', 'admin@mail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_customers`
--

CREATE TABLE `rpos_customers` (
  `customer_id` varchar(200) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_email` varchar(100) DEFAULT NULL,
  `customer_phoneno` varchar(20) DEFAULT NULL,
  `customer_password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rpos_customers`
--

INSERT INTO `rpos_customers` (`customer_id`, `customer_name`, `customer_email`, `customer_phoneno`, `customer_password`, `created_at`) VALUES
('3c469e421094', 'paulo', 'paulo@gmail.com', '0756790945', '389a00a92da9678dc78c1a84c7ec5580f7732a2d', '2024-04-21 21:42:33'),
('6c029d1a753a', 'wall', 'wall@gmail.com', '0759621951', '09abf7e6d053421d9e3db1be246e62775ce254fd', '2024-04-04 14:01:03'),
('87b783540fa5', 'nderu', 'nderu@gmail.com', '0759621951', '156ce07c403c4352d6d33f1d59bb7969d1599c2f', '2024-04-03 07:57:09'),
('e950650a1560', 'steve nderu ', 'stevenderu2@gmail.com', '0759621951', '8e0bcaf48c3d73dd20446069de668cdfac6bf51c', '2024-04-10 20:51:21'),
('fb0632e7312a', 'steve@gmail.com', 'steve@gmail.com', '0759621951', '8e0bcaf48c3d73dd20446069de668cdfac6bf51c', '2024-04-02 18:18:32');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_orders`
--

CREATE TABLE `rpos_orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` varchar(200) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `total_price` decimal(10,2) NOT NULL,
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rpos_orders`
--

INSERT INTO `rpos_orders` (`order_id`, `customer_id`, `order_date`, `total_price`, `order_status`) VALUES
(2, '', '2024-04-17 05:24:15', '2100.40', 'Paid'),
(3, '', '2024-04-03 15:39:22', '1392.40', 'Pending'),
(4, '', '2024-04-03 15:43:47', '4932.40', 'Pending'),
(5, '', '2024-04-03 15:51:52', '2832.00', 'Pending'),
(6, '', '2024-04-03 16:05:21', '1392.40', 'Pending'),
(7, '', '2024-04-03 16:21:03', '684.40', 'Pending'),
(8, '', '2024-04-04 07:45:29', '600.00', 'Pending'),
(9, '', '2024-04-04 12:48:27', '18000.00', 'Pending'),
(10, '', '2024-04-04 08:32:38', '600.00', 'Pending'),
(11, '', '2024-04-04 11:37:31', '51000.00', 'Pending'),
(12, '', '2024-04-04 12:49:02', '30000.00', 'Pending'),
(13, '', '2024-04-04 10:30:09', '69000.00', 'Pending'),
(14, '', '2024-04-04 11:23:20', '580.00', 'Pending'),
(15, '', '2024-04-04 12:53:09', '580.00', 'Pending'),
(16, '', '2024-04-04 14:19:51', '30000.00', 'Pending'),
(17, '', '2024-04-05 20:02:38', '580.00', 'Pending'),
(18, '', '2024-04-05 20:19:39', '580.00', 'Pending'),
(19, '', '2024-04-10 15:20:52', '580.00', 'Pending'),
(20, '', '2024-04-13 09:18:23', '580.00', 'Pending'),
(21, '', '2024-04-13 10:22:15', '580.00', 'Pending'),
(22, '', '2024-04-13 10:23:04', '580.00', 'Pending'),
(23, '', '2024-04-13 10:24:05', '580.00', 'Pending'),
(24, '', '2024-04-13 10:25:18', '3000.00', 'Pending'),
(25, '', '2024-04-14 15:26:21', '580.00', 'Pending'),
(28, '', '2024-04-15 19:56:34', '21580.00', 'Pending'),
(30, '', '2024-04-16 19:55:06', '1000.00', 'Pending'),
(31, '', '2024-04-16 19:58:19', '1000.00', 'Pending'),
(32, '', '2024-04-16 20:14:27', '1000.00', 'processing'),
(33, '', '2024-04-17 04:59:17', '3000.00', ''),
(34, '', '2024-04-17 05:09:59', '1000.00', 'Unpaid'),
(35, '', '2024-04-17 05:34:53', '1000.00', 'Unpaid'),
(36, '', '2024-04-17 08:27:19', '1000.00', 'Unpaid'),
(37, '', '2024-04-17 08:41:26', '1000.00', 'Unpaid'),
(38, '', '2024-04-17 08:44:47', '1000.00', 'Unpaid'),
(39, '6', '2024-04-17 08:48:51', '4000.00', 'Unpaid'),
(40, '6', '2024-04-17 09:02:04', '2000.00', 'Unpaid'),
(41, '0', '2024-04-17 09:30:34', '1000.00', 'Unpaid'),
(42, '0', '2024-04-17 15:31:41', '1000.00', 'processing'),
(43, '87', '2024-04-17 15:37:07', '1000.00', 'Unpaid'),
(44, '87', '2024-04-17 15:47:48', '5000.00', 'Unpaid'),
(45, '87', '2024-04-17 15:58:35', '1000.00', 'Unpaid'),
(46, '87', '2024-04-17 16:12:13', '1000.00', 'Unpaid'),
(47, '87', '2024-04-17 17:01:53', '2000.00', 'Unpaid'),
(48, '87', '2024-04-17 17:12:50', '2000.00', 'Unpaid'),
(49, '87', '2024-04-17 17:13:24', '2000.00', 'Unpaid'),
(50, '87', '2024-04-17 17:18:11', '2000.00', 'Unpaid'),
(51, '87', '2024-04-17 16:21:39', '2000.00', 'Unpaid'),
(52, '87', '2024-04-17 17:24:56', '2000.00', 'Unpaid'),
(53, '87', '2024-04-17 17:28:31', '2000.00', 'Unpaid'),
(54, '87', '2024-04-17 17:30:58', '2000.00', 'Unpaid'),
(55, '87', '2024-04-17 17:31:43', '2000.00', 'Unpaid'),
(56, '87', '2024-04-17 17:37:06', '2000.00', 'Unpaid'),
(57, '87', '2024-04-17 17:45:50', '2000.00', 'Unpaid'),
(58, '87', '2024-04-17 17:46:02', '1000.00', 'Unpaid'),
(59, '87', '2024-04-18 09:04:21', '1000.00', 'in_transit'),
(60, '6', '2024-04-18 15:38:06', '1000.00', 'Unpaid'),
(61, '6', '2024-04-18 15:38:53', '3000.00', 'Unpaid'),
(62, '0', '2024-04-18 15:55:49', '1000.00', 'Unpaid'),
(63, '0', '2024-04-18 16:47:21', '1000.00', 'Unpaid'),
(64, '0', '2024-04-18 17:31:13', '1000.00', 'Unpaid'),
(65, '0', '2024-04-19 12:12:54', '1000.00', 'Unpaid'),
(66, '0', '2024-04-21 19:17:36', '1000.00', 'Unpaid'),
(67, '3', '2024-04-21 22:13:04', '1000.00', 'Cancelled'),
(68, '3', '2024-04-21 21:52:13', '1000.00', 'Cancelled'),
(69, '3', '2024-04-21 22:12:57', '1000.00', 'Cancelled'),
(70, '3', '2024-04-21 22:18:16', '0.00', 'Cancelled'),
(71, '3', '2024-04-21 22:20:09', '1000.00', 'Cancelled'),
(72, '3', '2024-04-21 22:27:15', '1000.00', 'Unpaid'),
(73, '3', '2024-04-21 22:28:27', '1000.00', 'Unpaid'),
(74, '3', '2024-04-21 23:03:40', '1000.00', 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_order_items`
--

CREATE TABLE `rpos_order_items` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `prod_id` varchar(200) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `customer_id` varchar(200) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rpos_order_items`
--

INSERT INTO `rpos_order_items` (`order_item_id`, `order_id`, `prod_id`, `product_name`, `quantity`, `unit_price`, `order_date`, `customer_id`, `total_price`) VALUES
(1, 2, '15e583f5e0', NULL, 2, '600.00', '2024-04-03 16:02:09', NULL, '1200.00'),
(2, 2, '754', NULL, 1, '580.00', '2024-04-03 16:02:09', NULL, '580.00'),
(3, 3, '15e583f5e0', NULL, 1, '600.00', '2024-04-03 16:02:09', NULL, '600.00'),
(4, 3, '754', NULL, 1, '580.00', '2024-04-03 16:02:09', NULL, '580.00'),
(5, 4, '15e583f5e0', NULL, 1, '600.00', '2024-04-03 16:02:09', NULL, '600.00'),
(6, 4, '754', NULL, 1, '580.00', '2024-04-03 16:02:09', NULL, '580.00'),
(7, 4, '9', NULL, 1, '3000.00', '2024-04-03 16:02:09', NULL, '3000.00'),
(8, 5, '15e583f5e0', NULL, 4, '600.00', '2024-04-03 16:02:09', NULL, '2400.00'),
(9, 6, '15e583f5e0', NULL, 1, '600.00', '2024-04-03 16:05:21', NULL, '600.00'),
(10, 6, '754', NULL, 1, '580.00', '2024-04-03 16:05:21', NULL, '580.00'),
(11, 7, '754', NULL, 1, '580.00', '2024-04-03 16:21:03', NULL, '580.00'),
(12, 60, '871', NULL, 1, '1000.00', '2024-04-18 15:38:06', NULL, '1000.00'),
(13, 61, '871', NULL, 3, '1000.00', '2024-04-18 15:38:53', NULL, '3000.00'),
(14, 62, '871', NULL, 1, '1000.00', '2024-04-18 15:55:49', NULL, '1000.00'),
(15, 63, '871', NULL, 1, '1000.00', '2024-04-18 16:47:21', NULL, NULL),
(16, 64, '871', NULL, 1, '1000.00', '2024-04-18 17:31:13', NULL, NULL),
(17, 65, '871', NULL, 1, '1000.00', '2024-04-19 12:12:54', NULL, NULL),
(18, 66, '871', NULL, 1, '1000.00', '2024-04-21 19:17:36', NULL, NULL),
(19, 67, '871', NULL, 1, '1000.00', '2024-04-21 21:51:23', NULL, NULL),
(20, 68, '871', NULL, 1, '1000.00', '2024-04-21 21:51:31', NULL, NULL),
(21, 69, '871', NULL, 1, '1000.00', '2024-04-21 22:05:33', NULL, NULL),
(22, 71, '871', NULL, 1, '1000.00', '2024-04-21 22:12:29', NULL, NULL),
(23, 72, '871', NULL, 1, '1000.00', '2024-04-21 22:27:15', NULL, NULL),
(24, 73, '871', NULL, 1, '1000.00', '2024-04-21 22:28:27', NULL, NULL),
(25, 74, '871', NULL, 1, '1000.00', '2024-04-21 22:28:56', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rpos_pass_resets`
--

CREATE TABLE `rpos_pass_resets` (
  `reset_id` int(20) NOT NULL,
  `reset_code` varchar(200) NOT NULL,
  `reset_token` varchar(200) NOT NULL,
  `reset_email` varchar(200) NOT NULL,
  `reset_status` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rpos_pass_resets`
--

INSERT INTO `rpos_pass_resets` (`reset_id`, `reset_code`, `reset_token`, `reset_email`, `reset_status`, `created_at`) VALUES
(1, '63KU9QDGSO', '4ac4cee0a94e82a2aedc311617aa437e218bdf68', 'sysadmin@icofee.org', 'Pending', '2020-08-17 15:20:14.318643'),
(2, 'C0UIXVD7GK', '6aa2c018026076f70a56a71b43427165c926d9f6', 'admin@mail.com', 'Pending', '2024-04-10 11:30:55.859829');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_payments`
--

CREATE TABLE `rpos_payments` (
  `payment_id` int(11) NOT NULL,
  `order_code` varchar(200) NOT NULL,
  `customer_id` varchar(200) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rpos_payments`
--

INSERT INTO `rpos_payments` (`payment_id`, `order_code`, `customer_id`, `total_price`, `payment_method`, `order_date`, `order_id`) VALUES
(35830, 'ORD123', '1', '1000.00', 'Cash', '2024-04-03 07:30:00', 12345);

-- --------------------------------------------------------

--
-- Table structure for table `rpos_products`
--

CREATE TABLE `rpos_products` (
  `prod_id` varchar(200) NOT NULL,
  `prod_code` varchar(200) NOT NULL,
  `prod_name` varchar(200) NOT NULL,
  `prod_img` varchar(200) NOT NULL,
  `prod_desc` longtext NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `prod_inventory` int(11) DEFAULT 0,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rpos_products`
--

INSERT INTO `rpos_products` (`prod_id`, `prod_code`, `prod_name`, `prod_img`, `prod_desc`, `unit_price`, `prod_inventory`, `created_at`) VALUES
('871b6e64ed', 'ENYZ-4326', 'harmer', 'harmer.png', 'harmer', '1000.00', 100, '2024-04-21 22:55:26.299817');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_receipts`
--

CREATE TABLE `rpos_receipts` (
  `id` int(11) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rpos_receipts`
--

INSERT INTO `rpos_receipts` (`id`, `order_id`, `customer_name`, `product_name`, `unit_price`, `quantity`, `total_price`, `date`) VALUES
(1, 'ORD-20240331165333-6256', 'John Doe', '0', '10.00', 2, '20.00', '2024-03-31'),
(2, 'ORD-20240331170748-4824', 'John Doe', '0', '10.00', 2, '20.00', '2024-03-31'),
(3, 'ORD-20240331170755-3995', 'John Doe', '0', '10.00', 2, '20.00', '2024-03-31'),
(4, 'ORD-20240331171223-2618', 'John Doe', '0', '10.00', 2, '20.00', '2024-03-31'),
(5, '<br />\r\n<b>Warning</b>:  Undefined variable $orderID in <b>C:\\xampp\\htdocs\\POS2\\pos\\admin\\payment_op', '<br />\r\n<b>Warning</b>:  Undefined variable $customerName in <b>C:\\xampp\\htdocs\\POS2\\pos\\admin\\payme', '<br />\r\n<b>Warning</b>:  Undefined variable $productName in <b>C:\\xampp\\htdocs\\POS2\\pos\\admin\\paymen', '0.00', 0, '0.00', '0000-00-00'),
(6, '<br />\r\n<b>Warning</b>:  Undefined variable $orderID in <b>C:\\xampp\\htdocs\\POS2\\pos\\admin\\payment_op', '<br />\r\n<b>Warning</b>:  Undefined variable $customerName in <b>C:\\xampp\\htdocs\\POS2\\pos\\admin\\payme', '<br />\r\n<b>Warning</b>:  Undefined variable $productName in <b>C:\\xampp\\htdocs\\POS2\\pos\\admin\\paymen', '0.00', 0, '0.00', '0000-00-00'),
(7, '<br />\r\n<b>Warning</b>:  Undefined variable $orderID in <b>C:\\xampp\\htdocs\\POS2\\pos\\admin\\payment_op', '<br />\r\n<b>Warning</b>:  Undefined variable $customerName in <b>C:\\xampp\\htdocs\\POS2\\pos\\admin\\payme', '<br />\r\n<b>Warning</b>:  Undefined variable $productName in <b>C:\\xampp\\htdocs\\POS2\\pos\\admin\\paymen', '0.00', 0, '0.00', '0000-00-00'),
(8, '<br />\r\n<b>Warning</b>:  Undefined variable $orderID in <b>C:\\xampp\\htdocs\\POS2\\pos\\admin\\receipts.p', '<br />\r\n<b>Warning</b>:  Undefined variable $customerName in <b>C:\\xampp\\htdocs\\POS2\\pos\\admin\\recei', '<br />\r\n<b>Warning</b>:  Undefined variable $productName in <b>C:\\xampp\\htdocs\\POS2\\pos\\admin\\receip', '0.00', 0, '0.00', '0000-00-00'),
(9, 'ORD202403311838494139', '', '', '0.00', 0, '0.00', '2024-03-31'),
(10, 'ORD202403311845211391', 'John Doe', 'Product XYZ', '100.00', 2, '200.00', '2024-03-31'),
(11, 'ORD202403311846349673', 'John Doe', 'Product XYZ', '100.00', 2, '200.00', '2024-03-31'),
(12, 'ORD202403311847267998', '', '', '0.00', 0, '0.00', '2024-03-31'),
(13, 'ORD202403311918152924', '', '', '0.00', 0, '0.00', '2024-03-31'),
(14, 'ORD202403312004379296', '', '', '0.00', 0, '0.00', '2024-03-31'),
(15, 'ORD202403312008472001', '', '', '0.00', 0, '0.00', '2024-03-31'),
(16, 'ORD202403312032551170', '', '', '0.00', 0, '0.00', '2024-03-31'),
(17, 'ORD202403312041227229', '', '', '0.00', 0, '0.00', '2024-03-31'),
(18, 'ORD202403312042415204', '', '', '0.00', 0, '0.00', '2024-03-31');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_staff`
--

CREATE TABLE `rpos_staff` (
  `staff_id` int(20) NOT NULL,
  `staff_name` varchar(200) NOT NULL,
  `staff_number` varchar(200) NOT NULL,
  `staff_email` varchar(200) NOT NULL,
  `staff_password` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `payment_method` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rpos_staff`
--

INSERT INTO `rpos_staff` (`staff_id`, `staff_name`, `staff_number`, `staff_email`, `staff_password`, `created_at`, `payment_method`) VALUES
(3, ' steve', 'VHIL-0613', 'steve@gmail.com', '8e0bcaf48c3d73dd20446069de668cdfac6bf51c', '2024-03-27 09:29:09.455275', '');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_suppliers`
--

CREATE TABLE `rpos_suppliers` (
  `supplier_id` varchar(200) NOT NULL,
  `supplier_name` varchar(200) NOT NULL,
  `supplier_phoneno` varchar(200) NOT NULL,
  `supplier_email` varchar(200) NOT NULL,
  `supplier_password` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rpos_suppliers`
--

INSERT INTO `rpos_suppliers` (`supplier_id`, `supplier_name`, `supplier_phoneno`, `supplier_email`, `supplier_password`, `created_at`) VALUES
('z2mCfkbT', 'steve', '0759621951', 'steve@gmail.com', '8e0bcaf48c3d73dd20446069de668cdfac6bf51c', '2024-03-27 20:02:02.742280'),
('1n5oNnxl', 'delo', '0759621951', 'delo@gmail.com', '788c31959e0031c7ede187c744ad1a874f4eb592', '2024-03-27 20:07:42.820123'),
('emgxWx98', 'theelueb', '0759621951', 'theelueb@gmail.com', '8e0bcaf48c3d73dd20446069de668cdfac6bf51c', '2024-03-28 07:11:55.914059'),
('em1Mas5D', 'nderu', '0759621951', 'nderu@gmail.com', '156ce07c403c4352d6d33f1d59bb7969d1599c2f', '2024-03-28 11:34:54.931597'),
('76X6jM4Z', 'sponyo', '0759621951', 'sponyo@gmail.com', '6fcc8851f9614a4eadb598ef0040f30d62bdc397', '2024-03-29 12:07:17.810655'),
('B9jFUaSB', 'new', '0759621951', 'new@gmail.com', '63982e54a7aeb0d89910475ba6dbd3ca6dd4e5a1', '2024-04-02 18:08:31.569015');

-- --------------------------------------------------------

--
-- Table structure for table `stk_push_transactions`
--

CREATE TABLE `stk_push_transactions` (
  `id` int(11) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mpesa_payments`
--
ALTER TABLE `mpesa_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rpos_admin`
--
ALTER TABLE `rpos_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `rpos_customers`
--
ALTER TABLE `rpos_customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_email` (`customer_email`);

--
-- Indexes for table `rpos_orders`
--
ALTER TABLE `rpos_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `rpos_order_items`
--
ALTER TABLE `rpos_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `rpos_pass_resets`
--
ALTER TABLE `rpos_pass_resets`
  ADD PRIMARY KEY (`reset_id`);

--
-- Indexes for table `rpos_payments`
--
ALTER TABLE `rpos_payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `order` (`order_code`);

--
-- Indexes for table `rpos_products`
--
ALTER TABLE `rpos_products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `rpos_receipts`
--
ALTER TABLE `rpos_receipts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rpos_staff`
--
ALTER TABLE `rpos_staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `stk_push_transactions`
--
ALTER TABLE `stk_push_transactions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mpesa_payments`
--
ALTER TABLE `mpesa_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rpos_orders`
--
ALTER TABLE `rpos_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `rpos_order_items`
--
ALTER TABLE `rpos_order_items`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `rpos_pass_resets`
--
ALTER TABLE `rpos_pass_resets`
  MODIFY `reset_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rpos_payments`
--
ALTER TABLE `rpos_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35831;

--
-- AUTO_INCREMENT for table `rpos_receipts`
--
ALTER TABLE `rpos_receipts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `rpos_staff`
--
ALTER TABLE `rpos_staff`
  MODIFY `staff_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stk_push_transactions`
--
ALTER TABLE `stk_push_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rpos_order_items`
--
ALTER TABLE `rpos_order_items`
  ADD CONSTRAINT `rpos_order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `rpos_orders` (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
