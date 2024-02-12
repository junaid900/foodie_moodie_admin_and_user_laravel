-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 12, 2024 at 12:52 PM
-- Server version: 5.7.44
-- PHP Version: 8.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `junaidali_foodie`
--

-- --------------------------------------------------------

--
-- Table structure for table `absher_express`
--

CREATE TABLE `absher_express` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pickup_name` text NOT NULL,
  `pickup_phone` text NOT NULL,
  `pickup_address` text NOT NULL,
  `dropoff_name` text NOT NULL,
  `dropoff_phone` text NOT NULL,
  `dropoff_address` text NOT NULL,
  `pickup_address_details` text NOT NULL,
  `dropoff_address_details` text NOT NULL,
  `price` int(11) NOT NULL,
  `pickup_lat` varchar(20) NOT NULL,
  `pickup_lng` varchar(20) NOT NULL,
  `dropoff_lat` varchar(20) NOT NULL,
  `dropoff_lng` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absher_express`
--

INSERT INTO `absher_express` (`id`, `user_id`, `pickup_name`, `pickup_phone`, `pickup_address`, `dropoff_name`, `dropoff_phone`, `dropoff_address`, `pickup_address_details`, `dropoff_address_details`, `price`, `pickup_lat`, `pickup_lng`, `dropoff_lat`, `dropoff_lng`, `description`, `category_id`, `timestamp`, `status`, `created_at`, `updated_at`) VALUES
(2, 0, 'Muhammad', '1234', 'abc street', 'Khizer', '98765', 'xyz street', '', '', 1234, '0.123', '0.345', '0.456', '0.343', 'This is a description', 1, '2023-03-01 15:24:19', 'pending', '2023-03-01 06:24:19', '2023-03-01 06:24:19'),
(4, 16, 'Muhammad', '1234', 'abc street', 'Khizer', '98765', 'xyz street', '', '', 1234, '0.123', '0.345', '0.456', '0.343', 'This is a description', 1, '2023-03-01 16:12:46', 'pending', '2023-03-01 07:12:46', '2023-03-01 07:12:46'),
(5, 16, 'Muhammad', '1234', 'abc street', 'Khizer', '98765', 'xyz street', 'pickup_address_details', 'pickup description', 1234, '0.123', '0.345', '0.456', '0.343', 'This is a description', 1, '2023-03-01 16:42:59', 'pending', '2023-03-01 07:42:59', '2023-03-01 07:42:59'),
(6, 16, 'Muhammad 4th', '03056860156', '6GG8+C8Q, Main Madni St, Gulraiz Town, Multan, Punjab 60000, Pakistan', 'Anas', '03056860157', '6GH8+X7X, Basti Nil Kot, Multan, Punjab, Pakistan', 'abc @gmail.com', 'xyz', 30, '30.2260538', '71.5158187', '30.2298715194674', '71.51595320552588', 'description', 1, '2023-03-02 10:21:54', 'pending', '2023-03-02 01:21:54', '2023-03-02 01:21:54'),
(7, 16, 'Anas', '123', '6GG8+C8Q, Main Madni St, Gulraiz Town, Multan, Punjab 60000, Pakistan', 'Anas', '1234', '6GC8+M3W, opp. madina traders, near qaiserabad, Qaiserabad, Multan, Punjab 60000, Pakistan', 'abcd', 'xyz', 30, '30.2260275', '71.5159066', '30.22169198708298', '71.51583317667246', 'description', 2, '2023-03-02 10:24:48', 'pending', '2023-03-02 01:24:48', '2023-03-02 01:24:48');

-- --------------------------------------------------------

--
-- Table structure for table `absher_express_tracking`
--

CREATE TABLE `absher_express_tracking` (
  `id` int(11) NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `description` text NOT NULL,
  `express_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `account_transactions`
--

CREATE TABLE `account_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `current_balance` decimal(24,2) NOT NULL,
  `amount` decimal(24,2) NOT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `add_ons`
--

CREATE TABLE `add_ons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(24,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_ons`
--

INSERT INTO `add_ons` (`id`, `name`, `price`, `created_at`, `updated_at`, `restaurant_id`, `status`) VALUES
(1, 'Cheese', 50.00, '2021-08-21 14:19:15', '2023-07-27 02:31:16', 1, 1),
(2, 'Cheese', 15.00, '2021-08-21 14:19:43', '2021-08-21 14:19:43', 2, 1),
(3, 'Cheese', 15.00, '2021-08-21 14:20:33', '2021-08-21 14:20:33', 9, 1),
(4, 'Coke', 10.00, '2021-08-21 14:21:51', '2021-08-21 14:21:51', 9, 1),
(5, 'Extra Spice', 5.00, '2021-08-21 14:23:05', '2021-08-21 14:23:05', 9, 1),
(6, 'Cheese', 10.00, '2021-08-21 14:29:48', '2021-08-21 14:29:48', 14, 1),
(7, 'Extra Spice', 5.00, '2021-08-21 14:30:01', '2021-08-21 14:30:01', 14, 1),
(8, 'Extra Chicken', 15.00, '2021-08-21 14:30:18', '2021-08-21 14:30:18', 14, 1),
(9, 'Extra Beef', 50.00, '2021-08-21 15:21:50', '2021-08-21 15:21:50', 14, 1),
(10, 'SALAD', 10.00, '2021-08-21 15:22:09', '2021-08-21 15:22:09', 14, 1),
(11, 'Sauce', 5.00, '2021-08-21 15:22:31', '2021-08-21 15:22:31', 14, 1),
(12, 'salad', 10.00, '2021-08-21 15:27:11', '2021-08-21 15:27:11', 1, 1),
(13, 'extra beef', 40.00, '2021-08-21 15:27:32', '2021-08-21 15:27:32', 1, 1),
(14, 'extra chicken', 30.00, '2021-08-21 15:27:45', '2021-08-21 15:27:45', 1, 1),
(15, 'sauce', 5.00, '2021-08-21 15:27:55', '2021-08-21 15:27:55', 1, 1),
(16, 'Coke', 15.00, '2021-08-21 15:41:15', '2021-08-21 15:41:15', 13, 1),
(17, 'Pepsi', 18.00, '2021-08-21 15:41:30', '2021-08-21 15:41:30', 13, 1),
(18, 'Extra Cheese', 19.00, '2021-08-21 15:44:11', '2021-08-21 15:44:11', 13, 1),
(19, 'Extra Chicken', 14.00, '2021-08-21 16:07:48', '2021-08-21 16:07:48', 13, 1),
(20, 'Extra Meat', 18.00, '2021-08-21 16:07:59', '2021-08-21 16:07:59', 13, 1),
(21, 'Sauce', 5.00, '2021-08-21 16:13:10', '2021-08-21 16:13:10', 8, 1),
(22, 'Extra Chicken', 39.00, '2021-08-21 16:13:25', '2021-08-21 16:13:25', 8, 1),
(23, 'Extra Beef', 50.00, '2021-08-21 16:13:35', '2021-08-21 16:13:35', 8, 1),
(24, 'salad', 10.00, '2021-08-21 16:13:44', '2021-08-21 16:13:44', 8, 1),
(25, 'Coke', 15.00, '2021-08-21 16:18:05', '2021-08-21 16:18:05', 14, 1),
(26, 'Pepsi', 18.00, '2021-08-21 16:18:29', '2021-08-21 16:18:29', 14, 1),
(27, 'Tomato Sauce', 10.00, '2021-08-21 17:01:41', '2021-08-21 17:03:37', 10, 1),
(28, 'Hot Sauce', 12.00, '2021-08-21 17:03:52', '2021-08-21 17:03:52', 10, 1),
(29, 'Taco Sauce', 11.00, '2021-08-21 17:04:26', '2021-08-21 17:04:26', 10, 1),
(30, 'Coke', 12.00, '2021-08-21 17:29:24', '2021-08-21 17:29:24', 2, 1),
(31, 'Pepsi', 18.00, '2021-08-21 17:29:34', '2021-08-21 17:29:34', 2, 1),
(32, 'Sauce', 11.00, '2021-08-21 17:29:59', '2021-08-21 17:29:59', 2, 1),
(33, 'Extra Spice', 9.00, '2021-08-21 17:32:13', '2021-08-21 17:32:13', 2, 1),
(34, 'Extra Meat', 14.00, '2021-08-21 17:32:24', '2021-08-21 17:32:24', 2, 1),
(35, 'Extra Chicken', 12.00, '2021-08-21 17:32:35', '2021-08-21 17:32:35', 2, 1),
(36, 'Tomato Sauce', 10.00, '2021-08-21 17:44:58', '2021-08-21 17:44:58', 6, 1),
(37, 'Hot Sauce', 12.00, '2021-08-21 17:45:07', '2021-08-21 17:45:07', 6, 1),
(38, 'Soft Drinks', 20.00, '2021-08-21 17:45:48', '2021-08-21 17:45:48', 6, 1),
(39, 'Tomato Sauce', 10.00, '2021-08-21 18:20:37', '2021-08-21 18:20:37', 3, 1),
(40, 'Soft Drinks', 20.00, '2021-08-21 20:26:27', '2021-08-21 20:26:27', 12, 1),
(41, 'picante', 1.00, '2022-12-29 12:25:17', '2022-12-29 12:25:17', 1, 1),
(42, 'Extra Black Pepper', 50.00, '2023-07-27 00:52:22', '2023-07-27 00:52:22', 1, 1),
(43, 'Testing Add on', 25.00, '2023-08-12 03:11:54', '2023-08-12 03:11:54', 1, 1),
(44, 'cheese', 50.00, '2023-10-12 03:56:54', '2023-10-12 03:56:54', 5, 1),
(45, 'Sauce', 30.00, '2023-10-12 03:58:04', '2023-10-12 03:58:04', 5, 1),
(46, 'extra', 80.00, '2023-10-12 03:58:48', '2023-10-12 03:58:48', 5, 1),
(47, 'salad', 20.00, '2023-10-17 00:43:01', '2023-10-17 00:43:01', 4, 1),
(48, 'sauce', 10.00, '2023-10-17 00:43:57', '2023-10-17 00:43:57', 4, 1),
(49, 'extra chicken', 40.00, '2023-10-17 00:44:41', '2023-10-17 00:44:41', 4, 1),
(50, 'beaf', 50.00, '2023-10-17 00:45:27', '2023-10-17 00:45:27', 4, 1),
(51, 'Pista flavour', 80.00, '2023-10-31 11:54:41', '2023-10-31 11:54:41', 1, 1),
(52, 'chocoletty', 50.00, '2023-10-31 11:55:11', '2023-10-31 11:55:11', 1, 1),
(53, 'salad', 30.00, '2023-11-06 10:31:17', '2023-11-06 10:31:17', 7, 1),
(54, 'Dahi-raita', 40.00, '2023-11-06 10:31:55', '2023-11-06 10:31:55', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `f_name`, `l_name`, `phone`, `email`, `image`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`, `zone_id`) VALUES
(2, 'Junaid', 'Ali', '03043372285', 'junaidaliansaree@gmail.com', '2023-06-12-6486de9103ab6.png', '$2y$10$p8NSjrx3LhBh39Rm4/wjs.4PMPAS6tOQpMvNlso5JnXoke6ztxDpO', 'fICl1UvSlL1jj2ptniti3xS6FkP6FwljlK4NJxNCVbHGoFrxmSAYpATAkHHr', NULL, '2023-06-12 00:00:01', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modules` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `modules`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Master Admin', NULL, 1, NULL, NULL),
(4, 'test', '[\"custom_role\",\"customerList\",\"notification\",\"order\"]', 1, '2022-12-22 07:24:37', '2022-12-22 07:24:37'),
(5, 'Chef', '[\"restaurant\"]', 1, '2022-12-29 12:11:37', '2022-12-29 12:11:37');

-- --------------------------------------------------------

--
-- Table structure for table `admin_wallets`
--

CREATE TABLE `admin_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `total_commission_earning` decimal(24,2) NOT NULL DEFAULT '0.00',
  `digital_received` decimal(24,2) NOT NULL DEFAULT '0.00',
  `manual_received` decimal(24,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivery_charge` decimal(8,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_wallets`
--

INSERT INTO `admin_wallets` (`id`, `admin_id`, `total_commission_earning`, `digital_received`, `manual_received`, `created_at`, `updated_at`, `delivery_charge`) VALUES
(1, 1, 1788.11, 14938.64, 2211.90, '2021-08-21 13:54:22', '2022-01-20 18:25:32', 29638.84),
(2, 2, 0.00, 0.00, 753.00, '2023-06-15 03:42:21', '2023-06-15 03:44:12', 20.00);

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Size', '2021-08-20 20:57:27', '2021-08-20 20:57:27'),
(2, 'Capacity', '2021-08-20 20:57:50', '2021-08-20 20:57:50'),
(3, 'Type', '2021-12-05 18:48:51', '2021-12-05 18:48:51'),
(4, 'Color', '2022-12-29 12:24:37', '2022-12-29 12:24:37');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `data` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `type`, `image`, `status`, `data`, `created_at`, `updated_at`, `zone_id`) VALUES
(6, 'Free Shipping', 'restaurant_wise', '2023-02-22-63f64efec1ae5.png', 1, '1', '2023-01-25 12:07:50', '2023-02-22 08:21:02', 1),
(7, 'Banner2', 'restaurant_wise', '2023-02-22-63f651cf23fc5.png', 1, '1', '2023-02-22 08:22:21', '2023-02-22 08:33:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `business_requests`
--

CREATE TABLE `business_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business_requests`
--

INSERT INTO `business_requests` (`id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'rejected', '2023-06-25 23:22:10', '2023-06-26 08:30:27'),
(2, 24, 'pending', '2023-06-25 23:49:59', '2023-06-25 23:49:59'),
(3, 29, 'pending', '2023-08-02 01:27:16', '2023-08-02 01:27:16'),
(4, 37, 'pending', '2023-10-24 23:57:48', '2023-10-24 23:57:48'),
(5, 52, 'pending', '2023-11-02 10:10:43', '2023-11-02 10:10:43');

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'cash_on_delivery', '{\"status\":\"1\"}', '2021-05-11 03:56:38', '2021-09-09 22:27:34'),
(2, 'stripe', '{\"status\":\"0\",\"api_key\":null,\"published_key\":null}', '2021-05-11 03:57:02', '2021-09-09 22:28:18'),
(4, 'mail_config', NULL, NULL, '2021-05-11 04:14:06'),
(5, 'fcm_project_id', NULL, NULL, NULL),
(6, 'push_notification_key', 'AAAAqAhFBX4:APA91bEi_wgiH79V84scXGKJRR46G105hPOh_yfrYYGydjIIiIut1n5i4BCUT_bu-oGoYPnrCulvRaevERs-Gjn-nTymo7fY8T0PFuL99iZLBqfvy05ESHYyuONO8SG6eTJORRHKUNk5', NULL, NULL),
(7, 'order_pending_message', '{\"status\":0,\"message\":\" Pending orders.\"}', NULL, NULL),
(8, 'order_confirmation_msg', '{\"status\":0,\"message\":\" been confirmed.\"}', NULL, NULL),
(9, 'order_processing_message', '{\"status\":0,\"message\":\" is preparing.\"}', NULL, NULL),
(10, 'out_for_delivery_message', '{\"status\":0,\"message\":\" out for delivery.\"}', NULL, NULL),
(11, 'order_delivered_message', '{\"status\":0,\"message\":\"Your order has been delivered.\"}', NULL, NULL),
(12, 'delivery_boy_assign_message', '{\"status\":0,\"message\":\" assigned to rider.\"}', NULL, NULL),
(13, 'delivery_boy_start_message', '{\"status\":0,\"message\":\" on the way.\"}', NULL, NULL),
(14, 'delivery_boy_delivered_message', '{\"status\":0,\"message\":\" delivered\"}', NULL, NULL),
(15, 'terms_and_conditions', NULL, NULL, '2021-06-29 06:44:49'),
(16, 'business_name', 'FOODIE MOODIE', NULL, NULL),
(17, 'currency', 'PKR', NULL, NULL),
(18, 'logo', '2023-06-12-6486e0aaf2dab.png', NULL, NULL),
(19, 'phone', '0123456789', NULL, NULL),
(20, 'email_address', 'admin@admin.com', NULL, NULL),
(21, 'address', '307 AVENUE, BERTHELOT, 69008 LYON', NULL, NULL),
(22, 'footer_text', 'Footer Text', NULL, NULL),
(23, 'customer_verification', '1', NULL, NULL),
(24, 'map_api_key', 'AIzaSyA7ks8X2YnLcxTuEC3qydL2adzA0NYbl6c', NULL, NULL),
(25, 'privacy_policy', NULL, NULL, '2021-06-28 09:46:55'),
(26, 'about_us', NULL, NULL, '2021-06-29 06:43:25'),
(27, 'minimum_shipping_charge', '0', NULL, NULL),
(28, 'per_km_shipping_charge', '0', NULL, NULL),
(29, 'ssl_commerz_payment', '{\"status\":\"0\",\"store_id\":null,\"store_password\":null}', '2021-07-04 08:52:20', '2021-09-09 22:28:30'),
(30, 'razor_pay', '{\"status\":\"0\",\"razor_key\":null,\"razor_secret\":null}', '2021-07-04 08:53:04', '2021-09-09 22:28:25'),
(31, 'digital_payment', '{\"status\":\"1\"}', '2021-07-04 08:53:10', '2021-10-16 03:11:55'),
(32, 'paypal', '{\"status\":\"0\",\"paypal_client_id\":null,\"paypal_secret\":null}', '2021-07-04 08:53:18', '2021-09-09 22:28:36'),
(33, 'paystack', '{\"status\":\"0\",\"publicKey\":null,\"secretKey\":null,\"paymentUrl\":null,\"merchantEmail\":null}', '2021-07-04 09:14:07', '2021-10-16 03:12:17'),
(34, 'senang_pay', '{\"status\":null,\"secret_key\":null,\"published_key\":null,\"merchant_id\":null}', '2021-07-04 09:14:13', '2021-09-09 22:28:04'),
(35, 'order_handover_message', '{\"status\":0,\"message\":null}', NULL, NULL),
(36, 'order_cancled_message', '{\"status\":0,\"message\":null}', NULL, NULL),
(37, 'timezone', 'Asia/Karachi', NULL, NULL),
(38, 'order_delivery_verification', '1', NULL, NULL),
(39, 'currency_symbol_position', 'left', NULL, NULL),
(40, 'schedule_order', '1', NULL, NULL),
(41, 'app_minimum_version', '0', NULL, NULL),
(42, 'tax', NULL, NULL, NULL),
(43, 'admin_commission', '0', NULL, NULL),
(44, 'country', 'AF', NULL, NULL),
(45, 'app_url', 'up_comming', NULL, NULL),
(46, 'default_location', '{\"lat\":\"30.174786255552835\",\"lng\":\"71.50936603546143\"}', NULL, NULL),
(47, 'twilio_sms', '{\"status\":\"0\",\"sid\":null,\"messaging_service_id\":null,\"token\":null,\"from\":null,\"otp_template\":\"Your otp is #OTP#.\"}', '2021-10-16 03:10:30', '2021-10-16 03:10:30'),
(48, 'nexmo_sms', '{\"status\":\"0\",\"api_key\":null,\"api_secret\":null,\"signature_secret\":\"\",\"private_key\":\"\",\"application_id\":\"\",\"from\":null,\"otp_template\":\"Your otp is #OTP#.\"}', '2021-10-16 03:10:22', '2021-10-16 03:10:22'),
(49, '2factor_sms', '{\"status\":\"0\",\"api_key\":\"Your otp is #OTP#.\"}', '2022-10-26 08:57:10', '2022-10-26 08:57:10'),
(50, 'msg91_sms', '{\"status\":\"0\",\"template_id\":null,\"authkey\":null}', '2021-10-16 03:09:59', '2021-10-16 03:09:59'),
(51, 'admin_order_notification', '1', NULL, NULL),
(52, 'free_delivery_over', NULL, NULL, NULL),
(53, 'maintenance_mode', '0', '2021-09-09 21:33:55', '2022-11-29 08:18:19'),
(54, 'app_minimum_version_android', NULL, NULL, NULL),
(55, 'app_minimum_version_ios', NULL, NULL, NULL),
(56, 'app_url_android', NULL, NULL, NULL),
(57, 'app_url_ios', NULL, NULL, NULL),
(58, 'dm_maximum_orders', '1', NULL, NULL),
(59, 'flutterwave', '{\"status\":\"1\",\"public_key\":null,\"secret_key\":null,\"hash\":null}', '2021-09-23 06:51:28', '2021-10-16 03:12:01'),
(60, 'order_confirmation_model', 'deliveryman', NULL, NULL),
(61, 'mercadopago', '{\"status\":null,\"public_key\":null,\"access_token\":null}', NULL, '2021-10-16 03:12:09'),
(62, 'popular_food', '1', NULL, NULL),
(63, 'popular_restaurant', '0', NULL, NULL),
(64, 'new_restaurant', '1', NULL, NULL),
(65, 'landing_page_text', '{\"header_title_1\":\"Food App\",\"header_title_2\":\"Why stay hungry when you can order from StackFood\",\"header_title_3\":\"Get 10% OFF on your first order\",\"about_title\":\"StackFood is Best Delivery Service Near You\",\"why_choose_us\":\"Why Choose Us?\",\"why_choose_us_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\",\"testimonial_title\":\"Trusted by Customer & Restaurant Owner\",\"footer_article\":\"Suspendisse ultrices at diam lectus nullam. Nisl, sagittis viverra enim erat tortor ultricies massa turpis. Arcu pulvinar.\"}', '2021-10-31 15:21:57', '2021-10-31 15:21:57'),
(66, 'landing_page_links', '{\"app_url_android_status\":\"1\",\"app_url_android\":\"https:\\/\\/play.google.com\",\"app_url_ios_status\":\"1\",\"app_url_ios\":\"https:\\/\\/www.apple.com\\/app-store\",\"web_app_url_status\":\"1\",\"web_app_url\":\"https:\\/\\/stackfood.6amtech.com\\/\"}', '2021-10-31 15:21:57', '2021-10-31 15:21:57'),
(67, 'speciality', '[{\"img\":\"clean_&_cheap_icon.png\",\"title\":\"Clean & Cheap Price\"},{\"img\":\"best_dishes_icon.png\",\"title\":\"Best Dishes Near You\"},{\"img\":\"virtual_restaurant_icon.png\",\"title\":\"Your Own Virtual Restaurant\"}]', '2021-10-31 15:21:57', '2021-10-31 15:21:57'),
(68, 'testimonial', '[{\"img\":\"2021-10-28-617aa5a9e4b4a.png\",\"name\":\"Barry Allen\",\"position\":\"Web Designer\",\"detail\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. A\\r\\n                    aliquam amet animi blanditiis consequatur debitis dicta\\r\\n                    distinctio, enim error eum iste libero modi nam natus\\r\\n                    perferendis possimus quasi sint sit tempora voluptatem. Est,\\r\\n                    exercitationem id ipsa ipsum laboriosam perferendis temporibus!\"},{\"img\":\"2021-10-28-617aa9b13c57b.png\",\"name\":\"Sophia Martino\",\"position\":\"Web Designer\",\"detail\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aliquam amet animi blanditiis consequatur debitis dicta distinctio, enim error eum iste libero modi nam natus perferendis possimus quasi sint sit tempora voluptatem. Est, exercitationem id ipsa ipsum laboriosam perferendis temporibus!\"},{\"img\":\"2021-10-28-617aa9db9752d.png\",\"name\":\"Alan Turing\",\"position\":\"Web Designer\",\"detail\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aliquam amet animi blanditiis consequatur debitis dicta distinctio, enim error eum iste libero modi nam natus perferendis possimus quasi sint sit tempora voluptatem. Est, exercitationem id ipsa ipsum laboriosam perferendis temporibus!\"},{\"img\":\"2021-10-28-617aa9faa8c78.png\",\"name\":\"Ann Marie\",\"position\":\"Web Designer\",\"detail\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aliquam amet animi blanditiis consequatur debitis dicta distinctio, enim error eum iste libero modi nam natus perferendis possimus quasi sint sit tempora voluptatem. Est, exercitationem id ipsa ipsum laboriosam perferendis temporibus!\"}]', '2021-10-31 15:21:57', '2021-10-31 15:21:57'),
(69, 'most_reviewed_foods', '0', NULL, NULL),
(70, 'paymob_accept', '{\"status\":\"0\",\"api_key\":null,\"iframe_id\":null,\"integration_id\":null,\"hmac\":null}', NULL, '2021-11-12 21:02:39'),
(71, 'timeformat', '24', NULL, NULL),
(72, 'canceled_by_restaurant', '0', NULL, NULL),
(73, 'canceled_by_deliveryman', '0', NULL, NULL),
(74, 'show_dm_earning', NULL, NULL, NULL),
(75, 'toggle_veg_non_veg', NULL, NULL, NULL),
(76, 'toggle_dm_registration', NULL, NULL, NULL),
(77, 'toggle_restaurant_registration', NULL, NULL, NULL),
(78, 'recaptcha', '{\"status\":\"0\",\"site_key\":null,\"secret_key\":null}', '2022-01-09 20:03:59', '2022-01-09 20:03:59'),
(79, 'language', '[\"en\"]', NULL, NULL),
(80, 'schedule_order_slot_duration', '0', NULL, NULL),
(81, 'digit_after_decimal_point', '0', NULL, NULL),
(82, 'icon', '2023-06-12-6486e0aaf3e78.png', NULL, NULL),
(83, 'delivery_charge_comission', '0', '2022-07-03 17:07:00', '2022-07-03 17:07:00'),
(84, 'dm_max_cash_in_hand', '10000', '2022-07-03 17:07:00', '2022-07-03 17:07:00'),
(85, 'theme', '1', '2022-07-03 17:37:00', '2022-07-03 17:37:00'),
(86, 'dm_tips_status', NULL, NULL, NULL),
(87, 'wallet_status', '0', NULL, NULL),
(88, 'loyalty_point_status', '1', NULL, NULL),
(89, 'ref_earning_status', '1', NULL, NULL),
(90, 'wallet_add_refund', '1', NULL, NULL),
(91, 'loyalty_point_exchange_rate', '2', NULL, NULL),
(92, 'ref_earning_exchange_rate', '1', NULL, NULL),
(93, 'loyalty_point_item_purchase_point', '20', NULL, NULL),
(94, 'loyalty_point_minimum_point', '2000', NULL, NULL),
(95, 'order_refunded_message', '{\"status\":0,\"message\":null}', NULL, NULL),
(96, 'fcm_credentials', '{\"apiKey\":\"\",\"authDomain\":\"\",\"projectId\":\"\",\"storageBucket\":\"\",\"messagingSenderId\":\"\",\"appId\":\"\",\"measurementId\":\"\"}', NULL, NULL),
(97, 'feature', '[]', NULL, NULL),
(98, 'map_api_key_server', 'AIzaSyA7ks8X2YnLcxTuEC3qydL2adzA0NYbl6c', NULL, NULL),
(99, 'liqpay', '{\"status\":null,\"public_key\":null,\"private_key\":null}', NULL, '2023-01-30 02:16:30'),
(100, 'whatsapp_no', '923039203801', NULL, NULL),
(101, 'twilio_sms', '5d186a619ae6c540a1ef317ac7339a46', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `business_slider`
--

CREATE TABLE `business_slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business_slider`
--

INSERT INTO `business_slider` (`id`, `business_id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, '2023-02-22-63f651cf23fc5.png', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `business_types`
--

CREATE TABLE `business_types` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business_types`
--

INSERT INTO `business_types` (`id`, `type`, `created_at`) VALUES
(1, 'Restaurant', '2023-01-31 09:49:40'),
(2, 'Store', '2023-01-31 09:49:40'),
(3, 'Pharmacy', '2023-01-31 09:49:46');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `title`, `image`, `description`, `status`, `admin_id`, `created_at`, `updated_at`, `start_date`, `end_date`, `start_time`, `end_time`) VALUES
(1, 'Mega Sale', '2021-08-21-6120028199deb.png', 'This is a test Campaign by admin. You can join for testing purposes only. Offer your best food and increase your earnings.', 1, NULL, '2021-08-20 21:54:59', '2021-08-21 01:29:05', '2021-08-20', '2025-02-20', '00:01:00', '23:59:00'),
(2, 'Feliz Navidad', '2022-12-29-63ae07abf2134.png', '20% Sale during navidad', 1, NULL, '2022-12-29 12:33:32', '2023-01-24 01:44:36', '2023-02-12', '3200-04-12', '12:02:00', '23:01:00');

-- --------------------------------------------------------

--
-- Table structure for table `campaign_restaurant`
--

CREATE TABLE `campaign_restaurant` (
  `campaign_id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaign_restaurant`
--

INSERT INTO `campaign_restaurant` (`campaign_id`, `restaurant_id`) VALUES
(1, 1),
(1, 3),
(1, 6),
(1, 2),
(1, 1),
(1, 3),
(1, 6),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  `parent_id` int(11) NOT NULL,
  `business_type` int(11) NOT NULL DEFAULT '1',
  `position` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `parent_id`, `business_type`, `position`, `status`, `created_at`, `updated_at`, `priority`) VALUES
(5, 'Burger', '2023-06-15-648ac3f802a12.png', 0, 1, 0, 1, '2021-08-20 20:37:02', '2023-06-14 22:55:36', 0),
(6, 'Biriyani', '2023-06-15-648ac2cf08bdf.png', 0, 1, 0, 1, '2021-08-20 20:39:41', '2023-06-14 22:50:39', 0),
(7, 'Asian', '2023-06-15-648ac57626ce3.png', 0, 1, 0, 1, '2021-08-20 20:39:55', '2023-06-14 23:01:58', 0),
(8, 'Cake', '2023-06-15-648ac3111239f.png', 0, 1, 0, 1, '2021-08-20 20:40:11', '2023-06-14 22:51:45', 0),
(9, 'Coffee & Drinks', '2023-02-15-63ecf42d62526.png', 0, 1, 0, 1, '2021-08-20 20:40:30', '2023-02-15 06:03:09', 0),
(10, 'Chinese', '2023-06-15-648ac6d984233.png', 0, 1, 0, 1, '2021-08-20 20:41:31', '2023-06-14 23:07:53', 0),
(11, 'Fast Food', '2023-06-15-648ac69c81556.png', 0, 1, 0, 1, '2021-08-20 20:41:52', '2023-06-14 23:06:52', 0),
(12, 'Kabab & More', '2023-11-04-6545f47e78d56.png', 0, 1, 0, 1, '2021-08-20 20:42:17', '2023-11-04 11:36:30', 0),
(13, 'Indian', '2023-11-04-6545e84aa11fc.png', 0, 1, 0, 1, '2021-08-20 20:42:50', '2023-11-04 10:44:26', 0),
(14, 'Noodles', '2023-11-04-6545f1edc7511.png', 0, 1, 0, 1, '2021-08-20 20:43:03', '2023-11-04 11:25:33', 0),
(15, 'Mexican Food', '2023-11-04-6545e743360dc.png', 0, 1, 0, 1, '2021-08-20 20:43:34', '2023-11-04 10:40:03', 0),
(16, 'Pasta', '2023-11-04-6545e8d4b16fb.png', 0, 1, 0, 1, '2021-08-20 20:43:47', '2023-11-04 10:46:44', 0),
(17, 'Pizza', '2023-06-15-648ac865e7e4f.png', 0, 1, 0, 1, '2021-08-20 20:44:00', '2023-06-14 23:14:29', 0),
(18, 'Snacks', '2023-06-15-648ac81c5def1.png', 0, 1, 0, 1, '2021-08-20 20:44:12', '2023-06-14 23:13:16', 0),
(19, 'Thai', '2023-06-15-648ac7a565f7f.png', 0, 1, 0, 1, '2021-08-20 20:44:22', '2023-06-14 23:11:17', 0),
(20, 'Varieties', '2023-06-15-648ac8d87137b.png', 0, 1, 0, 1, '2021-08-20 20:44:33', '2023-06-14 23:16:24', 0),
(24, 'Kubie Burger', 'def.png', 5, 1, 1, 1, '2021-08-20 20:46:55', '2023-01-12 04:03:04', 0),
(25, 'Steamed Cheese', 'def.png', 5, 1, 1, 1, '2021-08-20 20:47:28', '2021-08-20 20:47:28', 0),
(26, 'Theta Burger', 'def.png', 5, 1, 1, 1, '2021-08-20 20:47:40', '2021-08-20 20:47:40', 0),
(27, 'Nutburger', 'def.png', 5, 1, 1, 1, '2021-08-20 20:47:51', '2021-08-20 20:47:51', 0),
(28, 'Pimento Cheese', 'def.png', 5, 1, 1, 1, '2021-08-20 20:48:13', '2021-08-20 20:48:13', 0),
(29, 'Pound Cake', 'def.png', 8, 1, 1, 1, '2021-08-20 20:54:43', '2021-08-20 20:54:43', 0),
(30, 'Yellow Butter', 'def.png', 8, 1, 1, 1, '2021-08-20 20:54:52', '2021-08-20 20:54:52', 0),
(31, 'Red Velvet', 'def.png', 8, 1, 1, 1, '2021-08-20 20:55:03', '2021-08-20 20:55:03', 0),
(32, 'Black Coffee', '2023-06-15-648ac73b0ea27.png', 9, 1, 0, 1, '2021-08-20 20:55:42', '2023-06-14 23:09:31', 2),
(33, 'Robusta', 'def.png', 9, 1, 1, 1, '2021-08-20 20:55:50', '2021-08-20 20:55:50', 0),
(34, 'Cappuccino', 'def.png', 9, 1, 1, 1, '2021-08-20 20:56:01', '2021-08-20 20:56:01', 0),
(35, 'Macchiato', 'def.png', 9, 1, 1, 1, '2021-08-20 20:56:08', '2021-08-20 20:56:08', 0),
(36, 'Soft Drinks', 'def.png', 9, 1, 1, 1, '2021-08-20 20:56:20', '2021-08-20 20:56:20', 0),
(37, 'Food', '2023-06-15-648ac0a892a01.png', 0, 1, 0, 1, '2021-12-05 18:48:21', '2023-06-14 22:41:28', 2),
(38, 'Food1', 'def.png', 37, 1, 1, 1, '2021-12-05 18:48:39', '2021-12-05 18:48:39', 0),
(39, 'Bebidas caliente', '2023-06-15-648ac180509f5.png', 0, 1, 0, 1, '2022-12-29 12:17:47', '2023-06-14 22:45:04', 0),
(40, 'Te', 'def.png', 39, 1, 1, 1, '2022-12-29 12:18:47', '2023-01-12 04:02:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `provence` text NOT NULL,
  `country_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `provence`, `country_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Multan', 'punjab', 166, 1, '2023-03-23 03:43:51', '2023-06-17 02:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sender_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_message_id` bigint(20) UNSIGNED DEFAULT NULL,
  `last_message_time` timestamp NULL DEFAULT NULL,
  `unread_message_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `sortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phonecode` int(11) NOT NULL,
  `timezone_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `sortname`, `name`, `phonecode`, `timezone_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'Afghanistan', 93, NULL, 0, '2023-03-23 11:35:52', '2023-06-17 02:42:25'),
(2, 'AL', 'Albania', 355, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(3, 'DZ', 'Algeria', 213, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(4, 'AS', 'American Samoa', 1684, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(5, 'AD', 'Andorra', 376, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(6, 'AO', 'Angola', 244, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(7, 'AI', 'Anguilla', 1264, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(8, 'AQ', 'Antarctica', 0, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(9, 'AG', 'Antigua And Barbuda', 1268, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(10, 'AR', 'Argentina', 54, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(11, 'AM', 'Armenia', 374, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(12, 'AW', 'Aruba', 297, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(13, 'AU', 'Australia', 61, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(14, 'AT', 'Austria', 43, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(15, 'AZ', 'Azerbaijan', 994, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(16, 'BS', 'Bahamas The', 1242, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(17, 'BH', 'Bahrain', 973, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(18, 'BD', 'Bangladesh', 880, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(19, 'BB', 'Barbados', 1246, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(20, 'BY', 'Belarus', 375, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(21, 'BE', 'Belgium', 32, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(22, 'BZ', 'Belize', 501, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(23, 'BJ', 'Benin', 229, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(24, 'BM', 'Bermuda', 1441, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(25, 'BT', 'Bhutan', 975, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(26, 'BO', 'Bolivia', 591, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(27, 'BA', 'Bosnia and Herzegovina', 387, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(28, 'BW', 'Botswana', 267, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(29, 'BV', 'Bouvet Island', 0, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(30, 'BR', 'Brazil', 55, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(31, 'IO', 'British Indian Ocean Territory', 246, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(32, 'BN', 'Brunei', 673, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(33, 'BG', 'Bulgaria', 359, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(34, 'BF', 'Burkina Faso', 226, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(35, 'BI', 'Burundi', 257, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(36, 'KH', 'Cambodia', 855, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(37, 'CM', 'Cameroon', 237, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(38, 'CA', 'Canada', 1, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(39, 'CV', 'Cape Verde', 238, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(40, 'KY', 'Cayman Islands', 1345, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(41, 'CF', 'Central African Republic', 236, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(42, 'TD', 'Chad', 235, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(43, 'CL', 'Chile', 56, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(44, 'CN', 'China', 86, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(45, 'CX', 'Christmas Island', 61, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(46, 'CC', 'Cocos (Keeling) Islands', 672, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(47, 'CO', 'Colombia', 57, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(48, 'KM', 'Comoros', 269, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(49, 'CG', 'Republic Of The Congo', 242, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(50, 'CD', 'Democratic Republic Of The Congo', 242, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(51, 'CK', 'Cook Islands', 682, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(52, 'CR', 'Costa Rica', 506, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', 225, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(54, 'HR', 'Croatia (Hrvatska)', 385, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(55, 'CU', 'Cuba', 53, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(56, 'CY', 'Cyprus', 357, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(57, 'CZ', 'Czech Republic', 420, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(58, 'DK', 'Denmark', 45, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(59, 'DJ', 'Djibouti', 253, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(60, 'DM', 'Dominica', 1767, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(61, 'DO', 'Dominican Republic', 1809, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(62, 'TP', 'East Timor', 670, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(63, 'EC', 'Ecuador', 593, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(64, 'EG', 'Egypt', 20, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(65, 'SV', 'El Salvador', 503, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(66, 'GQ', 'Equatorial Guinea', 240, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(67, 'ER', 'Eritrea', 291, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(68, 'EE', 'Estonia', 372, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(69, 'ET', 'Ethiopia', 251, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(70, 'XA', 'External Territories of Australia', 61, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(71, 'FK', 'Falkland Islands', 500, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(72, 'FO', 'Faroe Islands', 298, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(73, 'FJ', 'Fiji Islands', 679, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(74, 'FI', 'Finland', 358, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(75, 'FR', 'France', 33, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(76, 'GF', 'French Guiana', 594, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(77, 'PF', 'French Polynesia', 689, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(78, 'TF', 'French Southern Territories', 0, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(79, 'GA', 'Gabon', 241, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(80, 'GM', 'Gambia The', 220, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(81, 'GE', 'Georgia', 995, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(82, 'DE', 'Germany', 49, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(83, 'GH', 'Ghana', 233, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(84, 'GI', 'Gibraltar', 350, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(85, 'GR', 'Greece', 30, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(86, 'GL', 'Greenland', 299, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(87, 'GD', 'Grenada', 1473, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(88, 'GP', 'Guadeloupe', 590, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(89, 'GU', 'Guam', 1671, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(90, 'GT', 'Guatemala', 502, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(91, 'XU', 'Guernsey and Alderney', 44, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(92, 'GN', 'Guinea', 224, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(93, 'GW', 'Guinea-Bissau', 245, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(94, 'GY', 'Guyana', 592, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(95, 'HT', 'Haiti', 509, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(96, 'HM', 'Heard and McDonald Islands', 0, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(97, 'HN', 'Honduras', 504, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(98, 'HK', 'Hong Kong S.A.R.', 852, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(99, 'HU', 'Hungary', 36, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(100, 'IS', 'Iceland', 354, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(101, 'IN', 'India', 91, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(102, 'ID', 'Indonesia', 62, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(103, 'IR', 'Iran', 98, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(104, 'IQ', 'Iraq', 964, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(105, 'IE', 'Ireland', 353, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(106, 'IL', 'Israel', 972, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(107, 'IT', 'Italy', 39, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(108, 'JM', 'Jamaica', 1876, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(109, 'JP', 'Japan', 81, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(110, 'XJ', 'Jersey', 44, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(111, 'JO', 'Jordan', 962, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(112, 'KZ', 'Kazakhstan', 7, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(113, 'KE', 'Kenya', 254, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(114, 'KI', 'Kiribati', 686, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(115, 'KP', 'Korea North', 850, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(116, 'KR', 'Korea South', 82, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(117, 'KW', 'Kuwait', 965, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(118, 'KG', 'Kyrgyzstan', 996, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(119, 'LA', 'Laos', 856, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(120, 'LV', 'Latvia', 371, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(121, 'LB', 'Lebanon', 961, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(122, 'LS', 'Lesotho', 266, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(123, 'LR', 'Liberia', 231, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(124, 'LY', 'Libya', 218, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(125, 'LI', 'Liechtenstein', 423, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(126, 'LT', 'Lithuania', 370, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(127, 'LU', 'Luxembourg', 352, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(128, 'MO', 'Macau S.A.R.', 853, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(129, 'MK', 'Macedonia', 389, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(130, 'MG', 'Madagascar', 261, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(131, 'MW', 'Malawi', 265, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(132, 'MY', 'Malaysia', 60, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(133, 'MV', 'Maldives', 960, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(134, 'ML', 'Mali', 223, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(135, 'MT', 'Malta', 356, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(136, 'XM', 'Man (Isle of)', 44, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(137, 'MH', 'Marshall Islands', 692, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(138, 'MQ', 'Martinique', 596, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(139, 'MR', 'Mauritania', 222, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(140, 'MU', 'Mauritius', 230, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(141, 'YT', 'Mayotte', 269, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(142, 'MX', 'Mexico', 52, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(143, 'FM', 'Micronesia', 691, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(144, 'MD', 'Moldova', 373, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(145, 'MC', 'Monaco', 377, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(146, 'MN', 'Mongolia', 976, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(147, 'MS', 'Montserrat', 1664, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(148, 'MA', 'Morocco', 212, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(149, 'MZ', 'Mozambique', 258, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(150, 'MM', 'Myanmar', 95, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(151, 'NA', 'Namibia', 264, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(152, 'NR', 'Nauru', 674, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(153, 'NP', 'Nepal', 977, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(154, 'AN', 'Netherlands Antilles', 599, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(155, 'NL', 'Netherlands The', 31, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(156, 'NC', 'New Caledonia', 687, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(157, 'NZ', 'New Zealand', 64, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(158, 'NI', 'Nicaragua', 505, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(159, 'NE', 'Niger', 227, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(160, 'NG', 'Nigeria', 234, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(161, 'NU', 'Niue', 683, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(162, 'NF', 'Norfolk Island', 672, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(163, 'MP', 'Northern Mariana Islands', 1670, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(164, 'NO', 'Norway', 47, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(165, 'OM', 'Oman', 968, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(166, 'PK', 'Pakistan', 92, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(167, 'PW', 'Palau', 680, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(168, 'PS', 'Palestinian Territory Occupied', 970, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(169, 'PA', 'Panama', 507, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(170, 'PG', 'Papua new Guinea', 675, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(171, 'PY', 'Paraguay', 595, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(172, 'PE', 'Peru', 51, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(173, 'PH', 'Philippines', 63, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(174, 'PN', 'Pitcairn Island', 0, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(175, 'PL', 'Poland', 48, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(176, 'PT', 'Portugal', 351, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(177, 'PR', 'Puerto Rico', 1787, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(178, 'QA', 'Qatar', 974, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(179, 'RE', 'Reunion', 262, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(180, 'RO', 'Romania', 40, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(181, 'RU', 'Russia', 70, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(182, 'RW', 'Rwanda', 250, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(183, 'SH', 'Saint Helena', 290, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(184, 'KN', 'Saint Kitts And Nevis', 1869, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(185, 'LC', 'Saint Lucia', 1758, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(186, 'PM', 'Saint Pierre and Miquelon', 508, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(187, 'VC', 'Saint Vincent And The Grenadines', 1784, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(188, 'WS', 'Samoa', 684, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(189, 'SM', 'San Marino', 378, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(190, 'ST', 'Sao Tome and Principe', 239, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(191, 'SA', 'Saudi Arabia', 966, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(192, 'SN', 'Senegal', 221, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(193, 'RS', 'Serbia', 381, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(194, 'SC', 'Seychelles', 248, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(195, 'SL', 'Sierra Leone', 232, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(196, 'SG', 'Singapore', 65, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(197, 'SK', 'Slovakia', 421, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(198, 'SI', 'Slovenia', 386, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(199, 'XG', 'Smaller Territories of the UK', 44, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(200, 'SB', 'Solomon Islands', 677, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(201, 'SO', 'Somalia', 252, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(202, 'ZA', 'South Africa', 27, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(203, 'GS', 'South Georgia', 0, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(204, 'SS', 'South Sudan', 211, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(205, 'ES', 'Spain', 34, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(206, 'LK', 'Sri Lanka', 94, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(207, 'SD', 'Sudan', 249, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(208, 'SR', 'Suriname', 597, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 47, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(210, 'SZ', 'Swaziland', 268, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(211, 'SE', 'Sweden', 46, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(212, 'CH', 'Switzerland', 41, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(213, 'SY', 'Syria', 963, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(214, 'TW', 'Taiwan', 886, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(215, 'TJ', 'Tajikistan', 992, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(216, 'TZ', 'Tanzania', 255, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(217, 'TH', 'Thailand', 66, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(218, 'TG', 'Togo', 228, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(219, 'TK', 'Tokelau', 690, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(220, 'TO', 'Tonga', 676, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(221, 'TT', 'Trinidad And Tobago', 1868, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(222, 'TN', 'Tunisia', 216, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(223, 'TR', 'Turkey', 90, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(224, 'TM', 'Turkmenistan', 7370, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(225, 'TC', 'Turks And Caicos Islands', 1649, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(226, 'TV', 'Tuvalu', 688, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(227, 'UG', 'Uganda', 256, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(228, 'UA', 'Ukraine', 380, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(229, 'AE', 'United Arab Emirates', 971, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(230, 'GB', 'United Kingdom', 44, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(231, 'US', 'United States', 1, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(232, 'UM', 'United States Minor Outlying Islands', 1, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(233, 'UY', 'Uruguay', 598, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(234, 'UZ', 'Uzbekistan', 998, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(235, 'VU', 'Vanuatu', 678, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(236, 'VA', 'Vatican City State (Holy See)', 39, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(237, 'VE', 'Venezuela', 58, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(238, 'VN', 'Vietnam', 84, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(239, 'VG', 'Virgin Islands (British)', 1284, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(240, 'VI', 'Virgin Islands (US)', 1340, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(241, 'WF', 'Wallis And Futuna Islands', 681, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(242, 'EH', 'Western Sahara', 212, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(243, 'YE', 'Yemen', 967, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(244, 'YU', 'Yugoslavia', 38, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(245, 'ZM', 'Zambia', 260, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(246, 'ZW', 'Zimbabwe', 263, NULL, 0, '2023-03-23 11:35:52', '2023-03-23 11:35:52'),
(248, 'PK', 'pakistan', 92, 1, 1, '2023-03-23 09:03:15', '2023-06-17 02:42:03');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `min_purchase` decimal(24,2) NOT NULL DEFAULT '0.00',
  `max_discount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percentage',
  `coupon_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `limit` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `data` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_uses` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `title`, `code`, `start_date`, `expire_date`, `min_purchase`, `max_discount`, `discount`, `discount_type`, `coupon_type`, `limit`, `status`, `created_at`, `updated_at`, `data`, `total_uses`) VALUES
(1, 'First Order Coupon', 'FIRSTORDER', '2023-05-30', '2023-11-30', 1000.00, 500.00, 200.00, 'amount', 'zone_wise', 5, 1, '2023-05-30 05:27:52', '2023-10-31 12:43:45', '[\"1\"]', 11),
(2, 'Azadi Offer', 'AZADI14', '2023-06-21', '2023-11-01', 500.00, 120.00, 10.00, 'percentage', 'default', 2, 1, NULL, '2023-10-31 12:30:13', '[\"1\"]', 7),
(3, 'Testing Coupon', 'TEST_01', '2023-06-01', '2023-07-13', 500.00, 100.00, 80.00, 'amount', 'default', 1, 1, NULL, NULL, '[\"1\"]', 5);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_rate` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `country`, `currency_code`, `currency_symbol`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', 'USD', '$', 1.00, NULL, NULL),
(2, 'Canadian Dollar', 'CAD', 'CA$', 1.00, NULL, NULL),
(3, 'Euro', 'EUR', '€', 1.00, NULL, NULL),
(4, 'United Arab Emirates Dirham', 'AED', 'د.إ.‏', 1.00, NULL, NULL),
(5, 'Afghan Afghani', 'AFN', '؋', 1.00, NULL, NULL),
(6, 'Albanian Lek', 'ALL', 'L', 1.00, NULL, NULL),
(7, 'Armenian Dram', 'AMD', '֏', 1.00, NULL, NULL),
(8, 'Argentine Peso', 'ARS', '$', 1.00, NULL, NULL),
(9, 'Australian Dollar', 'AUD', '$', 1.00, NULL, NULL),
(10, 'Azerbaijani Manat', 'AZN', '₼', 1.00, NULL, NULL),
(11, 'Bosnia-Herzegovina Convertible Mark', 'BAM', 'KM', 1.00, NULL, NULL),
(12, 'Bangladeshi Taka', 'BDT', '৳', 1.00, NULL, NULL),
(13, 'Bulgarian Lev', 'BGN', 'лв.', 1.00, NULL, NULL),
(14, 'Bahraini Dinar', 'BHD', 'د.ب.‏', 1.00, NULL, NULL),
(15, 'Burundian Franc', 'BIF', 'FBu', 1.00, NULL, NULL),
(16, 'Brunei Dollar', 'BND', 'B$', 1.00, NULL, NULL),
(17, 'Bolivian Boliviano', 'BOB', 'Bs', 1.00, NULL, NULL),
(18, 'Brazilian Real', 'BRL', 'R$', 1.00, NULL, NULL),
(19, 'Botswanan Pula', 'BWP', 'P', 1.00, NULL, NULL),
(20, 'Belarusian Ruble', 'BYN', 'Br', 1.00, NULL, NULL),
(21, 'Belize Dollar', 'BZD', '$', 1.00, NULL, NULL),
(22, 'Congolese Franc', 'CDF', 'FC', 1.00, NULL, NULL),
(23, 'Swiss Franc', 'CHF', 'CHf', 1.00, NULL, NULL),
(24, 'Chilean Peso', 'CLP', '$', 1.00, NULL, NULL),
(25, 'Chinese Yuan', 'CNY', '¥', 1.00, NULL, NULL),
(26, 'Colombian Peso', 'COP', '$', 1.00, NULL, NULL),
(27, 'Costa Rican Colón', 'CRC', '₡', 1.00, NULL, NULL),
(28, 'Cape Verdean Escudo', 'CVE', '$', 1.00, NULL, NULL),
(29, 'Czech Republic Koruna', 'CZK', 'Kč', 1.00, NULL, NULL),
(30, 'Djiboutian Franc', 'DJF', 'Fdj', 1.00, NULL, NULL),
(31, 'Danish Krone', 'DKK', 'Kr.', 1.00, NULL, NULL),
(32, 'Dominican Peso', 'DOP', 'RD$', 1.00, NULL, NULL),
(33, 'Algerian Dinar', 'DZD', 'د.ج.‏', 1.00, NULL, NULL),
(34, 'Estonian Kroon', 'EEK', 'kr', 1.00, NULL, NULL),
(35, 'Egyptian Pound', 'EGP', 'E£‏', 1.00, NULL, NULL),
(36, 'Eritrean Nakfa', 'ERN', 'Nfk', 1.00, NULL, NULL),
(37, 'Ethiopian Birr', 'ETB', 'Br', 1.00, NULL, NULL),
(38, 'British Pound Sterling', 'GBP', '£', 1.00, NULL, NULL),
(39, 'Georgian Lari', 'GEL', 'GEL', 1.00, NULL, NULL),
(40, 'Ghanaian Cedi', 'GHS', 'GH¢', 1.00, NULL, NULL),
(41, 'Guinean Franc', 'GNF', 'FG', 1.00, NULL, NULL),
(42, 'Guatemalan Quetzal', 'GTQ', 'Q', 1.00, NULL, NULL),
(43, 'Hong Kong Dollar', 'HKD', 'HK$', 1.00, NULL, NULL),
(44, 'Honduran Lempira', 'HNL', 'L', 1.00, NULL, NULL),
(45, 'Croatian Kuna', 'HRK', 'kn', 1.00, NULL, NULL),
(46, 'Hungarian Forint', 'HUF', 'Ft', 1.00, NULL, NULL),
(47, 'Indonesian Rupiah', 'IDR', 'Rp', 1.00, NULL, NULL),
(48, 'Israeli New Sheqel', 'ILS', '₪', 1.00, NULL, NULL),
(49, 'Indian Rupee', 'INR', '₹', 1.00, NULL, NULL),
(50, 'Iraqi Dinar', 'IQD', 'ع.د', 1.00, NULL, NULL),
(51, 'Iranian Rial', 'IRR', '﷼', 1.00, NULL, NULL),
(52, 'Icelandic Króna', 'ISK', 'kr', 1.00, NULL, NULL),
(53, 'Jamaican Dollar', 'JMD', '$', 1.00, NULL, NULL),
(54, 'Jordanian Dinar', 'JOD', 'د.ا‏', 1.00, NULL, NULL),
(55, 'Japanese Yen', 'JPY', '¥', 1.00, NULL, NULL),
(56, 'Kenyan Shilling', 'KES', 'Ksh', 1.00, NULL, NULL),
(57, 'Cambodian Riel', 'KHR', '៛', 1.00, NULL, NULL),
(58, 'Comorian Franc', 'KMF', 'FC', 1.00, NULL, NULL),
(59, 'South Korean Won', 'KRW', 'CF', 1.00, NULL, NULL),
(60, 'Kuwaiti Dinar', 'KWD', 'د.ك.‏', 1.00, NULL, NULL),
(61, 'Kazakhstani Tenge', 'KZT', '₸.', 1.00, NULL, NULL),
(62, 'Lebanese Pound', 'LBP', 'ل.ل.‏', 1.00, NULL, NULL),
(63, 'Sri Lankan Rupee', 'LKR', 'Rs', 1.00, NULL, NULL),
(64, 'Lithuanian Litas', 'LTL', 'Lt', 1.00, NULL, NULL),
(65, 'Latvian Lats', 'LVL', 'Ls', 1.00, NULL, NULL),
(66, 'Libyan Dinar', 'LYD', 'د.ل.‏', 1.00, NULL, NULL),
(67, 'Moroccan Dirham', 'MAD', 'د.م.‏', 1.00, NULL, NULL),
(68, 'Moldovan Leu', 'MDL', 'L', 1.00, NULL, NULL),
(69, 'Malagasy Ariary', 'MGA', 'Ar', 1.00, NULL, NULL),
(70, 'Macedonian Denar', 'MKD', 'Ден', 1.00, NULL, NULL),
(71, 'Myanma Kyat', 'MMK', 'K', 1.00, NULL, NULL),
(72, 'Macanese Pataca', 'MOP', 'MOP$', 1.00, NULL, NULL),
(73, 'Mauritian Rupee', 'MUR', 'Rs', 1.00, NULL, NULL),
(74, 'Mexican Peso', 'MXN', '$', 1.00, NULL, NULL),
(75, 'Malaysian Ringgit', 'MYR', 'RM', 1.00, NULL, NULL),
(76, 'Mozambican Metical', 'MZN', 'MT', 1.00, NULL, NULL),
(77, 'Namibian Dollar', 'NAD', 'N$', 1.00, NULL, NULL),
(78, 'Nigerian Naira', 'NGN', '₦', 1.00, NULL, NULL),
(79, 'Nicaraguan Córdoba', 'NIO', 'C$', 1.00, NULL, NULL),
(80, 'Norwegian Krone', 'NOK', 'kr', 1.00, NULL, NULL),
(81, 'Nepalese Rupee', 'NPR', 'Re.', 1.00, NULL, NULL),
(82, 'New Zealand Dollar', 'NZD', '$', 1.00, NULL, NULL),
(83, 'Omani Rial', 'OMR', 'ر.ع.‏', 1.00, NULL, NULL),
(84, 'Panamanian Balboa', 'PAB', 'B/.', 1.00, NULL, NULL),
(85, 'Peruvian Nuevo Sol', 'PEN', 'S/', 1.00, NULL, NULL),
(86, 'Philippine Peso', 'PHP', '₱', 1.00, NULL, NULL),
(87, 'Pakistani Rupee', 'PKR', 'Rs', 1.00, NULL, NULL),
(88, 'Polish Zloty', 'PLN', 'zł', 1.00, NULL, NULL),
(89, 'Paraguayan Guarani', 'PYG', '₲', 1.00, NULL, NULL),
(90, 'Qatari Rial', 'QAR', 'ر.ق.‏', 1.00, NULL, NULL),
(91, 'Romanian Leu', 'RON', 'lei', 1.00, NULL, NULL),
(92, 'Serbian Dinar', 'RSD', 'din.', 1.00, NULL, NULL),
(93, 'Russian Ruble', 'RUB', '₽.', 1.00, NULL, NULL),
(94, 'Rwandan Franc', 'RWF', 'FRw', 1.00, NULL, NULL),
(95, 'Saudi Riyal', 'SAR', 'ر.س.‏', 1.00, NULL, NULL),
(96, 'Sudanese Pound', 'SDG', 'ج.س.', 1.00, NULL, NULL),
(97, 'Swedish Krona', 'SEK', 'kr', 1.00, NULL, NULL),
(98, 'Singapore Dollar', 'SGD', '$', 1.00, NULL, NULL),
(99, 'Somali Shilling', 'SOS', 'Sh.so.', 1.00, NULL, NULL),
(100, 'Syrian Pound', 'SYP', 'LS‏', 1.00, NULL, NULL),
(101, 'Thai Baht', 'THB', '฿', 1.00, NULL, NULL),
(102, 'Tunisian Dinar', 'TND', 'د.ت‏', 1.00, NULL, NULL),
(103, 'Tongan Paʻanga', 'TOP', 'T$', 1.00, NULL, NULL),
(104, 'Turkish Lira', 'TRY', '₺', 1.00, NULL, NULL),
(105, 'Trinidad and Tobago Dollar', 'TTD', '$', 1.00, NULL, NULL),
(106, 'New Taiwan Dollar', 'TWD', 'NT$', 1.00, NULL, NULL),
(107, 'Tanzanian Shilling', 'TZS', 'TSh', 1.00, NULL, NULL),
(108, 'Ukrainian Hryvnia', 'UAH', '₴', 1.00, NULL, NULL),
(109, 'Ugandan Shilling', 'UGX', 'USh', 1.00, NULL, NULL),
(110, 'Uruguayan Peso', 'UYU', '$', 1.00, NULL, NULL),
(111, 'Uzbekistan Som', 'UZS', 'so\'m', 1.00, NULL, NULL),
(112, 'Venezuelan Bolívar', 'VEF', 'Bs.F.', 1.00, NULL, NULL),
(113, 'Vietnamese Dong', 'VND', '₫', 1.00, NULL, NULL),
(114, 'CFA Franc BEAC', 'XAF', 'FCFA', 1.00, NULL, NULL),
(115, 'CFA Franc BCEAO', 'XOF', 'CFA', 1.00, NULL, NULL),
(116, 'Yemeni Rial', 'YER', '﷼‏', 1.00, NULL, NULL),
(117, 'South African Rand', 'ZAR', 'R', 1.00, NULL, NULL),
(118, 'Zambian Kwacha', 'ZMK', 'ZK', 1.00, NULL, NULL),
(119, 'Zimbabwean Dollar', 'ZWL', 'Z$', 1.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

CREATE TABLE `customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `contact_person_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `floor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `road` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_addresses`
--

INSERT INTO `customer_addresses` (`id`, `address_type`, `contact_person_number`, `address`, `latitude`, `longitude`, `user_id`, `contact_person_name`, `created_at`, `updated_at`, `zone_id`, `floor`, `road`, `house`) VALUES
(1, 'home', '+8801673138207', 'Flat#602 Dhaka 1205 Bangladesh', '23.7435119', '90.4091189', 6, 'Spencer Hasting', '2021-08-21 21:39:06', '2021-08-21 21:39:06', 1, NULL, NULL, NULL),
(3, 'home', '+8801723019985', 'Dhaka Medical College Hospital, Secretariat Road, Dhaka, Bangladesh', '23.726057172633265', '90.39752919226885', 9, 'Sultan 0 Mahamud 1', '2021-08-22 01:30:09', '2021-08-22 01:30:09', 1, NULL, NULL, NULL),
(4, 'home', '+8801723019986', 'United States', '37.09024007051737', '-95.71289096027614', 13, 'sultan mahamud 2', '2021-08-22 02:20:02', '2021-08-22 02:20:02', 1, NULL, NULL, NULL),
(7, 'home', '+21620555555', '53 Dhaka  Bangladesh', '23.76639123991971', '90.35126108676195', 15, 'hello yes', '2021-08-22 08:58:09', '2021-08-22 08:58:09', 1, NULL, NULL, NULL),
(8, 'office', '+21620555555', 'SS 127 km 59.000 Bortigiadas 07030 Italy', '40.86096044586421', '8.991410359740257', 15, 'hello yes', '2021-08-22 09:16:03', '2021-08-22 09:16:03', 1, NULL, NULL, NULL),
(9, 'home', '+21620555555', 'H#22,R#4,Block -B,Nobodoy Housing, Dhaka  Bangladesh', '23.765276472908237', '90.35011779516935', 15, 'hello yes', '2021-08-23 02:35:51', '2021-08-23 02:35:51', 1, NULL, NULL, NULL),
(10, 'home', '+38163627543', 'Bulevar Kraljice MArije 54E, Kragujevac, Serbia', '44.0177', '20.922200000000004', 20, 'Dejan Đusić', '2021-10-17 00:41:11', '2021-10-17 00:41:11', 1, NULL, NULL, NULL),
(11, 'office', '+919496462273', 'Seeroo IT Solutions, NAD Road, HMT Colony, North Kalamassery, HMT Kalamassery, Kochi, Kerala, India', '10.064429247800163', '76.35124683380127', 33, 'Elizabeth John', '2022-01-11 13:13:39', '2022-01-11 13:13:39', 1, NULL, NULL, NULL),
(12, 'others', '+919496462273', 'PNRA-74, near Oberon Mall, Padivattom, Edappally, Kochi, Kerala 682024, India', '10.014865006456871', '76.312319599092', 33, 'Elizabeth John', '2022-01-11 13:14:20', '2022-01-11 13:14:20', 1, NULL, NULL, NULL),
(13, 'home', '+919876543210', 'new colony deoria near gurudwara park', '26.5276801931362', '83.9127155765891', 37, 'Asdfghj Asdfghj', '2022-01-11 14:16:35', '2022-01-11 14:16:35', 1, NULL, NULL, NULL),
(14, 'home', '+919746658386', 'Q972+VPF, Dhaka, Bangladesh', '23.76469684059319', '90.3514959774026', 28, 'Sreekumar Pankjakshan Nair Sreekumar Pankjakshan Nair', '2022-01-20 18:20:44', '2022-01-20 18:20:44', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deal_optional_products`
--

CREATE TABLE `deal_optional_products` (
  `id` int(11) NOT NULL,
  `deal_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `deal_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deal_optional_products`
--

INSERT INTO `deal_optional_products` (`id`, `deal_id`, `food_id`, `deal_price`) VALUES
(1, 1, 4, 280),
(2, 2, 5, 38),
(3, 1, 5, 40),
(4, 2, 4, 260);

-- --------------------------------------------------------

--
-- Table structure for table `deal_options`
--

CREATE TABLE `deal_options` (
  `id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `deal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deal_options`
--

INSERT INTO `deal_options` (`id`, `food_id`, `value`, `deal_id`) VALUES
(3, 2, 'Banana Milk Coffee', 2),
(4, 2, 'Iced Horchata Latte', 2),
(5, 2, 'Cappuccino Cold Coffee', 2),
(14, 2, 'small', 5),
(15, 3, '1choice', 3),
(16, 3, '2ch', 4),
(17, 3, 'small', 7),
(18, 3, 'extrasmall', 7),
(43, 2, 'small', 8),
(44, 2, 'extrsmall', 8),
(45, 3, 'small', 8),
(46, 3, 'xtrasmall', 8),
(47, 3, 'Single', 10),
(48, 3, 'Small', 12),
(50, 4, 'Small', 13),
(51, 18, 'with cheese', 15),
(52, 18, 'without cheese', 15),
(53, 18, 'with cheese', 16),
(54, 18, 'without cheese', 16),
(55, 18, 'with cheese', 17),
(56, 18, 'without cheese', 17),
(57, 18, 'with cheese', 18),
(58, 18, 'without cheese', 18),
(59, 18, 'with cheese', 19),
(60, 18, 'without cheese', 19);

-- --------------------------------------------------------

--
-- Table structure for table `deal_order_detail`
--

CREATE TABLE `deal_order_detail` (
  `id` bigint(20) NOT NULL,
  `order_id` int(11) NOT NULL,
  `deal_id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `required_products` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `optional_products` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_amount` decimal(10,0) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deal_order_detail`
--

INSERT INTO `deal_order_detail` (`id`, `order_id`, `deal_id`, `quantity`, `price`, `comment`, `required_products`, `optional_products`, `tax_amount`, `created_at`, `updated_at`) VALUES
(1, 100076, 1, 2, 2948, 'my favourite thing', '[{\"product_id\":\"3\",\"selected_option_id\":\"1\"}]', '[{\"id\":\"4\"},{\"id\":\"5\"}]', 5, '2023-10-30 13:21:01', '2023-10-30 13:21:01'),
(2, 100077, 1, 2, 2948, 'my favourite thing', '[{\"product_id\":\"3\",\"selected_option_id\":\"1\"}]', '[{\"id\":\"4\"},{\"id\":\"5\"}]', 5, '2023-10-30 13:22:56', '2023-10-30 13:22:56'),
(3, 100078, 1, 2, 2948, 'my favourite thing', '[{\"product_id\":\"3\",\"selected_option_id\":\"1\"}]', '[{\"id\":\"4\"},{\"id\":\"5\"}]', 5, '2023-10-30 13:23:18', '2023-10-30 13:23:18'),
(4, 100079, 1, 2, 2948, 'my favourite thing', '[{\"product_id\":\"3\",\"selected_option_id\":\"1\"}]', '[{\"id\":\"4\"},{\"id\":\"5\"}]', 5, '2023-10-30 13:23:45', '2023-10-30 13:23:45'),
(5, 100080, 1, 2, 2948, 'my favourite thing', '[{\"product_id\":\"3\",\"selected_option_id\":\"1\"}]', '[{\"id\":\"4\"},{\"id\":\"5\"}]', 5, '2023-10-30 13:24:07', '2023-10-30 13:24:07'),
(6, 100081, 1, 2, 2948, 'my favourite thing', '[{\"product_id\":\"3\",\"selected_option_id\":\"1\"}]', '[{\"id\":\"4\"},{\"id\":\"5\"}]', 5, '2023-10-30 13:26:17', '2023-10-30 13:26:17'),
(7, 100125, 1, 2, 2948, 'my favourite thing', '[{\"product_id\":\"3\",\"selected_option_id\":\"1\"}]', '[{\"id\":\"4\"},{\"id\":\"5\"}]', 5, '2023-10-31 14:55:04', '2023-10-31 14:55:04'),
(8, 100126, 1, 2, 2948, 'my favourite thing', '[{\"product_id\":\"3\",\"selected_option_id\":\"1\"}]', '[{\"id\":\"4\"},{\"id\":\"5\"}]', 5, '2023-10-31 14:59:02', '2023-10-31 14:59:02'),
(9, 100127, 1, 2, 2948, 'my favourite thing', '[{\"product_id\":\"3\",\"selected_option_id\":\"1\"}]', '[{\"id\":\"4\"},{\"id\":\"5\"}]', 5, '2023-10-31 15:01:24', '2023-10-31 15:01:24'),
(10, 100128, 1, 2, 2948, 'my favourite thing', '[{\"product_id\":\"3\",\"selected_option_id\":\"1\"}]', '[{\"id\":\"4\"},{\"id\":\"5\"}]', 5, '2023-10-31 15:04:10', '2023-10-31 15:04:10'),
(11, 100129, 1, 2, 2948, 'my favourite thing', '[{\"product_id\":\"3\",\"selected_option_id\":\"1\"}]', '[{\"id\":\"4\"},{\"id\":\"5\"}]', 5, '2023-10-31 15:05:05', '2023-10-31 15:05:05'),
(12, 100130, 1, 2, 2948, 'my favourite thing', '[{\"product_id\":\"3\",\"selected_option_id\":\"1\"}]', '[{\"id\":\"4\"},{\"id\":\"5\"}]', 5, '2023-10-31 15:06:06', '2023-10-31 15:06:06'),
(13, 100131, 1, 2, 2948, 'my favourite thing', '[{\"product_id\":\"3\",\"selected_option_id\":\"1\"}]', '[{\"id\":\"4\"},{\"id\":\"5\"}]', 5, '2023-10-31 15:07:37', '2023-10-31 15:07:37'),
(14, 100132, 1, 2, 2948, 'my favourite thing', '[{\"product_id\":\"3\",\"selected_option_id\":\"1\"}]', '[{\"id\":\"4\"},{\"id\":\"5\"}]', 5, '2023-10-31 15:07:57', '2023-10-31 15:07:57'),
(15, 100133, 1, 2, 2948, 'my favourite thing', '[{\"product_id\":\"3\",\"selected_option_id\":\"1\"}]', '[{\"id\":\"4\"},{\"id\":\"5\"}]', 5, '2023-10-31 15:08:15', '2023-10-31 15:08:15'),
(16, 100134, 1, 2, 2948, 'my favourite thing', '[{\"product_id\":\"3\",\"selected_option_id\":\"1\"}]', '[{\"id\":\"4\"},{\"id\":\"5\"}]', 5, '2023-10-31 15:09:46', '2023-10-31 15:09:46'),
(17, 100152, 1, 1, 1299, '', '[]', '[]', 0, '2023-11-04 23:52:24', '2023-11-04 23:52:24'),
(18, 100153, 2, 1, 330, '', '[]', '[]', 0, '2023-11-04 23:56:06', '2023-11-04 23:56:06'),
(19, 100154, 8, 1, 1299, '', '[]', '[]', 0, '2023-11-04 23:58:27', '2023-11-04 23:58:27'),
(20, 100155, 1, 1, 1299, '', '[]', '[]', 0, '2023-11-05 00:23:35', '2023-11-05 00:23:35'),
(21, 100156, 2, 1, 330, '', '[]', '[]', 0, '2023-11-05 00:31:42', '2023-11-05 00:31:42'),
(22, 100157, 2, 1, 330, '', '[]', '[]', 0, '2023-11-05 03:15:59', '2023-11-05 03:15:59'),
(23, 100157, 1, 1, 1299, '', '[]', '[]', 0, '2023-11-05 03:15:59', '2023-11-05 03:15:59'),
(24, 100160, 8, 2, 1299, '', '[]', '[]', 0, '2023-11-06 10:46:48', '2023-11-06 10:46:48'),
(25, 100166, 1, 1, 1299, '', '[]', '[]', 0, '2023-11-11 15:27:11', '2023-11-11 15:27:11'),
(26, 100167, 18, 1, 760, '', '[]', '[]', 0, '2023-11-13 16:11:25', '2023-11-13 16:11:25'),
(27, 100168, 18, 1, 760, '', '[]', '[]', 0, '2023-11-13 16:13:10', '2023-11-13 16:13:10'),
(28, 100169, 18, 1, 760, '', '[]', '[]', 0, '2023-11-13 16:16:10', '2023-11-13 16:16:10'),
(29, 100170, 2, 1, 330, '', '[]', '[]', 0, '2023-11-13 16:17:47', '2023-11-13 16:17:47'),
(30, 100171, 2, 1, 330, '', '[]', '[]', 0, '2023-11-13 16:20:35', '2023-11-13 16:20:35'),
(31, 100172, 2, 1, 330, '', '[]', '[]', 0, '2023-11-13 16:22:55', '2023-11-13 16:22:55'),
(32, 100173, 2, 1, 330, '', '[]', '[]', 0, '2023-11-13 16:27:50', '2023-11-13 16:27:50'),
(33, 100174, 2, 1, 330, '', '[]', '[]', 0, '2023-11-13 16:56:38', '2023-11-13 16:56:38');

-- --------------------------------------------------------

--
-- Table structure for table `deal_products`
--

CREATE TABLE `deal_products` (
  `id` int(11) NOT NULL,
  `deal_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `has_options` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deal_products`
--

INSERT INTO `deal_products` (`id`, `deal_id`, `food_id`, `has_options`) VALUES
(3, 2, 2, 'true'),
(4, 2, 2, 'true'),
(5, 7, 3, 'true'),
(16, 1, 3, 'true'),
(17, 1, 2, 'true'),
(20, 8, 2, 'true'),
(21, 8, 3, 'true'),
(22, 10, 3, 'true'),
(23, 12, 3, 'true'),
(25, 13, 4, 'true');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_histories`
--

CREATE TABLE `delivery_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_histories`
--

INSERT INTO `delivery_histories` (`id`, `order_id`, `delivery_man_id`, `time`, `longitude`, `latitude`, `location`, `created_at`, `updated_at`) VALUES
(6, 100001, 1, '2023-07-06 01:51:13', '71.5158951', '30.2260539', 'Gulraiz Town Multan, Punjab', '2023-07-05 23:51:13', '2023-07-05 23:51:13'),
(7, 100001, 1, '2023-07-06 02:31:29', '71.5159086', '30.226057', 'Gulraiz Town Multan, Punjab', '2023-07-06 00:31:29', '2023-07-06 00:31:29'),
(8, 100002, 1, '2023-07-08 01:40:52', '71.5159155', '30.2260589', 'Gulraiz Town Multan, Punjab', '2023-07-07 23:40:52', '2023-07-07 23:40:52'),
(9, 100003, 1, '2023-07-08 01:51:30', '71.5159155', '30.2260589', 'Gulraiz Town Multan, Punjab', '2023-07-07 23:51:30', '2023-07-07 23:51:30'),
(11, 100003, 1, '2023-07-25 02:28:36', '71.5159108', '30.2260527', 'Gulraiz Town Multan, Punjab', '2023-07-25 00:28:36', '2023-07-25 00:28:36'),
(12, 100005, 1, '2023-07-25 02:43:02', '71.5159114', '30.2260523', 'Gulraiz Town Multan, Punjab', '2023-07-25 00:43:02', '2023-07-25 00:43:02'),
(13, 100012, 5, '2023-08-23 05:49:46', '71.5159043', '30.2260411', 'Gulraiz Town Multan, Punjab', '2023-08-23 03:49:46', '2023-08-23 03:49:46'),
(14, 100019, 1, '2023-09-21 01:17:54', '71.5157513', '30.2254861', 'Gulraiz Town Multan, Punjab', '2023-09-20 23:17:54', '2023-09-20 23:17:54'),
(15, 100017, 1, '2023-09-21 03:13:08', '71.5157512', '30.2255093', 'Gulraiz Town Multan, Punjab', '2023-09-21 01:13:08', '2023-09-21 01:13:08'),
(16, 100021, 1, '2023-09-21 03:20:58', '71.5158175', '30.2259122', 'Gulraiz Town Multan, Punjab', '2023-09-21 01:20:58', '2023-09-21 01:20:58'),
(17, 100023, 1, '2023-09-21 03:45:42', '71.5157173', '30.2254215', 'Gulraiz Town Multan, Punjab', '2023-09-21 01:45:42', '2023-09-21 01:45:42'),
(18, 100020, 1, '2023-09-21 03:59:31', '71.5157497', '30.2254969', 'Gulraiz Town Multan, Punjab', '2023-09-21 01:59:31', '2023-09-21 01:59:31'),
(19, 100031, 1, '2023-09-25 03:29:49', '71.5157464', '30.2254681', 'Gulraiz Town Multan, Punjab', '2023-09-25 01:29:49', '2023-09-25 01:29:49'),
(20, 100027, 1, '2023-09-26 04:51:04', '71.5159077', '30.2260454', 'Gulraiz Town Multan, Punjab', '2023-09-26 02:51:04', '2023-09-26 02:51:04'),
(21, 100032, 1, '2023-09-27 05:52:44', '71.5158849', '30.2261349', 'Gulraiz Town Multan, Punjab', '2023-09-27 03:52:44', '2023-09-27 03:52:44'),
(22, 100033, 1, '2023-09-28 00:57:40', '71.5159483', '30.2260833', 'Gulraiz Town Multan, Punjab', '2023-09-27 22:57:40', '2023-09-27 22:57:40'),
(23, 100025, 1, '2023-09-28 03:05:13', '71.515942', '30.2260815', 'Gulraiz Town Multan, Punjab', '2023-09-28 01:05:13', '2023-09-28 01:05:13'),
(24, 100029, 1, '2023-09-28 03:05:55', '71.515942', '30.2260815', 'Gulraiz Town Multan, Punjab', '2023-09-28 01:05:55', '2023-09-28 01:05:55'),
(25, 100034, 1, '2023-09-28 03:06:03', '71.515942', '30.2260815', 'Gulraiz Town Multan, Punjab', '2023-09-28 01:06:03', '2023-09-28 01:06:03'),
(26, 100036, 1, '2023-09-28 03:24:53', '71.516142', '30.2257435', 'Gulraiz Town Multan, Punjab', '2023-09-28 01:24:53', '2023-09-28 01:24:53'),
(27, 100037, 1, '2023-09-28 03:43:34', '71.5157425', '30.2254791', 'Gulraiz Town Multan, Punjab', '2023-09-28 01:43:34', '2023-09-28 01:43:34'),
(28, 100053, 7, '2023-10-04 04:27:36', '71.5159113', '30.226061', 'Gulraiz Town Multan, Punjab', '2023-10-04 02:27:36', '2023-10-04 02:27:36'),
(29, 100056, 7, '2023-10-04 04:57:47', '71.5159107', '30.2260519', 'Gulraiz Town Multan, Punjab', '2023-10-04 02:57:47', '2023-10-04 02:57:47'),
(30, 100058, 7, '2023-10-05 03:24:58', '71.5158958', '30.2260562', 'Gulraiz Town Multan, Punjab', '2023-10-05 01:24:58', '2023-10-05 01:24:58'),
(31, 100059, 7, '2023-10-05 03:55:41', '71.5159054', '30.2260396', 'Gulraiz Town Multan, Punjab', '2023-10-05 01:55:41', '2023-10-05 01:55:41'),
(32, 100062, 7, '2023-10-05 04:45:32', '71.5159129', '30.226054', 'Gulraiz Town Multan, Punjab', '2023-10-05 02:45:32', '2023-10-05 02:45:32'),
(33, 100063, 7, '2023-10-05 05:42:42', '71.5159048', '30.2260515', 'Gulraiz Town Multan, Punjab', '2023-10-05 03:42:42', '2023-10-05 03:42:42'),
(34, 100061, 7, '2023-10-05 05:48:36', '71.5159052', '30.2260561', 'Gulraiz Town Multan, Punjab', '2023-10-05 03:48:36', '2023-10-05 03:48:36'),
(35, 100065, 7, '2023-10-05 06:25:51', '71.5159094', '30.2260559', 'Gulraiz Town Multan, Punjab', '2023-10-05 04:25:51', '2023-10-05 04:25:51'),
(36, 100071, 7, '2023-10-07 00:12:31', '71.5159088', '30.2260528', 'Gulraiz Town Multan, Punjab', '2023-10-06 22:12:31', '2023-10-06 22:12:31'),
(37, 100074, 7, '2023-10-07 01:18:41', '71.5159092', '30.2260562', 'Gulraiz Town Multan, Punjab', '2023-10-06 23:18:41', '2023-10-06 23:18:41'),
(38, 100002, 7, '2023-10-07 03:06:19', '71.5159092', '30.2260564', 'Gulraiz Town Multan, Punjab', '2023-10-07 01:06:19', '2023-10-07 01:06:19'),
(39, 100004, 7, '2023-10-07 03:24:29', '71.5159092', '30.2260533', 'Gulraiz Town Multan, Punjab', '2023-10-07 01:24:29', '2023-10-07 01:24:29'),
(40, 100003, 7, '2023-10-07 03:58:23', '71.5159084', '30.2260528', 'Gulraiz Town Multan, Punjab', '2023-10-07 01:58:23', '2023-10-07 01:58:23'),
(41, 100006, 7, '2023-10-07 03:58:39', '71.5159092', '30.2260564', 'Gulraiz Town Multan, Punjab', '2023-10-07 01:58:39', '2023-10-07 01:58:39'),
(42, 100020, 1, '2023-10-11 05:03:19', '71.5159232', '30.2260028', 'Gulraiz Town Multan, Punjab', '2023-10-11 03:03:19', '2023-10-11 03:03:19'),
(43, 100047, 1, '2023-10-23 00:15:44', '71.5159', '30.2260591', 'Gulraiz Town Multan, Punjab', '2023-10-22 22:15:44', '2023-10-22 22:15:44'),
(44, 100050, 1, '2023-10-23 03:31:54', '71.5158992', '30.2260603', 'Gulraiz Town Multan, Punjab', '2023-10-23 01:31:54', '2023-10-23 01:31:54'),
(45, 100051, 1, '2023-10-23 04:03:06', '71.5158787', '30.2261024', 'Gulraiz Town Multan, Punjab', '2023-10-23 02:03:06', '2023-10-23 02:03:06'),
(46, 100054, 1, '2023-10-24 03:14:56', '71.5159074', '30.2260671', 'Gulraiz Town Multan, Punjab', '2023-10-24 01:14:56', '2023-10-24 01:14:56'),
(47, 100055, 1, '2023-10-24 05:47:28', '71.5159051', '30.226064', 'Gulraiz Town Multan, Punjab', '2023-10-24 03:47:28', '2023-10-24 03:47:28'),
(48, 100056, 1, '2023-10-25 00:44:01', '71.5157498', '30.225624', 'Gulraiz Town Multan, Punjab', '2023-10-24 22:44:01', '2023-10-24 22:44:01'),
(49, 100057, 1, '2023-10-25 00:52:30', '71.51583', '30.22573', 'Gulraiz Town Multan, Punjab', '2023-10-24 22:52:30', '2023-10-24 22:52:30'),
(50, 100058, 1, '2023-10-25 01:44:29', '71.515702', '30.2254789', 'Gulraiz Town Multan, Punjab', '2023-10-24 23:44:29', '2023-10-24 23:44:29'),
(51, 100059, 1, '2023-10-25 02:40:32', '71.515884', '30.2259494', 'Gulraiz Town Multan, Punjab', '2023-10-25 00:40:32', '2023-10-25 00:40:32'),
(52, 100060, 1, '2023-10-25 02:59:33', '71.5160573', '30.2260044', 'Gulraiz Town Multan, Punjab', '2023-10-25 00:59:33', '2023-10-25 00:59:33'),
(53, 100061, 1, '2023-10-25 03:02:17', '71.5159255', '30.2259975', 'Gulraiz Town Multan, Punjab', '2023-10-25 01:02:17', '2023-10-25 01:02:17'),
(54, 100062, 1, '2023-10-25 05:13:19', '71.516096', '30.2260112', 'Gulraiz Town Multan, Punjab', '2023-10-25 03:13:19', '2023-10-25 03:13:19'),
(55, 100064, 1, '2023-10-26 03:28:44', '71.5159073', '30.2260629', 'Gulraiz Town Multan, Punjab', '2023-10-26 01:28:44', '2023-10-26 01:28:44'),
(56, 100159, 1, '2023-11-06 11:52:50', '71.5158353', '30.2260617', 'Gulraiz Town Multan, Punjab', '2023-11-06 10:52:50', '2023-11-06 10:52:50'),
(57, 100162, 1, '2023-11-06 12:01:41', '71.5162843', '30.2260438', 'Gulraiz Town Multan, Punjab', '2023-11-06 11:01:41', '2023-11-06 11:01:41'),
(58, 100161, 1, '2023-11-06 12:08:17', '71.5158484', '30.2260723', 'Gulraiz Town Multan, Punjab', '2023-11-06 11:08:17', '2023-11-06 11:08:17');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_man_wallets`
--

CREATE TABLE `delivery_man_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) UNSIGNED NOT NULL,
  `collected_cash` decimal(24,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_earning` decimal(24,2) NOT NULL DEFAULT '0.00',
  `total_withdrawn` decimal(24,2) NOT NULL DEFAULT '0.00',
  `pending_withdraw` decimal(24,2) NOT NULL DEFAULT '0.00',
  `payable` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_man_wallets`
--

INSERT INTO `delivery_man_wallets` (`id`, `delivery_man_id`, `collected_cash`, `created_at`, `updated_at`, `total_earning`, `total_withdrawn`, `pending_withdraw`, `payable`) VALUES
(10, 2, 275.00, '2023-07-07 23:29:04', '2023-07-07 23:29:04', 10.00, 0.00, 0.00, 265),
(11, 1, 16967.00, '2023-07-07 23:40:51', '2023-11-06 11:08:17', 973.00, 0.00, 0.00, 15994),
(12, 5, 520.00, '2023-08-23 03:49:47', '2023-08-23 03:49:47', 10.00, 0.00, 0.00, 510),
(13, 7, 8876.00, '2023-10-04 02:27:36', '2023-10-07 01:58:39', 140.00, 0.00, 0.00, 8736);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_men`
--

CREATE TABLE `delivery_men` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_number` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `earning` tinyint(1) NOT NULL DEFAULT '1',
  `current_orders` int(11) NOT NULL DEFAULT '0',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'zone_wise',
  `restaurant_id` bigint(20) DEFAULT NULL,
  `application_status` enum('approved','denied','pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approved',
  `order_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `assigned_order_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `on_break` int(11) NOT NULL DEFAULT '0',
  `current_lat` double DEFAULT NULL,
  `current_lng` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_men`
--

INSERT INTO `delivery_men` (`id`, `f_name`, `l_name`, `phone`, `email`, `identity_number`, `identity_type`, `identity_image`, `image`, `password`, `auth_token`, `fcm_token`, `zone_id`, `created_at`, `updated_at`, `status`, `active`, `earning`, `current_orders`, `type`, `restaurant_id`, `application_status`, `order_count`, `assigned_order_count`, `on_break`, `current_lat`, `current_lng`) VALUES
(1, 'Ashek', 'Elahe', '+923116266746', 'Ashek1221@gmail.com', '7t67r65798y', 'passport', '[]', '2023-07-19-64b794cdcbd15.png', '$2y$10$IxzUbyJkKIgDw9JJkQhvm.qav5ummSJRpyCwAXIxidBgM6zIKsSBi', 'uc2rtmEIc0iaJDjYFB7e38fPopQn7SjZAuKtSUyciLc8Q8ZdJFCQdbX1KJ7MKe2JrS0QhCyM3KTjSaXbmaQRWXSeljkV5LuORK79YGusT7h0Lwb8Fst8WD3C', 'eDr3kID7QOyMqT8VVK8OX8:APA91bF4Ti4wz_6jGqzYt4q9CKAo0ZIhA7EMuFyJIv54bN-Twb-KrzwVsrnHSTh3VDDhMHtRY3o5fbjZW2jJU4l4m1OVrT8AQ-AlVy7GYm75AlaFdSYtF1f9VWpRJckFCtcdqrahB919', 1, '2021-08-21 19:52:09', '2023-11-06 11:46:16', 1, 1, 1, 0, 'zone_wise', NULL, 'approved', 3, 0, 0, NULL, NULL),
(2, 'Md', 'Aziz', '+8801975758279', 'azizsarkerarc@gmail.com', '1234567', 'restaurant_id', '[\"2021-08-21-61211ffb4be79.png\"]', '2021-08-21-61211ffb4ac79.png', '$2y$10$Yltq1gklXSF8no9JrgQMQ.VNu0MlfW.4RCaY3nouJpU2BVa2bZU7u', '4bCSqnmS701xif9RcHqNsIQkTUMuZsZyS610159jLhstmlVLgOAdYtKhf5bArbc9Af53crcKpmtA14GvQU3Cra8JN2F6PSALKZYurAIFJEQi9L4qEniIEL31', 'eW431CbCR9a1jll3wp3MJM:APA91bGfDWIqKz7myOp0HS_zE9gx3nLrQl8pecWFInKTVnTBRIILC-61ZdIvFRUMrl9NTKy3160_V493Xgl3AhPJDH_iUfwY6LqOyebwEVPZYVOozYhBsdJcWOhgkjT6wu_wjxr9jlpP', 1, '2021-08-21 21:47:07', '2023-07-05 21:07:22', 1, 1, 0, 2, 'zone_wise', NULL, 'approved', 0, 2, 0, NULL, NULL),
(3, 'Mr.', 'Karim', '+8801729002129', 'karim@gmail.com', 'dh12645', 'passport', '[\"2021-08-21-61212021712e4.png\"]', '2021-08-21-6121202170757.png', '$2y$10$eZIJT7X04vw2W6FO01m/G.jT9dBTWQ5oAfh24E8iMYHX7MXjaCKou', 'SivSWaNT1XsLKE1ysIt5DRhqZNXaOHHk0BazeWIXSmbQGA6yYxT4Tmk8cdcPyuHlqqPaRoWRr2fkFdX5suxBoH2MnF6mkbKMa2JexOnap6HzSoGYY3KqYdx3', 'dH0LaQRcTaSvMT8nUDpIQW:APA91bGa67PF7IJAk91pqCXr-bL0fP1SOfQURZkckFO28wF__F3lKjf-7MNf0X15l1QIOtruLKilsGFB03Ti4ZmgBLz0F5OKZ7USpDwumyuLRGi5-WMH68R-yzvjX3Dacquocp2Ep3_y', 1, '2021-08-21 21:47:45', '2021-10-17 16:01:32', 1, 1, 1, 1, 'zone_wise', NULL, 'approved', 0, 0, 0, NULL, NULL),
(4, 'MD SULTAN', 'MAHAMUD', '+8801723019985', 'sunnysultan1640@gmail.com', '12345678', 'driving_license', '[\"2021-08-22-6121555b38388.png\"]', '2021-08-22-6121555b375aa.png', '$2y$10$tklpzAXzexS9vbVJ5dy1Iu537nVdMOl5Ilj2RgDf/djrOsWUnfGTC', 'GcswOxjqXXpb95cQ06a8EQyAyAGsnc4Ig75BKIwiqZifo2Gw76Keg8TsiOFKcU6AgvKOGqrABwIIAyZ0LYXvyXSmXTLyZ53OwcGaSxbNwYY4fpFzSTlIDYtD', 'fMMMpO27R9G7tyaqobL20L:APA91bFLg6nnoGFsIunWbit6z4pBfdHutWe1L5kwjvdHE2l4VZSXTYNR-KhGthuIo7C6drzVzsCnPhlJPWwb17KSyXrupiv1W8z3FKuUoNggCRX-soucBgCuKR_a5MPJ22V10y7Ueziw', 1, '2021-08-22 01:34:51', '2021-08-22 09:24:42', 1, 1, 1, 0, 'zone_wise', NULL, 'approved', 0, 0, 0, NULL, NULL),
(5, 'Demo Delivery', 'Man', '+923030266746', 'demo@demo.com', '12345', 'nid', '[\"2021-08-22-61216cfbcb28d.png\"]', '2023-08-21-64e37794a53b0.png', '$2y$10$8VCj8A5G/UGiCowTYWyA9OQysluswiwCJQICc96reMuh/iqoyNfcy', 'iJ2p2AXJtRc2HMCjNB3DFzFljHEScJkYvaGvEmmTeD5uzTJYlhuxL6FajjxuFJflIrP3dpTBvgr57mkqm1koc68vAZeND2aQlB4EpNjzRUvsAvRiRbScmiRw', 'ckvVoRC9Q9GE6Lh57dLGdX:APA91bFyVh2NJm8Y8xruaf6coNmTi5qXE0M_Iz8bzDQZAAG7OhERhfL6LdayoOrVrQtOgf7PaKg88sV40JaJ7ZA0zcejw3ERFISyzDg2NSciqQyoIObLtXElJ_jbmOHw97nL0jtXbL2P', 1, '2021-08-22 03:15:39', '2023-09-14 02:21:09', 1, 1, 1, 0, 'zone_wise', NULL, 'approved', 0, 0, 0, NULL, NULL),
(7, 'Mahmah', 'Hamham', '+923030303030', 'mah@gmail.com', 'Hg13684', 'passport', '[]', '2023-08-21-64e3772f8a2f2.png', '$2y$10$BGOA7DMJqDINwa2B4DKyu.aa2bhJ8XZSoBEFkYd1UuX7vqcRkAKj2', 'Vx4lqLiLA7KBzgBoHsvSqSiV1yEyC3cjGc8R2EQBPAFkIb36wkI5r0RNAhwYUvIPaR30mxAD1ruGt51XSMOrlYdm01R6m5NTCmgyiFqqIyFmkTcOdgbuW7Rf', 'doDGp6oyS361afB9yxaXtY:APA91bH0N5hkyrUwgjprEVeuvnelvc1VRsw2E3dGnS3VNNyWmqoOovDvOnII6D6pwtk6kYDqLFCHVIXpmDxkMoyX6OhvYS_IDNesYSSyddsmEF5SZltUfpyXGs_Mn3JW1BGndShmPTFy', 1, '2021-08-23 02:56:37', '2023-10-07 03:56:07', 1, 1, 1, 2, 'zone_wise', NULL, 'approved', 0, 0, 0, NULL, NULL),
(8, 'parvej', '123', '+8801712251697', 'parvej@gmail.com', '12345678', 'passport', '[]', '2021-10-17-616b1b6fdf50c.png', '$2y$10$FLcNC6PtRg6w9ixOn5WpYuB2vtSoodAiBYMW3fTZm/673c/tWUvSq', 'nPFN0qHlR5eJrJlu79JoxqqU7mvi3za8jOIgKfixsl8GRIJuuEZIqvQLVwDABxVsa6Apqig4rRJiVFyRhY0ye37fu7SRUaLOCbnt4ST4B26mJlHbbj4bCAe7', 'e-e1UhC9TgukNajkNDqKPS:APA91bFUcdeh4jjMI0vpOUUAzUMEskm1nTLzjOtLqQC_Vyab-NR-oqnEYFmZigmw-cVxI7kO0vLe-6RJxfLvTg_AoXC5bi8JwbLZ-ltf9gV3-j9hBjkhYbOLOAyjNBYpds5YCrS34j8-', 3, '2021-10-17 00:35:27', '2022-01-20 18:14:41', 1, 1, 1, 0, 'zone_wise', NULL, 'approved', 0, 0, 0, NULL, NULL),
(9, 'Ashek', 'Elahe', '+8801879762952', 'ashek@gmail.com', 'jhwegykwe', 'passport', '[]', '2022-01-11-61dd353b3ac6a.png', '$2y$10$1RgOunexB.N5Mt.3Efl71emCCmKtZlmTpTxeOMwxHvAaxTRJdTT.q', '17lfAXw1XuOWTExXT4V9Yjl39I6SVDiHcvzE49lnvBCynjCEa67AkFrZXBwz2am8FLM6JsthVng319wE86YGCQq6H9roGQUUE6GR26SuNrvrPBdQ3ltuO3eE', 'f1pDZku3RQaliO3R-eLry-:APA91bEAC-t8gnP67Nw4pofdMNAJrQiIegXco_Wjm6FgtPZjMkLLe1eJuG8e0t3H787OjQATB1WSdtCqdmrNOj4tkWK4BarpvtFnOG50Ghv_5Cte7H40Tp1dyK7UD-Dsiy9c5G8-bLSW', NULL, '2022-01-11 13:43:55', '2022-01-11 13:54:34', 1, 0, 0, 0, 'restaurant_wise', 2, 'approved', 0, 0, 0, NULL, NULL),
(10, 'Naem', 'Johnson', '+970598751817', 'Mutaz.s.abueisheh@gmail.com', '021484752', 'driving_license', '[\"2022-12-29-63ae03c120ed9.png\"]', '2022-12-29-63ae03c11ff7c.png', '$2y$10$PRwKyhGQVLKhPqOV0dRJLOWLdPCxUTbZFNEYCOaxW6/EjcS5Kuz0y', NULL, 'ckvVoRC9Q9GE6Lh57dLGdX:APA91bFyVh2NJm8Y8xruaf6coNmTi5qXE0M_Iz8bzDQZAAG7OhERhfL6LdayoOrVrQtOgf7PaKg88sV40JaJ7ZA0zcejw3ERFISyzDg2NSciqQyoIObLtXElJ_jbmOHw97nL0jtXbL2P', 2, '2022-12-29 12:16:49', '2023-07-26 22:25:27', 1, 0, 0, 0, 'zone_wise', NULL, 'approved', 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `min_purchase` decimal(24,2) NOT NULL DEFAULT '0.00',
  `max_discount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percentage',
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `start_date`, `end_date`, `start_time`, `end_time`, `min_purchase`, `max_discount`, `discount`, `discount_type`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(1, '2021-08-20', '2023-02-21', '00:00:00', '23:59:00', 150.00, 100.00, 15.00, 'percent', 2, NULL, NULL),
(2, '2021-12-05', '2021-12-31', '00:00:00', '23:59:00', 1000.00, 500.00, 15.00, 'percent', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `d_m_reviews`
--

CREATE TABLE `d_m_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `liked_category` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d_m_reviews`
--

INSERT INTO `d_m_reviews` (`id`, `delivery_man_id`, `user_id`, `order_id`, `comment`, `attachment`, `rating`, `created_at`, `updated_at`, `status`, `liked_category`) VALUES
(1, 1, 24, 100003, '', NULL, 5, '2023-07-10 01:11:52', '2023-07-10 01:11:52', 1, 'Packaging'),
(2, 1, 24, 100005, '', NULL, 4, '2023-07-25 21:55:24', '2023-07-25 21:55:24', 1, 'Delivery Time'),
(3, 5, 24, 100012, '', NULL, 4, '2023-08-23 03:50:13', '2023-08-23 03:50:13', 1, 'Rider Hygiene'),
(4, 1, 37, 100051, '', NULL, 3, '2023-10-23 02:27:47', '2023-10-23 02:27:47', 1, 'Food Handling'),
(5, 1, 37, 100050, '', NULL, 5, '2023-10-23 02:34:18', '2023-10-23 02:34:18', 1, ''),
(6, 1, 37, 100047, '', NULL, 2, '2023-10-23 21:49:51', '2023-10-23 21:49:51', 1, ''),
(7, 1, 37, 100054, '', NULL, 3, '2023-10-24 01:17:33', '2023-10-24 01:17:33', 1, 'Rider Behavior'),
(8, 1, 37, 100055, '', NULL, 5, '2023-10-24 03:47:47', '2023-10-24 03:47:47', 1, 'Rider Behavior'),
(9, 1, 37, 100056, '', NULL, 4, '2023-10-24 22:44:42', '2023-10-24 22:44:42', 1, 'Rider Hygiene'),
(10, 1, 37, 100057, '', NULL, 4, '2023-10-24 22:52:49', '2023-10-24 22:52:49', 1, 'Delivery Time'),
(11, 1, 37, 100058, '', NULL, 3, '2023-10-25 00:29:13', '2023-10-25 00:29:13', 1, 'Food Handling'),
(12, 1, 37, 100059, '', NULL, 2, '2023-10-25 00:41:29', '2023-10-25 00:41:29', 1, 'Rider Behavior'),
(13, 1, 37, 100060, '', NULL, 5, '2023-10-25 00:59:50', '2023-10-25 00:59:50', 1, 'Food Handling'),
(14, 1, 37, 100061, '', NULL, 3, '2023-10-25 01:02:38', '2023-10-25 01:02:38', 1, 'Rider Behavior'),
(15, 1, 37, 100062, '', NULL, 3, '2023-10-25 03:13:43', '2023-10-25 03:13:43', 1, 'Rider Hygiene'),
(16, 1, 43, 100064, '', NULL, 4, '2023-10-26 01:29:29', '2023-10-26 01:29:29', 1, 'Rider Behavior');

-- --------------------------------------------------------

--
-- Table structure for table `email_verifications`
--

CREATE TABLE `email_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_verifications`
--

INSERT INTO `email_verifications` (`id`, `email`, `token`, `created_at`, `updated_at`) VALUES
(1, 'myamz99ml@gmail.com', '5225', '2023-08-01 23:54:27', '2023-08-01 23:54:27');

-- --------------------------------------------------------

--
-- Table structure for table `employee_roles`
--

CREATE TABLE `employee_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modules` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_roles`
--

INSERT INTO `employee_roles` (`id`, `name`, `modules`, `status`, `created_at`, `updated_at`, `restaurant_id`) VALUES
(1, 'Worker', '[\"food\",\"order\",\"addon\",\"campaign\"]', 1, '2022-11-29 07:54:39', '2022-11-29 07:54:39', 1);

-- --------------------------------------------------------

--
-- Table structure for table `express_categories`
--

CREATE TABLE `express_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `express_categories`
--

INSERT INTO `express_categories` (`id`, `name`, `status`) VALUES
(1, 'Documents', 1),
(2, 'Food', 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `entity_type` enum('product','restaurant') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `entity_id`, `entity_type`, `created_at`, `updated_at`) VALUES
(4, 1, 3, 'product', '2023-06-19 02:11:39', '2023-06-19 02:11:39'),
(5, 65, 3, 'restaurant', '2023-06-19 02:55:00', '2023-11-30 15:01:06'),
(6, 1, 4, 'restaurant', '2023-06-19 02:55:09', '2023-06-19 02:55:09'),
(8, 65, 4, 'restaurant', '2023-11-04 23:00:38', '2023-11-04 23:00:38'),
(9, 65, 1, 'restaurant', '2023-11-04 23:37:36', '2023-11-30 15:01:20'),
(10, 118, 1, 'restaurant', '2023-11-05 00:22:43', '2023-11-05 00:22:43'),
(13, 52, 1, 'restaurant', '2023-11-06 10:42:25', '2023-11-06 10:42:25');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_ids` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variations` text COLLATE utf8mb4_unicode_ci,
  `add_ons` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choice_options` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(24,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(24,2) NOT NULL DEFAULT '0.00',
  `tax_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `discount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `available_time_starts` time DEFAULT NULL,
  `available_time_ends` time DEFAULT NULL,
  `veg` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_count` int(11) NOT NULL DEFAULT '0',
  `avg_rating` double(16,14) NOT NULL DEFAULT '0.00000000000000',
  `rating_count` int(11) NOT NULL DEFAULT '0',
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `name`, `description`, `image`, `category_id`, `category_ids`, `variations`, `add_ons`, `attributes`, `choice_options`, `price`, `tax`, `tax_type`, `discount`, `discount_type`, `available_time_starts`, `available_time_ends`, `veg`, `status`, `restaurant_id`, `created_at`, `updated_at`, `order_count`, `avg_rating`, `rating_count`, `rating`) VALUES
(2, 'Cold Coffee', 'Cold coffee description', '2023-01-04-63b57a353acf9.png', 32, '[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}]', '[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}]', '[\"1\",\"41\"]', '[\"1\"]', '[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}]', 30.00, 0.00, 'percent', 0.00, 'percent', '00:00:00', '23:59:00', 1, 1, 1, '2023-01-04 04:08:05', '2023-11-09 17:43:59', 3, 0.00000000000000, 0, NULL),
(3, 'Thigh Chicken', 'Best Thigh Chicken', '2023-02-22-63f63ef6a3688.png', 27, '[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}]', '[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}]', '[\"1\",\"12\",\"14\",\"15\"]', '[\"1\"]', '[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}]', 300.00, 0.00, 'percent', 0.00, 'percent', '21:00:00', '20:59:00', 0, 1, 1, '2023-02-22 07:12:38', '2023-10-31 15:41:27', 7, 0.00000000000000, 0, NULL),
(4, 'Zinger Mighty Burger', 'Mighty Burger With extra cheese', '2023-02-22-63f63feb7460c.png', 27, '[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}]', '[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}]', '[\"13\",\"15\"]', '[\"1\"]', '[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}]', 300.00, 0.00, 'percent', 0.00, 'amount', '21:16:00', '21:15:00', 0, 1, 1, '2023-02-22 07:16:43', '2023-08-26 04:14:38', 6, 0.00000000000000, 0, NULL),
(5, 'Fry Naan', 'Spicy fry naan with special chatni', '2023-03-30-642573e0171e6.png', 38, '[{\"id\":\"37\",\"position\":1},{\"id\":\"38\",\"position\":2}]', '[]', '[]', '[]', '[]', 50.00, 0.00, 'percent', 5.00, 'amount', '13:00:00', '12:00:00', 1, 1, 1, '2023-03-30 02:34:56', '2023-08-26 04:14:38', 0, 0.00000000000000, 0, NULL),
(7, 'Spicy Pakora', 'Pakoora with Salad', '2023-03-30-642576a6d4241.png', 37, '[{\"id\":\"37\",\"position\":1}]', '[{\"type\":\"OnDemand\",\"price\":50}]', '[]', '[\"2\"]', '[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}]', 60.00, 0.00, 'percent', 0.00, 'percent', '12:00:00', '20:05:00', 1, 1, 1, '2023-03-30 02:46:46', '2023-10-31 15:44:54', 4, 0.00000000000000, 0, NULL),
(15, 'Testing Name', 'Testing Description', NULL, 6, '[{\"id\":\"6\",\"position\":1}]', '[{\"type\":\"small\",\"price\":0}]', '[\"4\"]', '[\"1\"]', '[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"small\"]}]', 1.00, 0.00, 'percent', 0.00, 'percent', NULL, NULL, 1, 1, 9, '2023-08-12 03:08:07', '2023-08-12 03:08:07', 0, 0.00000000000000, 0, NULL),
(18, 'Lahori VIP burger', 'Chips or crispy chicken are awesome', '2023-08-21-64e36cae89a86.png', 24, '[{\"id\":\"5\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '[{\"type\":\"small\",\"price\":499},{\"type\":\"medium\",\"price\":599},{\"type\":\"large\",\"price\":699}]', '[]', '[\"1\"]', '[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"small\",\"medium\",\"large\"]}]', 499.00, 0.00, 'percent', 9.00, 'amount', NULL, NULL, 1, 1, 2, '2023-08-21 04:54:54', '2023-08-21 04:54:54', 0, 0.00000000000000, 0, NULL),
(19, 'Zinger Paratha Roll', 'Zinger paratha roll recipe with low-fat', '2023-08-21-64e36d4e662bb.png', 25, '[{\"id\":\"5\",\"position\":1},{\"id\":\"25\",\"position\":2}]', '[]', '[\"2\",\"30\",\"35\"]', '[]', '[]', 360.00, 0.00, 'percent', 2.00, 'percent', NULL, NULL, 1, 1, 2, '2023-08-21 04:57:34', '2023-08-21 04:57:34', 0, 0.00000000000000, 0, NULL),
(20, 'Biryani', 'Karachi Masala Biryani', '2023-08-21-64e36de5b069e.png', 6, '[{\"id\":\"6\",\"position\":1}]', '[{\"type\":\"small\",\"price\":250},{\"type\":\"large\",\"price\":395}]', '[\"30\",\"35\",\"33\"]', '[\"1\"]', '[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"small\",\"large\"]}]', 250.00, 0.00, 'percent', 5.00, 'percent', NULL, NULL, 1, 1, 2, '2023-08-21 05:00:05', '2023-08-21 05:00:05', 0, 0.00000000000000, 0, NULL),
(21, 'Brownie with Ice Cream', 'Serving For Single Person', '2023-08-21-64e371582eafa.png', 8, '[{\"id\":\"8\",\"position\":1}]', '[]', '[]', '[]', '[]', 270.00, 0.00, 'percent', 2.00, 'percent', NULL, NULL, 0, 1, 3, '2023-08-21 05:14:48', '2023-08-21 05:14:48', 0, 0.00000000000000, 0, NULL),
(22, 'Mango Ice Cream Shake', 'Serving For Single Person', '2023-08-21-64e371cf15a85.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[]', '[]', '[]', '[]', 300.00, 0.00, 'percent', 10.00, 'percent', NULL, NULL, 0, 1, 3, '2023-08-21 05:16:47', '2023-08-21 05:16:47', 0, 0.00000000000000, 0, NULL),
(23, 'Chocolate Chip Ice Cream', '3 scoops', '2023-08-21-64e372306fe17.png', 8, '[{\"id\":\"8\",\"position\":1}]', '[]', '[]', '[]', '[]', 200.00, 0.00, 'percent', 20.00, 'amount', NULL, NULL, 0, 1, 3, '2023-08-21 05:18:24', '2023-08-21 05:18:24', 0, 0.00000000000000, 0, NULL),
(24, 'Lavish Biryani & Yakhni Pulao', 'Desserts', '2023-08-21-64e372d25a922.png', 6, '[{\"id\":\"6\",\"position\":1}]', '[{\"type\":\"small\",\"price\":249},{\"type\":\"medium\",\"price\":349},{\"type\":\"large\",\"price\":449}]', '[]', '[\"1\"]', '[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"small\",\"medium\",\"large\"]}]', 249.00, 0.00, 'percent', 10.00, 'percent', NULL, NULL, 1, 1, 3, '2023-08-21 05:21:06', '2023-08-21 05:21:06', 0, 0.00000000000000, 0, NULL),
(25, 'Desi Karhai - Gulshan Market', 'Desi Khana', '2023-08-21-64e375e065f46.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[{\"type\":\"halfkg\",\"price\":399},{\"type\":\"onekg\",\"price\":799}]', '[]', '[\"1\"]', '[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"half kg\",\"one kg\"]}]', 399.00, 0.00, 'percent', 10.00, 'percent', NULL, NULL, 1, 1, 3, '2023-08-21 05:34:08', '2023-08-21 05:34:08', 0, 0.00000000000000, 0, NULL),
(26, 'Kabab', 'Spicy kabab! Yummy!', '2023-10-11-65266aaf05f9f.png', 6, '[{\"id\":\"6\",\"position\":1}]', '[{\"type\":\"Large\",\"price\":200}]', '[\"14\"]', '[\"3\"]', '[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}]', 200.00, 0.00, 'percent', 0.00, 'amount', '14:54:00', '01:00:00', 0, 1, 1, '2023-10-11 00:28:15', '2023-10-31 12:55:13', 0, 0.00000000000000, 0, NULL),
(27, 'Ice cream', 'Yummy ice-cream!', '2023-10-11-652675d7c5a33.png', 29, '[{\"id\":\"8\",\"position\":1},{\"id\":\"29\",\"position\":2}]', '[{\"type\":\"Large\",\"price\":300},{\"type\":\"Medium\",\"price\":250},{\"type\":\"Small\",\"price\":180}]', '[\"52\",\"41\",\"51\",\"12\"]', '[\"3\"]', '[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\",\"Medium\",\"Small\"]}]', 300.00, 0.00, 'percent', 250.00, 'amount', '12:57:00', '00:57:00', 0, 1, 1, '2023-10-11 01:15:51', '2023-10-31 11:58:00', 0, 0.00000000000000, 0, NULL),
(28, 'Tasty fries', 'This is our most popular product. too Yummy!', '2023-10-31-6540b167f0795.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[{\"type\":\"Large\",\"price\":350},{\"type\":\"Medium\",\"price\":300},{\"type\":\"Small\",\"price\":200}]', '[\"42\",\"14\"]', '[\"3\"]', '[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\",\" Medium\",\" Small\"]}]', 350.00, 0.00, 'percent', 1.00, 'amount', '12:48:00', '00:48:00', 1, 1, 1, '2023-10-11 01:18:53', '2023-10-31 12:58:24', 0, 0.00000000000000, 0, NULL),
(29, 'Tasty Pizza', 'This is too hot pizza. Such a yummy!', '2023-10-12-6527d386c376c.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[{\"type\":\"Large\",\"price\":600},{\"type\":\"Medium\",\"price\":500},{\"type\":\"Small\",\"price\":400}]', '[\"14\",\"41\",\"12\",\"15\"]', '[\"3\"]', '[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\",\" Medium\",\" Small\"]}]', 400.00, 0.00, 'percent', 0.00, 'amount', '07:44:00', '23:44:00', 1, 1, 1, '2023-10-12 02:07:50', '2023-11-09 17:47:27', 0, 0.00000000000000, 0, NULL),
(30, 'Tasty Plus PIzza', 'This is too hot handle! yummy!', '2023-10-12-6527d587535d8.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[{\"type\":\"Large\",\"price\":0}]', '[]', '[\"3\"]', '[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}]', 400.00, 0.00, 'percent', 350.00, 'amount', NULL, NULL, 0, 1, 5, '2023-10-12 02:16:23', '2023-10-12 02:16:23', 0, 0.00000000000000, 0, NULL),
(31, 'Chicken Biryani', 'People love Karachi biryani, which consists of chicken and potatoes cooked in yogurt gravy and topped with semi-boiled rice', '2023-10-12-6527deb6e659e.png', 6, '[{\"id\":\"6\",\"position\":1}]', '[{\"type\":\"Large\",\"price\":300}]', '[]', '[\"3\"]', '[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}]', 300.00, 0.00, 'percent', 250.00, 'amount', NULL, NULL, 0, 1, 5, '2023-10-12 02:55:34', '2023-10-12 02:55:34', 0, 0.00000000000000, 0, NULL),
(32, 'Chicken Burger', 'This is very spicy burger! Taste it!', '2023-10-12-6527df5548f74.png', 24, '[{\"id\":\"5\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '[{\"type\":\"Large\",\"price\":0}]', '[]', '[\"3\"]', '[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}]', 400.00, 0.00, 'percent', 270.00, 'amount', NULL, NULL, 1, 1, 5, '2023-10-12 02:58:13', '2023-10-12 02:58:13', 0, 0.00000000000000, 0, NULL),
(33, 'Tasty pizza', 'best multani pizza!', '2023-10-12-6527ef0b47e16.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[{\"type\":\"Large\",\"price\":400}]', '[\"44\",\"45\"]', '[\"3\"]', '[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}]', 400.00, 0.00, 'percent', 350.00, 'amount', NULL, NULL, 1, 1, 5, '2023-10-12 04:05:15', '2023-10-12 04:05:15', 0, 0.00000000000000, 0, NULL),
(34, 'Spicy Broast', 'This is the best multani broast that you taste', '2023-10-17-652e58c567489.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[{\"type\":\"Small\",\"price\":200},{\"type\":\"Medium\",\"price\":250},{\"type\":\"Large\",\"price\":350}]', '[\"50\",\"49\",\"47\",\"48\"]', '[\"3\"]', '[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Small\",\"Medium\",\"Large\"]}]', 350.00, 0.00, 'percent', 0.00, 'amount', NULL, NULL, 1, 1, 4, '2023-10-17 00:49:57', '2023-10-17 00:49:57', 0, 0.00000000000000, 0, NULL),
(35, 'Coffee', 'Lorem ipsum sit amet', '2023-10-30-653f7179094f8.png', 32, '[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}]', '[{\"type\":\"small\",\"price\":200},{\"type\":\"large\",\"price\":250}]', '[\"37\",\"38\",\"36\"]', '[\"3\"]', '[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"small\",\"large\"]}]', 200.00, 0.00, 'percent', 7.00, 'amount', NULL, NULL, 0, 1, 6, '2023-10-30 13:03:53', '2023-10-30 13:03:53', 0, 0.00000000000000, 0, NULL),
(37, 'Band Gobhi', 'Popular product!', '2023-11-06-6548c3d62f3b2.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[{\"type\":\"Small\",\"price\":200},{\"type\":\"Medium\",\"price\":300},{\"type\":\"Large\",\"price\":400}]', '[\"54\",\"53\"]', '[\"3\"]', '[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Small\",\" Medium\",\" Large\"]}]', 400.00, 0.00, 'percent', 0.00, 'percent', '17:54:00', '12:00:00', 1, 1, 7, '2023-11-06 14:45:42', '2023-11-08 11:32:49', 0, 0.00000000000000, 0, NULL),
(45, 'Chicken korma', 'This is our best product!', '2023-11-06-6548cc3310ba4.png', 37, '[{\"id\":\"37\",\"position\":1}]', '[{\"type\":\"Large\",\"price\":0},{\"type\":\"Medium\",\"price\":0},{\"type\":\"Small\",\"price\":0}]', '[\"54\",\"53\"]', '[\"3\"]', '[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\",\"Medium\",\"Small\"]}]', 630.00, 0.00, 'percent', 0.00, 'amount', NULL, NULL, 1, 1, 7, '2023-11-06 15:21:23', '2023-11-06 15:21:23', 0, 0.00000000000000, 0, NULL),
(46, 'Zinger shwarma', 'Best zinger shwarma made with desi ghee', '2023-11-09-654ce50b5ee7d.png', 37, '[{\"id\":\"37\",\"position\":1}]', '[{\"type\":\"Small\",\"price\":150},{\"type\":\"Medium\",\"price\":250},{\"type\":\"Large\",\"price\":350}]', '[\"1\",\"14\"]', '[\"1\"]', '[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}]', 150.00, 0.00, 'percent', 0.00, 'percent', NULL, NULL, 0, 1, 1, '2023-11-09 17:56:27', '2023-11-09 17:56:27', 0, 0.00000000000000, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gift_requests`
--

CREATE TABLE `gift_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `gift_id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `admin_response` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gift_requests`
--

INSERT INTO `gift_requests` (`id`, `user_id`, `gift_id`, `status`, `admin_response`, `created_at`, `updated_at`) VALUES
(1, 16, 2, 'pending', NULL, '2023-06-12 02:59:22', '2023-06-12 02:59:22'),
(2, 16, 2, 'pending', NULL, '2023-06-12 02:59:51', '2023-06-12 02:59:51'),
(3, 16, 2, 'pending', NULL, '2023-06-12 03:12:26', '2023-06-12 03:12:26'),
(4, 16, 2, 'pending', NULL, '2023-06-13 02:11:22', '2023-06-13 02:11:22'),
(5, 16, 2, 'pending', NULL, '2023-06-13 02:15:23', '2023-06-13 02:15:23'),
(6, 24, 2, 'pending', NULL, '2023-07-04 00:57:02', '2023-07-04 00:57:02'),
(7, 24, 1, 'pending', NULL, '2023-07-29 06:58:00', '2023-07-29 06:58:00'),
(8, 24, 2, 'pending', NULL, '2023-07-29 06:58:03', '2023-07-29 06:58:03'),
(9, 24, 1, 'pending', NULL, '2023-08-23 03:51:30', '2023-08-23 03:51:30'),
(10, 24, 2, 'pending', NULL, '2023-08-23 03:51:32', '2023-08-23 03:51:32'),
(11, 24, 1, 'pending', NULL, '2023-08-23 03:51:34', '2023-08-23 03:51:34'),
(12, 24, 2, 'pending', NULL, '2023-08-23 03:51:36', '2023-08-23 03:51:36');

-- --------------------------------------------------------

--
-- Table structure for table `item_campaigns`
--

CREATE TABLE `item_campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_ids` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variations` text COLLATE utf8mb4_unicode_ci,
  `add_ons` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choice_options` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(24,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(24,2) NOT NULL DEFAULT '0.00',
  `tax_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `discount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `veg` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loyalty_gifts`
--

CREATE TABLE `loyalty_gifts` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loyalty_gifts`
--

INSERT INTO `loyalty_gifts` (`id`, `title`, `description`, `icon`, `points`, `status`) VALUES
(1, 'Gift Cards', 'Redeem points and get gift cards now', NULL, 70, 'active'),
(2, 'Free Delivery', 'Get a free delivery for your order', NULL, 30, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `loyalty_points_history`
--

CREATE TABLE `loyalty_points_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loyalty_points_history`
--

INSERT INTO `loyalty_points_history` (`id`, `user_id`, `source`, `order_id`, `points`, `created_at`, `updated_at`) VALUES
(9, 24, 'order', 100003, 13, '2023-07-25 00:28:33', '2023-07-25 00:28:33'),
(10, 24, 'order', 100005, 22, '2023-07-25 00:43:01', '2023-07-25 00:43:01'),
(11, 24, 'order', 100012, 26, '2023-08-23 03:49:44', '2023-08-23 03:49:44'),
(12, 38, 'order', 100019, 31, '2023-09-20 23:17:06', '2023-09-20 23:17:06'),
(13, 38, 'order', 100017, 16, '2023-09-21 01:13:06', '2023-09-21 01:13:06'),
(14, 38, 'order', 100021, 31, '2023-09-21 01:20:57', '2023-09-21 01:20:57'),
(15, 38, 'order', 100023, 16, '2023-09-21 01:45:37', '2023-09-21 01:45:37'),
(16, 38, 'order', 100020, 16, '2023-09-21 01:59:29', '2023-09-21 01:59:29'),
(17, 38, 'order', 100031, 16, '2023-09-25 01:29:47', '2023-09-25 01:29:47'),
(18, 38, 'order', 100027, 16, '2023-09-26 02:50:56', '2023-09-26 02:50:56'),
(19, 38, 'order', 100032, 16, '2023-09-27 03:52:40', '2023-09-27 03:52:40'),
(20, 38, 'order', 100033, 16, '2023-09-27 22:57:39', '2023-09-27 22:57:39'),
(21, 38, 'order', 100025, 10, '2023-09-28 01:05:12', '2023-09-28 01:05:12'),
(22, 38, 'order', 100029, 31, '2023-09-28 01:05:54', '2023-09-28 01:05:54'),
(23, 38, 'order', 100034, 31, '2023-09-28 01:06:01', '2023-09-28 01:06:01'),
(24, 38, 'order', 100036, 16, '2023-09-28 01:24:51', '2023-09-28 01:24:51'),
(25, 38, 'order', 100037, 16, '2023-09-28 01:43:33', '2023-09-28 01:43:33'),
(26, 43, 'order', 100053, 31, '2023-10-04 02:27:35', '2023-10-04 02:27:35'),
(27, 43, 'order', 100056, 31, '2023-10-04 02:57:45', '2023-10-04 02:57:45'),
(28, 43, 'order', 100058, 31, '2023-10-05 01:24:57', '2023-10-05 01:24:57'),
(29, 43, 'order', 100059, 31, '2023-10-05 01:55:38', '2023-10-05 01:55:38'),
(30, 43, 'order', 100062, 31, '2023-10-05 02:45:29', '2023-10-05 02:45:29'),
(31, 43, 'order', 100063, 31, '2023-10-05 03:42:39', '2023-10-05 03:42:39'),
(32, 43, 'order', 100061, 31, '2023-10-05 03:48:34', '2023-10-05 03:48:34'),
(33, 43, 'order', 100065, 31, '2023-10-05 04:25:47', '2023-10-05 04:25:47'),
(34, 37, 'order', 100071, 31, '2023-10-06 22:12:29', '2023-10-06 22:12:29'),
(35, 37, 'order', 100074, 31, '2023-10-06 23:18:40', '2023-10-06 23:18:40'),
(36, 37, 'order', 100002, 31, '2023-10-07 01:06:17', '2023-10-07 01:06:17'),
(37, 37, 'order', 100004, 31, '2023-10-07 01:24:27', '2023-10-07 01:24:27'),
(38, 37, 'order', 100003, 31, '2023-10-07 01:58:21', '2023-10-07 01:58:21'),
(39, 37, 'order', 100006, 31, '2023-10-07 01:58:37', '2023-10-07 01:58:37'),
(40, 37, 'order', 100020, 31, '2023-10-11 03:03:17', '2023-10-11 03:03:17'),
(41, 42, 'order', 100017, 1, '2023-10-18 01:31:42', '2023-10-18 01:31:42'),
(42, 37, 'order', 100047, 33, '2023-10-22 22:15:42', '2023-10-22 22:15:42'),
(43, 37, 'order', 100050, 33, '2023-10-23 01:31:53', '2023-10-23 01:31:53'),
(44, 37, 'order', 100051, 23, '2023-10-23 02:03:05', '2023-10-23 02:03:05'),
(45, 37, 'order', 100054, 23, '2023-10-24 01:14:55', '2023-10-24 01:14:55'),
(46, 37, 'order', 100055, 33, '2023-10-24 03:47:27', '2023-10-24 03:47:27'),
(47, 37, 'order', 100056, 23, '2023-10-24 22:43:59', '2023-10-24 22:43:59'),
(48, 37, 'order', 100057, 18, '2023-10-24 22:52:28', '2023-10-24 22:52:28'),
(49, 37, 'order', 100058, 18, '2023-10-24 23:44:27', '2023-10-24 23:44:27'),
(50, 37, 'order', 100059, 33, '2023-10-25 00:40:30', '2023-10-25 00:40:30'),
(51, 37, 'order', 100060, 18, '2023-10-25 00:59:32', '2023-10-25 00:59:32'),
(52, 37, 'order', 100061, 18, '2023-10-25 01:02:15', '2023-10-25 01:02:15'),
(53, 37, 'order', 100062, 33, '2023-10-25 03:13:17', '2023-10-25 03:13:17'),
(54, 43, 'order', 100064, 23, '2023-10-26 01:28:42', '2023-10-26 01:28:42'),
(55, 109, 'order', 100159, 32, '2023-11-06 10:52:48', '2023-11-06 10:52:48'),
(56, 109, 'order', 100162, 38, '2023-11-06 11:01:38', '2023-11-06 11:01:38'),
(57, 109, 'order', 100161, 38, '2023-11-06 11:08:15', '2023-11-06 11:08:15');

-- --------------------------------------------------------

--
-- Table structure for table `loyalty_point_transactions`
--

CREATE TABLE `loyalty_point_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` decimal(24,3) NOT NULL DEFAULT '0.000',
  `debit` decimal(24,3) NOT NULL DEFAULT '0.000',
  `balance` decimal(24,3) NOT NULL DEFAULT '0.000',
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mail_configs`
--

CREATE TABLE `mail_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encryption` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Subscribers email',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sender_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `read_status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tergat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `description`, `image`, `status`, `sender_id`, `receiver_id`, `type`, `read_status`, `created_at`, `updated_at`, `tergat`, `zone_id`) VALUES
(1, 'Hi there in Absher', 'Welcome in Absher', '2023-04-18-643e6e2412a67.png', 1, NULL, NULL, 'admin', 'unread', '2023-04-18 01:17:08', '2023-04-18 01:18:34', 'restaurant', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00040001136a73b755151ee7537335890097de3785fb18ae041ed996554bf3d3450c4cb28c6fb755', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 01:37:06', '2023-10-10 01:37:06', '2024-10-10 03:37:06'),
('00eaf30b16b2ffdd9e8530c1284c8365daefd8e90b7a9a7033d8a30761502a76011f115e9fb36f39', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-23 01:23:41', '2023-10-23 01:23:41', '2024-10-23 03:23:41'),
('02e04b56728aa3246915014668846a4b9fb8cb35e31df1c51cfb6bff7ee2daafdd2620b1679c7781', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 03:21:36', '2023-10-11 03:21:36', '2024-10-11 05:21:36'),
('038e52c6e19632a921add713ea80c246b0590f6c4d70d6c7d30c3e0b0726327427d76ea208463d11', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-07-30 20:40:04', '2023-07-30 20:40:04', '2024-07-30 22:40:04'),
('04607a0ba9413020c9d15a2dd2d4df7dd78e5b5293f4f6e0384da1a59f8565a60be04cf4d1ce452d', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 04:39:10', '2023-01-30 04:39:10', '2024-01-30 05:39:10'),
('04a68c8da24145029d06b8c5d782f1b2976716b9ba1dd026b118300fe8f8ceef328ccceecbb375e4', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 23:47:22', '2023-01-30 23:47:22', '2024-01-31 00:47:22'),
('04ab68ad5e7cbd0bc0654efd72de7e59d98d328b172b856c4858adb5ff8a77f50fd3bdfd81bc3de2', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-02 23:23:16', '2023-10-02 23:23:16', '2024-10-03 01:23:16'),
('05125162d4a431e114b64b96db99d36d7d8d96586e94069ebf4480c49ae51176fbbe3ce904dbcba6', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 21:30:56', '2023-10-10 21:30:56', '2024-10-10 23:30:56'),
('05506712e6b5e9b0f5ff22cd13a8c79a3ae0c2e8c937ffdf64c514fd115430593c93f53b016bfdf3', 15, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-30 01:31:21', '2023-09-30 01:31:21', '2024-09-30 03:31:21'),
('05db53d28e3c95fd75a1a170bb1366677173351e314f1b23d0bf0c86abfdc1eb4ef9c77d57ed0315', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 03:17:43', '2023-10-03 03:17:43', '2024-10-03 05:17:43'),
('05fd7f4802718211cc4e57c04981078f1d876a7847bc94747b6ac5f140179aaa5958e9ad0136644d', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-01 23:28:17', '2023-10-01 23:28:17', '2024-10-02 01:28:17'),
('06acb446d9c69111c274439be0a86c7f5dba1d8d1897594bf6338b77200a9ac4a7236fad398e1e1a', 67, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 16:35:04', '2023-10-31 16:35:04', '2024-10-31 17:35:04'),
('06fa5b08eccee8b03a66978f19544608dbf468d07058e80899e163a697cf8183666cb581cfad6b36', 43, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-08 23:06:35', '2023-10-08 23:06:35', '2024-10-09 01:06:35'),
('08187191021a6662195572c2b147f393f919017ac872096d8be8df42d8a236bdf761276bb5f5355b', 102, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 14:14:10', '2023-11-01 14:14:10', '2024-11-01 15:14:10'),
('084e4da6959232cdabe67339f260bd9d3bd1078d0028026b12a1821e86e5267b57f102cf611befd5', 31, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 16:48:09', '2023-11-04 16:48:09', '2024-11-04 17:48:09'),
('085a3ca83510f55d78bc96b32dee5de966fa781bd4836328d080af2f750a669d1a34e4fe3e6dbf32', 93, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 11:56:41', '2023-11-01 11:56:41', '2024-11-01 12:56:41'),
('086a77d25bc20887f93aa889b81c94c6649abf286393dc20abf55eeeb28a0e3e3b8436dfb34ceeed', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 01:36:49', '2023-10-03 01:36:49', '2024-10-03 03:36:49'),
('0ab1d571beb08b60c621987ff2ee0429e77ffd5bf834bcf8790f05af7fa2679458188aa3fdf343c7', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-09 01:26:31', '2023-10-09 01:26:31', '2024-10-09 03:26:31'),
('0ad453cf1af947496392360fdbd3349b5b207b346bdcf08e6f556b2b945df4f6d80e1b7142f87a10', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-20 00:36:07', '2023-03-20 00:36:07', '2024-03-20 01:36:07'),
('0ae619326edce6f0dc4f5de8828793af6eb343477c146d7611b759a60d3ff845da77606d1b8ece6e', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-16 03:58:23', '2023-03-16 03:58:23', '2024-03-16 04:58:23'),
('0aee2b62a338304892bc80ea92fd41d28119e7521d4f903608bf2dbda1c18306b7ae16f917c66d26', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-09 01:38:57', '2023-10-09 01:38:57', '2024-10-09 03:38:57'),
('0b2155a286d15ca314cd56accd6e836d38bd4d1034bb2848a5f5668738eb70db1720fd617b874580', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-31 00:20:05', '2023-01-31 00:20:05', '2024-01-31 01:20:05'),
('0beb7a1f3a6c58a8b59e3bf84b8773c5a4444f803b2e0d55386fc5063d9a9e0be7a2581b79fe83b2', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-20 04:47:57', '2023-03-20 04:47:57', '2024-03-20 05:47:57'),
('0cc39b261c282327c20d47f6d93f464b1b460774c32f109e7ec5dba65031b411e6b581f138468947', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 22:53:45', '2023-10-10 22:53:45', '2024-10-11 00:53:45'),
('0d05665e4f792f873411c860cded30a5c2d476d761882d5f0444db37aaaa4448d05a60586bdd1c10', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-21 06:45:09', '2023-02-21 06:45:09', '2024-02-21 07:45:09'),
('0d2c762062e5a0b5af6286015f086af085b2a9d61e585be9242288f862c806a799913a50a24f05fa', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-06-15 03:25:08', '2023-06-15 03:25:08', '2024-06-15 05:25:08'),
('0d88a2b9f1c4757dbf8e54eb1e6c8e2368545848233ac55aa4454cfe22f618dfd047678e13f1ea4d', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-16 02:40:53', '2023-10-16 02:40:53', '2024-10-16 04:40:53'),
('0db6e28e0b071200801b3c684d76d5b7ec2c002e7c71d71e4113cf4e47aff4e4051743fa240ce1fb', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 02:27:29', '2023-01-30 02:27:29', '2024-01-30 03:27:29'),
('0dd7ba88b53519c4506ef7bca7a9ae94eea9b591fc6b659dd7aecbaeb51a78aca025ab984ae2e101', 112, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-11 10:44:13', '2023-11-11 10:44:13', '2024-11-11 11:44:13'),
('0df9d0edc3caa775e1a43f2a035ffed52878cea97223ae241ea11cde9f295a7bf34f5c577f6dd700', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-18 03:40:09', '2023-10-18 03:40:09', '2024-10-18 05:40:09'),
('0e14bdffdc5b5c1e51ff4ccb31c1707e581b70f169ef1d5ff2c1a635980fa6856d5ae2f60077442c', 102, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-02 12:27:29', '2023-11-02 12:27:29', '2024-11-02 13:27:29'),
('0e15e725261d65291de9da67bd89017518fb91b61c8610de47339f3e27fcf37b0ffb74e5cfc96a69', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-28 02:45:51', '2023-02-28 02:45:51', '2024-02-28 03:45:51'),
('0ec457f8bc8811a15d1bf6497c8d9042a7beab3febd760547db1bffb702ffb02dd381853d44d3683', 99, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 12:06:57', '2023-11-01 12:06:57', '2024-11-01 13:06:57'),
('0f26f934b4bbe7cde51e7732727a1d9c6553aacd70e2ec7e9009ee5ad3ff48746f5999337703c4a5', 102, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-11 14:42:09', '2023-11-11 14:42:09', '2024-11-11 15:42:09'),
('0f5bfe74778e2d681f0b9d06ebf194e6698804dc2ca5b97e361381c78b9092c799e4b977da218834', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 10:37:43', '2023-10-10 10:37:43', '2024-10-10 12:37:43'),
('109c355908e5f2bedf12c13a310b491eb065d7d53bab2bdb4e0d577acc369ce46ee5b746e740279d', 15, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-12 04:24:19', '2023-10-12 04:24:19', '2024-10-12 06:24:19'),
('119cdd20f1b4d343fb631da3e0fef5aabc47f8023dd8b227f4762c86bdabbc3952f43350b6933cdf', 102, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-10 05:37:05', '2023-11-10 05:37:05', '2024-11-10 06:37:05'),
('11b93c72aeb31e6dc354627a1428d8e304e39614f5ebf9b661ec39cf9b386f42fc4dcacca1a273e9', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 01:34:03', '2023-10-10 01:34:03', '2024-10-10 03:34:03'),
('11bb36f61338a6a784c3e3a2bc622e6fa2bb381aebfb64b6836bedfff5b106d29403f71514d21a23', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-02 22:21:03', '2023-10-02 22:21:03', '2024-10-03 00:21:03'),
('123c774fb9435b8130f92fd3a187b227262b64612d2dd8340d965908212f3c61d3bbb2731c567658', 112, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-11 14:42:43', '2023-11-11 14:42:43', '2024-11-11 15:42:43'),
('1242096a1a8de56641723d507009afb69ed799ae37c4b44b099c51e0c995e1cd7ca41368987bc1bf', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-22 04:51:01', '2023-03-22 04:51:01', '2024-03-22 05:51:01'),
('12ffc2339e5635974d6f6ea5e5bd6722a04f8d68ed8b55d8933c8ea52a30870887b6ac47b958efe4', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 10:07:28', '2023-10-31 10:07:28', '2024-10-31 11:07:28'),
('1330e6f96398b8cabf5e01edf76fbff803df4b9d5e5b67e89d9d8522332e6d9346ec604084c2ac69', 15, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-25 11:07:09', '2023-01-25 11:07:09', '2024-01-25 12:07:09'),
('13a2cc978666984c75e88ea39557c4838134dc21642416cf9d1f23f70dea5dcba47bd4fc1c514485', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 11:34:06', '2023-10-10 11:34:06', '2024-10-10 13:34:06'),
('13b1321e955c4aa912edee818fa937b3dc4ba3d155532bfb035944f7699d1ded89a5f97d136fdef4', 112, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 15:49:39', '2023-11-04 15:49:39', '2024-11-04 16:49:39'),
('1468c56eacc0ff5746974b1c0954ca78898f1b603a820a92e974e9b8c35c1f8fcf5ae8a8f5a2c2b7', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-30 02:39:08', '2023-09-30 02:39:08', '2024-09-30 04:39:08'),
('14ceb9157040f36f83a5ad02db9398f7c1a0c551e7a2c2240ccad08e7b62374588ce724ecfd12f0b', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-09 04:25:57', '2023-10-09 04:25:57', '2024-10-09 06:25:57'),
('14ddb1684781a53b8acbc3c8b044e32f0bb7166a5b8b5eab0962eab78a44e09a31fdbdce37fab8bb', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-23 07:47:10', '2023-02-23 07:47:10', '2024-02-23 08:47:10'),
('152617771074b8eef3eed3e7e219df16dd04ecd1167824b09f67bcd5c28e50e8d500a4499f9c0fa2', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 01:12:06', '2023-10-10 01:12:06', '2024-10-10 03:12:06'),
('1543d76379f3b7616a7ef161e9e571943726281a9b1e350cc51885af6f4bee46d7f13d0698385c6a', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-05 03:04:43', '2023-09-05 03:04:43', '2024-09-05 05:04:43'),
('15e4b6508c8725bbb31e699b9360b38e834750e6f04218677880d62b2aa7e45cb7dd68fc4347c0bf', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-06 03:26:40', '2023-10-06 03:26:40', '2024-10-06 05:26:40'),
('15edb42f59644f6f51c77bdf3b36c80757de74776a8933c2c8e3e3428fe97103366cdf84c82e3924', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-16 04:04:25', '2023-03-16 04:04:25', '2024-03-16 05:04:25'),
('1645fd67b7c8c6d7a5fc8639dd2d38b1dd8bac7825ed7b38068408cc6344e0ef726375fe9031a65d', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 15:58:24', '2023-10-31 15:58:24', '2024-10-31 16:58:24'),
('166df74a3adc48d2b37fff6c580f6570fd0d8a276e04f273359759707af70d94b8f62842c44071be', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-04-30 20:33:33', '2023-04-30 20:33:33', '2024-04-30 22:33:33'),
('16fe4de2fe6c7651468cf2eec7fdaa4a2484c8fc7718efbdabed1273fe12655d07d8b9cdd5904784', 65, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 16:20:09', '2023-10-31 16:20:09', '2024-10-31 17:20:09'),
('178ba61cb2d78e56fa19f584db05c478b04c24b0e07bf8d521c663946245c5a2d6d2a84860687e42', 53, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-03 12:15:50', '2023-11-03 12:15:50', '2024-11-03 13:15:50'),
('17d2f61070c521b0a206933790678ee0e1564337f3cfb10c8cc3072888dd5d48c812619ece6abd56', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-14 01:23:09', '2023-10-14 01:23:09', '2024-10-14 03:23:09'),
('1813c2a7ef7edf0a34e2c54798444a2636f4cd808d42ff7c030db1c580a27fa4de9e4a221e37a039', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 07:14:22', '2023-10-07 07:14:22', '2024-10-07 09:14:22'),
('1a25f5deaa1f4d0f953535a13d74b1cde4b33cb057adae0b57f5ecd138a251a4e93090e56d0496e2', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 01:46:01', '2023-10-11 01:46:01', '2024-10-11 03:46:01'),
('1a39943e4258c317a287bba76b544fababa7ffa7d0a623c51c4e7a8dcdf1459f5ef790f62fbb7f83', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-09 01:17:05', '2023-10-09 01:17:05', '2024-10-09 03:17:05'),
('1a531847ae63ff5a32e26886649b3ff67b5c6eee0aa3d535e2b6aee089b9a012ec9fad5a69822aaf', 38, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-20 22:36:52', '2023-09-20 22:36:52', '2024-09-21 00:36:52'),
('1ae064b7a352c95cd10331946fd0df7b1625bcc09cba2f32c4ad30f4c856b7c96902d7dde550d776', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-06-17 01:34:25', '2023-06-17 01:34:25', '2024-06-17 03:34:25'),
('1af4f31a853695b51d5cd868aa4ccac4a741a92c1b98c4c5c3f4eb2cb2d017b48759ff287faffa50', 23, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-27 22:28:53', '2023-03-27 22:28:53', '2024-03-28 00:28:53'),
('1b221293479966b8ac98946fd5b5f008edfcd8f24af5d0eb494c403db42f0d72211d5367e575bd0c', 121, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-10 00:00:05', '2023-11-10 00:00:05', '2024-11-10 01:00:05'),
('1b47eba96251ea3a1187c71b9ad078765fdd81ee77ec36d31305ad98f8ef6098f63ab9ac5ea6af88', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-22 04:38:27', '2023-03-22 04:38:27', '2024-03-22 05:38:27'),
('1b7e0c280fc82b40e50562481e5d7586a06af28fd222782c9257853b8af26d46b86ccc587caba525', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 03:37:52', '2023-10-03 03:37:52', '2024-10-03 05:37:52'),
('1ba7d9df70a4bef7ba5ca6e7226043954d747e0b214525a840611a9cb59981833e5d0903c9ef39ee', 65, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 16:01:27', '2023-10-31 16:01:27', '2024-10-31 17:01:27'),
('1bd2ebf0147cc6a5005415c87afe087d9012755e66b25db3fb61025e5345906ddd785b8025e236c2', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-06 00:23:15', '2023-10-06 00:23:15', '2024-10-06 02:23:15'),
('1bee829ed6e223fbbaf035de3462d0ac79865b3bcfc3fe20b828d42e989813b3fdf173ea86388278', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-08-30 01:03:51', '2023-08-30 01:03:51', '2024-08-30 03:03:51'),
('1bf5c2d35a28f9c61900db9417be402f3cb6285aacbed8c20d4b73040134af278d1e8b486337ca7d', 47, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 02:28:48', '2023-10-07 02:28:48', '2024-10-07 04:28:48'),
('1ccf99fc8fac5a0af46916004f43aba81c1be2da08201fd36a2257cbeb3fd2fdfa44038d1a2b9e42', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 03:18:11', '2023-10-11 03:18:11', '2024-10-11 05:18:11'),
('1d10bb7cef189a90e4eae62f36ad44a2c52008331a592222cbfa2610455988e37e452cbde82363fb', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 16:53:29', '2023-10-31 16:53:29', '2024-10-31 17:53:29'),
('1d6bedb442b4e6af16731e19fd3df732de67f053b36c72e6b2507f1bf446636faa58833a0eed2265', 15, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-25 11:30:45', '2023-01-25 11:30:45', '2024-01-25 12:30:45'),
('1db961c1db7e3f31e32e978c3e472e8e234814dea31e418463896257a90914b081f70717ed5c39a2', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-02 23:44:56', '2023-10-02 23:44:56', '2024-10-03 01:44:56'),
('1dcc6bda6f49589e5cab1ae2822c27e726e2c149e8ea257fe2f205a54e11bdf97d1c319d85c0bf63', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-04-29 04:18:43', '2023-04-29 04:18:43', '2024-04-29 06:18:43'),
('1dd89a0520500fa5179b2c79de4e80391253d2fedf4fc3e832553540c0bd90b6e0e05c9a713e14a8', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 03:13:10', '2023-10-03 03:13:10', '2024-10-03 05:13:10'),
('1e3260024002615aa3bd8f9c18fd88d713730298dfbb743a787e7ee08b4b37f96aa81d0687bd1a0b', 112, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 15:55:27', '2023-11-04 15:55:27', '2024-11-04 16:55:27'),
('1e34e7965c2f42217de19ead6ccd03477767a0b9273ea3a705fcdeac68ba160e8a48e55c7181fb71', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-21 06:44:44', '2023-02-21 06:44:44', '2024-02-21 07:44:44'),
('1e98ef97851e33fc5d9c1e7572608069ae5579c4d1cd0e30f36998d4141b242f53fa3585fffb6da2', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 09:33:33', '2023-10-10 09:33:33', '2024-10-10 11:33:33'),
('1f10b103012c06a88497e9e06c069a2bcd13d7a574fb2cf18949d9c1206a4bf2d5fccbe4f91ab1d2', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 01:11:53', '2023-10-10 01:11:53', '2024-10-10 03:11:53'),
('1f5c9cb43c0ab9b5ca5c220751167009de8e94b337c7df079254991acde43e5525d2cadcd09dccb2', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 23:12:16', '2023-11-04 23:12:16', '2024-11-05 00:12:16'),
('2016608b3f9e2dadb3111726288e5679590f2ef6e6abe9882b3255c3d67ce54cb1068ba984ad5b1e', 65, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 15:56:35', '2023-10-31 15:56:35', '2024-10-31 16:56:35'),
('224badedeab2cbdecfe0caf37004db7fc1d5e462ce489a1c1d6197e876833b7596b4bbd7d8face0b', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-27 01:39:02', '2023-02-27 01:39:02', '2024-02-27 02:39:02'),
('2305b4cb415dca13288e33b145f164966018188f7f0545a603e69302cb84de22856657c60e4be0b1', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 04:07:24', '2023-10-07 04:07:24', '2024-10-07 06:07:24'),
('23226b330b09e8f2449dc84c49f067d5709c779b1eb6468c994c4c981407d99c9de82273879948d4', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-07 00:21:20', '2023-09-07 00:21:20', '2024-09-07 02:21:20'),
('235f5323623aa007ebea8bd4f71bdde9308a83d702ec9a5ff47650cdf9d13e323ae43123d4545640', 102, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-10 12:39:09', '2023-11-10 12:39:09', '2024-11-10 13:39:09'),
('23609496dce073b5113fa4142cddac051e15374257e199bf0b551b064e804f39cd1a2202eccbd352', 65, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-02 17:33:20', '2023-11-02 17:33:20', '2024-11-02 18:33:20'),
('23861ae8d9854be0c07d9be148f5abc12649f46abe2bdee450140408d9e4e68f495e02c67ac7a4cd', 19, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-22 04:49:47', '2023-02-22 04:49:47', '2024-02-22 05:49:47'),
('244ade3060b1485de02672609f5a0a0492ede12637a75f49250563e354add0e3289c275171f3e882', 38, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-19 22:52:48', '2023-09-19 22:52:48', '2024-09-20 00:52:48'),
('24515fddcf0428a2db238be24497cd24d957605e73e8efe82c815407172a043c911ab8475933613e', 39, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-13 18:39:45', '2023-09-13 18:39:45', '2024-09-13 20:39:45'),
('249eb6779caa19f427f0376360e36549893da18c26a39ce044c5613084be128dfcc9a1a997db0205', 48, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 02:30:46', '2023-10-07 02:30:46', '2024-10-07 04:30:46'),
('2578e5de8cdb91798fbd05df64a66b52c960d4c5f0677764e37d4b20070bf9222548c128f92008cc', 109, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 16:22:34', '2023-11-04 16:22:34', '2024-11-04 17:22:34'),
('25ce97f2f795a541f1d316ddff5cb0d46614aab56fcad519529a6aa28e4c43ea4cfa2e4116434d03', 39, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-13 18:42:41', '2023-09-13 18:42:41', '2024-09-13 20:42:41'),
('25e56efc6f8ebc153e74e4f13a7219eb00ab75b41f4012dcb990143ca449fcb1abb234e8c8087768', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 00:00:43', '2023-10-03 00:00:43', '2024-10-03 02:00:43'),
('265273374dd95b238f6efd48f04a218559d6d865368102f8e8233a259e31b6b1fe50834dfa2eef73', 25, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-05-17 02:12:21', '2023-05-17 02:12:21', '2024-05-17 04:12:21'),
('27018ff7068ea99f3763f0006f713c3dcff382d3f656fe0a477e0057f6ce98e79149a019c58d47da', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-30 14:50:37', '2023-10-30 14:50:37', '2024-10-30 15:50:37'),
('27184a25f332b58d678315e22c0d4a89e5720380ab555da1b7362202260723e29c50583d839a6d37', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-23 04:11:17', '2023-02-23 04:11:17', '2024-02-23 05:11:17'),
('274199d152d9cc4aa780a9bde92e7a917c9a52566adf6c06246c373ab463fc4d91f813d834ddc3ba', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 03:37:00', '2023-10-07 03:37:00', '2024-10-07 05:37:00'),
('2792b2eb677407c7a2fed2e8aadd787650e9f11951adaeb8013b2c4fc12aa21d6982b6643cac39e5', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 03:36:00', '2023-10-03 03:36:00', '2024-10-03 05:36:00'),
('27f8242f588f702f5a6ec09e198189966f898e06ee3f055ccd9ef9166143e4c32f642d10e81f8d3e', 102, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 14:11:13', '2023-11-01 14:11:13', '2024-11-01 15:11:13'),
('289e66bc70d56270361fc58d14f8525dfd38b350016bf6ececa66d9dcb93ddf9b3c4b7677c954b05', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 01:52:29', '2023-10-03 01:52:29', '2024-10-03 03:52:29'),
('28a4135cc19e6090d995343341519d6a5af0aaee9e5fdfdd7bde7e9cded0ed0cb049fcd19b9a5b98', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-09 01:17:05', '2023-10-09 01:17:05', '2024-10-09 03:17:05'),
('28b6075fc42c7a98bb4d4ef4dc1a9e91c37a35616812b82216cd52d8e5693946fbd2a00b3b992c98', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-14 04:17:54', '2023-10-14 04:17:54', '2024-10-14 06:17:54'),
('28d5fed532b2d02f0cdbefc1d1e1e049fa539ef1b33db88ad4624aaa600f2c4f9893f34e41299946', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 10:29:44', '2023-10-10 10:29:44', '2024-10-10 12:29:44'),
('28e908d6ee01d21b9f7baf7b04090b47382c9e270f6237b78b5ff49b17d9c6d0acac802957402dba', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-04-10 22:18:23', '2023-04-10 22:18:23', '2024-04-11 00:18:23'),
('2906b81aec4506b66ba8a4e90a9d86233760bc213dbdaf7d83dc0e0308477a0180ce95a1e202c3d4', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-04-29 03:14:36', '2023-04-29 03:14:36', '2024-04-29 05:14:36'),
('292a8d7dcc26a85a7fc0a991702953a1313ece37c0b813f69af91b93008a1b33491a8528b2d8b740', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-23 01:10:41', '2023-03-23 01:10:41', '2024-03-23 02:10:41'),
('294897baae0536d1cb6ef3d0af6ad3305d64eba0aa127210cd3bfa5601aabf15361b26d1185b307a', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-02 23:23:28', '2023-10-02 23:23:28', '2024-10-03 01:23:28'),
('29ea912b23fb35140e33b0101c70ea841a2f407e23fe22206db37f152a98407c94c0b8261f9b9c2e', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 22:18:35', '2023-10-11 22:18:35', '2024-10-12 00:18:35'),
('2a032bad2cc2406a8f96822ba517de290fa5536860653c2e704ca6e5d51035a0629153ede53bda92', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-16 03:43:28', '2023-10-16 03:43:28', '2024-10-16 05:43:28'),
('2a049a689cc52259cc83a0c77a0454a1bda5414e2f42b47875e6ae411f079df63cddcefaf53fe94e', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-09 01:09:04', '2023-10-09 01:09:04', '2024-10-09 03:09:04'),
('2a0a4168f60d952ffed3166708cbaa60effc257add0597cad0b5c690d44b4c57eb8c8e93ab9eb4f8', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-21 09:41:52', '2023-02-21 09:41:52', '2024-02-21 10:41:52'),
('2b1fc5ce40b6f8f7725c1f1e81599510a3a9b1cb38e6949a0e7f4ffc60577f4a5858dd2b3ce30f95', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 10:45:47', '2023-10-10 10:45:47', '2024-10-10 12:45:47'),
('2b24d6080a429340482a9f857e87aaffe5342abc578d24cde99621ae73acb8b0c63e9adf2a1992c6', 109, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-11 10:43:39', '2023-11-11 10:43:39', '2024-11-11 11:43:39'),
('2b3b63adb9501f554cc810bbf97a9f0b9b414b91c737c08dcae404e898c5d4143053447f0630e52b', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-08-24 02:06:05', '2023-08-24 02:06:05', '2024-08-24 04:06:05'),
('2ba0edd69dcfd1760dddd8891baeb0105294f24feee801b6441218d9bdcf9ed8777d880cb4fd97d8', 25, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-06-10 03:32:22', '2023-06-10 03:32:22', '2024-06-10 05:32:22'),
('2bb5c2c5c36073d7ef8e44f77a3085ad2fc98a3b3197e2516d39d2465946a04c73a83e6232c93cb6', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 04:16:46', '2023-01-30 04:16:46', '2024-01-30 05:16:46'),
('2c30605679362916c7ba0d3db34a4ad63ce6df0604af5761ceda3422747cda4915533d6539c9de60', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-04-29 03:08:05', '2023-04-29 03:08:05', '2024-04-29 05:08:05'),
('2c920bca6fa297ef5ba2590f4d8f8243f563d9334b6973d41f89a1094e073b669049914033315345', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-14 04:09:25', '2023-09-14 04:09:25', '2024-09-14 06:09:25'),
('2ce9d503b32ba0f1d846e45a23844a54e697228a192e024a9fa6f1a9b61867f61d35242a75f28255', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-06-15 03:53:05', '2023-06-15 03:53:05', '2024-06-15 05:53:05'),
('2d2c4b2c06b6b84b330de6a647e66f95e9efee5ede71acce9158397175a816740b92372c46208028', 65, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 19:22:50', '2023-11-04 19:22:50', '2024-11-04 20:22:50'),
('2d7b7b5c2f5272ac2d18b8a705a7ebd2b0192853c27ea68363ea522c6f1e7cf9480183e5d9d64820', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 22:55:18', '2023-10-10 22:55:18', '2024-10-11 00:55:18'),
('2d98576749c5629e6ffe6ec8f9e541aee9f59b2b700af3a45a719b30727b2fef267602e5e68d1059', 43, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-08 23:05:26', '2023-10-08 23:05:26', '2024-10-09 01:05:26'),
('2dca4946cc642d850a1860a558c92b96706709e7b53bcdf2d62e7839b6dee8c2e98da8d77ac9dbbf', 65, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 12:31:07', '2023-11-01 12:31:07', '2024-11-01 13:31:07'),
('2debbe6d1d61ee94c3cd411860989c86dd20a2457adc236ab5139cf826d50ca09ab08dc0c9461bb4', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 01:55:21', '2023-10-11 01:55:21', '2024-10-11 03:55:21'),
('2ed84736e7744b1437c89e75da73829e45d2e742f0c62f2352503a367d6a0f36ea132962e9a9f0de', 53, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 16:32:54', '2023-10-31 16:32:54', '2024-10-31 17:32:54'),
('2f419b11bf1ee1e1a42911e671ef45504d0c72e5300e627082d1049179daca4318c6532ce6488250', 49, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 03:46:47', '2023-10-07 03:46:47', '2024-10-07 05:46:47'),
('2f9c436a955d7057d0d140ecf4addca2e8dcc5da45df7b116bef9d04284d30b1adaa7d791034c012', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 04:29:46', '2023-01-30 04:29:46', '2024-01-30 05:29:46'),
('302831127e38e7f464e1da5513725b4e5eccda02fdcb33b598bcea4ac42982830d9d997eda5ff7af', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-20 00:34:17', '2023-03-20 00:34:17', '2024-03-20 01:34:17'),
('308e26aae952fdbee0922fac9a1eb98cd9f4fe3bb300a0290e122b04aa7f32f0451ca110a3956a47', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 00:08:52', '2023-10-11 00:08:52', '2024-10-11 02:08:52'),
('308e8b4f44e9214d6d2c99954255e76d3b425dedeee56a4612a67fdad47758a75c40a030c5ae6742', 112, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-11 10:52:29', '2023-11-11 10:52:29', '2024-11-11 11:52:29'),
('3174140af5708ed0ff44dce3d01066d1a1c107fc2ba475a47f2de14909dc833546e25b1fb2753a94', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-04-29 03:10:04', '2023-04-29 03:10:04', '2024-04-29 05:10:04'),
('31e4a920aed9b57cb0b10a271134157440c2bb9179b19ab01340c99a525245cedb17ff95ab5e2cd2', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-07-31 23:45:28', '2023-07-31 23:45:28', '2024-08-01 01:45:28'),
('31ecffe6d7df3c2fe8b62e9dda0ab80d716e9b853485a3d547f7a5a71276be14be93971ddb6d32d8', 116, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 16:33:44', '2023-11-04 16:33:44', '2024-11-04 17:33:44'),
('3229286e1343142afe7a4f89e81d4847d69ca8f1149d0cd86acd35e46bb373919a85e479d2f90e9b', 102, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 14:17:30', '2023-11-01 14:17:30', '2024-11-01 15:17:30'),
('324b728c1ff4423fb365b45ff4a74fe306cc253c959cdcf4572cc0cfba5ae4ec77273997b9f5e133', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 04:24:33', '2023-01-30 04:24:33', '2024-01-30 05:24:33'),
('32ab25a3b40325f0219ac872d83eeab3b4f754f690a73b1b25c4bcb672613034244ce155d0081c5c', 29, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-08-01 00:29:48', '2023-08-01 00:29:48', '2024-08-01 02:29:48'),
('3346f6f0e20c25b46d25521cd9cab7385135b9cef9524793f20adbedb6fe4e9cd0e3e820f5e76e88', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 02:25:32', '2023-10-11 02:25:32', '2024-10-11 04:25:32'),
('3357a474ba6d49ce6e7056e6a7f175352036b0b252c390bb6095c58502a7c6a967f7e983dfa38c3f', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-15 22:37:11', '2023-10-15 22:37:11', '2024-10-16 00:37:11'),
('335be85fe056e070cc62a73ad6d5fb9dbb8f3b73d734925b58a62572de376f049b9fb5160426f8cc', 13, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-25 10:57:22', '2023-01-25 10:57:22', '2024-01-25 11:57:22'),
('335beec495719851e3df7af7e71dd9a1c1b8260257f0f3e0ba75ce21db879406e2830b5474882ce5', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-15 23:23:27', '2023-10-15 23:23:27', '2024-10-16 01:23:27'),
('33fe68ad206a765fc7faf7b3045ead7fda90230f771471dc26051727d45b2fb9cef635a9d2609c68', 25, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-06-11 23:52:39', '2023-06-11 23:52:39', '2024-06-12 01:52:39'),
('3415d1cd80143862aa51fa28d8300c22f525163b6a209833dfbf868ff61882085af16c28fb8bacc1', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-30 02:11:31', '2023-09-30 02:11:31', '2024-09-30 04:11:31'),
('3460182848f0b5efe590868b15be2e93889903c6855a308a2e870b55a8bb5b4c8e5d97e5a5f3e588', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-31 00:08:50', '2023-01-31 00:08:50', '2024-01-31 01:08:50'),
('359c5db46d67c94a790e50681d036890501fc3ab8e4d561c41b1d321f1387c1af49cbebc6edfd19d', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 10:05:49', '2023-10-10 10:05:49', '2024-10-10 12:05:49'),
('35bdeefa5df1c67e7ee6767a7c0172f1d4b28f8ab52c6ce7b2bcc75233d156b8bdf4b187073dd000', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 02:27:35', '2023-01-30 02:27:35', '2024-01-30 03:27:35'),
('35d7aa8fa316e7b4f04049406635a198335bffce72853ba345f6ab3bdf1790ce63e134348621fb55', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 22:07:57', '2023-10-10 22:07:57', '2024-10-11 00:07:57'),
('35deddea2e9b2ada7a1de13ffff3e8717a4d899355202f5f98ec77f18583ca105626a06ccad84c26', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 03:51:45', '2023-10-03 03:51:45', '2024-10-03 05:51:45'),
('36c1663ef3f5574e42f9ea5a0d547be5bf752ef640f7753b55421bb51b512a27942dbcb5394238b1', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 04:11:07', '2023-10-07 04:11:07', '2024-10-07 06:11:07'),
('37106710d1d324b7332ce9a96395e59c957a18d2ca3805675f9807599311706dea1a06137864b7a7', 19, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-23 04:13:52', '2023-02-23 04:13:52', '2024-02-23 05:13:52'),
('37887cebe3d3c59975e717147aa0296f636fb8e2fc66fb8edb749c28150d5767fdff0ac53243bc0a', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 09:37:14', '2023-10-10 09:37:14', '2024-10-10 11:37:14'),
('38961898c565b6c7b9ec20d43fb30ab0a5f9a62ca09c0ae4d5ce2cbcb39d8b34ae22201ee364bbb2', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 02:59:51', '2023-10-07 02:59:51', '2024-10-07 04:59:51'),
('38b4a567bccea5ea49597a8b651fe4886e330f629d488ba1e365651dced014fb5f65e4899439a312', 31, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 16:33:35', '2023-10-31 16:33:35', '2024-10-31 17:33:35'),
('38bcef6b0ad8732f920d83623af6c4fd3bffd1c33e4762e110117d1c9c152770debad8a465cff11c', 39, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-13 18:39:45', '2023-09-13 18:39:45', '2024-09-13 20:39:45'),
('396d0d55d84b507ffcec31e47eee51d25de72e1e56222e816f4cd39a1d28d2959a145e2b16b22334', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 02:54:48', '2023-10-03 02:54:48', '2024-10-03 04:54:48'),
('3a12fb8d79f28e486e930d2308732119e935500ef940872f325e0188a0f961b724335d7d77451105', 34, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-08-24 02:23:12', '2023-08-24 02:23:12', '2024-08-24 04:23:12'),
('3a1e132954c4b4b05174d38c4db36856cdd91cff1ceb59c8687052c1cb8add55319b8aac442dcfe6', 121, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-12 09:22:55', '2023-11-12 09:22:55', '2024-11-12 10:22:55'),
('3a8d90baac3f6800fe95f8f909351926f989e222b64894cd8578a0e0be88d80a1fc41d47bbd2207f', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-02 21:38:00', '2023-10-02 21:38:00', '2024-10-02 23:38:00'),
('3b1b1f9c3ca3694856e8f9fc54902e1f65fa5106f661354cc7a805e5fdc1467b560aea1afd5b2627', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 01:37:48', '2023-10-03 01:37:48', '2024-10-03 03:37:48'),
('3c2f203c3841dd826b2a725c41f925bbd2916d37ca8df39fd97aaa2e96cf2ef47d8caf01899482e5', 38, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-20 22:51:48', '2023-09-20 22:51:48', '2024-09-21 00:51:48'),
('3c3fd042c9c2b29d13a1c7d241fdc8aec1063bf0767eb0e02420d6c72114612e8244f2ae7dde5a31', 102, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 14:00:25', '2023-11-01 14:00:25', '2024-11-01 15:00:25'),
('3c4856a848e747078c9e1670828b09d3807c0788b10c226efd2948af032b8a621f289583a9e350e0', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-21 06:54:18', '2023-02-21 06:54:18', '2024-02-21 07:54:18'),
('3c6504190bda80d53c6ef04c3d2a66086ea83faa6c93e0f7293165f7764dc5af0c46d81ececf7663', 19, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-23 04:14:36', '2023-02-23 04:14:36', '2024-02-23 05:14:36'),
('3c66a43433956745d8ca0e7990937a0e3ae27a8118f42f776ed7e9045225bf8490f09fe96a9b3294', 102, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 12:18:39', '2023-11-01 12:18:39', '2024-11-01 13:18:39'),
('3ca096b11d46745fab998ac70006555dd08dc5adcf0545f779a56098a9689430177348d0f51e31ca', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-06 03:06:12', '2023-10-06 03:06:12', '2024-10-06 05:06:12'),
('3ca4728faecd5d6926cf11c69296554e01ad12cd16038fe823526d464b424713a0511c61d92063e7', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 02:47:52', '2023-01-30 02:47:52', '2024-01-30 03:47:52'),
('3df2f06e8e683795963a08d09d5e6732526d15851a9405a38b87270979df2f81fda2248d2143712e', 109, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-06 13:58:35', '2023-11-06 13:58:35', '2024-11-06 14:58:35'),
('3e39b52ec49b11dbf72031275dc6d95db9ed0a0e26fb288b541322705f5c4b531e9d90bb30ac98c2', 15, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 17:20:35', '2023-11-04 17:20:35', '2024-11-04 18:20:35'),
('3e505812fea7e193494cb68dc8cba20bd4758ca62ca2f60768ffd8a7e8191cdcf3fe570bad8efffc', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 04:10:31', '2023-10-07 04:10:31', '2024-10-07 06:10:31'),
('3e72dc18af584e596c1abf7bbe0e5a113ccba4006f6812f5fd1314595ac8e7ef7ec4c07670a1d607', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-06 00:40:04', '2023-10-06 00:40:04', '2024-10-06 02:40:04'),
('3f07f911557435b6f368a1b223fce62ac9c70eea26baff98505eba0c07154ef17b0144cb3ef326ae', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-28 02:43:35', '2023-02-28 02:43:35', '2024-02-28 03:43:35'),
('3f29bd6a8d273cf6f2a91520e3a0c838c149627592330f82e0cf9f41ae153a16a9bee1b6da2cc7c1', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-04-29 03:27:56', '2023-04-29 03:27:56', '2024-04-29 05:27:56'),
('403ddf1129c5a43201712a0b028d55e941daacb64edc06b6b6aa1915bff4ba68b0deb4d29a3270dc', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-02 14:18:24', '2023-11-02 14:18:24', '2024-11-02 15:18:24'),
('417108596b00fb3e5248416c9adf2949c04f3bd7a9288f813fa473b7f83e0a32f5783ab255da9aef', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-09 01:24:39', '2023-10-09 01:24:39', '2024-10-09 03:24:39'),
('418558f67d4830f80f57a117224572a7677a7a991ff482468b1c2a66ec2cbeb9b7c6049a2237a4d9', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-05 22:12:38', '2023-09-05 22:12:38', '2024-09-06 00:12:38'),
('429216f2576622052eee977980f4ebf5506f5ceacb22b43e239ebaef2f6c0e04879e2cc25cd3b895', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 02:28:41', '2023-01-30 02:28:41', '2024-01-30 03:28:41'),
('42a953c075682c4bd869f54f42e515598249744c87a02c7aefe632407d6dda51eaef3bc6daf19992', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-02 23:36:33', '2023-10-02 23:36:33', '2024-10-03 01:36:33'),
('42d3a010072d495258106e8b7b1c25b7095358c0607e8a1809d179cc03aef63e4b4f888dda9b61ae', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-03 22:39:03', '2023-09-03 22:39:03', '2024-09-04 00:39:03'),
('42e2af002b5a4e1c067e4f9fc329be0652ca1f5c7eaa05a5d9190533500dec0027ce2857296c4ee0', 15, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 18:15:01', '2023-11-01 18:15:01', '2024-11-01 19:15:01'),
('43d48a095b3f90e4d855e9aec42aa4acd382ec8b33c9498a912281ba3a8069362ae7bd1583e0e935', 38, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-24 21:13:13', '2023-09-24 21:13:13', '2024-09-24 23:13:13'),
('43e2b2ba39b76c9001969c816e9dbaeded89aea778be60c83ca980ed7d96a4bc8691436b9965bd42', 38, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-02 23:43:05', '2023-10-02 23:43:05', '2024-10-03 01:43:05'),
('43f24ed46d6ed83a8da81707c6b625972296b1d7172ed1c7dc70010d803eb50d06078284854a8067', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-02 01:15:12', '2023-10-02 01:15:12', '2024-10-02 03:15:12'),
('44b7184bb7f97813e828c14ebe11be865d73a9a427251f9e7bcd73b4b0bda803ab018e3da4d71fa3', 104, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 12:37:14', '2023-11-01 12:37:14', '2024-11-01 13:37:14'),
('44ceb8392b1222ae09e658e29dc18f371a0ab1723dca19cc310c6de188cc9814b2780cab6ed64a89', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-06-14 20:37:36', '2023-06-14 20:37:36', '2024-06-14 22:37:36'),
('4501bb496531dc2111a866c2e01c82a9cb23df8ffaa11e136174e39fa3287bedf7d66a185838b5e2', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 04:32:19', '2023-01-30 04:32:19', '2024-01-30 05:32:19'),
('451d34e11e26ce9a59f6aa308edf0a54cc6c80bac4451fcb3c558086a1b9f94c32ae06fab178c0b5', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 01:11:49', '2023-10-10 01:11:49', '2024-10-10 03:11:49'),
('45a3d1fb02dc5b110b9f1801d6700975e91db641dedae1d646fd0320039213eea75a27a383933794', 112, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 16:20:54', '2023-11-04 16:20:54', '2024-11-04 17:20:54'),
('45fc405351d76ab2f2a29b424d662bfa0a4a5ca37a73353903f004c85d5c4db1b6b91a6f1c564421', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 16:04:04', '2023-11-04 16:04:04', '2024-11-04 17:04:04'),
('4605ed2df26142a090d718a39dcec8032a16060692b6a6466b35f221f4becc3238eaad95317099e9', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-16 02:07:37', '2023-03-16 02:07:37', '2024-03-16 03:07:37'),
('460a12d4de9b88d812e4a310d954cd8fe6b444aee3047018d8bd0491b95657f4bebcc42b6cf72ab1', 50, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 21:41:24', '2023-10-11 21:41:24', '2024-10-11 23:41:24'),
('46427562f10f4efbafef1f21ff226eefe8da7aa831eb8e9ee2152037cfdf3e55beb77db3d492f499', 112, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-11 14:46:29', '2023-11-11 14:46:29', '2024-11-11 15:46:29'),
('464bfde38d2b323bd6d345ecd98dfb30a29ad728d2488691a8e5d673f97e434a0544f61e55053b35', 29, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-11 00:22:53', '2023-09-11 00:22:53', '2024-09-11 02:22:53'),
('4696254e31158204d3e79e481e6205140c457f924e913bbd5478d446510351043ea2f3ab9969f281', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-14 04:17:48', '2023-10-14 04:17:48', '2024-10-14 06:17:48'),
('46e9eb2fd653ba41856a20da7ae97bd907c76084862a66851e4a31ac31a27ae6f2904e791e119a3f', 65, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-03 21:44:51', '2023-11-03 21:44:51', '2024-11-03 22:44:51'),
('483e6e8e8494be549f2a32f156c864eec191730b4025cd177b73e6d913fe7c2997be405925d18644', 53, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-30 14:19:14', '2023-10-30 14:19:14', '2024-10-30 15:19:14'),
('485e7641f4b6b8b4f4ec7431281c38c191807ad82d57c31ac33f3b421f69b5cba6121504dced97cf', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-30 15:01:23', '2023-10-30 15:01:23', '2024-10-30 16:01:23'),
('48de338975206a1460178bddbd26fe0b35160010bfcee1df9162ed8d822e640aa27f2421741b2a5f', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 04:31:42', '2023-01-30 04:31:42', '2024-01-30 05:31:42'),
('4962df252508d0272bec00c1148e6a202b502256cc7695d8da91c2ca0578eab75ebcbc1dd468504e', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 11:29:50', '2023-10-31 11:29:50', '2024-10-31 12:29:50'),
('496fa6d974ce0be9ba483e17cfceaaac148737b4eb218111845a7869cf8b5b74d1e2ea66c8eb81bb', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-06 00:44:44', '2023-10-06 00:44:44', '2024-10-06 02:44:44'),
('499de3e407c1f555e6fd06002f954b13daedf44fe6b96651c6bbf8d3edfdb31760a29842cdbf77be', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 00:08:34', '2023-10-10 00:08:34', '2024-10-10 02:08:34'),
('4a11c3f908fb3e28b9d3ea5ed1803c40a0c91664d3e2fd24a1719174d87a47479b0bfead03e9ed35', 25, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-06-12 01:33:51', '2023-06-12 01:33:51', '2024-06-12 03:33:51'),
('4a97cb6e78855c8e0061fea8ec81b2ed395e0839a939b56d3663948604a83d5b52a4688eb574c3b0', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-04-30 20:40:36', '2023-04-30 20:40:36', '2024-04-30 22:40:36'),
('4ae9b3cf289d6c49218c8731a178a2dc320c86c3aa7b388add4cdddd53a144e234b2842f7f0d36c0', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-16 01:59:04', '2023-10-16 01:59:04', '2024-10-16 03:59:04'),
('4b3ba582a98045a40e80469d034dea7e6551780974080e836062ea7df6e7bccd345a19f23e4f00cb', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 02:40:59', '2023-10-03 02:40:59', '2024-10-03 04:40:59'),
('4b49087457f8e70233bd4c53d3b2cedcde75c07efe22fee65d30aa917152f03e04ea0064907b2e19', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 23:11:45', '2023-11-04 23:11:45', '2024-11-05 00:11:45'),
('4b5cb24d75b6ad413a64d1cf252bed5acdee2bde7aa810b2a08fb61e9ea6da134b8fe348c2fdccd7', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 02:27:23', '2023-01-30 02:27:23', '2024-01-30 03:27:23'),
('4bce7b0b3db73a9435b70b173d55ad2f723f8949d171bcea4637f84aed9338654aed5d854a4c0937', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-05 03:33:29', '2023-09-05 03:33:29', '2024-09-05 05:33:29'),
('4c44e9de4f386c61ec5da4fbcdac85f72c40f644508352be7ddfe02e47994a72baab54fbd26f9609', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 03:37:06', '2023-10-03 03:37:06', '2024-10-03 05:37:06'),
('4c7b500edf4e4cd13917bb949272b068fab97c451a9b698edf71d45684f93ee40bec756f1349a25c', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-30 02:29:04', '2023-09-30 02:29:04', '2024-09-30 04:29:04'),
('4cd549b60fde8007947f0807274fab9428c837636f634ede64b09f1284e10dd5e694a124eeba2198', 17, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-31 02:18:18', '2023-01-31 02:18:18', '2024-01-31 03:18:18'),
('4d37b8c0971f1c772d3fbdcac75b12112e90f3515450307e91b38e8c798c8570e8c3c9c7ab197a90', 46, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 02:12:34', '2023-10-07 02:12:34', '2024-10-07 04:12:34'),
('4d5fe29b7c6f0518abb02edb51c4da25bf6d7d1e845cd1b88faa009186d24e8e8b1dbde9000b5557', 65, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-03 14:14:35', '2023-11-03 14:14:35', '2024-11-03 15:14:35'),
('4d6ec074548eafdcc986538c6d19a84351ef25b06347a90c1c301998a1fbca01fb46aee4dc9ee36f', 39, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-13 18:23:37', '2023-09-13 18:23:37', '2024-09-13 20:23:37'),
('4d700f37ad389ab919a8ce7a235d63703c2954fdc6a863b12f9f8160a81d86f2b0d43bffa6751c67', 102, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 14:25:12', '2023-11-01 14:25:12', '2024-11-01 15:25:12'),
('4e188753fe5840ddd67f51849e9d445ca8ddd9cffc2ea01433976d287fa561e468bd6f9729c08a32', 112, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 15:01:21', '2023-11-04 15:01:21', '2024-11-04 16:01:21'),
('4e8171af906e00f36581d6f3d77e29a4ae2bf7dcbb74d769f8d1cd4ccdf570ddd1ce5be9ca24995d', 15, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 16:36:23', '2023-10-31 16:36:23', '2024-10-31 17:36:23'),
('4ea69311c01ced862e5cd88fe6950a6a35ba9c600dc3a710017f348669ae88a85dfa3477ffb8fba2', 46, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 02:24:06', '2023-10-07 02:24:06', '2024-10-07 04:24:06'),
('4ee5428c39fa4d67c6197a52d324208038fcc30ddfa670264834fafda783d64cafce5193af49038c', 105, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 12:41:05', '2023-11-01 12:41:05', '2024-11-01 13:41:05'),
('4f34544b0049a94c5a6af9ff630234527fe557972c86b8ff0e2dc1b41b60c6cdf52d28d9aef6bc4c', 43, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 21:40:01', '2023-10-03 21:40:01', '2024-10-03 23:40:01'),
('503d86921b29ec545db72b6a6ef5fad29fb43c8ccf81fcf54ceb3ae3a26672821f598fddc3fd3f87', 51, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 21:42:15', '2023-10-11 21:42:15', '2024-10-11 23:42:15'),
('5163f07b4b024f4adb7fb1ab7f443140675cebaba57c61ba9eb6dd0572949dacd1f0ca56b32c3fd6', 15, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 02:13:10', '2023-11-04 02:13:10', '2024-11-04 03:13:10'),
('51a1e5a2be2fcdd16e33fe193f7aef49ff4ea6ac5f7e65ebf33c2ec0c25aded8b33fd8fdd284afc1', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 04:14:54', '2023-01-30 04:14:54', '2024-01-30 05:14:54'),
('5200327815fd47b423d61c286a96fb3183cb90d1fc7a3d692a3081eb5e1b69efbd31fa5ae7041787', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 23:30:56', '2023-01-30 23:30:56', '2024-01-31 00:30:56'),
('523383f60142e2e05fe6340a7e9b83a6807c5a2c024fd37eba2ebcbc64b15c15d94c39bfd4e4e014', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-18 02:39:23', '2023-03-18 02:39:23', '2024-03-18 03:39:23'),
('523964ead405d5f568907265906b62c81514371f7a9216b38280ec4068cea9e9b16071728d92eac6', 15, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-25 11:00:25', '2023-01-25 11:00:25', '2024-01-25 12:00:25'),
('52557b8a823e8284fdcaf01c1ed6635a47ce39706fee6f1cef30a8b6ce1470a231beae51557187db', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 00:46:30', '2023-10-11 00:46:30', '2024-10-11 02:46:30'),
('527c297ab79e889e1d717eb67a4ab54d09c941abde96132f85168e7ce4454460dd6f51226d774bf3', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-09 01:17:06', '2023-10-09 01:17:06', '2024-10-09 03:17:06'),
('52e2dca01094248a39fd6b47a421ed481fbfe3c569e37d9084952ca457f9df9b1c6bf03b4b9d20b1', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 06:50:28', '2023-10-31 06:50:28', '2024-10-31 07:50:28'),
('52f1535cc35aabd175d8db0297af85071159b308b838912e50d301881521790fc708faaa04591952', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-09 01:17:06', '2023-10-09 01:17:06', '2024-10-09 03:17:06'),
('53b1abde6a1143c171c7c531f89364cff3d4344a0d4e07d08fd1e28ede78fd804b959aa84de34fe5', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 02:57:56', '2023-10-11 02:57:56', '2024-10-11 04:57:56'),
('53c42373b0a25f11df693e656d7282b106fed5762264c4705476a9e460c6bda05c2010552c91e43f', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-06 01:40:39', '2023-10-06 01:40:39', '2024-10-06 03:40:39'),
('53fb1c98571e48068f3273c004747449f562ad8c63c68555be274de7eb39c3a1391458e249f06ecc', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 01:12:18', '2023-10-10 01:12:18', '2024-10-10 03:12:18'),
('541919dbe7be483373048e5e74e3fbe1196874a6cfe668b29f7a1ed2a61d48122560ab649d497a86', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-20 01:28:55', '2023-10-20 01:28:55', '2024-10-20 03:28:55'),
('54839cd417c2dd0a9ad264b4e53f410660cd11491b582d6a108128f3360e4277a3a351e2feca0b79', 109, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-11 14:26:43', '2023-11-11 14:26:43', '2024-11-11 15:26:43'),
('54ce2d74c5d2f94929dbe6bd9d0b64c684b1a53a90755cfa7b013ba95222162b2f8b5b6ea15b28e7', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-08-24 04:44:33', '2023-08-24 04:44:33', '2024-08-24 06:44:33'),
('5558a45c9637d6f6f1e4d57d281869bf844a1fa24d3746fca965451e7769c3993ccd2421ec35af8d', 112, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-11 14:26:23', '2023-11-11 14:26:23', '2024-11-11 15:26:23'),
('56aa748ca042b4598f3eaafc13163e5cc70b6e028cdfeb3e38d74f027948fa27c9cb83d4a10b26d3', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 01:32:54', '2023-10-07 01:32:54', '2024-10-07 03:32:54'),
('57fab609f2605e1d42a7ce384f868f312a218898129b94ca6f5151195ceaeba0d4a47dab962b1d2c', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-13 14:18:16', '2023-11-13 14:18:16', '2024-11-13 15:18:16'),
('58ff535fa78ddc324d8b419014480b5a06137cc8b4b1c39be2775bf78146d444ea9c52ea31f60ee9', 39, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-13 17:17:48', '2023-09-13 17:17:48', '2024-09-13 19:17:48'),
('59290e3bbb95eb344e602f867a8ab13e640204b1329ae57480c06b6c6b2e136ed477346002e3d43c', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-25 10:54:35', '2023-01-25 10:54:35', '2024-01-25 11:54:35'),
('594245ee672368ecf4b49dec758fbdb537285f5a10737cac3907220f45f4385b1c8dfa2987244b86', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 01:27:45', '2023-10-07 01:27:45', '2024-10-07 03:27:45'),
('598a797635cf661eafbaefcf9f22fde451b75af970c9435c2e8e77c44f4f35aab6157e5d368e5886', 53, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 18:15:17', '2023-11-01 18:15:17', '2024-11-01 19:15:17'),
('5992c54948b5995ca989e452a73ca58350411ae841ff84f29409d178972dc6fa1fb27aa2e7564079', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-27 04:18:49', '2023-02-27 04:18:49', '2024-02-27 05:18:49'),
('59f211732363882ccaaf413b77e664139e49cbd54fa3080e4c82690358f2503d6823182c96095ac6', 112, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-10 05:44:33', '2023-11-10 05:44:33', '2024-11-10 06:44:33'),
('5a0639aa2799c1a7ddfa02b90f42055e5e6ceb83562fb3dd7145c86d21d3ab89de42d32c560800e1', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-16 02:23:28', '2023-10-16 02:23:28', '2024-10-16 04:23:28'),
('5a0f61b4a66b1844c0418f33af91e1d4b132fbd4a5218365a270fdc38c9087fd0c59c47178500e43', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-06-15 03:54:10', '2023-06-15 03:54:10', '2024-06-15 05:54:10'),
('5a70a76604b9c44b57c29d21938298b2bd5f970aac2616f0d9bb614b72017db3d35223955e3fd03c', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-02 23:46:47', '2023-10-02 23:46:47', '2024-10-03 01:46:47'),
('5a8457254a22421ac3ed203754e40ca8161baade41b13b3a4156b69ec1d46c4f0556600001222a5c', 109, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-11 15:11:54', '2023-11-11 15:11:54', '2024-11-11 16:11:54'),
('5adf521b51c579f021dc3390af7976b0f75c5a2eb1d7e9607f03109bb90a2cc7cbff5740114f76e4', 15, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-03 15:05:53', '2023-11-03 15:05:53', '2024-11-03 16:05:53'),
('5b7492fb36d27c4b53346fd2a56c5e32de8bab83c21c4454916af6a4857ebec7012ba1b8fb5820be', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-04 23:14:00', '2023-09-04 23:14:00', '2024-09-05 01:14:00'),
('5bd07d6dc0b96de7341cc72d012952916e58b65b74e06f309f7e28683caa46a3da78f01a881fc6ba', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-18 01:45:03', '2023-10-18 01:45:03', '2024-10-18 03:45:03'),
('5c983c3efc8785f5ea46d46ed8a2fe8fd0d86889b533082798f6f771c86e3f4a79240e0568be09a7', 25, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-05-12 22:37:06', '2023-05-12 22:37:06', '2024-05-13 00:37:06'),
('5cf0c91987cd375b24a62f61b3b2cbf8e6cf7d1d141a2af9fee7f25ae21c2fd9da6268afa68e3f9f', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-08-23 03:26:36', '2023-08-23 03:26:36', '2024-08-23 05:26:36'),
('5cf7a1f1e7036990df193f472822494dcec447ff86df299d78ff1fb042b47a124cab6529c107eb45', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 23:16:34', '2023-11-04 23:16:34', '2024-11-05 00:16:34'),
('5d5a2a65c64e6faea2a739c781fe5a1d3ac47de4c5793cc329cfd6157de585965fbc6aa2f75e9ca0', 102, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 14:17:08', '2023-11-01 14:17:08', '2024-11-01 15:17:08');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('5d947ca931a146eca3c376a289611484151d031475fbc3654ff6578870297441cdd508a00c294a35', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 03:58:15', '2023-01-30 03:58:15', '2024-01-30 04:58:15'),
('5ddd71433cb2acc8cc75de5fb8129b5cc0fe38473103dbd0fe95ba728c1fd27e210ba007955e1b3c', 113, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 16:21:01', '2023-11-04 16:21:01', '2024-11-04 17:21:01'),
('5de3756c414e311a24bfc81a1ddcde036de7bef630c9db4d378fe61c66e38ea08db6a027f8cc4f88', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-14 04:18:19', '2023-10-14 04:18:19', '2024-10-14 06:18:19'),
('5e6e2236ff80c3f670bcdd704cb29554ff3d438a24b570c7f245cda754e942024705adf0ca2f269c', 87, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 22:09:29', '2023-10-31 22:09:29', '2024-10-31 23:09:29'),
('5ea430f8ad03c07bd4235426b74b8cadb494b405b98e0709f58243c43b9bde635acab6ec744ba2e1', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 22:40:19', '2023-10-10 22:40:19', '2024-10-11 00:40:19'),
('5ed6296128f44fa530ba23595045220bf0f58a63f6f13f1a4a89dcec81525faa5dd3e5aafe910916', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 04:06:04', '2023-10-11 04:06:04', '2024-10-11 06:06:04'),
('5f5d5d7444f8491f7fd2941165abc9897d4ad6d919c992a2c321cf2d9737aeb1996c7cdf22b1a2dc', 117, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 16:48:54', '2023-11-04 16:48:54', '2024-11-04 17:48:54'),
('5f79d0546035611f3f676b8c1aa684532c44001c7c947d6f9b6a4959c2536c4ec33ea48fd210fc22', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 02:54:43', '2023-10-10 02:54:43', '2024-10-10 04:54:43'),
('5feb2a37d1ad58cb9cbcb4aa3e88cdf8946d615506b55e65b86a87920db042a6fb1d0049301c6c20', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 02:58:29', '2023-10-10 02:58:29', '2024-10-10 04:58:29'),
('6030838da31fbe9e96dc855cc6c6980b5340720d76208226127e4fa61012132519613abad5cf0bd8', 116, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 16:46:03', '2023-11-04 16:46:03', '2024-11-04 17:46:03'),
('6031f9744dc6e831879e8b7da58233fbfe90ee554ee595110195593c6c4a0950a14a2cd8af60b89a', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 04:07:39', '2023-10-11 04:07:39', '2024-10-11 06:07:39'),
('605fb9f953486105c30a0c4c054bcef3391bc35f9bfdbb23ce9025921f19ad640a5c699c3ea94657', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-06-23 22:09:25', '2023-06-23 22:09:25', '2024-06-24 00:09:25'),
('608fd9e7af19b328b2c84847557f3f57c64a74786658b9bb1e12a9ddf5cc0e05ce9a3290abd6a0af', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-06-12 21:16:59', '2023-06-12 21:16:59', '2024-06-12 23:16:59'),
('61a3df9ec7390fd406a0872b649958b169b6c75aad1fcb807aa4a7ceb8073a1673c4d8c894f98847', 65, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 13:43:56', '2023-11-01 13:43:56', '2024-11-01 14:43:56'),
('61b1b6ead33619c15800aed723d6d7d5b3f939aa410987b9d1e8432ca18c96c29870d131a80ae93b', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-16 21:24:55', '2023-10-16 21:24:55', '2024-10-16 23:24:55'),
('61d441b1b8fc77420425275fd19e283c3426170b756948b7886ac884be92368e5179e4db050c6fe2', 102, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 14:23:11', '2023-11-01 14:23:11', '2024-11-01 15:23:11'),
('627234556112d27d057d2809ca2862235d8a0010049eb03d30a64c1aefd4396aee79a11e6677b101', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-26 02:50:23', '2023-10-26 02:50:23', '2024-10-26 04:50:23'),
('62c8862b77c1f68a732244f908299d6c634e25bbe31137b39211a4cd29118a67027e204d4a9c333b', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-08-24 02:29:49', '2023-08-24 02:29:49', '2024-08-24 04:29:49'),
('62e6a9186c796d5224a2ed8e2e5e87ecde5bacbc1bc3fc11aee71eadbeeaf616e79aedcbee4fe5be', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 01:31:33', '2023-10-03 01:31:33', '2024-10-03 03:31:33'),
('6300971db6651e9d4fd1c9b5581a745a2d26a0123f094853ad814407c4c31ba3899633d46304d3f6', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-14 04:18:07', '2023-10-14 04:18:07', '2024-10-14 06:18:07'),
('641985b520ea611cf5ed1d628bd64aceaf5513e16620d0bfd6a2e86da95821d63b4080a6352dda05', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 02:20:40', '2023-10-07 02:20:40', '2024-10-07 04:20:40'),
('64614d73db6ce80a8457fa57cf1886d7419d7c5925e2a49ebd50bb2b8a1736f2b978e2e2b903397d', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-16 01:17:22', '2023-10-16 01:17:22', '2024-10-16 03:17:22'),
('647a7fc137e5c8c29365df81181a92993c1ad1fee1ce632dbc656f212fe002cd6d0e937be006d658', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-02 10:08:38', '2023-11-02 10:08:38', '2024-11-02 11:08:38'),
('650a64c9b6a5c12142a96ff515eea92d3e9d83afa1a07edff56be0f9e845b0fabfa09614cc51f77c', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 04:03:02', '2023-10-07 04:03:02', '2024-10-07 06:03:02'),
('651256a45f66be261806e3f7977d8ac3d879330ebbb5b0d3150e8a7ddd19640fbe3eadaceaeac210', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 02:05:02', '2023-10-10 02:05:02', '2024-10-10 04:05:02'),
('651f30a03410b87592198ee7558d3d8a27c81d28cdb534f66e61a2db4efe938b5e3fbeddb884f1cc', 121, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-08 00:32:10', '2023-11-08 00:32:10', '2024-11-08 01:32:10'),
('652c1fcc27119d56e47a149ebdbbec11750a70cc0436e1226661e2d290002cac97ab71abc18ccb4e', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-16 04:02:21', '2023-03-16 04:02:21', '2024-03-16 05:02:21'),
('65390999892a5369eb38332a6e5f61aeffaebaa87166a38250ef5aa3003df9369f50726a79c0c1b4', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-02 23:04:42', '2023-10-02 23:04:42', '2024-10-03 01:04:42'),
('6570ea55555d5f8750ce7a65e901dcfcb7902a331055c707d4d60bf8155e39f968ad791967c9f92c', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-31 00:11:44', '2023-01-31 00:11:44', '2024-01-31 01:11:44'),
('65a3257ad747cd032989cacad974422c05326b646522e5e0de9dd2409a1e5e47c3ea67a47353402a', 41, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-11 23:28:14', '2023-09-11 23:28:14', '2024-09-12 01:28:14'),
('65a824884c4af185cab0ca2c8d6dc2b2a0d618fb342e18c584aa407ced16b263ef8be16500a6f782', 51, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 22:09:38', '2023-10-11 22:09:38', '2024-10-12 00:09:38'),
('65b35f643af1fde1ca65b4594c8edc2956152de16c2ccf2f76c34a760552e9e6614eb150aa4318cf', 102, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-08 11:48:37', '2023-11-08 11:48:37', '2024-11-08 12:48:37'),
('6681adee416f7b64dd4095eedc5812e7f0609b2d4a30b3c45bf7a8e7e26f099c38f4581dbea683ce', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 03:48:23', '2023-10-03 03:48:23', '2024-10-03 05:48:23'),
('669bd71fb77d2cfd4465f488188090550b564110549f9f201dba28e5f66bd21c7418db27f589b5c2', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 01:14:32', '2023-10-10 01:14:32', '2024-10-10 03:14:32'),
('682a9646b9ced64d86d225ce46fd4db8fb5fff18205d4c2fdfac410bac8e4f6289443902e2ab796b', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-06 00:18:52', '2023-10-06 00:18:52', '2024-10-06 02:18:52'),
('6917454e17fca0b3fae44dd1d2ac2ea0a0ab4fe6a01dbee4a8a9eff182eae68ac7620bda7e77cfc8', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 23:09:42', '2023-11-04 23:09:42', '2024-11-05 00:09:42'),
('69d537cf50e688731e4ae374e34951a8b5519b1a5b27aad82cbfc18636d1a509e30800e5fcc52b36', 25, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-05-12 22:55:27', '2023-05-12 22:55:27', '2024-05-13 00:55:27'),
('6acff1ee772bd6dfc7d57a26879871fccdc9f664459e8336608e05ee33e2c2b25f2888d8fe960f9e', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-06 01:44:27', '2023-10-06 01:44:27', '2024-10-06 03:44:27'),
('6b005c7cc0d490af0bcf93f8c543202e166be5e4c3f0dcefad88d9a5c08fef69cb0ff6a80923e7a7', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-09 22:17:01', '2023-10-09 22:17:01', '2024-10-10 00:17:01'),
('6b9baa5f93c5682217cfb42e2ad47ad520c8083474be2581097a704377981808a55d81bb32ddda8c', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 04:34:59', '2023-01-30 04:34:59', '2024-01-30 05:34:59'),
('6c18962e13c4d756c760928d9786f1a3088c718e22f710b6792299f99811ee420e2be03f9b8ad9d2', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 02:59:29', '2023-10-03 02:59:29', '2024-10-03 04:59:29'),
('6cd63e295f061329d32a46674ef584ba2a672a30c79742a75b3fbfb1c2f7d3f4121a5dae47722198', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 10:42:25', '2023-10-31 10:42:25', '2024-10-31 11:42:25'),
('6d8edf7caddbbb87f66161079aecc20ece5fa54cd4b6d211c8ecb991fc7bd6561e6e5181418618fe', 119, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-06 09:03:40', '2023-11-06 09:03:40', '2024-11-06 10:03:40'),
('6d97bccedcd0139bcb9fc90f404a6809beb088b7ae941335461ffa4abf846306ebcb6b8918e4a6fe', 38, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-25 02:18:22', '2023-09-25 02:18:22', '2024-09-25 04:18:22'),
('6de06d634990f85d6ecba0fdb657839d027257668d3813a2d37f512fd2971fc71155b16ad62e937a', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-08-30 03:10:52', '2023-08-30 03:10:52', '2024-08-30 05:10:52'),
('6ec76c2e32b8b2da3f3afd1360fbe7cdde2fc5c74d37c4577b6b193471d526a43ca5e0d93b4207d5', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-06 00:39:38', '2023-10-06 00:39:38', '2024-10-06 02:39:38'),
('6ed8b341154e5a65b3e338b24510f6d3c672c98ce530dea9169b23220167fd6789ba1779eac3396f', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-16 03:57:58', '2023-03-16 03:57:58', '2024-03-16 04:57:58'),
('6f02e2d568c6fffcdbec36b91c00904fea5e8237e1dae5f2b10b7d2aa90cd71738a68e261a8e12ad', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-22 21:43:13', '2023-10-22 21:43:13', '2024-10-22 23:43:13'),
('6f5e1b9d8ad5f631d55be4ef635f9756b2d4ca4d979c7962dff2a77e185410094e77271396178a68', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 03:33:13', '2023-10-11 03:33:13', '2024-10-11 05:33:13'),
('6f880df9f7674c1839e2815f666793a00cb3ba77fa8bff63976b0d3d77066be869f4b08fd6d34688', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-31 00:12:33', '2023-01-31 00:12:33', '2024-01-31 01:12:33'),
('7019c8399902f902b6302b203f9feeef671874340b5c1fdf9fb2e6daf57d6856734345ddd0d5799e', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 23:26:18', '2023-01-30 23:26:18', '2024-01-31 00:26:18'),
('706b1b236ae851d8b35b5dfafe7c7a30c8921451458ef10ba191bb84fba114f192cf53fc5cb4e6f4', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 23:04:40', '2023-10-10 23:04:40', '2024-10-11 01:04:40'),
('70cd2b36b00705b64500ebfc7ecd1df917affb77f8726cf83708f54768f1df3ff2382d2fd4231f65', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-02 22:12:37', '2023-10-02 22:12:37', '2024-10-03 00:12:37'),
('710488be843a51e5d9392024ba2ab12ec89c2cde4cb5718140d9aeb87af0aa092a097b60f0f7b159', 99, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 12:08:07', '2023-11-01 12:08:07', '2024-11-01 13:08:07'),
('711414b41d08e00f13bf19b94fa805fae25a2e0a2dd4f2b41cbad4a623f19ecacc851a01b5628cbd', 65, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 18:34:34', '2023-11-04 18:34:34', '2024-11-04 19:34:34'),
('7163def737579c11a331dc451db5b5c3b1205018775f634c030485dde1f33ed3568f90e504f6acbc', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-15 21:45:24', '2023-10-15 21:45:24', '2024-10-15 23:45:24'),
('717e732633f36bbdb12b4bc11b11715bd0a72aa0f51eaaa837926780a892bd0de9b027d36b14ccac', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 23:17:51', '2023-10-10 23:17:51', '2024-10-11 01:17:51'),
('71b4310e5bf9c73cf6a38b6592feb9c3d3e263cbf2c7ec5b414867fd3c23432f658348e7065ee451', 39, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-07 02:32:59', '2023-09-07 02:32:59', '2024-09-07 04:32:59'),
('7313e8b362d3eb1e7d4d57c374de93f1f0bc54816d52dffbad3670dcbf0ad569c473046075c8fa7d', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 03:49:59', '2023-10-03 03:49:59', '2024-10-03 05:49:59'),
('7343cf7a501dc40b79b7904c5d59bd36729112d14ec2e90489e10dbb199f805b7752cbf72aef7c5e', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 04:38:32', '2023-01-30 04:38:32', '2024-01-30 05:38:32'),
('73527127d2e27e56008b08c4404640efa402bf7b5b523552ddcbc9dbe955b27afc9d1b1be82545c9', 53, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 21:40:52', '2023-11-04 21:40:52', '2024-11-04 22:40:52'),
('739d026c95d97bb903c31037a56dd30fa52f7b47ec1e3b6fb125b9c6589c00c4bfedafbe43bc0091', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-04-29 03:08:21', '2023-04-29 03:08:21', '2024-04-29 05:08:21'),
('73a192d13f9f3fe0332bdfee294aace30b8f4cddec7821ca862855b3757ff86bbff278073a3902fc', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-08-23 03:33:00', '2023-08-23 03:33:00', '2024-08-23 05:33:00'),
('742e3ce952cc308dc3ff20be287a45e5dec05338452eec444d699cdee64948c975420c45393cf369', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 22:20:52', '2023-10-10 22:20:52', '2024-10-11 00:20:52'),
('74c002d5304d9e5b2a9c4fa04284126c5a105c033d2dd29c2913605a2959be325a97961f042da4e9', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-08-19 02:11:43', '2023-08-19 02:11:43', '2024-08-19 04:11:43'),
('74c77989daeee1c935e4d8d7ef52ec7c4e81a0b60bb8e3ca3e6d7f2d39309b0e28dc671a8454f260', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 04:33:41', '2023-01-30 04:33:41', '2024-01-30 05:33:41'),
('7698ff7306d1e3279a85a9179f1aff902538954b0da173975f4b09e8472fd2ecb633d01df543edcc', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-08 22:53:14', '2023-10-08 22:53:14', '2024-10-09 00:53:14'),
('77342dc29b95d5146ee9dd84c355b1f59768fd4792b18d40fae6faa8a62d1a2bf9e645827665ff42', 28, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-06-15 06:34:31', '2023-06-15 06:34:31', '2024-06-15 08:34:31'),
('77d5b27fbf8671f6e0e6f19f5645d0045e19714c08d80d4b8ce9fabf7dced398f8054b363001cfbe', 25, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-05-14 23:45:34', '2023-05-14 23:45:34', '2024-05-15 01:45:34'),
('78453ad87f6f02d921868f2886deace5a67ba86f4b2ca0e9b11e6de815c36edb48a27a7a35083972', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 22:59:25', '2023-10-10 22:59:25', '2024-10-11 00:59:25'),
('784cd7bb5699839282fe85256845e3e32a85b245eb43e0f7e7b021e86256e5b01dc14ed5140cd2b7', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-02 21:25:30', '2023-10-02 21:25:30', '2024-10-02 23:25:30'),
('78ab2a5ea2152aeb59145559cfe0870255c4e7f8ab76c48e2bc7c1d38a0ccc2acf2a569950fb40f0', 43, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 11:57:36', '2023-11-01 11:57:36', '2024-11-01 12:57:36'),
('78cd8a172b2eeeb1ce8d6f76d5c5cf0b2c3d1eb455c9351d4d9df7e30fb47df74d05b5cdea7a30f8', 92, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 11:35:52', '2023-11-01 11:35:52', '2024-11-01 12:35:52'),
('795718b1123153fc073654f1c5240fa77e2a1d0469f70fa7c6a53fc70fea8d1047de7c4752387204', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-09 01:12:43', '2023-10-09 01:12:43', '2024-10-09 03:12:43'),
('79738b816a38e686e311addf6cbdcf46915ae5a903db148312120159d64e5471e772bbc7355814a1', 25, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-05-23 03:31:48', '2023-05-23 03:31:48', '2024-05-23 05:31:48'),
('79745e831480519c7b1f255ec0727f94a8023f79f78dcdbf8380bc94b7f14b9669cfe096e6ffac71', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 22:34:09', '2023-10-10 22:34:09', '2024-10-11 00:34:09'),
('79bf0affcbbd6efbd355cc4d99f4fd3c289f558b17f663bfd35027dd01cd64ae23f3323434c35486', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-02 21:48:04', '2023-10-02 21:48:04', '2024-10-02 23:48:04'),
('7a017694ce78667da7b13164b6cfed8bbf86087454d3451aa273f266bcd33c6b4c6d4545dc4b4a0d', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-20 00:25:58', '2023-03-20 00:25:58', '2024-03-20 01:25:58'),
('7aa939c3869417af7212bb0754c2d077d85fbe41c3c3f926f8ade855fc9441b7212a41ff7ed661f8', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 10:18:22', '2023-10-10 10:18:22', '2024-10-10 12:18:22'),
('7ab6b63ad022bf86260239a2d1b8320529bc0be4cd2e5bf306c04f6c02e850f95ff090438afb52e3', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-27 11:37:52', '2023-02-27 11:37:52', '2024-02-27 12:37:52'),
('7b66d7a524c7b4659d364b9d2e3c493dc7843fa8c1811471d63be54b0f4ef6782a882ff03a302b88', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-12 03:59:24', '2023-10-12 03:59:24', '2024-10-12 05:59:24'),
('7bd3bace94fbf4438312e08e1fd15db68374828a913eeef455fe4db0bd0811b08e011f3aaeb88f73', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-16 04:00:25', '2023-03-16 04:00:25', '2024-03-16 05:00:25'),
('7c2fc52d0c0a8d2e240e6fc1560707774253cf6589309473fb937403edee55b3dc9356c928a8f126', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-31 00:10:18', '2023-01-31 00:10:18', '2024-01-31 01:10:18'),
('7c30256053ba9a3bee46dad358298bfd1070523668b68344118b0c176ac7dbc3804e7074c2348892', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-13 16:19:41', '2023-11-13 16:19:41', '2024-11-13 17:19:41'),
('7c3e9bae2a6cfcbc94e750629993535167a247103ba5b1bc30bfc5142c5a7af9fb2018fc16861006', 102, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 14:24:18', '2023-11-01 14:24:18', '2024-11-01 15:24:18'),
('7c85a594546e3ed51c382c5ea426dd42d96a7f5a792cb28e0ca9d8494e936fada17e11ff48d5891e', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 23:08:05', '2023-11-04 23:08:05', '2024-11-05 00:08:05'),
('7cc1df5e76c11f4fbb82e0b4495e8f696cb42f8cc8ec7f5db58b77d3d4f0f03372e38dd252df122f', 114, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 16:28:34', '2023-11-04 16:28:34', '2024-11-04 17:28:34'),
('7cf7adb3455d25b729201f330baecea3494b6cf32a286bed1ea8aa89f8e83238de9a7323a611c9f2', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-04-30 20:31:35', '2023-04-30 20:31:35', '2024-04-30 22:31:35'),
('7cfe569b6c08596d55ed4d7f237e06bcec40a2b79815bb7fb65bd5f9a35985ebb904834dcf7fa70b', 119, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-06 08:53:39', '2023-11-06 08:53:39', '2024-11-06 09:53:39'),
('7d76e3c16d29291c0de1328cf6a42e03c7c18c7701fee40af512272dff3529e719e56dc8a40a8e94', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 03:29:49', '2023-10-03 03:29:49', '2024-10-03 05:29:49'),
('7ddeb7bd268181d846416365b09da2627cc414f258fd430b82a8dac496a3f8026976ba076096f620', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 01:56:25', '2023-10-11 01:56:25', '2024-10-11 03:56:25'),
('7de1023817af8783fcded06e0313314dbe997bfa93343bb244cd0abd4ed87229187f912ecb8e7612', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 03:59:20', '2023-10-10 03:59:20', '2024-10-10 05:59:20'),
('7df452e954641441f3e80f5bd0b8117658e0132125eb7a39737223a6ac675fbaa677529085e2faec', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-20 00:31:35', '2023-03-20 00:31:35', '2024-03-20 01:31:35'),
('7e1a5601948736aba04877fe93dd48b348a8d930c91ff87fa1f220c52cf4194adf187648dd2ecd51', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-15 14:50:57', '2023-11-15 14:50:57', '2024-11-15 15:50:57'),
('7ea99e6069c7f44dcb2b02060085d171c77d665f65ff503135b6eb55b722aca02e2be36de398fca1', 38, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-22 21:41:33', '2023-09-22 21:41:33', '2024-09-22 23:41:33'),
('7ec907adce7a96d021ea0e12c02b37463563342bfe42ffa6b06594d4d3643ed7d2f891ed187917cd', 53, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 12:09:50', '2023-11-04 12:09:50', '2024-11-04 13:09:50'),
('7edbb8b42761d8a9212cb600a605530d1ddcaa7f68a39e8939e841211a2fe202038c85570f110538', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 01:51:08', '2023-10-03 01:51:08', '2024-10-03 03:51:08'),
('7ef06705657449b17bed751c115f2b876b524b00a1932674a5a66b7afc584313d51b3466472bf273', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 03:01:03', '2023-10-07 03:01:03', '2024-10-07 05:01:03'),
('7f2373b479842faa4c6cac1185ec1fa0227ed134ef7bcf85125d364e452d0d9b559dc2af007f0a67', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 18:47:55', '2023-11-04 18:47:55', '2024-11-04 19:47:55'),
('7f6ab59da46123c8ea15899d1fcdc490f024b27cf459c1d5a7d4ccf5ac93fc6fe9302e6763f16dfa', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 03:49:47', '2023-10-03 03:49:47', '2024-10-03 05:49:47'),
('7fbbd0db1deb0ca585954aaf07e9bf7586231fff303533ca641f6d5352e4271824e7560101383903', 110, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-02 12:16:10', '2023-11-02 12:16:10', '2024-11-02 13:16:10'),
('7fd8f0442fcb11aef7f871761c4ca5a08bca192f982d1c56d66b6f6c3fe7836279948919fa929dec', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 02:56:51', '2023-10-03 02:56:51', '2024-10-03 04:56:51'),
('8037b5b6b806a45f865ff9f8378a5043ecca660694bfff2f78be7728111dc79b4ad5a1655e152747', 53, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-29 11:48:40', '2023-10-29 11:48:40', '2024-10-29 12:48:40'),
('805b700e2168ae8942732a7ce719b55f00ed80cdea25492d286472532e6e83592974746c4173c9b5', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-04-10 02:08:56', '2023-04-10 02:08:56', '2024-04-10 04:08:56'),
('8070852b33198a6feb0b49d34d1c176dac36fd0626004b58f638396cfc6482ba66bd163c91aa9cf0', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 04:29:03', '2023-10-10 04:29:03', '2024-10-10 06:29:03'),
('809fde030fc4156f0a9fc088bd8476ee92c1b3016dc151eed050ec97bf480ca0ee72fb66da69c18a', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-02 22:32:22', '2023-10-02 22:32:22', '2024-10-03 00:32:22'),
('80da0240b174ea7ebf8165c4960443aa22170d831fdd5a33df79f97bb46c9bf823d231c2dcccfd8f', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 18:11:48', '2023-11-01 18:11:48', '2024-11-01 19:11:48'),
('80db9133ce25ee01bed871fcb87f6702405561bc27cf963ca4016a30c29d001040cdcd3dbced75f0', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 03:49:35', '2023-10-11 03:49:35', '2024-10-11 05:49:35'),
('81413663e38251441b66b3c70739855578ff4c9db5b9ade6faabe3cc424513c41d33ac83af22c961', 43, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 22:04:15', '2023-10-11 22:04:15', '2024-10-12 00:04:15'),
('8179df903af3f5f3a614e5e49e52ef304e3aca118430b0feb9ab1238a06270f043a10aa04feaf0e6', 122, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-10 13:56:20', '2023-11-10 13:56:20', '2024-11-10 14:56:20'),
('81a4f1f2b197e7d1c4b2642eff9f810458c33558297f33bd84245ecc33dd58233f098aaf4e2b21fc', 90, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 11:24:08', '2023-11-01 11:24:08', '2024-11-01 12:24:08'),
('81b9c48c30a0c15cbc3637fe41977e39e116083c46188fa159ca613a5561aa3c6295372d008c90ef', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-13 15:30:50', '2023-11-13 15:30:50', '2024-11-13 16:30:50'),
('8246f6e2c79dfa709efccb397f968b585590105c40efc451fc1b4046f3daa778792ae583f097adad', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 10:37:48', '2023-10-10 10:37:48', '2024-10-10 12:37:48'),
('825ae73a07e07ee610b6a43147dce67a5d92e8586e7d4d163dd8ff66246fde3f5a2e04c0dc321fbf', 118, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 23:17:42', '2023-11-04 23:17:42', '2024-11-05 00:17:42'),
('826ed405d136586fa867263544f9ea0a1cf309af71a874dad1481b55f0478ed9d72776bd2e694e2b', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-18 02:24:23', '2023-03-18 02:24:23', '2024-03-18 03:24:23'),
('82caf29d4acdf021f9084eb49ac146591e6eefb7261889ca9d00ea47a44527b0688ae849103b7c5a', 31, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-08-03 02:30:14', '2023-08-03 02:30:14', '2024-08-03 04:30:14'),
('83811079a787de0ba9dc9079d820ba8b6f256bb75303e0549ad01489b04e429153550c6c317114e0', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-16 02:42:58', '2023-03-16 02:42:58', '2024-03-16 03:42:58'),
('840c03d4a8e9df1416f20136e0c306aa9c7279e02c84c5d1a07090da7fd7708c989b85c27659138f', 31, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-08-03 01:25:02', '2023-08-03 01:25:02', '2024-08-03 03:25:02'),
('84ae8efd09e9c6e10277d285dc44d422e757fee96d0a5caa376fbc929b46503d77d46c527bba7307', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-04-29 03:28:37', '2023-04-29 03:28:37', '2024-04-29 05:28:37'),
('84b684841eb18e4e8db923cb773be22d5fa5bc7fde4d62c6fc9d51cf8fdd6e5944bf899db7dcdc8d', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-11 23:28:41', '2023-09-11 23:28:41', '2024-09-12 01:28:41'),
('857eab6e581a46e9a92bcd76b83dc5c64cf7fbc819742008332071a90a82608db8200601401c5584', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-09 23:09:19', '2023-10-09 23:09:19', '2024-10-10 01:09:19'),
('85b71bc1318c25f0dc6eabb094b1c2a7e28d1ebef3f5690ffede3600ea645a2bdf65f7e53434d74f', 41, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-13 03:26:48', '2023-09-13 03:26:48', '2024-09-13 05:26:48'),
('86076880a631172e7d3ba20b1f9435a5034637fe66ba9e3ac1b806327cbcc16b87c4a8eca8cb8d72', 38, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-21 02:10:58', '2023-09-21 02:10:58', '2024-09-21 04:10:58'),
('8636c0b357bd1d739938beea479ab8f86db347582279845ec79a2bf7011796da2ea4378424461730', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-05 00:30:11', '2023-11-05 00:30:11', '2024-11-05 01:30:11'),
('86b490b78db0cc51c70086bf49da36698ee0aa44f4a78afb395e0aa79cc0df025592c4610878e539', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 00:16:49', '2023-10-03 00:16:49', '2024-10-03 02:16:49'),
('86b6d9ea99d834b34841942002a9fc57ed4855aa6d864ba7ed99407122305986b54be6dd09be8e5d', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-08-04 23:08:12', '2023-08-04 23:08:12', '2024-08-05 01:08:12'),
('87126024a57055d68852a8a7079ca97bd1bdd2887aac3665a42b04d73ac950f193a289ebbc00d4c6', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 23:00:13', '2023-11-04 23:00:13', '2024-11-05 00:00:13'),
('87f095b66b00fadf0d92b425e10dc6d98bcc3cf1e14de9c87f5dd8a4b0478551891503524d25631f', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-28 02:45:10', '2023-02-28 02:45:10', '2024-02-28 03:45:10'),
('8870c9acef60f6377cd6cee78cccc6a5458f0765319eb5fc14140c857e11f1d760f32402bffbe88a', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 01:40:55', '2023-10-11 01:40:55', '2024-10-11 03:40:55'),
('88e5c947129190d9eb0b8e005bbf003cb37f0a7a38396638928fb659f71c7b488cb4f8fe3360264b', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 02:35:15', '2023-10-11 02:35:15', '2024-10-11 04:35:15'),
('89162cecd68bf16036d4f104359cbabaa20086090849c023a68205f089f95e442bd9e8bae6981d87', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-08 22:49:39', '2023-10-08 22:49:39', '2024-10-09 00:49:39'),
('89302d08f85f128a71c6448d25cbbfd80627398278f41ed6e66e56cd953495009acea1bfe06aa439', 102, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 20:08:07', '2023-11-01 20:08:07', '2024-11-01 21:08:07'),
('897070a03c2c1e93ea2d23db0bd996f9215c7c8d017262e2f07aae94f0b38609acda1e86454f511d', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-02 23:04:20', '2023-10-02 23:04:20', '2024-10-03 01:04:20'),
('899ec52f3a1c98cf9c2e1874b091891aed9bb555678f971a03f54d57ea1b83ecf5396e4ee5c9d09a', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 21:59:17', '2023-10-10 21:59:17', '2024-10-10 23:59:17'),
('89ae1f3925ddc33efd9ce79368b26ffd04cb89c1e0fff85764f100628822644eb7c5a3858dba5252', 109, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 16:35:55', '2023-11-04 16:35:55', '2024-11-04 17:35:55'),
('8a0f034f7ebbb6f41d9b339d2f281d8b1d7616bcf7a8199b2e85aa85db588f6f9e582bccebac99e4', 103, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 12:35:48', '2023-11-01 12:35:48', '2024-11-01 13:35:48'),
('8a786ec30dadd447b24ebcb887a98e550b97edfb83eacb977047674a3c4688d74662d10a99f730a8', 25, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-05-13 02:38:02', '2023-05-13 02:38:02', '2024-05-13 04:38:02'),
('8b37750850aba5ba998b652548c749e7ab15c109aa38c0d0071dfdfcd6759e6548734ae6f9c53a6c', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-06-17 01:32:01', '2023-06-17 01:32:01', '2024-06-17 03:32:01'),
('8b7cc97bab994ac920a80746fcfbd9a69473349d1670491e0f8d018ac93093c8568a744cbf5e0ec8', 121, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-10 13:29:35', '2023-11-10 13:29:35', '2024-11-10 14:29:35'),
('8c23cfece0f2eed146aac7054da2be93ae7e0c20531fbd0ba625a6302bb3accfadfc684e91f9e41b', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-09 02:27:02', '2023-10-09 02:27:02', '2024-10-09 04:27:02'),
('8cc52ab2b7a5b7b0adfdd7f50642cf4a33b8d28ba6bee7cbc8d71ea14c51530e80737125fdfc46ba', 112, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 16:21:39', '2023-11-04 16:21:39', '2024-11-04 17:21:39'),
('8d0a33bdfd6c9fbc5faae1381004173dae068545629937e3a1902f809a8f0cc18916b7782ecdee97', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-28 05:24:43', '2023-10-28 05:24:43', '2024-10-28 07:24:43'),
('8d7aa2c1f0e2e6f560b906dce1b941dec0d47e9d09e0c24fa56a3e540ebe3e252d6231985a65762e', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-09 01:17:05', '2023-10-09 01:17:05', '2024-10-09 03:17:05'),
('8dafa9581d1b33ca067ea0e783048b19a51f169f40bd8af42ea880ecb32873bb6d2acc358177656c', 43, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 21:39:06', '2023-10-03 21:39:06', '2024-10-03 23:39:06'),
('8e762d64bf5831c1370edbff86331b420e6a50ac7847fc3e689ebadd77889cd598fb97494d674776', 25, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-05-17 02:11:44', '2023-05-17 02:11:44', '2024-05-17 04:11:44'),
('8f569d74700ae7ba168bccff09d2906328c1565c4257c4d9324516d9b21dfc95cf0b50e83c158797', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-01 07:22:40', '2023-03-01 07:22:40', '2024-03-01 08:22:40'),
('8f6feb02e19ccafcdfdec3845b2bc6ff7bbc9a230262f9c4e922bd92ba1bf41c4fb7839a19bb78be', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-28 06:22:47', '2023-10-28 06:22:47', '2024-10-28 08:22:47'),
('8f7488824cf9fd0974194f28f9a1c17c39cf6bf38a2b2d6ff9dff5f1e792d874406e3cbc1a0c4081', 51, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 15:51:39', '2023-11-04 15:51:39', '2024-11-04 16:51:39'),
('8f756b1272d4ca923f02810b9a11e77800fe772ec3ffe9158ceb8baf8e0589e167fb9db31332af69', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 18:03:52', '2023-11-04 18:03:52', '2024-11-04 19:03:52'),
('900392d3c8631059b92262911379be0dfd1d680b469c69285bcee7fc27fe5f49e986a75590266513', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 01:22:35', '2023-10-10 01:22:35', '2024-10-10 03:22:35'),
('90f40b242ac07bca90657181050455b877ef16bf3b42486e42e7c1854b8879fdd26485d0341e8adc', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-04-29 03:13:07', '2023-04-29 03:13:07', '2024-04-29 05:13:07'),
('90fd2da922041c764b8a88fd0b2bd62cd6503afb194cf163838337fc6cf5edd06070c94e587ad47a', 108, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 18:39:29', '2023-11-01 18:39:29', '2024-11-01 19:39:29'),
('916fe311a2e927670e520fffaaf3e746d9557bbad89bf8368d15cefc3e01c338009fa486e9bfa88f', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 03:09:36', '2023-10-03 03:09:36', '2024-10-03 05:09:36'),
('9192bad48b275b1c223a61bcc52866ecaa41e9320c138523368c9c0907900571813c10b04a20412a', 15, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-26 01:06:19', '2023-01-26 01:06:19', '2024-01-26 02:06:19'),
('91a92a4e0900e4576a0a6e7cd9ce1f5d7f239fec79e366b7c340f6819b7f5a59810b38d72a7dcc83', 14, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-25 10:59:43', '2023-01-25 10:59:43', '2024-01-25 11:59:43'),
('923311ca45c4d2b6db3fdffbb8da3e080b870e905f473164f104c2718828aca5707d6889cf7af152', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 22:18:41', '2023-10-10 22:18:41', '2024-10-11 00:18:41'),
('92996b9a59883fb01f6090812252ae9aa2708d77a2d026a82c1e4f84ab2ec7f7479dfe5636284714', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-04-29 03:30:22', '2023-04-29 03:30:22', '2024-04-29 05:30:22'),
('92f3b01e40263019328203588a539fb8ba9874f9115c6795e9262658702075a76343f55fea27ed17', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-13 16:10:24', '2023-11-13 16:10:24', '2024-11-13 17:10:24'),
('92f4f0f7a9623efb70f62ebccf902a0afc72406b2ca98972709b070e81f669bc736b5a38f555070e', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-12 04:16:37', '2023-10-12 04:16:37', '2024-10-12 06:16:37'),
('93cbb4599c514682ea141b4d988968c530b70534a2d8b9a46e1ca38d02cd4f1f11c0a4b70af2fcca', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-21 09:59:07', '2023-02-21 09:59:07', '2024-02-21 10:59:07'),
('9436f00d5337994263880cab566847a0e93379a16365cdaa1fd501bc83c67f9b0e0236f18605c716', 65, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-30 18:55:12', '2023-11-30 18:55:12', '2024-11-30 19:55:12'),
('9463f4678c6e99150146cc96dddefc876ccae7b4da9a8c7cf03653843798bc1b020fa1ab64618125', 27, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-06-03 18:34:53', '2023-06-03 18:34:53', '2024-06-03 20:34:53'),
('951abc85b6b461ecadfdc622c80acc04a12f286cf529bad19d4de865b1d97cce7238791532bd04b4', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 02:50:52', '2023-10-07 02:50:52', '2024-10-07 04:50:52'),
('952778191c32ddf04e32e98dc2c7d7fcee47b1faba855631fc648902e132f854ea67be3132d47d3c', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-22 01:05:38', '2023-02-22 01:05:38', '2024-02-22 02:05:38'),
('9528deb1b43e7739791edbb94d68f1dd5d01fdd1c5613ade1aba8d2665e75ba2eb924f17c36124be', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-18 02:07:36', '2023-10-18 02:07:36', '2024-10-18 04:07:36'),
('953d316d86f16f814196caafaf95a4b68a2a4d48d6a82a126e46fe3d87a515096453f1ddc4f3be4d', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-02 22:29:52', '2023-10-02 22:29:52', '2024-10-03 00:29:52'),
('957c3fef0a709b24d75030fcb55e7de9dd2a4c51763f53e3be918fdf5f2d3b66568a4e88c518451a', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 04:03:10', '2023-10-07 04:03:10', '2024-10-07 06:03:10'),
('958103f5f750765c64019588e478efbf2fbc005ae9bc66d4b334cec8032c1ba5d3d940a1d17e2399', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 04:21:57', '2023-01-30 04:21:57', '2024-01-30 05:21:57'),
('95a047eedfb9e0f87c3d3e9665d54f4b021344375096527b141e6f3824d846e1dbf645957b6d59e9', 102, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 14:12:39', '2023-11-01 14:12:39', '2024-11-01 15:12:39'),
('96762e66a5433a697e8ed4e40bf4272af0c817d4a9be9a515daa15cb5487ce0c674e880925f9c721', 78, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 16:49:48', '2023-10-31 16:49:48', '2024-10-31 17:49:48'),
('96e9e7a339b20d02f1d05a0804b4ecafd12ee5c94948fea39319af2d7f81fa2bb3a7bc9a44ea3d9d', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 04:22:12', '2023-01-30 04:22:12', '2024-01-30 05:22:12'),
('974eaaff9823883ff81463c7d57242b99e99b0046e0dad24c00cc3117d726817221e4201663d7f21', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 03:27:36', '2023-10-11 03:27:36', '2024-10-11 05:27:36'),
('97d929b36d4c04b27eb669b2ff9906f64f8280d8a884720e8bdac46a188b89983e7c60cf2136d827', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-09 22:33:49', '2023-10-09 22:33:49', '2024-10-10 00:33:49'),
('97f6f2163586e7f5c4e0ba7198edd24af9e413ad0f0045586c441d6c4d67dcf110ea37ed0433d20c', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 23:01:11', '2023-10-10 23:01:11', '2024-10-11 01:01:11'),
('98f1d4ae142cd454ce6dd4c35292deb54e77e895626bf00bc8bdc4626a1aacece7d2cbbdc4da84b5', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 10:37:41', '2023-10-10 10:37:41', '2024-10-10 12:37:41'),
('996804a2bf5087a2691c8a21b0ec9bf728badef97bda8d6fc77db8852151823efe5e80ca4d724a88', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 22:20:46', '2023-10-10 22:20:46', '2024-10-11 00:20:46'),
('998513ae0d176dbccc062a7a1b5306e1aa778583dd18030680e89ed70cd8c7984b4cc04fab73396b', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-02 22:31:25', '2023-10-02 22:31:25', '2024-10-03 00:31:25'),
('9b12dafa7ae552d78fb9c953ad5eae961db3c563a4260b4a0122858540cb9059447e1ecfd8c566c3', 121, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-07 18:28:53', '2023-11-07 18:28:53', '2024-11-07 19:28:53'),
('9b41d3a8d0b83a67ff705eb86541b2fcbc68e6a47ac2f008904f2939c681350bbf878d1f59faf061', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-04-29 03:31:23', '2023-04-29 03:31:23', '2024-04-29 05:31:23'),
('9b82f16be7f1603302e2ce8e71cf9edf3842fe47fca59bbb0875b332f559f18bb2b9ed332ea0f03f', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-12 01:57:30', '2023-10-12 01:57:30', '2024-10-12 03:57:30'),
('9bbb6f14d52480ef37df42403aceca835fd1bc9ef6adbc344659e0d5d7f94f6749128721bcff585e', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 02:30:55', '2023-10-03 02:30:55', '2024-10-03 04:30:55'),
('9beb10893572db512dca6af9b66da40cb7ad3f5ebb85e772c94d885d6f5415de1684b4ca8611f814', 51, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-24 04:46:30', '2023-10-24 04:46:30', '2024-10-24 06:46:30'),
('9c141180197d7a007bed35e8c0f6f428b88fe544c33de814fd7bfa91f9c86df03cd309dc01e6252d', 53, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 03:58:45', '2023-11-04 03:58:45', '2024-11-04 04:58:45'),
('9c59ba00af1bff7a4a58809f0dacf78445ee7c1d4b313faf0ad1eb92875e9f7893abf1143ce5272c', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 00:08:52', '2023-10-11 00:08:52', '2024-10-11 02:08:52'),
('9c78155bc9d45e6f80b78b1e164f18a8d68687a5085c5b52f52fc76bdbb3f54540b2f8a556ab83ec', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-31 00:10:45', '2023-01-31 00:10:45', '2024-01-31 01:10:45'),
('9cf512f90e5cb87b8bdd15da9ce62f9a4b9fc8167e1855da1bf81b67bf7313301a3952d100725c84', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-06 00:13:47', '2023-10-06 00:13:47', '2024-10-06 02:13:47'),
('9d892ea21a0cabf237cc2526c6b55e57f13478b570b6a5210868fd75a70e21c60ff5349549bfc87f', 53, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 23:38:39', '2023-11-04 23:38:39', '2024-11-05 00:38:39'),
('9de28410b6ab089045773b9d1d770cc632b3ed3259e705f19be8bbb963218e0fc3be3fe9ad332722', 112, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-11 10:43:00', '2023-11-11 10:43:00', '2024-11-11 11:43:00'),
('9decc9fd02af3ccfd2444cee188ffb0fc78aa60d5190b725ee2c19bb45c510b69660c7bfa30a0f96', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 10:37:52', '2023-10-10 10:37:52', '2024-10-10 12:37:52'),
('9e7ec7950cd9373999a1c32fcad60b9f7830e833ec9265f475844c290e6b15653b98ee02054228c7', 53, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-30 22:56:33', '2023-10-30 22:56:33', '2024-10-30 23:56:33'),
('9f494e9cf347f30ee163f708c996d6b72dfccc3e060a0a6608752304855b6d84a3e123ea29e4fc47', 102, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-06 11:57:38', '2023-11-06 11:57:38', '2024-11-06 12:57:38'),
('9f5e6201c0cde16b3ad2a6ce15e28c6ab34229882e92179fdedb25561847fcbd995fbe8d3fa7fdfe', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-16 02:41:49', '2023-10-16 02:41:49', '2024-10-16 04:41:49'),
('9fa5720aa1d8f17b3bd862ddf3d853e811a0ad27a68c2c0654c6d41ddeb333b72f1200e775d506e4', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 20:27:54', '2023-10-31 20:27:54', '2024-10-31 21:27:54'),
('9fa5916b66c1b64e12867b29ebb6ae4c1ff0aa32a2f5be80c86e28a1c5db91b2815b70f9c65d35c7', 29, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-07-31 23:54:18', '2023-07-31 23:54:18', '2024-08-01 01:54:18'),
('a0540fe17894debd7fe5ef2108cf719b9357e0dc282dd6e249d076bf4fae635bf4c22d5d6aeea919', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 02:40:04', '2023-10-07 02:40:04', '2024-10-07 04:40:04'),
('a083613f4675772abd02f78ec0ce3871d462fe3f4738fd35c059bc9f09df9bae518cbc1a80c85a70', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 22:28:33', '2023-10-11 22:28:33', '2024-10-12 00:28:33'),
('a0a845154c33416b39cb17cdfeb649820103861fa0999f170ad52f63ac0b0395f9fd41a189dc9a5c', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-23 01:45:56', '2023-10-23 01:45:56', '2024-10-23 03:45:56'),
('a0de0544c0f70c87b05b087a5b132bf6f332ed02672cd21521f18c973649c5c1ce364570c4d7bfe3', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 23:41:03', '2023-10-10 23:41:03', '2024-10-11 01:41:03'),
('a194e1e1485aca5c6bb62024181623c49a69b04ad60a3490bece5b37e823d3bcf363b396dab07f34', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 02:00:54', '2023-10-10 02:00:54', '2024-10-10 04:00:54'),
('a1d51c1bda41e8991e2c5002684a3b7938fe221ac7deb9e2462451406f7e12aefde5982329f7c0b7', 58, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 10:51:11', '2023-10-31 10:51:11', '2024-10-31 11:51:11'),
('a2527442b0bb50c395be874944f5543b4855614442c219edb3e5fdc49d0c95e2d079ea1e5a9cebc1', 65, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-03 23:47:45', '2023-11-03 23:47:45', '2024-11-04 00:47:45'),
('a299aeab2e03a09512006b645032747815b60cb09274dc278082208003b61a113ffb5e4bbec68da0', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 01:39:33', '2023-10-07 01:39:33', '2024-10-07 03:39:33'),
('a29b07cf7ccc20771feb4af8b7dd05406342afd598b629d8878059412f313004dd74fcda335680a6', 53, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 13:44:02', '2023-11-04 13:44:02', '2024-11-04 14:44:02'),
('a35262bd6d8bf7c4994c1edd0fa2183ebf0bc4063a6eb48ceb6f4cc7be0271b670cfc5ca093f6e81', 38, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-20 02:20:57', '2023-09-20 02:20:57', '2024-09-20 04:20:57'),
('a36a340d397d7928ca6a62643f78cc98d49f9c5ffade6d2fcce57c88fd7281def7f07dd924c8cb22', 54, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-30 20:42:33', '2023-10-30 20:42:33', '2024-10-30 21:42:33'),
('a3820bde425cf2ba788f93cc7300663c4e047607e9c26d948cbedc6294cfac3da268880988673f7d', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 04:03:08', '2023-10-07 04:03:08', '2024-10-07 06:03:08'),
('a398a23d1d061811695558fc9188de6f48aa0ed44bf9b3cffa6cd2f99ad082be59716dabae8fcf3d', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 07:14:22', '2023-10-07 07:14:22', '2024-10-07 09:14:22'),
('a3f1cf76344f0599a7052676cc91614f141e81793f2da94d08328be4199c81ecca5e663a4a8f9dd0', 102, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 16:23:19', '2023-11-04 16:23:19', '2024-11-04 17:23:19'),
('a43a270d0991022ecf6ed7e03da62737d4dce0e222b0b643e26d056a228681a6ef54067b3736b425', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 18:16:50', '2023-11-04 18:16:50', '2024-11-04 19:16:50'),
('a45ece2cd2a5d8fcfbc7b751241d711a06ea2aaf032552992489cba25480748ed5bd4e6608885c89', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-09 02:17:36', '2023-10-09 02:17:36', '2024-10-09 04:17:36'),
('a476d7e99aad93f1ea57e1e464500c069843d34919eb7e083c3c5b9d2dbe22dda0dcdb69e639c75a', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 01:39:43', '2023-10-07 01:39:43', '2024-10-07 03:39:43'),
('a492198b52214d9e9f9de897417a3937f4467bb3994bda644fea699c1f564f4210e4293361a6e0f6', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 02:20:04', '2023-10-07 02:20:04', '2024-10-07 04:20:04'),
('a4cbfac8f36736c8dc91c0a2d381de73953116d35c6b33aba2366331b6be803826e2f968497f5f42', 15, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-03 20:02:45', '2023-11-03 20:02:45', '2024-11-03 21:02:45'),
('a4ff4b0000fbc3e0ae80296afbc169ee5681055dd1b30ec866b93a40310d37447646f984f0bb975b', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 01:34:55', '2023-10-10 01:34:55', '2024-10-10 03:34:55'),
('a500ccb927e81333f704febc37921748a8c59e8630dde3d193f017da55ccd9942a7579ff958e70c5', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 22:21:01', '2023-10-10 22:21:01', '2024-10-11 00:21:01'),
('a50a3837591e918f3d30b2f511f0a936e1e2023c8e552551e9428b617801e0e3b28da262e2886bbe', 43, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 15:55:44', '2023-10-31 15:55:44', '2024-10-31 16:55:44'),
('a5316f3474e801c84b353d2d661770c292d4b50d5d84a482da62e299418e81bed768ce198f85eba9', 25, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-05-12 22:54:08', '2023-05-12 22:54:08', '2024-05-13 00:54:08'),
('a64b50cce75d2344424c27959ab207972ce9e15756720651ef07b01ad7cfcc877352f505b60a6907', 38, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-25 02:16:13', '2023-09-25 02:16:13', '2024-09-25 04:16:13'),
('a6aa107b6a31a0b6f1b2487728f3ddd469079f5f2154fde7c2951180bd12e66b6e0ff5480383862d', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 03:42:05', '2023-10-03 03:42:05', '2024-10-03 05:42:05'),
('a6ccd90ee23af94ea8e9f8d9037de40b89ddadeb3326da22b14a21862b2413409e41bfb369891734', 39, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-12 22:47:29', '2023-09-12 22:47:29', '2024-09-13 00:47:29'),
('a6f7d5de9da1bbb80f0272c66d025a243779a47af58f48ad5360b6ed232384cabe31ea2455882c81', 102, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 15:55:06', '2023-11-04 15:55:06', '2024-11-04 16:55:06'),
('a7548aef561809778391bcc7371b61decf0304be1536e8ad24b800db0179c99d3c67ea8cae975c46', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-06 00:44:36', '2023-10-06 00:44:36', '2024-10-06 02:44:36'),
('a7b61154086795f55e1cdcb20f2704581e10ad4cc174f13b3ccb5c3095d034852a4dbde581936142', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-05 01:44:38', '2023-09-05 01:44:38', '2024-09-05 03:44:38'),
('a7bf8af107a0830ee7c656f91b552bd1e73c2621824420b789e8464fe8572f5dea34781534562bc3', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 22:10:56', '2023-10-10 22:10:56', '2024-10-11 00:10:56'),
('a7c2b71f877807e6de07f1a7831194423d28795d45756f1f9f26970ad15dc8f7a491492cd2cabb86', 112, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 15:55:18', '2023-11-04 15:55:18', '2024-11-04 16:55:18'),
('a7d66899d68ee69a85b042fdf9f55bd33ef721eddf24b532b88247c3898167293988608ae52c42ff', 25, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-20 22:36:03', '2023-09-20 22:36:03', '2024-09-21 00:36:03'),
('a9212febc138f50fa210f8530677c677515e9bbd50cc60981cd251e6de66da32edb801986505bef5', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-09 00:58:58', '2023-10-09 00:58:58', '2024-10-09 02:58:58'),
('aa31e5043a7113ba1918e35aae79d0224334fd42a0a0e039b6b7d0d37399f103fa05908d5802e745', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-20 04:45:26', '2023-02-20 04:45:26', '2024-02-20 05:45:26'),
('aa64b132c4707a8aafc1ab777ac34a3d256c1bc3641a867fbfa90cd3371dc5be8374bc535bcd4f33', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-12 04:07:37', '2023-10-12 04:07:37', '2024-10-12 06:07:37'),
('aa80d517ce8e0b2723c79e0b7215255875d0e93091ea1fee9ab6a68717bdf9bbeb93e67dd82c44e9', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 10:06:59', '2023-10-10 10:06:59', '2024-10-10 12:06:59'),
('ab45fb4abbe01de2b66a17c3c35d6089e274bdbe5dade6ae329ed76ae443468d201c35e48b98281b', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-05 01:13:35', '2023-09-05 01:13:35', '2024-09-05 03:13:35'),
('abeb39fac71664a42dc0c495c44d5d46c4b6fc155bfb276f5a8945ae8ac8d282da4f7df00b91ec85', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-02 22:08:05', '2023-10-02 22:08:05', '2024-10-03 00:08:05'),
('ac2381f6a6943f96f2be39b701ef4aa65f827e813b0eff6ba8e973b33ce06bb317315085e886313b', 25, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-07-03 20:20:21', '2023-07-03 20:20:21', '2024-07-03 22:20:21'),
('ad13346ba9a18fcd7fe5b7ccebe23094ba30594dc21a3622e21051eeb05f1c533c611226a52c52d9', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-08-24 05:40:24', '2023-08-24 05:40:24', '2024-08-24 07:40:24'),
('ad53543e3f6f2417b1726c26d1dc54ddce9810a41c1e4f221e79bb89fb1afd1a768c4d836418c5b5', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-16 02:35:13', '2023-10-16 02:35:13', '2024-10-16 04:35:13'),
('ad6af6e142f85937d648531cc7f03f7ebfae344d9869e602bc3ac1d7dfadc30f6885acc3432dba0f', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 02:36:22', '2023-10-07 02:36:22', '2024-10-07 04:36:22'),
('ae1fe78317441131f53c168df8e73c9a7030a4e73427353faad7521d506e5ef4269e724f9247636b', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 22:31:00', '2023-10-10 22:31:00', '2024-10-11 00:31:00'),
('ae43df12c654c00e06a508c6d40c8c29794cd4cad5a884dc05f26e29ec6028f5d50b1cd8c533f8f2', 25, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-05-11 02:47:13', '2023-05-11 02:47:13', '2024-05-11 04:47:13'),
('ae6c2846f8c805fe6874adbbd35ee7c24646520fbb0379f38ef8cdb9ef09df44d9e92a152b166129', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 22:23:06', '2023-11-04 22:23:06', '2024-11-04 23:23:06'),
('ae74e70155f79accbd56694c7490385ca84497498221be87325c35806fb10cf30a5cd1c9ba18516d', 55, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 10:36:56', '2023-10-31 10:36:56', '2024-10-31 11:36:56'),
('ae7923e3ce26b624481cdba24af6ef89e1f564549501adc88d16b5185533173d575ec99cc900befc', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-23 04:20:38', '2023-02-23 04:20:38', '2024-02-23 05:20:38'),
('ae82269a14590aa4dd14a67caa1ac2f8dfff70ad44c8229777a78924678e9ad614f2a2b077449a68', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-09 01:11:38', '2023-10-09 01:11:38', '2024-10-09 03:11:38'),
('aec2cefa381903fa2cba136e37a1d8a684b726691ce295234741e74273d41b1ffb9b6e2b25946a92', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 03:37:30', '2023-10-11 03:37:30', '2024-10-11 05:37:30'),
('af9cfc337a4a6096f1f8b93207356e3663d978e71c6f094fb61e853117d0193fefdc2b1fb0661237', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 03:00:54', '2023-10-03 03:00:54', '2024-10-03 05:00:54'),
('b0a75ffa831cef1a538180aa8bb88b2b8c96e819af8a3efebe42a0f7a69349e494676d071a1058bd', 59, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 11:03:21', '2023-10-31 11:03:21', '2024-10-31 12:03:21'),
('b0c14ad435b9efefe7c3541468215cbf6becbe0f6557e1098b6825a0eeedf6eec210514465089a2f', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-06 03:24:04', '2023-10-06 03:24:04', '2024-10-06 05:24:04'),
('b0c3652fb80bbd4dd64d3ca6564d2897b320ee07543bc4982681ffc3309b89956c30c30192b6d819', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 22:57:05', '2023-10-10 22:57:05', '2024-10-11 00:57:05'),
('b0ebffa6756733bf8855b9e2addc85015c3d96daa1e93cac41e3c3b38c0ad15ce882d16825c6c386', 25, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-05-12 22:53:50', '2023-05-12 22:53:50', '2024-05-13 00:53:50'),
('b1066c1892cda6b7b087b5e6bc42de124d67f35856232d912d5c93fa27697cce022976d5d5cf27b8', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-02 22:40:55', '2023-10-02 22:40:55', '2024-10-03 00:40:55'),
('b164e91e4c5ff40e7a6733426647ff746fd94c391020e26e57e43a34def61c3fe5be9b9dfde52d72', 51, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 15:55:05', '2023-11-04 15:55:05', '2024-11-04 16:55:05'),
('b190bc2509d325045aff5ea997330138e5d12c7c608f5a271b79d026ea2ac922ff8874a5f767a174', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 04:38:46', '2023-01-30 04:38:46', '2024-01-30 05:38:46'),
('b32cab687de26086bf4fbdeb02f6e1a9c979eecf559fc20e197af95b28b375985dc986e964401cf2', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 23:15:28', '2023-11-04 23:15:28', '2024-11-05 00:15:28'),
('b3878f426ebf4dd09cbd58cff165ea0ca1550726fd882f50d934e14023df4fce2f5c2b287555cf24', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 04:10:45', '2023-01-30 04:10:45', '2024-01-30 05:10:45'),
('b3e71a674189d16e62696ff7a13487c3fce9a1d3d4f96d97390853939431d9880d1c051d6f547f58', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-05 03:45:24', '2023-09-05 03:45:24', '2024-09-05 05:45:24'),
('b40a7dd9dc046f521329e775dc4a54727a5a37b1d9ef8eaa7c863ec67b524538b68aebd2dbe33179', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 21:37:10', '2023-10-10 21:37:10', '2024-10-10 23:37:10');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('b4131d5919520c67a80bc394c0cdfdbf27153525ff2f9b4106cb5382f1398943e8124dd78889d5b1', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 10:37:34', '2023-10-10 10:37:34', '2024-10-10 12:37:34'),
('b4a9d27d5d23cc2bddfa1d4857eca0e8a0bbb693e8912b12f76b185bda31ada8f4b3ba2d70da250d', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 00:04:46', '2023-10-11 00:04:46', '2024-10-11 02:04:46'),
('b51b8694a0e3525c63974ecf0c67509cb6af3aaec5be85e0971b009aec1cf4e5e27bac096b0d255f', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-02 22:47:29', '2023-10-02 22:47:29', '2024-10-03 00:47:29'),
('b585d91bf7540f3eef22dbb25ecbbbc30721c1ef5078f96d1da8ff5b4df3a1e50c517b78688c8b48', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-06-26 03:48:28', '2023-06-26 03:48:28', '2024-06-26 05:48:28'),
('b5e184c15fb47ec63a08a895fd16e69314f10e0c3e1517c5e9c9546941a87f9bee91f267fa44b139', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 04:34:09', '2023-01-30 04:34:09', '2024-01-30 05:34:09'),
('b6068d44f1eba54924ffb636c84a6bf79f69dae5df0b69e4054f7404dc3205a24ef018f6bc5966d8', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-31 00:19:44', '2023-01-31 00:19:44', '2024-01-31 01:19:44'),
('b60ce630ad6db3d6129bc23f291f326ef737348b7afac88070179dc2fc7931c844b2ec0b1ec26136', 53, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-29 11:48:02', '2023-10-29 11:48:02', '2024-10-29 12:48:02'),
('b639d545d885ec6bf62439ea10ebde87953bb8c5bbb145701c54e1da19619d5da7b1ec00c79c3439', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 03:13:25', '2023-10-03 03:13:25', '2024-10-03 05:13:25'),
('b69dcc49841006bc06e536520bbaecf7ee12212f45e4c2d3ef4d3e5fd8f5b14b5deabd27c0180080', 95, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 12:00:58', '2023-11-01 12:00:58', '2024-11-01 13:00:58'),
('b6a7b8edebcd4d0fafe990a217e965e99535569cfe6ccdb489f6625bc08a33effce5f454365ef5e6', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-25 03:11:21', '2023-10-25 03:11:21', '2024-10-25 05:11:21'),
('b72cc0d7e901cd590a1fa20ad615186321431af51dbeb949d74b3e84f686a31f1ed541bab5d10b52', 53, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 15:50:20', '2023-10-31 15:50:20', '2024-10-31 16:50:20'),
('b7927866cd636f2c15e96ce4573c8c6515889262cec8b3de230d9610717267e6ab23ca0f2efb3222', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-07-31 23:50:22', '2023-07-31 23:50:22', '2024-08-01 01:50:22'),
('b7eafedb95f42664e9fb0200237bb0c70c1244e5d8ec358995a8b5b1d78f44f9876d7160ed07922f', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-13 14:57:22', '2023-11-13 14:57:22', '2024-11-13 15:57:22'),
('b83e19db718d1b61ebb2ded20176cde643785fc3b1aaaa9dea1ae206131628bbadfcc3cc582e9358', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 04:15:23', '2023-01-30 04:15:23', '2024-01-30 05:15:23'),
('b887bfbd05b40a9e0c8f668cf0f76ee2e17755e2ced223c4c38982859821a14b35a7804be8bbee17', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-05 01:12:44', '2023-09-05 01:12:44', '2024-09-05 03:12:44'),
('b88eec955341d51c26003a2803aa4321a6293b84b6f4affdada40a869871826187177c3ec8582dfe', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-07-29 06:46:22', '2023-07-29 06:46:22', '2024-07-29 08:46:22'),
('b8e12e969fdb35ad26f8e73fac06386bc7d3ae99339b36760dec191ae1b8f37913cb3cd8e16ac48c', 35, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-08-24 02:24:56', '2023-08-24 02:24:56', '2024-08-24 04:24:56'),
('b8eb535d56f6dfa0c1009e7cce3f13b6e4fedee7cfa30c41e0d74e2bfba1edc3a84e96eea81fcf5c', 39, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-13 18:42:41', '2023-09-13 18:42:41', '2024-09-13 20:42:41'),
('b92caf9d26656be1fb2b9365c1fa039b398a62796b78ee68ffe45f7f23f09ceafd9db80933d967c1', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 01:30:24', '2023-10-03 01:30:24', '2024-10-03 03:30:24'),
('b982ef3e8dfacb581183aadfcf017d979accf67b7cffbab1f543d1ae2c4a1d1e7b2afa1e80402a04', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 22:20:28', '2023-10-10 22:20:28', '2024-10-11 00:20:28'),
('b9f15af6f7d7d4d9541650d7ab3ef3e695dcdd1aaf4c06091ccb73f34d2dc09acd9f1776baf8fb51', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-26 01:30:49', '2023-01-26 01:30:49', '2024-01-26 02:30:49'),
('babaa81f2a001463191d6c22b6e890bec5fb1a64234e58c80ed67c278a1b467768dd863f0d6ef905', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 02:30:56', '2023-10-10 02:30:56', '2024-10-10 04:30:56'),
('bad06defd250148eead94bba6d56c06eb91ab027f5316d774e6d876f24bb672d3a63bb4fb4a499e0', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-20 00:28:17', '2023-03-20 00:28:17', '2024-03-20 01:28:17'),
('bb338b9a10c8f8dd1fd9886c0d342b1a5f90cdec05c532bb11d02c6ddc6224841cdc4bcc698c997f', 65, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-02 17:32:46', '2023-11-02 17:32:46', '2024-11-02 18:32:46'),
('bb9a733b1ede41ed0475e527642e45abc5ac3431cb0ce0ec18e74bd051225c7ebc732f8f2f4b4247', 38, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-20 03:34:00', '2023-09-20 03:34:00', '2024-09-20 05:34:00'),
('bbc0e19f6aa449e8f24ef2123e64c8df53e76f46e6a737274a84fcdd90d85873a453f23ecb5d10c4', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 04:33:06', '2023-01-30 04:33:06', '2024-01-30 05:33:06'),
('bbca633ad451679b4a40d5aee1e22c655d699d6232141dbd913ac7dcd5ed0c7c126b292cf410c76c', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 01:42:48', '2023-11-04 01:42:48', '2024-11-04 02:42:48'),
('bbdebc3c12e244e2a66b424fc89a66dcba6e760383a89e84c7b82692d24488e1c3343861876a9e33', 26, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-05-15 03:27:54', '2023-05-15 03:27:54', '2024-05-15 05:27:54'),
('bbfd085cb53274448173e651b2d4367e6b8a3169740ab5980e672e5eb8d9c4d81fd034c02c4e0650', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-09 01:56:52', '2023-10-09 01:56:52', '2024-10-09 03:56:52'),
('bc08fe873cc0ae7b00454d9ac88df1c3033f1c3d087d2006a654e050ee004d9b09e52ab742b62184', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 23:03:00', '2023-10-10 23:03:00', '2024-10-11 01:03:00'),
('bc36a58a09be9e7df6de5e7eeb28ce4ceccdfcdeebb22d4d1771e4a7c57caa4daed62769308005cd', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-06 03:23:06', '2023-10-06 03:23:06', '2024-10-06 05:23:06'),
('bcb9510cb405f33e634449c869619f3e716c4142d088a9784a7af6a4de08216ecb9a8d4278476c32', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 10:37:27', '2023-10-10 10:37:27', '2024-10-10 12:37:27'),
('bcbfb4c017efaae3e0f0e3203f4ffcd40c39f81c3afacb8f704d7908d23ee54d0534e030720d51bd', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-30 19:58:56', '2023-10-30 19:58:56', '2024-10-30 20:58:56'),
('bcf991f4db7d017b0face9bf0d596d01bd50110ae8ec4bc3a469ae376424466eb7a4a08dfeb1a728', 84, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 20:56:28', '2023-10-31 20:56:28', '2024-10-31 21:56:28'),
('bcfd2a677990c83065f5641d86b70cba035030044b9d69f81a99fe5af5fbe4d56f5c96355f17b01e', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 03:50:40', '2023-10-07 03:50:40', '2024-10-07 05:50:40'),
('bd50740273839cf0f88f2cb14115d586872b07d4093fae0ace72fd3a69879ee30e4c8eb97699fc4b', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-14 01:46:19', '2023-10-14 01:46:19', '2024-10-14 03:46:19'),
('bdb5b2756aecc010d484454e42a0bd655ffc955324e3fb99982505560d9abcc6094c7b6162821335', 15, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-09 16:29:54', '2023-11-09 16:29:54', '2024-11-09 17:29:54'),
('bdd7108aa7718dc5f662b4ef2a5eb7866d8fa792dddb94289f7baba8b5a00d9bd773157aaa48e0d7', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 02:27:40', '2023-01-30 02:27:40', '2024-01-30 03:27:40'),
('bde7912f8d9f00fce2ab5e6d1896280a343be5feab11f1464d7b7aab6bdee6d819ed7d81196b64ea', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 10:05:00', '2023-11-01 10:05:00', '2024-11-01 11:05:00'),
('be20b56813f157106e0f7e42903d6683ca808504cc6b593d9107bddeedb3c2da6fffb697f99c6ce3', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-16 04:09:12', '2023-03-16 04:09:12', '2024-03-16 05:09:12'),
('be7cdbcae54c16cbff1aa9bb1aa9815d13f65b96b0dadf656795a661eabfe7e098e9d9c426fdc3bc', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-06-23 21:45:33', '2023-06-23 21:45:33', '2024-06-23 23:45:33'),
('bed7bf3f1f818e2935dff43ba5eccb1bd0cd53042c59a8190acbbc9b5b5480246f2cd416ae04612a', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 21:42:22', '2023-10-10 21:42:22', '2024-10-10 23:42:22'),
('bf1f02149f797ad523a5797c364291bf3ae3e97e5f774836f605f96ae1a484c0edec32cf66190828', 66, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 16:30:00', '2023-10-31 16:30:00', '2024-10-31 17:30:00'),
('bf34554accc3834b329825a847f3da4f574a30cef96ed54f509eecb6d249da1fb7fbc9f0d5e10c14', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-30 02:44:45', '2023-09-30 02:44:45', '2024-09-30 04:44:45'),
('bfaf4d8b3868e884759d2d6b43985d94c1cea2af09e672104241069893269b1a76fe2b5d32232aa0', 109, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 20:08:46', '2023-11-01 20:08:46', '2024-11-01 21:08:46'),
('c0016bfbe42688002a4c6c6869eebbe642bdff3b4018ae38aef93b616094f2f636fef6894206a74a', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-08-30 03:29:53', '2023-08-30 03:29:53', '2024-08-30 05:29:53'),
('c010da61ede08866de2a6453a21d200fdc7637bd57db1e2bfe42e4a55ea0fdcad1afd6107fdc869d', 65, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 16:40:02', '2023-10-31 16:40:02', '2024-10-31 17:40:02'),
('c07c33f7f21b9af92bfb4aa6b442b6ce2484949454e3503bd264af814f61153fd0e5af1259d5504b', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-01 07:22:43', '2023-02-01 07:22:43', '2024-02-01 08:22:43'),
('c259a7984ab9649d6c7c2a7733c9de8a4b47b894764252d887da766934608f8a16f968c101682af5', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-28 02:32:48', '2023-01-28 02:32:48', '2024-01-28 03:32:48'),
('c26dff18b6d239188cf20497737edd9c9b641b9b5f12dba90358fe48e24e2af274282010367f4ddb', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-09 01:17:07', '2023-10-09 01:17:07', '2024-10-09 03:17:07'),
('c293091aed990402ccc3c6d7bb78e96c9fdf03757edd9295213c71eb0d208648bc6aebd7b4a712bf', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-08-21 21:43:48', '2023-08-21 21:43:48', '2024-08-21 23:43:48'),
('c2d111886686fc7edaf09b33f54a91ef1a739d313c47fd2034f61d9386f09d820def911da5f86796', 86, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 21:39:15', '2023-10-31 21:39:15', '2024-10-31 22:39:15'),
('c36d8564ca7c650ae6a7aec82199373b5728705e2ac9f7e27700da100547350d5ad66968cf7def7a', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 01:30:59', '2023-10-03 01:30:59', '2024-10-03 03:30:59'),
('c3b232351ad1d01c9981f3e7642416c651c996f01a0093de0d2365df1c21cdb361a9047c0a327a14', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-12 05:04:17', '2023-10-12 05:04:17', '2024-10-12 07:04:17'),
('c41dfbc3362bd20e6f5e767bea2c3cfa22586560d23f3fcce7a1dc22748582c583bba3f13ddc9233', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 01:33:26', '2023-10-07 01:33:26', '2024-10-07 03:33:26'),
('c4511926e299d010feec20789cee447dd633a743a1da6f3f6f8fcbf9abd673a1eb7526a15f1375f3', 39, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-13 17:18:10', '2023-09-13 17:18:10', '2024-09-13 19:18:10'),
('c47d626469583fea4ed028bae36eb7bcbf720d117fa230b756c07f4abb73db457efb8b9b03b73878', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-06-21 21:01:07', '2023-06-21 21:01:07', '2024-06-21 23:01:07'),
('c48c73447fa5d9b07a633f4d7022d737973dc6a5c14bbe9cb05680114142e3efa2b507b30e69dbf1', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-18 02:26:16', '2023-03-18 02:26:16', '2024-03-18 03:26:16'),
('c4f44a223198e54bfcd3f458525f17808d29b036c46a16ea036fcad0308db569b912fc1f126adf7e', 112, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-10 12:39:27', '2023-11-10 12:39:27', '2024-11-10 13:39:27'),
('c551485195ab58e168f686da79cc1171ec58e3cd5d2099bb6914b38dd2e4bacb5dd404f2dc26c521', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-09 01:00:16', '2023-10-09 01:00:16', '2024-10-09 03:00:16'),
('c57ed0653e16c652293002ced74908ab46225509701304b80f732d0bf31105163addd13fca746a5a', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-16 03:55:19', '2023-03-16 03:55:19', '2024-03-16 04:55:19'),
('c5b6d114388a6f59acd8add5adcf9243979308c26aa9627b96602175dd5d4ec101c642ef4de30244', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-13 21:56:20', '2023-10-13 21:56:20', '2024-10-13 23:56:20'),
('c5cf17b5c2ef909f6f0c7ad9905a58f98fdfc872cbb75d989cb9c6901f99ff0c647c5e133926d581', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-16 10:27:12', '2023-11-16 10:27:12', '2024-11-16 11:27:12'),
('c610357d50dd9acbd758b5330c34924fc94082def173db3a01e58a4d7cee257a50118663c874f5d1', 107, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 18:31:52', '2023-11-01 18:31:52', '2024-11-01 19:31:52'),
('c6461dcda740990082166091753b457b4a747f5b58c44b11d6b29bfc312aed40c5a4cded0ceb62a9', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-04-29 03:26:53', '2023-04-29 03:26:53', '2024-04-29 05:26:53'),
('c64ea42ba479fc412240542964fced81708ab8a4ab3d645710c5fe790f7226c0070488d4569468ed', 85, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 21:02:22', '2023-10-31 21:02:22', '2024-10-31 22:02:22'),
('c662c4c379e09ccb70aecf32da5b38f9a08fec57355f900a11de53301a295a75e539594040cd637c', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-29 22:38:13', '2023-10-29 22:38:13', '2024-10-29 23:38:13'),
('c6a63d93d0f98dd08e432573c6fca82331ea70e32022bce81c6b4fad377e6efbdc3b5559eedca1c9', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-02 17:00:34', '2023-11-02 17:00:34', '2024-11-02 18:00:34'),
('c7697170da84712ceb441880a45e5d728463a4de91d3579eee44a538323c069ff564457425b05a12', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 22:07:50', '2023-10-10 22:07:50', '2024-10-11 00:07:50'),
('c7b3f57799d14114a1477dead5eddd459eb02511912a5986e0872d6cea2bf261d69f8f405860524a', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 03:10:01', '2023-10-03 03:10:01', '2024-10-03 05:10:01'),
('c7ef8b1617ee36a84e73a3fd8253504f2025a19e10f0a43fbea2d8462cd4d5afe190aee298974ead', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-06 10:28:20', '2023-11-06 10:28:20', '2024-11-06 11:28:20'),
('c81641f787e5a375dcbf2511b1d3c046d1a2d10355a09e7aa28b2fe4e77b4416fb0c0757d0517be6', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-29 23:11:35', '2023-10-29 23:11:35', '2024-10-30 00:11:35'),
('c818303130bd159f6c95d200cba7c44f35032b7aa37e958ce4a01cd396df3f418c1bf049c6bec753', 121, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-17 19:52:54', '2023-11-17 19:52:54', '2024-11-17 20:52:54'),
('c8c9dc2d6f3fddd4dba27ea2408cf2e1ad20cc7c81a8d79d4aa505420fe0846a79f65bbc0f316ed1', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-04-29 04:48:37', '2023-04-29 04:48:37', '2024-04-29 06:48:37'),
('c929ed10558e524bd507658a609bdfce85df3734bb5aa3e97390947daf38ee6345b6dc1a84000538', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-07-28 01:46:33', '2023-07-28 01:46:33', '2024-07-28 03:46:33'),
('c99cc703a6569b1e0f0a5d9ccb59ebc26f2e2da24d414bdea31fd96bcd35d7361f3e3c8ef10080ea', 120, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-06 20:30:37', '2023-11-06 20:30:37', '2024-11-06 21:30:37'),
('c9cc8d33ba6df60124dea3c45bf7e8287710038c9e3754a537e4c683d3bd1364b6b587894fef94a0', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-08-01 00:13:12', '2023-08-01 00:13:12', '2024-08-01 02:13:12'),
('c9d13c77df1c453e86637ac914ed70e7fc14f9fbcc8e1fa39dc462564f939752895635f3fa17676d', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-04-29 03:18:16', '2023-04-29 03:18:16', '2024-04-29 05:18:16'),
('ca2fad881d585982d97886b50a7dac36076280b9b988964b5fb5a9f41fdc2a5a1674bf1325917189', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 01:52:14', '2023-10-03 01:52:14', '2024-10-03 03:52:14'),
('caac110f876d25947fd4633bcdb3035ee27a9325fe57ebe0993d5664f452dfd9f4d6e79abc42e45d', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-30 21:12:58', '2023-10-30 21:12:58', '2024-10-30 22:12:58'),
('cb7ae50ea23ad8cdbecb3d9d69aa4760d5d9bb6a52ea8516cb8c795dfa9ef3746db6142887bdc1ab', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-02 22:42:44', '2023-10-02 22:42:44', '2024-10-03 00:42:44'),
('cbf6634586f5b33d8629afc70b1d33adc4be28b718708ade9d756f0ac53997ef8e03efd183c568a8', 41, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-12 04:08:30', '2023-09-12 04:08:30', '2024-09-12 06:08:30'),
('cc0a1064e76c499f3659a44f6d0b2a6d4ca96d7bba6a5e8061540245dbab647e2230911e0bdea960', 41, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-11 23:26:24', '2023-09-11 23:26:24', '2024-09-12 01:26:24'),
('cc2dfba87bfdb281e8dcbd8981b4017f09438b3bbe166cca249e02caaa3a53dff08c2471228b5cf0', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-09 23:16:33', '2023-10-09 23:16:33', '2024-10-10 01:16:33'),
('cc5afbb69e5ee720716f76178cd40eb7341b0effc434fd94ec366a1e39a79f10b04fc2c0f699308e', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-02 12:33:08', '2023-11-02 12:33:08', '2024-11-02 13:33:08'),
('cc74dd0c15e494bc2f55c535d99d445579a6eac2d616e61263c406aefc34a1109ee9de548c054ca9', 53, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-30 20:38:30', '2023-10-30 20:38:30', '2024-10-30 21:38:30'),
('cd24fef70e104c4fe9bc1217f7eaf1a2d108a4d6518c29a11daf1af9ae1625fe863cb5dae222767e', 39, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-30 01:20:26', '2023-09-30 01:20:26', '2024-09-30 03:20:26'),
('cd533a26ed216885b82e5560c6254297fe45dd413d9bf3a824e8bb8301f07bbdb6a63d20f11b2c0e', 53, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 16:52:28', '2023-11-04 16:52:28', '2024-11-04 17:52:28'),
('cdab5c02555e35197be07c2f760e9b4017688dc6dc78a58606d54395dba910c554a0b37a73ea6d1d', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 02:12:37', '2023-10-11 02:12:37', '2024-10-11 04:12:37'),
('cdddc96b38d39431eced652936bcb7780e18673177c25b2813fdf71f30be26a9a9c391f0ee72358f', 15, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-14 09:09:56', '2023-10-14 09:09:56', '2024-10-14 11:09:56'),
('ce69c71868e11df10df270b49aa2c13382fe838788af10f49f8822d668940b89cf1209e4ae4a178b', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-09 07:14:48', '2023-02-09 07:14:48', '2024-02-09 08:14:48'),
('ceced783c32270ed9d2169a4ab0d7d9707fa71dbf3befc8fa026a272cfe0c39369e53bfdcb862042', 43, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 02:10:23', '2023-10-11 02:10:23', '2024-10-11 04:10:23'),
('ceef4ad59e6205003eab77618e3adab3a5196074ea71072a6687e8dfb723577199344eb0462a52c2', 65, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 15:59:33', '2023-10-31 15:59:33', '2024-10-31 16:59:33'),
('cf3c4075f897a34b84f630699c2b619e3c26607c0b722477278cd9f1c8c8a5b816d7104d3ab98964', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-26 05:27:39', '2023-01-26 05:27:39', '2024-01-26 06:27:39'),
('d03d425be75a915c5069eedf720b0fc45a7a10e9aebcd266b3e058fd1d7ec43f4e51fbd05b338f85', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-06-12 01:12:08', '2023-06-12 01:12:08', '2024-06-12 03:12:08'),
('d07d47f2db65fb632560d0d3e53d758666ba5b17536266a2f5e1c3995c07c6214014160bd34f1683', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 21:36:55', '2023-10-03 21:36:55', '2024-10-03 23:36:55'),
('d127e910fbd2c0d5eca211ce74a566216b56e173a2ba65b9deefad8c52342c87988448a873e74c94', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 11:19:29', '2023-10-31 11:19:29', '2024-10-31 12:19:29'),
('d14fa131c25164d9819ed66cef708d2cc0a3ab7f4e7de7cde06bed6c2873f323c3e45d4cbd6d6c98', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 03:40:27', '2023-10-11 03:40:27', '2024-10-11 05:40:27'),
('d18a9cda38314335743293cb076f8db2191c9538bb4ba6708918433b06fd448496ea03eb7544a14e', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-23 04:16:09', '2023-02-23 04:16:09', '2024-02-23 05:16:09'),
('d1a606bbcffe190afbbd3e075db10c3c5d454dc1a99d94ca16d000a9437f19979fe68f6385004c92', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-18 00:33:45', '2023-03-18 00:33:45', '2024-03-18 01:33:45'),
('d1fc9a6418ce1e2b3c5ed78ace525c76686d1615fdbc34d68fb62f39e19afbeb115ac2dc239f0ce9', 19, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-23 03:54:51', '2023-02-23 03:54:51', '2024-02-23 04:54:51'),
('d2c3f7a9d4970c8fc85c7405ffb22f359055ce8dc37d173a136831df70fdef8e8ce61882ff03ca10', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-06-15 03:52:47', '2023-06-15 03:52:47', '2024-06-15 05:52:47'),
('d2e61928cc7c4b6588071bc6575940c310c0d67d95617053257fec0d56a196b1ffe7a7d558b33747', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 04:27:43', '2023-10-11 04:27:43', '2024-10-11 06:27:43'),
('d316170f3806d1ef693f96ff9d5970ae2de4f59ef7c76eeb03f4d66144b72d8adff8a8ca944f112c', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-26 01:29:47', '2023-01-26 01:29:47', '2024-01-26 02:29:47'),
('d413bbdf0b2a53122b852a78c1bcdf51caf8c8c423844acc31ef83e0dc39817e7f42ba7f2eb6bfb4', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-16 03:53:20', '2023-03-16 03:53:20', '2024-03-16 04:53:20'),
('d41581cbec40826f73d0be41201907c68025ec8f6648ce3e8b8bac6a9766a51ed7b9dd95bc481c6f', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 10:05:36', '2023-10-10 10:05:36', '2024-10-10 12:05:36'),
('d41d7c3266d1ed89dd7d23d9ceb74845b6940587d938b518ce5db46bf6d45f3de9d0fa6b5f138435', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-16 03:51:31', '2023-03-16 03:51:31', '2024-03-16 04:51:31'),
('d4a34385726db26ada789ee2c18c1fea3a859df6bb21d5be53d08767fe76787ca320da97264875d3', 25, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-05-12 23:33:09', '2023-05-12 23:33:09', '2024-05-13 01:33:09'),
('d5010719ffc8e833f3725ff0734937c6891d0feae0cf5641506cce47c53ec408460d4859b74c8a2f', 112, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-11 14:19:14', '2023-11-11 14:19:14', '2024-11-11 15:19:14'),
('d55d8e2cda1bf5a9cb95e1d15e9caecb6ecafbec4c375fce59c982dc439c8a97158febf1cbd75f46', 25, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-05-12 22:55:54', '2023-05-12 22:55:54', '2024-05-13 00:55:54'),
('d5b1f638b8fe70193e1352f4a504cd0252239a0a4e2d13103121776b9c6f5080b8f51fe7ae1afffa', 22, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-16 04:34:59', '2023-03-16 04:34:59', '2024-03-16 05:34:59'),
('d681813c2c0fb25393deb8ba0f0f59d171044a3d40fdcb4d590da2c4364bbff7d072ea6b24234d0b', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-01 21:37:13', '2023-09-01 21:37:13', '2024-09-01 23:37:13'),
('d692f89d0eb5cd9431ccda6465974fb7695f047b9daee1160361cf173fe12a1b2749f38907cbe611', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-16 03:54:41', '2023-03-16 03:54:41', '2024-03-16 04:54:41'),
('d6e96e7dea4bb7b50a3f166539abf04bff25a94d1303cd528faf7a022f782197ad65d1143d04ceb5', 112, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-11 10:43:15', '2023-11-11 10:43:15', '2024-11-11 11:43:15'),
('d6ed0043f131b2028e7a33b8ecd927e65be7853cdd3fb2347890fc9fa1d9779ec1cd864a7afdf299', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 04:17:42', '2023-01-30 04:17:42', '2024-01-30 05:17:42'),
('d6f08509cdaa0d6ce2068bde52bd87dfb454fc1e5e86bdbac55c75e11ca85779d2d94587c0a9654b', 53, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 15:49:18', '2023-10-31 15:49:18', '2024-10-31 16:49:18'),
('d9a8f000a3bbd9470a64183fb8368568825f526013839bdaf7458c4317a687f78fbfbbda597cb59c', 25, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-05-12 23:13:10', '2023-05-12 23:13:10', '2024-05-13 01:13:10'),
('d9d83eb61eee3144d0fda192c31bf52d4001e543c130717a2c46680c4962604d541a014ec65deb62', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 23:37:36', '2023-10-10 23:37:36', '2024-10-11 01:37:36'),
('d9e1ccce07b6886097ddb3d6fe576a294b17e23af9892b79d71cfdd91548e661b191e80ed54e7438', 25, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-05-12 22:55:59', '2023-05-12 22:55:59', '2024-05-13 00:55:59'),
('d9ebb4c8a3e06f7ec15a6415e029cb4223d12f7f4bbfcda97fc5e3bd3c06a7b78bb5326dde15a704', 53, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 23:35:25', '2023-11-04 23:35:25', '2024-11-05 00:35:25'),
('d9f281e5252d0f9ab8ae7a3319302f064ea947364ce16472b36e38d119e8217d49d27d61d9732834', 18, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-01 07:26:02', '2023-02-01 07:26:02', '2024-02-01 08:26:02'),
('d9ffcf2e6e0c6521d9147243918ee91f143d771e05c1168d6f1187c691544e9e0996478cdd9952a4', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 04:41:29', '2023-11-04 04:41:29', '2024-11-04 05:41:29'),
('da07397548ad0aac8b2516244ca1b06eb75e7815b99a1d07c29f26ab7073f6c0b7b2bc056f2ec474', 43, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-26 01:21:06', '2023-10-26 01:21:06', '2024-10-26 03:21:06'),
('da729fd51a046f0ad48b5c0a1ec0f0669449e105cfd0b0595a4807000bf487c75fe269640b7afeb4', 45, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 02:11:43', '2023-10-07 02:11:43', '2024-10-07 04:11:43'),
('db8633bc743fcaf0f718e2d086c55ff4aa505eeb83368e90e6068cb7aaba0e6e0b4acbf114dac467', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-08 23:18:41', '2023-10-08 23:18:41', '2024-10-09 01:18:41'),
('dbde412ddd2ac1c7eea282b5e145bfcc1d0b37c01ad6e0980d582c44bf2ef766740de1d8530f1943', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-18 02:29:01', '2023-03-18 02:29:01', '2024-03-18 03:29:01'),
('dca3f038c764e609f1f87ae07c5669c1294681b4e0dab504c9efae44c0072a3da2d95494c7ab19c0', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 01:24:10', '2023-10-11 01:24:10', '2024-10-11 03:24:10'),
('dcbbcabf2b938581b347056ad040d623e91c90dc97be308d4396f1132643ef0fd11b3506e68c21fb', 96, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 12:01:41', '2023-11-01 12:01:41', '2024-11-01 13:01:41'),
('dcbd7915e6d0427a223cb3ec1376508082b33f70b9ed387931fff84cc141421aa8f37c3111383013', 20, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-23 07:32:48', '2023-02-23 07:32:48', '2024-02-23 08:32:48'),
('dcdac62aec165233bcaf2db3f061d348b296864d9517f5be220eb4719d3ec58b28a19662c0a7b286', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 01:39:24', '2023-10-11 01:39:24', '2024-10-11 03:39:24'),
('dd0de9bca049e57ba9dc644f2c29d194381b74f0b12a6fb238088467cde9263125130ad53200faed', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-31 00:12:16', '2023-01-31 00:12:16', '2024-01-31 01:12:16'),
('dd1e5577912f08b5900729d34e76a40e14366eb2539fcf849e838a1a7faa0187e8f16ec5f169f92c', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 01:29:52', '2023-10-03 01:29:52', '2024-10-03 03:29:52'),
('dd3cc9e32d39b4108c4e2e61ee9a8bbb449b181bf8ff308a91b4367f6ca80ced7243626cbbb560bf', 39, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-07 01:17:46', '2023-09-07 01:17:46', '2024-09-07 03:17:46'),
('dd58fe87a903d9aa1526fe6d6258b642ddcde8af287e9feadcc1f22130171eba08a40bd78d1f2532', 15, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 11:16:37', '2023-11-04 11:16:37', '2024-11-04 12:16:37'),
('dd93f9b4699b7eba437a4989031fa0da6abbc3d4e51d313d9c925db879160461cf43cb5c52bd07f4', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-29 23:37:44', '2023-10-29 23:37:44', '2024-10-30 00:37:44'),
('dd9a9c70218edf4192c5ee49e2bc7b648cfb22d88adcb17702aa18fe9338903a75d09754c92e1203', 39, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-13 17:18:10', '2023-09-13 17:18:10', '2024-09-13 19:18:10'),
('ddbd4845d2591e7beae4db5485e1f8fdd55bab4def1ae4191dc7fdf92c8e76f3e4bab4d2725f247e', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-22 00:43:30', '2023-03-22 00:43:30', '2024-03-22 01:43:30'),
('ddd1d9becc692399a1c4481d4d636a18d320b05395b7613bb85e7fbd9adbb4a8c34b759133e044b7', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 03:43:04', '2023-10-07 03:43:04', '2024-10-07 05:43:04'),
('ddf4155c9f195948abe40aadf5d24e81932738f8bd177d30fdc57f771600e00402d31bb0ab98e35f', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-06-17 01:29:48', '2023-06-17 01:29:48', '2024-06-17 03:29:48'),
('de3e1206b44ef5449496cd3d323c134fd20e5c64fd05309d4524c2f4cdd8f599f59badf2a23b5a21', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 04:41:01', '2023-01-30 04:41:01', '2024-01-30 05:41:01'),
('de506529a54ba3223781ce1e5e70bfd1c5a34df6c28212a2fbe84b5f4be1c41ec1e2337964332841', 57, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 10:46:55', '2023-10-31 10:46:55', '2024-10-31 11:46:55'),
('de5ea14e07d5afc27d68cb19974fe7b1308a549d332f77db91303271634491dc6408cc6ddddad334', 15, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-05 03:15:07', '2023-11-05 03:15:07', '2024-11-05 04:15:07'),
('de7562382df5f311debd4be183607ef41c27aa3959910fdbca191a75dd43050a45faadd95ca4a4ab', 53, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 23:55:17', '2023-11-04 23:55:17', '2024-11-05 00:55:17'),
('de8775f798838d406cb7106fee4097d372db2e176e96a71a8c9c4e172ea5c79f86945d5ea8675b2f', 43, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-12 03:27:22', '2023-10-12 03:27:22', '2024-10-12 05:27:22'),
('deb4647fe9b3b692c80b30f29d034bad33ba71f201c3c8057918520e70d190ad4e05b8d60729dfa4', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 09:56:32', '2023-11-04 09:56:32', '2024-11-04 10:56:32'),
('deebb214ab63249b22fe20ce307e5e96155a591dc5b6b3152bd955cbe0c0f822ff81262499b2be63', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 10:53:12', '2023-10-31 10:53:12', '2024-10-31 11:53:12'),
('def06bada4c3a993531c546beb56c12e2a9a3f841954a4b1aa28a40fad69cbb558bb9cb2f431fd4d', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-04-30 20:42:26', '2023-04-30 20:42:26', '2024-04-30 22:42:26'),
('df3d7f585ea4ff4193606958327f82366973fb10213582b6593008ef25544d9eba7b320d9851432b', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-30 02:24:39', '2023-09-30 02:24:39', '2024-09-30 04:24:39'),
('dfaefc7458493c22d517640151c6ad4c2d1b180ce9006e548cd703f6a8c5f9844d977a9dcca27b5d', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-13 16:58:08', '2023-11-13 16:58:08', '2024-11-13 17:58:08'),
('e00d7480672cf66dae6b6d65e2ce949aced43e5c6004730dc0b0bb1630a7e4128e17dc74e527cfcc', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-09 02:40:48', '2023-10-09 02:40:48', '2024-10-09 04:40:48'),
('e0215c8871290876c97fbfc025dcd20d8a7c77657c4f1482dd7f484fade834810e54e6a46b5b3407', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 01:12:12', '2023-10-10 01:12:12', '2024-10-10 03:12:12'),
('e0276850c4827f58069b3050b2ed2d31e6886723c8c0d626add70a201d5fd4f0b529f58b9509f746', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-12 04:21:11', '2023-10-12 04:21:11', '2024-10-12 06:21:11'),
('e06c965e3930a10fe70d662e5278d77b7e97f3ddda9ee51ccb47411cc3c9a03d611695f6253e4837', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-04-29 03:40:32', '2023-04-29 03:40:32', '2024-04-29 05:40:32'),
('e08a46034e1f6bdba562a6274d5981f0f6ffce03536afe5ef62047292850bf849e92550d770a8d44', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-04-30 20:32:11', '2023-04-30 20:32:11', '2024-04-30 22:32:11'),
('e12e9ec477fa6945f719f4929ba9ddf477e568cbde611f13a8db73a5a9f61123b738b424e95f9f34', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-07-31 23:53:25', '2023-07-31 23:53:25', '2024-08-01 01:53:25'),
('e173b33934d9bde4548e1e94cca620e05c8dd4139288cf00dfa33ce5127fefeb2e1cda5df530c12a', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-08-19 02:11:03', '2023-08-19 02:11:03', '2024-08-19 04:11:03'),
('e1bf38fa0e8e4ad4488b8e382e2a817d0f55e8f2ec6ca1c7fc2411fde0ede5775a84905696967f60', 39, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-13 17:01:26', '2023-09-13 17:01:26', '2024-09-13 19:01:26'),
('e1ce579b2ab867516a1d85b00ff9648f6e07d5a4756106c8eb9d07f9a7ec778d3f3791a72974b067', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 00:08:49', '2023-10-03 00:08:49', '2024-10-03 02:08:49'),
('e29c0d5d9f909bf7512b5c7bad866688aee6a771b78976dd1b94b9aa1e782fa5ea7fe5d925ab531b', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 10:37:46', '2023-10-10 10:37:46', '2024-10-10 12:37:46'),
('e2a1868f13e4e8f8062daba1a2a80500990f62aa2b66dc4e4682b9860ab9ffb28862f79523216306', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 02:11:00', '2023-10-11 02:11:00', '2024-10-11 04:11:00'),
('e2a216b61d5da1a25e61bd85c6a6dace7ad65c9beac7aabf8e70e05a578a599b32862b775a95357a', 43, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 02:12:13', '2023-10-11 02:12:13', '2024-10-11 04:12:13'),
('e2b2a729f2bd6e2336465b508e84e38ce3afe14f602bee55bbc2f0fd4e40330846e632babbc805da', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-14 01:20:35', '2023-10-14 01:20:35', '2024-10-14 03:20:35'),
('e2b4bbfc5f12ebf19fe0b9da3f442847076a919727a5ac00fce953ab3fba2bf946eb2e8f55112a64', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-02 22:04:26', '2023-10-02 22:04:26', '2024-10-03 00:04:26'),
('e2e72df0f5eaf0201bd24fab04effc9c306312084ce89d07107e2784f9784a7dbe77e971c5caf395', 53, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-30 20:43:20', '2023-10-30 20:43:20', '2024-10-30 21:43:20'),
('e2edf95ae115b044faa4bacf129e3c2a6c33a7464abd117bac20af437f17975e543bff829c0969f5', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-02 23:48:14', '2023-10-02 23:48:14', '2024-10-03 01:48:14'),
('e326a122b803f65fa14db2e5e20f46e1fb5370a9fde93e1e4f8eb101a0ee35603fc7bfa2a303eecd', 39, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-13 17:17:48', '2023-09-13 17:17:48', '2024-09-13 19:17:48'),
('e341fe26c197178ff14a513880ca23dfdc572632854845a0c0feedc4664169cfc979442dfeea72eb', 106, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 14:10:13', '2023-11-01 14:10:13', '2024-11-01 15:10:13'),
('e3638e971e78e6972c2d825c18629e6c9e8824664cdb8a691a57b01843713e3c6783b7eb3bf0908b', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-31 00:06:40', '2023-01-31 00:06:40', '2024-01-31 01:06:40'),
('e3dc96593ae3c61db009dd109012f2bc3c333dd219669e5da703772eea192d92196a900c81d412f2', 38, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-19 23:09:55', '2023-09-19 23:09:55', '2024-09-20 01:09:55'),
('e47259f192a1ace561bd2b8c89c845296c2b5df9b8c5ad02001b4a8158ce0d668999ff46afc63f59', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 03:35:04', '2023-10-11 03:35:04', '2024-10-11 05:35:04'),
('e4924be7f658a3d53b51e95eabd5ec90c391db29200c5c59d650c3bd383a61ea127881d541824662', 25, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-05-12 22:20:33', '2023-05-12 22:20:33', '2024-05-13 00:20:33'),
('e4cd9504cb8102b167ecf453b7b21af64b306a234b5e01b2c31f98d7f551896ac99db8ab6a23bc60', 25, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-06-14 20:35:15', '2023-06-14 20:35:15', '2024-06-14 22:35:15'),
('e5dab64bde639cdcd7b4b2c740ad3838dadd8f811dcaba2319796f5a78cba6463c02a5be3f074f7e', 65, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 22:23:29', '2023-11-04 22:23:29', '2024-11-04 23:23:29'),
('e6344abb14e20bd1c2d81c877403f0a0ee6bbed3329611ec454c385ddc5e84fe29f33bdfaf4dbbd9', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 10:09:10', '2023-10-10 10:09:10', '2024-10-10 12:09:10'),
('e66baaad839f9e381e848e02f67777fb8826f758842822e1038a173b1b8f14ea6fff01bbd5c978ac', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-27 01:30:13', '2023-03-27 01:30:13', '2024-03-27 03:30:13'),
('e6707674ee5ac37ed5e412005c2e2e0dd1250c477fd3ab04ded04f328791b2d073af99a1a75b9367', 19, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-23 04:15:55', '2023-02-23 04:15:55', '2024-02-23 05:15:55'),
('e6819795c0a0d85b4c7e716326c0c54ef6dc9694a73f1186e4f8b9173a68ef465fab18ee2a96a45a', 115, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 16:30:15', '2023-11-04 16:30:15', '2024-11-04 17:30:15'),
('e6e1fb8893fa8c01ae53e1da67b3fa190248810f88895f206e60873f0bd9ba987982e4dce1c9110b', 39, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-07 02:28:55', '2023-09-07 02:28:55', '2024-09-07 04:28:55'),
('e6f0ee2c0f31ede462e50107139df13175af3dec88291b0b7673d7a4f37273f97aff062df98c9cdc', 39, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-13 18:48:25', '2023-09-13 18:48:25', '2024-09-13 20:48:25'),
('e711b7e1e587ef5967de49a7afe8be615d2fd63e6d80aea8bc6851a3fdb84c52b80fd10a4fb1503b', 17, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-11 01:51:45', '2023-10-11 01:51:45', '2024-10-11 03:51:45'),
('e73babd90d02eee5c60ed149c70815b18068e4cd7ac603fa9fdd28dd80628722ee08064a04715bba', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-23 04:12:39', '2023-02-23 04:12:39', '2024-02-23 05:12:39'),
('e87babcf7d5d5ca250cc012dc75ab189f32a4bcf2e77063438036311e7a77f05e82069073d76bec8', 109, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-08 12:41:07', '2023-11-08 12:41:07', '2024-11-08 13:41:07'),
('e88b4f09fbf512cd1468f3ca2fee7ad6269a7f31e69f45973c5f4254e46c0624ee98c6d1351395c2', 40, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-11 00:15:40', '2023-09-11 00:15:40', '2024-09-11 02:15:40'),
('e8a3da9b2c847558fe2d777c896ebf38665b46089cc840741d9deec88700e3fa0c09eb34156a2cc0', 51, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 15:53:44', '2023-11-04 15:53:44', '2024-11-04 16:53:44'),
('e9387869fde5af779ebaceeaf63560edd99681f7c4fc7fd5332aecb6501f4af08dd016dc580bf8f0', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-18 02:33:39', '2023-03-18 02:33:39', '2024-03-18 03:33:39'),
('e98ae08b52083e4c1b0c566e576354dffd546aa164b4984c7d8c49bda84103586d0e5ed54f4b7bd9', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-08 22:56:14', '2023-10-08 22:56:14', '2024-10-09 00:56:14'),
('e99842ff5ab32edc44fe2f1db4325a347cfa7d59d504bf2ec37974a5e20a78059df1eb8b9deb6d82', 15, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-25 11:34:22', '2023-01-25 11:34:22', '2024-01-25 12:34:22'),
('e9c9fc94bc2bd46af483aeb6dc02ffda0133e551f08aa32d1938af08ae9572c879da806b0da208ef', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-02 15:57:57', '2023-11-02 15:57:57', '2024-11-02 16:57:57'),
('e9faf33d2b8e53190328d4f4ff079a912288be3d76fa8b02c8afd5ed850683a757044a35cb0da23d', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-08-30 01:02:45', '2023-08-30 01:02:45', '2024-08-30 03:02:45'),
('ea222bbc7de6c83a442da4e7d96ec4a37c728cbcbe9a8211fe05829f4a4ea1087198f960c6354740', 106, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 14:08:31', '2023-11-01 14:08:31', '2024-11-01 15:08:31'),
('ea6592554e67fecd542fdb4570c274ea9f04ab68cbec39b82ecfb0630f503827e69a19ed9b1c0ce8', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-09 01:15:59', '2023-10-09 01:15:59', '2024-10-09 03:15:59'),
('ea82f2b5bdf95289199580ea4b300c67fe5c4d750aa68976ded0d20f07488f78e11f1a07007d6cf0', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 01:45:36', '2023-10-07 01:45:36', '2024-10-07 03:45:36'),
('eaae8cd6522e2969fb31d76f70980d3e597a9ba2ce71581369b7c6df01b71fc4a586425878cb8a3c', 25, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-05-17 01:10:25', '2023-05-17 01:10:25', '2024-05-17 03:10:25'),
('eab6f03550cd0e66ff4135627505bcab47a3b1b82d7e99e80becff5f628f14d2aa8992bdabf7274f', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-21 05:14:38', '2023-02-21 05:14:38', '2024-02-21 06:14:38'),
('eb5a00c32dfc25af599d8546d2ed17149b8ffcff722e74264b8d89741d6ce8a2e8232f47820c8a9b', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 23:10:30', '2023-11-04 23:10:30', '2024-11-05 00:10:30'),
('eb7d624db93a12afb7c59ecf9611d55ff2fe758194d172e3a82cf1fcb2b2e7ad183a4bcdc0df860c', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-08-24 02:11:48', '2023-08-24 02:11:48', '2024-08-24 04:11:48'),
('eb8b348f954d77da12d3c4ea34cd4fa3da9c5924a41c716edec185dd1eee7c4253943ca2a2b3300f', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-28 05:19:16', '2023-10-28 05:19:16', '2024-10-28 07:19:16'),
('eb8db6b467a88485f5cfb8ceae6ef3226a02f17f759a900a5ccad6e577fe1fd9a7b3eb28b8999cc9', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-09 01:17:07', '2023-10-09 01:17:07', '2024-10-09 03:17:07'),
('ebca79e2758356be867277719e1d0fce8569a3b0539f96a6921117fe85239eb7e2f140485c111bc7', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-12 04:20:45', '2023-10-12 04:20:45', '2024-10-12 06:20:45'),
('ed251eb424cf28add01d3524a7c2bd18d22a3dbf1c5ff975ad6d4384b0e66cba39d6cc9badaeb47b', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-30 13:07:40', '2023-10-30 13:07:40', '2024-10-30 14:07:40'),
('ed4c6c46524b0041dfd1fc2b6fb0cc3d8baadff9604aab67d218fd3c991511d75e0679976b39fb3e', 111, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 01:08:47', '2023-11-04 01:08:47', '2024-11-04 02:08:47'),
('ed56c4071a304b5fb2ab531731d18870f045752e30e0f74e22bd662237c1b60e9413952f92b92a33', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-02 16:00:22', '2023-11-02 16:00:22', '2024-11-02 17:00:22'),
('edfae38abf8c1d2d854a4fc9d8a7fa6a335a223e08d321da7a36463c0ee1bd1479112c38804c2061', 119, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-06 08:51:02', '2023-11-06 08:51:02', '2024-11-06 09:51:02'),
('ee19b1b69caa0a52782774dc2b48da35c06f335f85f03734374ee6471e1955acdb5fe3f907762dec', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 23:11:15', '2023-11-04 23:11:15', '2024-11-05 00:11:15'),
('ee55f4888dba9982777b0704dfde3893dd2b816ac9fd5df0bfbbf60116f09cbfb4729f494098521e', 89, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 11:20:52', '2023-11-01 11:20:52', '2024-11-01 12:20:52'),
('ee56ed1b9f969a52abe762df27187f2e6a768966a80d73226dba36346a2422862247af2bcd38e57b', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-09 01:17:04', '2023-10-09 01:17:04', '2024-10-09 03:17:04'),
('eef1dcae69dc969d9d26ce1cf70ae743305ff3800e58c5cb62c8a2ddca712bd93561509f274bd2c8', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 23:26:22', '2023-10-10 23:26:22', '2024-10-11 01:26:22'),
('efa598544367d5bff41b2f4c0f660d82625ae53627d58ed6fce0d58914e17875c9cf99f04a0d1c9a', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-05-08 01:30:07', '2023-05-08 01:30:07', '2024-05-08 03:30:07'),
('efd347eccd4ec3f2e74b47c3603329eb77dabd6c132ad99d96e3a9805cc76ec3b548730ea7ce3fd9', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 03:38:58', '2023-10-07 03:38:58', '2024-10-07 05:38:58'),
('f1238917ebe39a3a274af8ec17038d0a1ab09a88ee78d3cb8816771a5d947332464c39e16c64f3e1', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 04:40:27', '2023-01-30 04:40:27', '2024-01-30 05:40:27'),
('f13641acf0bb1caf8b7aa5e6203fc016af77d49cb1191501a865538f1c5025652d2a6d53a8fd9116', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-02 21:43:19', '2023-10-02 21:43:19', '2024-10-02 23:43:19'),
('f16c5153507c6645e5eac3e8a513e7e50cb8c74f7295f321b81200ee5c10abd79e76aadb8fb04895', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-01 23:06:05', '2023-10-01 23:06:05', '2024-10-02 01:06:05'),
('f21c09926c810e29bf4cba5c96ed1f689c46a2d1471a91531b82f0f5576fdc46c234b8de831ed48d', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-30 02:50:20', '2023-09-30 02:50:20', '2024-09-30 04:50:20'),
('f23fb4291c878d579ec1c9deda1c9b584838e2588746e6e3fcde40ae2115bd8cb1cd61c0c3a1c72d', 43, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 02:05:52', '2023-10-07 02:05:52', '2024-10-07 04:05:52'),
('f26812304b69ca1378d80e025973a88cc07ef25d50e944d1412511aa1ca00797370c455dca821381', 53, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-03 16:33:29', '2023-11-03 16:33:29', '2024-11-03 17:33:29'),
('f28cdd9ae35b9d51fc74b6031a1d8919109d9362075d82b32ce3d960a5dc66b282934ff2f5cedceb', 24, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-20 22:47:30', '2023-09-20 22:47:30', '2024-09-21 00:47:30'),
('f2fcf3dbb2bfc15a772a9062c8b7a0d4d46277421bc4f25303595dd4c30cfd43da9f06d915bccd0d', 45, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 02:10:10', '2023-10-07 02:10:10', '2024-10-07 04:10:10'),
('f2ffff08b1ad8f1bf9bd14e660d0383a73e88d980b3a4526feb94df3ea51c909ddaa27148bcc86f5', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-28 08:11:10', '2023-01-28 08:11:10', '2024-01-28 09:11:10'),
('f3290a1c96dac721d09bebd34d38c9f1332737ec2dd8556f93ffb6750a0eb83ee274143233470e8f', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-13 14:07:58', '2023-11-13 14:07:58', '2024-11-13 15:07:58'),
('f34a8631351163b8cfc610b653666531672d4e25eb457160586132bdce2a7a648dee81137d77e027', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-08 22:40:36', '2023-10-08 22:40:36', '2024-10-09 00:40:36'),
('f3bc0d0ade6cf88f03194dabec42d8dcc784601816bf199c5baaa5bd856855d92b3f0226c90f95a3', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-02 22:14:41', '2023-10-02 22:14:41', '2024-10-03 00:14:41'),
('f4061c02591ff8c24081a248f1651e96ce9929978d84ae258005f231a33a717da35041e7bc970fa3', 25, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-05-23 04:08:37', '2023-05-23 04:08:37', '2024-05-23 06:08:37'),
('f4a7c61e6aaca24663a8c26567a66ecd0573f99c1f9809e30838960a29fcb9e74c74203d2ea96ea6', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 21:59:32', '2023-10-10 21:59:32', '2024-10-10 23:59:32'),
('f4b35c67c9883b4fc059213d0e327dbd7a55e87e6c6b7afc024ecd1a66f99cf6a524ac4830505589', 38, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-26 02:38:27', '2023-09-26 02:38:27', '2024-09-26 04:38:27'),
('f4b455a0bf23f208eae7013cceb0eacb9be3e79d574e2f9b6f4877f96a1892af41d4fe0ec89f7e11', 98, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 12:05:46', '2023-11-01 12:05:46', '2024-11-01 13:05:46'),
('f4ddef121010ed434074d730e4a7c2ede64bfec725a076b02464db9f9a3f88faf6b0fe57c3c8f9e7', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-30 02:23:03', '2023-09-30 02:23:03', '2024-09-30 04:23:03'),
('f52d0fe3d6f5da37d10d2f8025d349319936894967881415acad299d5e78dd8d603db4e38009614f', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-16 02:18:12', '2023-10-16 02:18:12', '2024-10-16 04:18:12'),
('f5783920c29b77a7573613a71b6494700cc3255733350cd192c8bb92431557d0acac9c353279ece3', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 00:15:37', '2023-10-03 00:15:37', '2024-10-03 02:15:37'),
('f57da8e55cb991c2750c13385c3c82539740bd31ef1c7258d93915510c67c6bba385a18f0395b0dd', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-13 03:45:50', '2023-02-13 03:45:50', '2024-02-13 04:45:50'),
('f5f2d2e43ef95e3441e32c57d06304585c37f8927d18e504f0c053174d593be297e1078889ea1d7f', 81, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-31 17:08:49', '2023-10-31 17:08:49', '2024-10-31 18:08:49'),
('f6b602970f85cdc3d71c88442a87fadbebe6e3130037778283ebd4eddf12df79b9f77f3cbe0b3622', 38, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-21 00:41:46', '2023-09-21 00:41:46', '2024-09-21 02:41:46'),
('f6eea5e78de48c881d4805efede44cd8d35d4f4762460bb96be6e6e1eadf5c503ab8603575bab438', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-14 14:39:41', '2023-11-14 14:39:41', '2024-11-14 15:39:41'),
('f6f052d6552c464e8315a18d9e02dd94b788bb003fcbed925b2263852ee246f2bb764d0fa2c9a84d', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 01:12:00', '2023-10-10 01:12:00', '2024-10-10 03:12:00'),
('f704929c7bdba06aaa32773cf86f40b0ad89ce2b2a66a96afa497a6a08f108e859c0173200ca495d', 15, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-25 11:06:25', '2023-01-25 11:06:25', '2024-01-25 12:06:25'),
('f7a37452db53d9ccc0f3a4cce80a88ceb4b2d56de3c3c0008ce6712fd49af4614724ad824e9c3ada', 41, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-11 23:30:28', '2023-09-11 23:30:28', '2024-09-12 01:30:28'),
('f7ad20006c03842b5a9a4704ab6a8e24a49e4c8214eca8b11055a9ffb0c3cc9256b161fa3ed6e095', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-09 01:17:05', '2023-10-09 01:17:05', '2024-10-09 03:17:05'),
('f7af53d6f61482bc5f5f43abf47f27558dde6bc5e9cea43e40a475783bfacdf45b4bef43bb413642', 53, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-04 13:44:56', '2023-11-04 13:44:56', '2024-11-04 14:44:56'),
('f7d449978ebed668851cf07c4cee5f04afbaa924c9705f1774616060dc9686eec0990623d0ee9450', 52, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-13 16:55:57', '2023-11-13 16:55:57', '2024-11-13 17:55:57'),
('f80002e7c29cfbd0946212b455da48f82d4bb79835d466da23beceb90a6d94b179669308b1349cb3', 91, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-01 11:34:16', '2023-11-01 11:34:16', '2024-11-01 12:34:16'),
('f894a4c02d76974c1a9226a0a4d249870e6ce61dc040baaa69bef4d1bc4620a274dc073e3c01ba83', 102, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-11-02 10:52:41', '2023-11-02 10:52:41', '2024-11-02 11:52:41'),
('f957d7ef99e109c6accad9b88a8661e0a5359fde8c70804c92b941ddf16563786824cfb56e4aefbf', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 22:39:04', '2023-10-10 22:39:04', '2024-10-11 00:39:04'),
('f992ebb61169c38444add1a77ff6d1994200bae9455566768fd8c61ce46100e27011fac187cc653c', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 10:06:51', '2023-10-10 10:06:51', '2024-10-10 12:06:51'),
('fac374c3a499345833da2d59b46d525df00dacc3d377f255bb14bf86e08f21a7424db41fb06ca42e', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-02 23:37:43', '2023-10-02 23:37:43', '2024-10-03 01:37:43'),
('fac6ec70f9dd0815037f390a0a6f580fcb41b4e62cf8e853a832225ce1cb6a9feaaec7f8b11a250c', 19, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-02-23 04:15:32', '2023-02-23 04:15:32', '2024-02-23 05:15:32'),
('fb1c5faf3fc5fa9165f0eb36a6346daf0bcba502598e0ebd6ae5b12a6846b7b2fb8326756f2d623e', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-10 23:27:29', '2023-10-10 23:27:29', '2024-10-11 01:27:29'),
('fb503b244ee11c171bde02fc5f23a368c2770baf8c0a3b2a8eb5b02ec95238efcf0508e831aa11cd', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-18 01:38:14', '2023-03-18 01:38:14', '2024-03-18 02:38:14'),
('fb5f79e47c75347f85e61197bcc3974ac9491f900948f0b7ac504381ecf90ae9e7602c5f0a792813', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-06 04:39:18', '2023-10-06 04:39:18', '2024-10-06 06:39:18'),
('fb7bf52b97edc268ac1d65e52f0a80afa9768d1c4357926321dc861e584935c4b0cf1ee2b8e98dd0', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 03:38:20', '2023-10-03 03:38:20', '2024-10-03 05:38:20'),
('fbb15e60cc0a341323b780df6efe659a5cf0c237581c7e7dddc596bedc104afbd47867dfd5a717dd', 44, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 02:04:20', '2023-10-07 02:04:20', '2024-10-07 04:04:20'),
('fbc0d5d09de18591c314e04a4926ab81e19fce9049676e6527109215211328bb3c2308f091ceace0', 16, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-01-30 04:08:16', '2023-01-30 04:08:16', '2024-01-30 05:08:16'),
('fe22cd3f16d2c6a0db0c880537f20035697d00f892e05679b00b5947e28dc420d087ff5516f1f89c', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-01 23:18:37', '2023-10-01 23:18:37', '2024-10-02 01:18:37'),
('fe930fb048060c4b88e8c9804a6e4fb5e290e479bd8ae5d15dfd9b71df5ac4b085da7e907f5e75fd', 21, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-04-29 03:27:00', '2023-04-29 03:27:00', '2024-04-29 05:27:00'),
('ff269d475f690187f933226b0aa40133a8f598048eb79724d6baf666e1195ac1b7a440d859848c37', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-02 22:00:10', '2023-10-02 22:00:10', '2024-10-03 00:00:10'),
('ff2b881291796df8c267315a79b6d9ce6b363ff65d6504a95330960a12096078472c71c597fe7b7a', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 01:46:19', '2023-10-03 01:46:19', '2024-10-03 03:46:19'),
('ff2ccbb0c46c61b993d03c0baebb34c67080bf4066f37bc32c9bb02dc08a4c1e9e57321b1cf61f67', 38, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-09-07 01:13:57', '2023-09-07 01:13:57', '2024-09-07 03:13:57');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('ff6b323571c1f853aad62f945cf382ad9de3cc19472c887ed8fc1840b273ca72560fe89ced7bcbaa', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-03 00:08:00', '2023-10-03 00:08:00', '2024-10-03 02:08:00'),
('ff6f6624186503681eebce67ef643d82bbae5413387b167aca898f7472fa616227d2e729955034f0', 42, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-07 03:44:59', '2023-10-07 03:44:59', '2024-10-07 05:44:59'),
('ffeda7a6312f86adabf385c780def7ba7e35febfd5729c2929eb5717a99cb07a673c030ca3163cdf', 36, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-09 01:09:31', '2023-10-09 01:09:31', '2024-10-09 03:09:31'),
('ffeec77a622cc1ad211397ffed6a9b9793b28c5e98a2d7e4429d21b6bf3394de758f2834908d92ca', 37, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-10-01 23:29:52', '2023-10-01 23:29:52', '2024-10-02 01:29:52');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Junaid', 'H8dM7u9Cgv8iGa8IMXPM9DLyIqWpQFHDRaSdMXnZ', NULL, 'http://localhost', 1, 0, 0, '2023-01-25 10:54:08', '2023-01-25 10:54:08');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-01-25 10:54:08', '2023-01-25 10:54:08');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_amount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `coupon_discount_amount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `coupon_discount_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `total_tax_amount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address_id` bigint(20) DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_note` text COLLATE utf8mb4_unicode_ci,
  `order_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'delivery',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivery_charge` decimal(24,2) NOT NULL DEFAULT '0.00',
  `schedule_at` timestamp NULL DEFAULT NULL,
  `callback` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pending` timestamp NULL DEFAULT NULL,
  `accepted` timestamp NULL DEFAULT NULL,
  `confirmed` timestamp NULL DEFAULT NULL,
  `processing` timestamp NULL DEFAULT NULL,
  `handover` timestamp NULL DEFAULT NULL,
  `picked_up` timestamp NULL DEFAULT NULL,
  `rider_accepted` timestamp NULL DEFAULT NULL,
  `arrived_at_vendor` timestamp NULL DEFAULT NULL,
  `arrived_at_customer` timestamp NULL DEFAULT NULL,
  `delivered` timestamp NULL DEFAULT NULL,
  `canceled` timestamp NULL DEFAULT NULL,
  `refund_requested` timestamp NULL DEFAULT NULL,
  `refunded` timestamp NULL DEFAULT NULL,
  `delivery_address` text COLLATE utf8mb4_unicode_ci,
  `scheduled` tinyint(1) NOT NULL DEFAULT '0',
  `restaurant_discount_amount` decimal(24,2) NOT NULL,
  `original_delivery_charge` decimal(24,2) NOT NULL DEFAULT '0.00',
  `failed` timestamp NULL DEFAULT NULL,
  `adjusment` decimal(24,2) NOT NULL DEFAULT '0.00',
  `edited` tinyint(1) NOT NULL DEFAULT '0',
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dm_tips` double(24,2) NOT NULL DEFAULT '0.00',
  `processing_time` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free_delivery_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assign_status` enum('Pending','Assigned','Completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `assign_at` datetime DEFAULT NULL,
  `pending_delivery_man_id` int(11) DEFAULT NULL,
  `is_locked` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_amount`, `coupon_discount_amount`, `coupon_discount_title`, `payment_status`, `order_status`, `total_tax_amount`, `payment_method`, `transaction_reference`, `delivery_address_id`, `delivery_man_id`, `coupon_code`, `order_note`, `order_type`, `checked`, `restaurant_id`, `created_at`, `updated_at`, `delivery_charge`, `schedule_at`, `callback`, `otp`, `pending`, `accepted`, `confirmed`, `processing`, `handover`, `picked_up`, `rider_accepted`, `arrived_at_vendor`, `arrived_at_customer`, `delivered`, `canceled`, `refund_requested`, `refunded`, `delivery_address`, `scheduled`, `restaurant_discount_amount`, `original_delivery_charge`, `failed`, `adjusment`, `edited`, `zone_id`, `dm_tips`, `processing_time`, `free_delivery_by`, `assign_status`, `assign_at`, `pending_delivery_man_id`, `is_locked`) VALUES
(100001, 37, 634.00, 0.00, '', 'unpaid', 'confirmed', 24.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-07 00:58:40', '2023-10-09 21:45:35', 10.00, '2023-10-07 00:58:40', NULL, '8863', '2023-10-07 00:58:40', NULL, '2023-10-07 00:59:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766334\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159077\",\"latitude\":\"30.2260454\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, '25', NULL, 'Pending', NULL, 7, 0),
(100002, 37, 634.00, 0.00, '', 'unpaid', 'delivered', 24.00, 'cash_on_delivery', NULL, NULL, 7, NULL, NULL, 'delivery', 1, 1, '2023-10-07 01:02:48', '2023-10-09 21:45:35', 10.00, '2023-10-07 01:02:48', NULL, '8173', '2023-10-07 01:02:48', NULL, '2023-10-07 01:03:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766334\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159077\",\"latitude\":\"30.2260454\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, '35', NULL, 'Completed', '2023-10-07 15:03:14', 7, 1),
(100003, 37, 634.00, 0.00, '', 'unpaid', 'delivered', 24.00, 'cash_on_delivery', NULL, NULL, 7, NULL, NULL, 'delivery', 1, 1, '2023-10-07 01:18:28', '2023-10-09 21:45:35', 10.00, '2023-10-07 01:18:28', NULL, '7867', '2023-10-07 01:18:28', NULL, '2023-10-07 01:21:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766334\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159077\",\"latitude\":\"30.2260454\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, '25', NULL, 'Completed', '2023-10-07 15:21:47', 7, 1),
(100004, 37, 634.00, 0.00, '', 'unpaid', 'delivered', 24.00, 'cash_on_delivery', NULL, NULL, 7, NULL, NULL, 'delivery', 1, 1, '2023-10-07 01:22:56', '2023-10-09 21:45:35', 10.00, '2023-10-07 01:22:56', NULL, '7754', '2023-10-07 01:22:56', NULL, '2023-10-07 01:23:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766334\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159077\",\"latitude\":\"30.2260454\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, '5', NULL, 'Completed', '2023-10-07 15:23:24', 7, 1),
(100005, 37, 634.00, 0.00, '', 'unpaid', 'canceled', 24.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-07 01:45:53', '2023-10-09 21:45:35', 10.00, '2023-10-07 01:45:53', NULL, '9308', '2023-10-07 01:45:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-07 01:46:26', NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766334\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159077\",\"latitude\":\"30.2260454\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100006, 37, 634.00, 0.00, '', 'unpaid', 'delivered', 24.00, 'cash_on_delivery', NULL, NULL, 7, NULL, NULL, 'delivery', 1, 1, '2023-10-07 01:51:26', '2023-10-09 21:45:35', 10.00, '2023-10-07 01:51:26', NULL, '3688', '2023-10-07 01:51:26', NULL, '2023-10-07 01:51:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766334\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159077\",\"latitude\":\"30.2260454\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, '40', NULL, 'Completed', '2023-10-07 15:58:26', 7, 1),
(100007, 37, 322.00, 0.00, '', 'unpaid', 'pending', 12.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-10 00:03:26', '2023-10-10 00:03:57', 10.00, '2023-10-10 00:03:26', NULL, '1801', '2023-10-10 00:03:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159023\",\"latitude\":\"30.2260666\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100008, 37, 374.00, 0.00, '', 'unpaid', 'canceled', 14.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'dine_in', 1, 1, '2023-10-10 00:18:46', '2023-10-23 22:43:06', 10.00, '2023-10-10 00:18:46', NULL, '8535', '2023-10-10 00:18:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-23 22:43:06', NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159023\",\"latitude\":\"30.2260666\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100009, 37, 634.00, 0.00, '', 'unpaid', 'pending', 24.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-10 00:41:30', '2023-10-10 00:47:05', 10.00, '2023-10-10 00:41:30', NULL, '9470', '2023-10-10 00:41:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159023\",\"latitude\":\"30.2260666\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100010, 37, 374.00, 0.00, '', 'unpaid', 'pending', 14.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-10 00:42:41', '2023-10-10 00:47:05', 10.00, '2023-10-10 00:42:41', NULL, '3776', '2023-10-10 00:42:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159023\",\"latitude\":\"30.2260666\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100011, 37, 634.00, 0.00, '', 'unpaid', 'canceled', 24.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-10 01:34:54', '2023-10-10 04:18:20', 10.00, '2023-10-10 01:34:54', NULL, '6655', '2023-10-10 01:34:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-10 04:18:20', NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159023\",\"latitude\":\"30.2260666\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100012, 37, 634.00, 0.00, '', 'unpaid', 'canceled', 24.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-10 01:41:13', '2023-10-23 22:42:40', 10.00, '2023-10-10 01:41:13', NULL, '3135', '2023-10-10 01:41:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-23 22:42:40', NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159023\",\"latitude\":\"30.2260666\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100013, 42, 634.00, 0.00, '', 'unpaid', 'confirmed', 24.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-10 02:43:11', '2023-10-10 03:04:24', 10.00, '2023-10-10 02:43:11', NULL, '1039', '2023-10-10 02:43:11', NULL, '2023-10-10 02:50:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhmmad Awais\",\"contact_person_number\":\"+923208839689\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, '25', NULL, 'Pending', NULL, NULL, 0),
(100014, 42, 634.00, 0.00, '', 'unpaid', 'canceled', 24.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-11 01:22:26', '2023-10-16 04:06:07', 10.00, '2023-10-11 01:22:26', NULL, '9913', '2023-10-11 01:22:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-16 04:06:07', NULL, NULL, '{\"contact_person_name\":\"Muhmmad Awais\",\"contact_person_number\":\"+923208839689\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100015, 42, 478.00, 0.00, '', 'unpaid', 'disputed', 18.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-11 01:23:19', '2023-10-16 04:07:06', 10.00, '2023-10-11 01:23:19', NULL, '8642', '2023-10-11 01:23:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-16 04:06:52', NULL, NULL, '{\"contact_person_name\":\"Muhmmad Awais\",\"contact_person_number\":\"+923208839689\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100016, 42, 67.00, 0.00, '', 'unpaid', 'disputed', 2.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 1, '2023-10-11 01:30:42', '2023-10-16 23:32:52', 10.00, '2023-10-11 01:30:42', NULL, '5505', '2023-10-11 01:30:42', NULL, '2023-10-11 02:21:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhmmad Awais\",\"contact_person_number\":\"+923208839689\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 175.00, 10.00, NULL, 0.00, 0, 1, 0.00, '35', NULL, 'Assigned', '2023-10-11 16:21:16', 1, 1),
(100017, 42, 36.00, 0.00, '', 'unpaid', 'delivered', 1.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 1, '2023-10-11 02:24:45', '2023-10-18 01:31:42', 10.00, '2023-10-11 02:24:45', NULL, '2129', '2023-10-11 02:24:45', NULL, '2023-10-11 02:25:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhmmad Awais\",\"contact_person_number\":\"+923208839689\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 175.00, 10.00, NULL, 0.00, 0, 1, 0.00, '12', NULL, 'Completed', '2023-10-11 16:26:04', 1, 1),
(100018, 42, 634.00, 0.00, '', 'unpaid', 'arrived_at_customer', 24.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 1, '2023-10-11 02:26:23', '2023-10-20 09:25:56', 10.00, '2023-10-11 02:26:23', NULL, '9855', '2023-10-11 02:26:23', NULL, '2023-10-11 02:26:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhmmad Awais\",\"contact_person_number\":\"+923208839689\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, '18', NULL, 'Assigned', '2023-10-11 16:27:31', 1, 1),
(100019, 37, 634.00, 0.00, '', 'unpaid', 'rider_accepted', 24.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 1, '2023-10-11 02:39:42', '2023-10-11 02:48:49', 10.00, '2023-10-11 02:39:42', NULL, '3391', '2023-10-11 02:39:42', NULL, '2023-10-11 02:40:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, '20', NULL, 'Assigned', '2023-10-11 16:40:50', 1, 1),
(100020, 37, 634.00, 0.00, '', 'unpaid', 'delivered', 24.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 1, '2023-10-11 02:55:48', '2023-10-11 03:03:17', 10.00, '2023-10-11 02:55:48', NULL, '2472', '2023-10-11 02:55:48', NULL, '2023-10-11 02:56:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, '5', NULL, 'Completed', '2023-10-11 16:56:21', 1, 1),
(100021, 37, 36.00, 0.00, '', 'unpaid', 'picked_up', 1.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 1, '2023-10-11 03:43:32', '2023-10-11 03:51:55', 10.00, '2023-10-11 03:43:32', NULL, '7653', '2023-10-11 03:43:32', NULL, '2023-10-11 03:43:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 175.00, 10.00, NULL, 0.00, 0, 1, 0.00, '8', NULL, 'Assigned', '2023-10-11 17:43:58', 1, 1),
(100022, 37, 634.00, 0.00, '', 'unpaid', 'failed', 24.00, 'digital_payment', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-11 03:58:51', '2023-10-11 04:04:20', 10.00, '2023-10-11 03:58:51', NULL, '5229', '2023-10-11 03:58:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100023, 37, 634.00, 0.00, '', 'unpaid', 'failed', 24.00, 'digital_payment', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-11 04:02:51', '2023-10-11 04:04:20', 10.00, '2023-10-11 04:02:51', NULL, '1400', '2023-10-11 04:02:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100024, 37, 634.00, 0.00, '', 'unpaid', 'failed', 24.00, 'digital_payment', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-11 04:09:52', '2023-10-11 21:46:34', 10.00, '2023-10-11 04:09:52', NULL, '4213', '2023-10-11 04:09:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100025, 37, 322.00, 0.00, '', 'unpaid', 'failed', 12.00, 'digital_payment', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-11 04:12:36', '2023-10-11 21:46:34', 10.00, '2023-10-11 04:12:36', NULL, '3445', '2023-10-11 04:12:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100026, 43, -375.00, 0.00, '', 'unpaid', 'canceled', -35.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 5, '2023-10-12 03:47:06', '2023-10-12 03:59:53', 10.00, '2023-10-12 03:47:05', NULL, '6409', '2023-10-12 03:47:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-12 03:59:53', NULL, NULL, '{\"contact_person_name\":\"M Awais\",\"contact_person_number\":\"+923091116550\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159012\",\"latitude\":\"30.2260634\"}', 0, 350.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100027, 43, 65.00, 0.00, '', 'unpaid', 'disputed', 5.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 5, '2023-10-12 04:13:33', '2023-10-26 01:21:37', 10.00, '2023-10-12 04:13:33', NULL, '2897', '2023-10-12 04:13:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-26 01:21:23', NULL, NULL, '{\"contact_person_name\":\"M Awais\",\"contact_person_number\":\"+923091116550\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159012\",\"latitude\":\"30.2260634\"}', 0, 350.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100028, 42, 322.00, 0.00, '', 'unpaid', 'disputed', 12.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-12 04:18:10', '2023-10-16 21:53:11', 10.00, '2023-10-12 04:18:10', NULL, '3114', '2023-10-12 04:18:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-16 21:52:20', NULL, NULL, '{\"contact_person_name\":\"Muhmmad Awais\",\"contact_person_number\":\"+923208839689\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100029, 42, 65.00, 0.00, '', 'unpaid', 'canceled', 5.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 5, '2023-10-12 04:19:27', '2023-10-14 03:50:20', 10.00, '2023-10-12 04:19:27', NULL, '5347', '2023-10-12 04:19:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-13 23:28:40', NULL, NULL, '{\"contact_person_name\":\"Muhmmad Awais\",\"contact_person_number\":\"+923208839689\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 350.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100030, 42, 218.00, 0.00, '', 'unpaid', 'canceled', 8.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-13 03:35:53', '2023-10-14 03:50:20', 10.00, '2023-10-13 03:35:53', NULL, '4834', '2023-10-13 03:35:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-13 23:52:29', NULL, NULL, '{\"contact_person_name\":\"Muhmmad Awais\",\"contact_person_number\":\"+923208839689\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100031, 42, 65.00, 0.00, '', 'unpaid', 'canceled', 5.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 5, '2023-10-13 22:34:15', '2023-10-14 03:50:20', 10.00, '2023-10-13 22:34:15', NULL, '1832', '2023-10-13 22:34:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-13 22:36:54', NULL, NULL, '{\"contact_person_name\":\"Muhmmad Awais\",\"contact_person_number\":\"+923208839689\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 250.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100032, 42, 65.00, 0.00, '', 'unpaid', 'canceled', 5.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 5, '2023-10-13 22:41:15', '2023-10-14 03:50:20', 10.00, '2023-10-13 22:41:15', NULL, '3271', '2023-10-13 22:41:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-13 22:46:21', NULL, NULL, '{\"contact_person_name\":\"Muhmmad Awais\",\"contact_person_number\":\"+923208839689\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 350.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100033, 42, 634.00, 0.00, '', 'unpaid', 'canceled', 24.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-14 00:03:42', '2023-10-16 21:49:24', 10.00, '2023-10-14 00:03:42', NULL, '9258', '2023-10-14 00:03:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-16 21:49:24', NULL, NULL, '{\"contact_person_name\":\"Muhmmad Awais\",\"contact_person_number\":\"+923208839689\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100034, 42, 322.00, 0.00, '', 'unpaid', 'confirmed', 12.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-14 00:15:25', '2023-10-16 01:39:20', 10.00, '2023-10-14 00:15:25', NULL, '2699', '2023-10-14 00:15:25', NULL, '2023-10-16 01:39:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhmmad Awais\",\"contact_person_number\":\"+923208839689\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100035, 42, 634.00, 0.00, '', 'unpaid', 'disputed', 24.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-14 00:26:20', '2023-10-14 03:50:20', 10.00, '2023-10-14 00:26:20', NULL, '1022', '2023-10-14 00:26:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-14 00:30:13', NULL, NULL, '{\"contact_person_name\":\"Muhmmad Awais\",\"contact_person_number\":\"+923208839689\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100036, 42, 120.00, 0.00, '', 'unpaid', 'disputed', 10.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 5, '2023-10-14 00:48:54', '2023-10-16 21:48:25', 10.00, '2023-10-14 00:48:54', NULL, '3721', '2023-10-14 00:48:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-16 21:48:10', NULL, NULL, '{\"contact_person_name\":\"Muhmmad Awais\",\"contact_person_number\":\"+923208839689\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 350.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100037, 42, 361.00, 0.00, '', 'unpaid', 'pending', 12.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-17 00:21:21', '2023-10-17 00:25:27', 49.00, '2023-10-17 00:21:21', NULL, '5135', '2023-10-17 00:21:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhmmad Awais\",\"contact_person_number\":\"+923208839689\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100038, 42, 673.00, 0.00, '', 'unpaid', 'pending', 24.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-17 00:21:55', '2023-10-17 00:25:27', 49.00, '2023-10-17 00:21:55', NULL, '7349', '2023-10-17 00:21:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhmmad Awais\",\"contact_person_number\":\"+923208839689\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100039, 42, 113.00, 0.00, '', 'unpaid', 'pending', 5.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 5, '2023-10-17 00:22:26', '2023-11-04 21:34:09', 58.00, '2023-10-17 00:22:26', NULL, '2231', '2023-10-17 00:22:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhmmad Awais\",\"contact_person_number\":\"+923208839689\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 350.00, 58.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100040, 42, 113.00, 0.00, '', 'unpaid', 'pending', 5.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 5, '2023-10-17 00:31:34', '2023-11-04 21:34:09', 58.00, '2023-10-17 00:31:34', NULL, '9960', '2023-10-17 00:31:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhmmad Awais\",\"contact_person_number\":\"+923208839689\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 350.00, 58.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100041, 42, 463.00, 0.00, '', 'unpaid', 'pending', 35.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 4, '2023-10-17 00:53:27', '2023-10-17 00:53:53', 78.00, '2023-10-17 00:53:27', NULL, '7132', '2023-10-17 00:53:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhmmad Awais\",\"contact_person_number\":\"+923208839689\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 0.00, 78.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100042, 42, 673.00, 0.00, '', 'unpaid', 'pending', 24.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-17 03:21:17', '2023-10-17 03:21:30', 49.00, '2023-10-17 03:21:17', NULL, '6443', '2023-10-17 03:21:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhmmad Awais\",\"contact_person_number\":\"+923208839689\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100043, 42, 673.00, 0.00, '', 'unpaid', 'pending', 24.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-18 01:37:52', '2023-10-19 01:26:06', 49.00, '2023-10-18 01:37:52', NULL, '1409', '2023-10-18 01:37:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhmmad Awais\",\"contact_person_number\":\"+923208839689\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158939\",\"latitude\":\"30.2260706\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100044, 15, 291.00, 0.00, '', 'unpaid', 'pending', 11.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 2, '2023-10-21 04:22:25', '2023-11-04 21:34:09', 10.00, '2023-10-21 04:22:25', NULL, '1247', '2023-10-21 04:22:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Junaid Ali\",\"contact_person_number\":\"+923043372285\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158964\",\"latitude\":\"30.2260073\"}', 0, 13.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100045, 15, 145.00, 0.00, '', 'unpaid', 'pending', 5.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-21 04:26:17', '2023-10-28 04:28:53', 10.00, '2023-10-21 04:26:17', NULL, '2125', '2023-10-21 04:26:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Junaid Ali\",\"contact_person_number\":\"+923043372285\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158964\",\"latitude\":\"30.2260073\"}', 0, 700.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100046, 15, 93.00, 0.00, '', 'unpaid', 'picked_up', 3.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 1, '2023-10-21 04:28:57', '2023-10-28 04:28:53', 10.00, '2023-10-21 04:28:56', NULL, '8990', '2023-10-21 04:28:57', NULL, '2023-10-25 04:19:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Junaid Ali\",\"contact_person_number\":\"+923043372285\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158964\",\"latitude\":\"30.2260073\"}', 0, 350.00, 10.00, NULL, 0.00, 0, 1, 0.00, '12', NULL, 'Assigned', '2023-10-25 18:19:34', 1, 1),
(100047, 37, 673.00, 0.00, '', 'unpaid', 'delivered', 24.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 1, '2023-10-22 21:44:41', '2023-10-28 04:28:53', 49.00, '2023-10-22 21:44:41', NULL, '9566', '2023-10-22 21:44:41', NULL, '2023-10-22 21:45:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158985\",\"latitude\":\"30.2260576\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, '40', NULL, 'Completed', '2023-10-23 11:45:29', 1, 1),
(100048, 37, 361.00, 0.00, '', 'unpaid', 'disputed', 12.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 1, '2023-10-22 22:20:37', '2023-10-28 04:28:53', 49.00, '2023-10-22 22:20:37', NULL, '6778', '2023-10-22 22:20:37', NULL, '2023-10-22 22:21:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158985\",\"latitude\":\"30.2260576\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, '30', NULL, 'Assigned', '2023-10-23 12:21:19', 1, 1),
(100049, 37, 595.00, 0.00, '', 'unpaid', 'disputed', 47.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 4, '2023-10-22 23:38:25', '2023-11-04 21:34:09', 78.00, '2023-10-22 23:38:25', NULL, '3167', '2023-10-22 23:38:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-23 02:41:22', NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158985\",\"latitude\":\"30.2260576\"}', 0, 0.00, 78.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100050, 37, 673.00, 0.00, '', 'unpaid', 'delivered', 24.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 1, '2023-10-23 01:27:07', '2023-10-28 04:28:53', 49.00, '2023-10-23 01:27:07', NULL, '4560', '2023-10-23 01:27:07', NULL, '2023-10-23 01:31:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.515899\",\"latitude\":\"30.2260605\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, '15', NULL, 'Completed', '2023-10-23 15:31:26', 1, 1),
(100051, 37, 463.00, 0.00, '', 'unpaid', 'delivered', 35.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 4, '2023-10-23 01:56:36', '2023-11-04 21:34:09', 78.00, '2023-10-23 01:56:36', NULL, '6977', '2023-10-23 01:56:36', NULL, '2023-10-23 02:00:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.515899\",\"latitude\":\"30.2260605\"}', 0, 0.00, 78.00, NULL, 0.00, 0, 1, 0.00, '17', NULL, 'Completed', '2023-10-23 16:00:57', 1, 1),
(100052, 37, 361.00, 0.00, '', 'unpaid', 'picked_up', 12.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 1, '2023-10-23 02:38:35', '2023-10-28 04:28:53', 49.00, '2023-10-23 02:38:35', NULL, '4883', '2023-10-23 02:38:35', NULL, '2023-10-23 02:38:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.515899\",\"latitude\":\"30.2260605\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, '12', NULL, 'Assigned', '2023-10-23 16:39:11', 1, 1),
(100053, 37, 361.00, 0.00, '', 'unpaid', 'disputed', 12.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-23 03:31:05', '2023-10-28 04:28:53', 49.00, '2023-10-23 03:31:05', NULL, '7361', '2023-10-23 03:31:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-23 21:47:59', NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.515899\",\"latitude\":\"30.2260605\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100054, 37, 465.00, 0.00, '', 'unpaid', 'delivered', 16.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 1, '2023-10-24 01:13:54', '2023-10-28 04:28:53', 49.00, '2023-10-24 01:13:54', NULL, '4908', '2023-10-24 01:13:54', NULL, '2023-10-24 01:14:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Lahore Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.51590056717396\",\"latitude\":\"30.226074864159227\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, '52', NULL, 'Completed', '2023-10-24 15:14:40', 1, 1),
(100055, 37, 673.00, 0.00, '', 'unpaid', 'delivered', 24.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 1, '2023-10-24 03:46:40', '2023-10-28 04:28:53', 49.00, '2023-10-24 03:46:40', NULL, '7658', '2023-10-24 03:46:40', NULL, '2023-10-24 03:47:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Lahore Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.51590794324875\",\"latitude\":\"30.226067042422898\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, '40', NULL, 'Completed', '2023-10-24 17:47:16', 1, 1),
(100056, 37, 464.00, 0.00, '', 'unpaid', 'delivered', 16.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 1, '2023-10-24 22:43:22', '2023-10-28 04:28:53', 48.00, '2023-10-24 22:43:22', NULL, '4736', '2023-10-24 22:43:22', NULL, '2023-10-24 22:43:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Lahore Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.51576645672321\",\"latitude\":\"30.225400744081615\"}', 0, 0.00, 48.00, NULL, 0.00, 0, 1, 0.00, '56', NULL, 'Completed', '2023-10-25 12:43:51', 1, 1),
(100057, 37, 360.00, 0.00, '', 'unpaid', 'delivered', 12.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 1, '2023-10-24 22:51:41', '2023-10-28 04:28:53', 48.00, '2023-10-24 22:51:40', NULL, '6292', '2023-10-24 22:51:41', NULL, '2023-10-24 22:52:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Lahore Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.51570208370686\",\"latitude\":\"30.22547896194684\"}', 0, 0.00, 48.00, NULL, 0.00, 0, 1, 0.00, '32', NULL, 'Completed', '2023-10-25 12:52:18', 1, 1),
(100058, 37, 361.00, 0.00, '', 'unpaid', 'delivered', 12.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 1, '2023-10-24 23:43:51', '2023-10-28 04:28:53', 49.00, '2023-10-24 23:43:51', NULL, '7914', '2023-10-24 23:43:51', NULL, '2023-10-24 23:44:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Lahore Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.51588413864374\",\"latitude\":\"30.22594942660901\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, '50', NULL, 'Completed', '2023-10-25 13:44:18', 1, 1),
(100059, 37, 673.00, 0.00, '', 'unpaid', 'delivered', 24.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 1, '2023-10-25 00:35:00', '2023-10-28 04:28:53', 49.00, '2023-10-25 00:35:00', NULL, '3172', '2023-10-25 00:35:00', NULL, '2023-10-25 00:40:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Lahore Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159260481596\",\"latitude\":\"30.22599577768546\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, '49', NULL, 'Completed', '2023-10-25 14:40:23', 1, 1),
(100060, 37, 360.00, 0.00, '', 'unpaid', 'delivered', 12.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 1, '2023-10-25 00:57:52', '2023-10-28 04:28:53', 48.00, '2023-10-25 00:57:52', NULL, '1348', '2023-10-25 00:57:52', NULL, '2023-10-25 00:58:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Lahore Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.51572991162539\",\"latitude\":\"30.22543753545559\"}', 0, 0.00, 48.00, NULL, 0.00, 0, 1, 0.00, '12', NULL, 'Completed', '2023-10-25 14:58:46', 1, 1),
(100061, 37, 360.00, 0.00, '', 'unpaid', 'delivered', 12.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 1, '2023-10-25 01:01:35', '2023-10-28 04:28:53', 48.00, '2023-10-25 01:01:35', NULL, '5231', '2023-10-25 01:01:35', NULL, '2023-10-25 01:01:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Lahore Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.51577182114124\",\"latitude\":\"30.225646116213284\"}', 0, 0.00, 48.00, NULL, 0.00, 0, 1, 0.00, '8', NULL, 'Completed', '2023-10-25 15:02:05', 1, 1),
(100062, 37, 673.00, 0.00, '', 'unpaid', 'delivered', 24.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 1, '2023-10-25 03:12:11', '2023-10-28 04:28:53', 49.00, '2023-10-25 03:12:11', NULL, '4471', '2023-10-25 03:12:11', NULL, '2023-10-25 03:12:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159255\",\"latitude\":\"30.2259975\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, '46', NULL, 'Completed', '2023-10-25 17:12:50', 1, 1),
(100063, 37, 465.00, 0.00, '', 'unpaid', 'disputed', 16.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 1, '2023-10-25 23:37:14', '2023-10-28 04:28:53', 49.00, '2023-10-25 23:37:14', NULL, '1714', '2023-10-25 23:37:14', NULL, '2023-10-25 23:37:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159255\",\"latitude\":\"30.2259975\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, '2', NULL, 'Assigned', '2023-10-26 13:37:56', 1, 1),
(100064, 43, 465.00, 0.00, '', 'unpaid', 'delivered', 16.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 1, '2023-10-26 01:25:33', '2023-10-28 04:28:53', 49.00, '2023-10-26 01:25:33', NULL, '2637', '2023-10-26 01:25:33', NULL, '2023-10-26 01:25:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"M Awais\",\"contact_person_number\":\"+923091116550\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159255\",\"latitude\":\"30.2259975\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, '25', NULL, 'Completed', '2023-10-26 15:26:17', 1, 1),
(100065, 43, 361.00, 0.00, '', 'unpaid', 'canceled', 12.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-26 01:45:19', '2023-10-28 04:28:53', 49.00, '2023-10-26 01:45:19', NULL, '1410', '2023-10-26 01:45:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-26 01:45:38', NULL, NULL, '{\"contact_person_name\":\"M Awais\",\"contact_person_number\":\"+923091116550\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159255\",\"latitude\":\"30.2259975\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100066, 43, 361.00, 0.00, '', 'unpaid', 'disputed', 12.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-26 02:32:47', '2023-10-28 04:28:53', 49.00, '2023-10-26 02:32:47', NULL, '2416', '2023-10-26 02:32:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-26 02:38:25', NULL, NULL, '{\"contact_person_name\":\"M Awais\",\"contact_person_number\":\"+923091116550\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159255\",\"latitude\":\"30.2259975\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100067, 37, 361.00, 0.00, '', 'unpaid', 'canceled', 12.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-26 03:03:45', '2023-10-28 04:28:53', 49.00, '2023-10-26 03:03:44', NULL, '5673', '2023-10-26 03:03:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-26 03:03:55', NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159255\",\"latitude\":\"30.2259975\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100068, 37, 361.00, 0.00, '', 'unpaid', 'disputed', 12.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-26 03:12:25', '2023-10-28 04:28:53', 49.00, '2023-10-26 03:12:25', NULL, '7456', '2023-10-26 03:12:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-26 03:12:37', NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159255\",\"latitude\":\"30.2259975\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100069, 37, 361.00, 0.00, '', 'unpaid', 'disputed', 12.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-26 03:16:01', '2023-10-28 04:28:53', 49.00, '2023-10-26 03:16:01', NULL, '2471', '2023-10-26 03:16:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-26 03:16:15', NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159255\",\"latitude\":\"30.2259975\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100070, 37, 361.00, 0.00, '', 'unpaid', 'disputed', 12.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-26 03:18:17', '2023-10-28 04:28:53', 49.00, '2023-10-26 03:18:17', NULL, '5993', '2023-10-26 03:18:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-26 03:18:33', NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159255\",\"latitude\":\"30.2259975\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100071, 52, 416.00, 0.00, '', 'unpaid', 'pending', 14.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-28 05:37:52', '2023-10-28 05:43:30', 51.00, '2023-10-28 05:37:52', NULL, '7079', '2023-10-28 05:37:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12376780\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5249154\",\"latitude\":\"30.157458\"}', 0, 0.00, 51.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100072, 53, -58.00, 0.00, '', 'unpaid', 'pending', -4.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'dine_in', 1, 1, '2023-10-29 11:53:07', '2023-10-29 22:02:46', 51.00, '2023-10-29 11:53:07', NULL, '9313', '2023-10-29 11:53:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Moeed Moeed\",\"contact_person_number\":\"923039203804\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5249154\",\"latitude\":\"30.157458\"}', 0, 525.00, 51.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0);
INSERT INTO `orders` (`id`, `user_id`, `order_amount`, `coupon_discount_amount`, `coupon_discount_title`, `payment_status`, `order_status`, `total_tax_amount`, `payment_method`, `transaction_reference`, `delivery_address_id`, `delivery_man_id`, `coupon_code`, `order_note`, `order_type`, `checked`, `restaurant_id`, `created_at`, `updated_at`, `delivery_charge`, `schedule_at`, `callback`, `otp`, `pending`, `accepted`, `confirmed`, `processing`, `handover`, `picked_up`, `rider_accepted`, `arrived_at_vendor`, `arrived_at_customer`, `delivered`, `canceled`, `refund_requested`, `refunded`, `delivery_address`, `scheduled`, `restaurant_discount_amount`, `original_delivery_charge`, `failed`, `adjusment`, `edited`, `zone_id`, `dm_tips`, `processing_time`, `free_delivery_by`, `assign_status`, `assign_at`, `pending_delivery_man_id`, `is_locked`) VALUES
(100073, 37, 361.00, 0.00, '', 'unpaid', 'pending', 12.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 12:56:03', '2023-10-31 11:41:44', 49.00, '2023-10-30 12:56:03', NULL, '9808', '2023-10-30 12:56:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159255\",\"latitude\":\"30.2259975\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100074, 52, 420.00, 0.00, '', 'unpaid', 'pending', 29.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 6, '2023-10-30 13:05:55', '2023-10-30 13:10:35', 106.00, '2023-10-30 13:05:55', NULL, '1850', '2023-10-30 13:05:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12376780\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"74.35874729999999\",\"latitude\":\"31.5203696\"}', 0, 7.00, 106.00, NULL, 0.00, 0, 5, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100075, 37, 361.00, 0.00, '', 'unpaid', 'pending', 12.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 13:15:31', '2023-10-31 11:41:44', 49.00, '2023-10-30 13:15:31', NULL, '3210', '2023-10-30 13:15:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159255\",\"latitude\":\"30.2259975\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100076, 21, 6142.00, 0.00, '', 'unpaid', 'pending', 236.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 13:21:01', '2023-10-31 11:41:44', 10.00, '2023-10-30 13:21:01', NULL, '5321', '2023-10-30 13:21:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhammad Muhammad\",\"contact_person_number\":\"1234567899\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158934\",\"latitude\":\"30.2260578\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100077, 21, 6142.00, 0.00, '', 'unpaid', 'pending', 236.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 13:22:56', '2023-10-31 11:41:44', 10.00, '2023-10-30 13:22:56', NULL, '8926', '2023-10-30 13:22:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhammad Muhammad\",\"contact_person_number\":\"1234567899\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158934\",\"latitude\":\"30.2260578\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100078, 21, 6142.00, 0.00, '', 'unpaid', 'pending', 236.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 13:23:18', '2023-10-31 11:41:44', 10.00, '2023-10-30 13:23:18', NULL, '7428', '2023-10-30 13:23:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhammad Muhammad\",\"contact_person_number\":\"1234567899\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158934\",\"latitude\":\"30.2260578\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100079, 21, 6142.00, 0.00, '', 'unpaid', 'pending', 236.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 13:23:45', '2023-10-31 11:41:44', 10.00, '2023-10-30 13:23:45', NULL, '1314', '2023-10-30 13:23:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhammad Muhammad\",\"contact_person_number\":\"1234567899\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158934\",\"latitude\":\"30.2260578\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100080, 21, 6142.00, 0.00, '', 'unpaid', 'pending', 236.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 13:24:07', '2023-10-31 11:41:44', 10.00, '2023-10-30 13:24:07', NULL, '9623', '2023-10-30 13:24:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhammad Muhammad\",\"contact_person_number\":\"1234567899\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158934\",\"latitude\":\"30.2260578\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100081, 21, 6142.00, 0.00, '', 'unpaid', 'pending', 236.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 13:26:17', '2023-10-31 11:41:44', 10.00, '2023-10-30 13:26:17', NULL, '1929', '2023-10-30 13:26:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhammad Muhammad\",\"contact_person_number\":\"1234567899\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158934\",\"latitude\":\"30.2260578\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100082, 52, 365.00, 0.00, '', 'unpaid', 'pending', 24.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 6, '2023-10-30 13:30:01', '2023-11-04 21:34:09', 106.00, '2023-10-30 13:30:01', NULL, '3275', '2023-10-30 13:30:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12376780\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"74.35874729999999\",\"latitude\":\"31.5203696\"}', 0, 7.00, 106.00, NULL, 0.00, 0, 5, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100083, 53, -173.00, 0.00, '', 'unpaid', 'pending', -9.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 14:37:18', '2023-10-31 11:41:44', 51.00, '2023-10-30 14:37:18', NULL, '5584', '2023-10-30 14:37:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Moeed Moeed\",\"contact_person_number\":\"923039203804\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5249154\",\"latitude\":\"30.157458\"}', 0, 525.00, 51.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100084, 53, -173.00, 0.00, '', 'unpaid', 'pending', -9.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 14:37:57', '2023-10-31 11:41:44', 51.00, '2023-10-30 14:37:57', NULL, '6305', '2023-10-30 14:37:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Moeed Moeed\",\"contact_person_number\":\"923039203804\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5249154\",\"latitude\":\"30.157458\"}', 0, 525.00, 51.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100085, 53, -173.00, 0.00, '', 'unpaid', 'pending', -9.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 14:37:58', '2023-10-31 11:41:44', 51.00, '2023-10-30 14:37:58', NULL, '5161', '2023-10-30 14:37:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Moeed Moeed\",\"contact_person_number\":\"923039203804\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5249154\",\"latitude\":\"30.157458\"}', 0, 525.00, 51.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100086, 53, -173.00, 0.00, '', 'unpaid', 'pending', -9.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 14:37:59', '2023-10-31 11:41:44', 51.00, '2023-10-30 14:37:59', NULL, '5180', '2023-10-30 14:37:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Moeed Moeed\",\"contact_person_number\":\"923039203804\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5249154\",\"latitude\":\"30.157458\"}', 0, 525.00, 51.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100087, 53, -173.00, 0.00, '', 'unpaid', 'pending', -9.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 14:38:00', '2023-10-31 11:41:44', 51.00, '2023-10-30 14:38:00', NULL, '9682', '2023-10-30 14:38:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Moeed Moeed\",\"contact_person_number\":\"923039203804\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5249154\",\"latitude\":\"30.157458\"}', 0, 525.00, 51.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100088, 53, -173.00, 0.00, '', 'unpaid', 'pending', -9.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 14:38:03', '2023-10-31 11:41:44', 51.00, '2023-10-30 14:38:02', NULL, '8548', '2023-10-30 14:38:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Moeed Moeed\",\"contact_person_number\":\"923039203804\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5249154\",\"latitude\":\"30.157458\"}', 0, 525.00, 51.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100089, 53, -173.00, 0.00, '', 'unpaid', 'pending', -9.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 14:38:04', '2023-10-31 11:41:44', 51.00, '2023-10-30 14:38:04', NULL, '1181', '2023-10-30 14:38:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Moeed Moeed\",\"contact_person_number\":\"923039203804\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5249154\",\"latitude\":\"30.157458\"}', 0, 525.00, 51.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100090, 53, -173.00, 0.00, '', 'unpaid', 'pending', -9.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 14:38:05', '2023-10-31 11:41:44', 51.00, '2023-10-30 14:38:05', NULL, '4652', '2023-10-30 14:38:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Moeed Moeed\",\"contact_person_number\":\"923039203804\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5249154\",\"latitude\":\"30.157458\"}', 0, 525.00, 51.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100091, 53, -173.00, 0.00, '', 'unpaid', 'pending', -9.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 14:38:07', '2023-10-31 11:41:44', 51.00, '2023-10-30 14:38:07', NULL, '5547', '2023-10-30 14:38:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Moeed Moeed\",\"contact_person_number\":\"923039203804\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5249154\",\"latitude\":\"30.157458\"}', 0, 525.00, 51.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100092, 53, -173.00, 0.00, '', 'unpaid', 'disputed', -9.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 14:38:10', '2023-10-31 11:41:44', 51.00, '2023-10-30 14:38:10', NULL, '7451', '2023-10-30 14:38:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-30 23:03:05', NULL, NULL, '{\"contact_person_name\":\"Moeed Moeed\",\"contact_person_number\":\"923039203804\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5249154\",\"latitude\":\"30.157458\"}', 0, 525.00, 51.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100093, 53, -173.00, 0.00, '', 'unpaid', 'pending', -9.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 14:38:22', '2023-10-31 11:41:44', 51.00, '2023-10-30 14:38:22', NULL, '4332', '2023-10-30 14:38:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Moeed Moeed\",\"contact_person_number\":\"923039203804\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5249154\",\"latitude\":\"30.157458\"}', 0, 525.00, 51.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100094, 53, 581.00, 0.00, '', 'unpaid', 'pending', 20.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 14:40:14', '2023-10-31 11:41:44', 51.00, '2023-10-30 14:40:14', NULL, '1143', '2023-10-30 14:40:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Moeed Moeed\",\"contact_person_number\":\"923039203804\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5249154\",\"latitude\":\"30.157458\"}', 0, 0.00, 51.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100095, 52, 420.00, 0.00, '', 'unpaid', 'pending', 29.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 6, '2023-10-30 14:51:58', '2023-11-04 21:34:09', 106.00, '2023-10-30 14:51:58', NULL, '6576', '2023-10-30 14:51:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12376780\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"74.35874729999999\",\"latitude\":\"31.5203696\"}', 0, 7.00, 106.00, NULL, 0.00, 0, 5, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100096, 52, 416.00, 0.00, '', 'unpaid', 'pending', 14.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 14:55:12', '2023-10-31 11:41:44', 51.00, '2023-10-30 14:55:12', NULL, '3257', '2023-10-30 14:55:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12376780\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5249154\",\"latitude\":\"30.157458\"}', 0, 0.00, 51.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100097, 52, 420.00, 0.00, '', 'unpaid', 'pending', 29.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 6, '2023-10-30 15:06:04', '2023-11-04 21:34:09', 106.00, '2023-10-30 15:06:04', NULL, '2113', '2023-10-30 15:06:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12376780\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"74.35874729999999\",\"latitude\":\"31.5203696\"}', 0, 7.00, 106.00, NULL, 0.00, 0, 5, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100098, 52, 416.00, 0.00, '', 'unpaid', 'pending', 14.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 15:14:35', '2023-10-31 11:41:44', 51.00, '2023-10-30 15:14:35', NULL, '5790', '2023-10-30 15:14:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12376780\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5249154\",\"latitude\":\"30.157458\"}', 0, 0.00, 51.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100099, 52, 416.00, 0.00, '', 'unpaid', 'pending', 14.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 15:17:06', '2023-10-31 11:41:44', 51.00, '2023-10-30 15:17:06', NULL, '5825', '2023-10-30 15:17:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12376780\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5249154\",\"latitude\":\"30.157458\"}', 0, 0.00, 51.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100100, 37, 361.00, 0.00, '', 'unpaid', 'pending', 12.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 15:18:39', '2023-10-31 11:41:44', 49.00, '2023-10-30 15:18:39', NULL, '6601', '2023-10-30 15:18:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159255\",\"latitude\":\"30.2259975\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100101, 37, 361.00, 0.00, '', 'unpaid', 'pending', 12.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 15:18:54', '2023-10-31 11:41:44', 49.00, '2023-10-30 15:18:54', NULL, '7819', '2023-10-30 15:18:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159255\",\"latitude\":\"30.2259975\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100102, 37, 361.00, 0.00, '', 'unpaid', 'pending', 12.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 15:19:52', '2023-10-31 11:41:44', 49.00, '2023-10-30 15:19:52', NULL, '5458', '2023-10-30 15:19:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159255\",\"latitude\":\"30.2259975\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100103, 37, 361.00, 0.00, '', 'unpaid', 'pending', 12.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 15:20:19', '2023-10-31 11:41:44', 49.00, '2023-10-30 15:20:19', NULL, '1897', '2023-10-30 15:20:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159255\",\"latitude\":\"30.2259975\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100104, 37, 361.00, 0.00, '', 'unpaid', 'pending', 12.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 15:52:10', '2023-10-31 11:41:44', 49.00, '2023-10-30 15:52:10', NULL, '9953', '2023-10-30 15:52:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159255\",\"latitude\":\"30.2259975\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100105, 37, 361.00, 0.00, '', 'unpaid', 'pending', 12.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 15:52:34', '2023-10-31 11:41:44', 49.00, '2023-10-30 15:52:34', NULL, '4125', '2023-10-30 15:52:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159255\",\"latitude\":\"30.2259975\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100106, 37, 361.00, 0.00, '', 'unpaid', 'pending', 12.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-30 15:54:26', '2023-10-31 11:41:44', 49.00, '2023-10-30 15:54:26', NULL, '6586', '2023-10-30 15:54:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159255\",\"latitude\":\"30.2259975\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100107, 52, 641.00, 0.00, '', 'unpaid', 'pending', 23.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-31 10:09:57', '2023-10-31 11:41:44', 40.00, '2023-10-31 10:09:57', NULL, '4094', '2023-10-31 10:09:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12376780\",\"address_type\":\"Delivery\",\"address\":\"Multan City, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.4536835\",\"latitude\":\"30.169372\"}', 0, 175.00, 40.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100108, 52, 544.00, 0.00, '', 'unpaid', 'pending', 19.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-31 10:21:21', '2023-10-31 11:41:44', 40.00, '2023-10-31 10:21:21', NULL, '5127', '2023-10-31 10:21:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12376780\",\"address_type\":\"Delivery\",\"address\":\"Multan City, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.4536835\",\"latitude\":\"30.169372\"}', 0, 175.00, 40.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100109, 52, 1200.00, 200.00, 'First Order Coupon', 'unpaid', 'pending', 45.00, 'cash_on_delivery', NULL, NULL, NULL, 'FIRSTORDER', NULL, 'delivery', 1, 1, '2023-10-31 10:26:49', '2023-10-31 11:41:44', 40.00, '2023-10-31 10:26:49', NULL, '6257', '2023-10-31 10:26:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12376780\",\"address_type\":\"Delivery\",\"address\":\"Multan City, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.4536835\",\"latitude\":\"30.169372\"}', 0, 350.00, 40.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100110, 52, 405.00, 0.00, '', 'unpaid', 'pending', 14.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-31 11:58:04', '2023-11-04 01:52:02', 40.00, '2023-10-31 11:58:04', NULL, '4099', '2023-10-31 11:58:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12376780\",\"address_type\":\"Delivery\",\"address\":\"Multan City, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.4536835\",\"latitude\":\"30.169372\"}', 0, 0.00, 40.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100111, 52, 1095.00, 200.00, 'First Order Coupon', 'unpaid', 'pending', 41.00, 'cash_on_delivery', NULL, NULL, NULL, 'FIRSTORDER', NULL, 'delivery', 1, 1, '2023-10-31 12:00:04', '2023-11-04 01:52:02', 40.00, '2023-10-31 12:00:04', NULL, '9195', '2023-10-31 12:00:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12376780\",\"address_type\":\"Delivery\",\"address\":\"Multan City, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.4536835\",\"latitude\":\"30.169372\"}', 0, 650.00, 40.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100112, 37, 153.00, 200.00, 'First Order Coupon', 'unpaid', 'pending', 4.00, 'cash_on_delivery', NULL, NULL, NULL, 'FIRSTORDER', NULL, 'delivery', 1, 1, '2023-10-31 12:00:55', '2023-11-04 01:52:02', 49.00, '2023-10-31 12:00:55', NULL, '5757', '2023-10-31 12:00:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159016\",\"latitude\":\"30.2260671\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100113, 37, 663.00, 10.00, 'Azadi Offer', 'unpaid', 'pending', 24.00, 'cash_on_delivery', NULL, NULL, NULL, 'AZADI14', NULL, 'delivery', 1, 1, '2023-10-31 12:03:28', '2023-11-04 01:52:02', 49.00, '2023-10-31 12:03:28', NULL, '2263', '2023-10-31 12:03:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159016\",\"latitude\":\"30.2260671\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100114, 52, 607.00, 200.00, 'First Order Coupon', 'unpaid', 'pending', 22.00, 'cash_on_delivery', NULL, NULL, NULL, 'FIRSTORDER', NULL, 'delivery', 1, 1, '2023-10-31 12:06:07', '2023-11-04 01:52:02', 40.00, '2023-10-31 12:06:06', NULL, '9234', '2023-10-31 12:06:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12376780\",\"address_type\":\"Delivery\",\"address\":\"Multan City, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.4536835\",\"latitude\":\"30.169372\"}', 0, 475.00, 40.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100115, 37, 465.00, 200.00, 'First Order Coupon', 'unpaid', 'pending', 16.00, 'cash_on_delivery', NULL, NULL, NULL, 'FIRSTORDER', NULL, 'delivery', 1, 1, '2023-10-31 12:10:33', '2023-11-04 01:52:02', 49.00, '2023-10-31 12:10:33', NULL, '3663', '2023-10-31 12:10:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159016\",\"latitude\":\"30.2260671\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100116, 52, 815.00, 0.00, '', 'unpaid', 'pending', 30.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-31 12:14:13', '2023-11-04 01:52:02', 40.00, '2023-10-31 12:14:13', NULL, '7441', '2023-10-31 12:14:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12376780\",\"address_type\":\"Delivery\",\"address\":\"Multan City, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.4536835\",\"latitude\":\"30.169372\"}', 0, 475.00, 40.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100117, 37, 465.00, 200.00, 'First Order Coupon', 'unpaid', 'pending', 16.00, 'cash_on_delivery', NULL, NULL, NULL, 'FIRSTORDER', NULL, 'delivery', 1, 1, '2023-10-31 12:23:20', '2023-11-04 01:52:02', 49.00, '2023-10-31 12:23:20', NULL, '7795', '2023-10-31 12:23:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159016\",\"latitude\":\"30.2260671\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100118, 37, 153.00, 200.00, 'First Order Coupon', 'unpaid', 'pending', 4.00, 'cash_on_delivery', NULL, NULL, NULL, 'FIRSTORDER', NULL, 'delivery', 1, 1, '2023-10-31 12:24:42', '2023-11-04 01:52:02', 49.00, '2023-10-31 12:24:42', NULL, '8037', '2023-10-31 12:24:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159016\",\"latitude\":\"30.2260671\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100119, 37, 663.00, 10.00, 'Azadi Offer', 'unpaid', 'pending', 24.00, 'cash_on_delivery', NULL, NULL, NULL, 'AZADI14', NULL, 'delivery', 1, 1, '2023-10-31 12:30:13', '2023-11-04 01:52:02', 49.00, '2023-10-31 12:30:13', NULL, '8324', '2023-10-31 12:30:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159016\",\"latitude\":\"30.2260671\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100120, 37, 560.00, 200.00, 'First Order Coupon', 'unpaid', 'pending', 20.00, 'cash_on_delivery', NULL, NULL, NULL, 'FIRSTORDER', NULL, 'delivery', 1, 1, '2023-10-31 12:39:55', '2023-11-04 01:52:02', 49.00, '2023-10-31 12:39:54', NULL, '3349', '2023-10-31 12:39:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159016\",\"latitude\":\"30.2260671\"}', 0, 350.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100121, 52, 611.00, 200.00, 'First Order Coupon', 'unpaid', 'pending', 22.00, 'cash_on_delivery', NULL, NULL, NULL, 'FIRSTORDER', NULL, 'delivery', 1, 1, '2023-10-31 12:43:45', '2023-11-04 01:52:02', 40.00, '2023-10-31 12:43:45', NULL, '8038', '2023-10-31 12:43:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12376780\",\"address_type\":\"Delivery\",\"address\":\"Multan City, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.4536835\",\"latitude\":\"30.169372\"}', 0, 475.00, 40.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100122, 52, 251.00, 0.00, '', 'unpaid', 'pending', 8.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-31 12:50:57', '2023-11-04 01:52:02', 40.00, '2023-10-31 12:50:56', NULL, '3145', '2023-10-31 12:50:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12376780\",\"address_type\":\"Delivery\",\"address\":\"Multan City, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.4536835\",\"latitude\":\"30.169372\"}', 0, 300.00, 40.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100123, 52, 175.00, 0.00, '', 'unpaid', 'pending', 5.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-31 12:54:41', '2023-11-04 01:52:02', 40.00, '2023-10-31 12:54:41', NULL, '9460', '2023-10-31 12:54:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12376780\",\"address_type\":\"Delivery\",\"address\":\"Multan City, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.4536835\",\"latitude\":\"30.169372\"}', 0, 300.00, 40.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100124, 52, 486.00, 0.00, '', 'unpaid', 'pending', 17.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-31 12:59:50', '2023-11-04 01:52:02', 40.00, '2023-10-31 12:59:49', NULL, '9745', '2023-10-31 12:59:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12376780\",\"address_type\":\"Delivery\",\"address\":\"Multan City, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.4536835\",\"latitude\":\"30.169372\"}', 0, 1.00, 40.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100125, 21, 6142.00, 0.00, '', 'unpaid', 'pending', 236.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-31 14:55:04', '2023-11-04 01:52:02', 10.00, '2023-10-31 14:55:04', NULL, '2746', '2023-10-31 14:55:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhammad Muhammad\",\"contact_person_number\":\"1234567899\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158934\",\"latitude\":\"30.2260578\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100126, 21, 6142.00, 0.00, '', 'unpaid', 'pending', 236.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-31 14:59:02', '2023-11-04 01:52:02', 10.00, '2023-10-31 14:59:02', NULL, '3192', '2023-10-31 14:59:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhammad Muhammad\",\"contact_person_number\":\"1234567899\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158934\",\"latitude\":\"30.2260578\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100127, 21, 6142.00, 0.00, '', 'unpaid', 'pending', 236.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-31 15:01:24', '2023-11-04 01:52:02', 10.00, '2023-10-31 15:01:24', NULL, '7683', '2023-10-31 15:01:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhammad Muhammad\",\"contact_person_number\":\"1234567899\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158934\",\"latitude\":\"30.2260578\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100128, 21, 6142.00, 0.00, '', 'unpaid', 'pending', 236.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-31 15:04:10', '2023-11-04 01:52:02', 10.00, '2023-10-31 15:04:10', NULL, '5143', '2023-10-31 15:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhammad Muhammad\",\"contact_person_number\":\"1234567899\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158934\",\"latitude\":\"30.2260578\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100129, 21, 6142.00, 0.00, '', 'unpaid', 'pending', 236.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-31 15:05:05', '2023-11-04 01:52:02', 10.00, '2023-10-31 15:05:05', NULL, '2573', '2023-10-31 15:05:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhammad Muhammad\",\"contact_person_number\":\"1234567899\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158934\",\"latitude\":\"30.2260578\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100130, 21, 6142.00, 0.00, '', 'unpaid', 'pending', 236.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-31 15:06:06', '2023-11-04 01:52:02', 10.00, '2023-10-31 15:06:06', NULL, '4618', '2023-10-31 15:06:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhammad Muhammad\",\"contact_person_number\":\"1234567899\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158934\",\"latitude\":\"30.2260578\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100131, 21, 6142.00, 0.00, '', 'unpaid', 'pending', 236.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-31 15:07:37', '2023-11-04 01:52:02', 10.00, '2023-10-31 15:07:37', NULL, '8219', '2023-10-31 15:07:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhammad Muhammad\",\"contact_person_number\":\"1234567899\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158934\",\"latitude\":\"30.2260578\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100132, 21, 6142.00, 0.00, '', 'unpaid', 'pending', 236.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-31 15:07:57', '2023-11-04 01:52:02', 10.00, '2023-10-31 15:07:57', NULL, '6227', '2023-10-31 15:07:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhammad Muhammad\",\"contact_person_number\":\"1234567899\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158934\",\"latitude\":\"30.2260578\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100133, 21, 6142.00, 0.00, '', 'unpaid', 'pending', 236.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-31 15:08:15', '2023-11-04 01:52:02', 10.00, '2023-10-31 15:08:15', NULL, '6027', '2023-10-31 15:08:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhammad Muhammad\",\"contact_person_number\":\"1234567899\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158934\",\"latitude\":\"30.2260578\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100134, 21, 6142.00, 0.00, '', 'unpaid', 'pending', 236.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-31 15:09:46', '2023-11-04 01:52:02', 10.00, '2023-10-31 15:09:46', NULL, '6167', '2023-10-31 15:09:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhammad Muhammad\",\"contact_person_number\":\"1234567899\",\"address_type\":\"Delivery\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5158934\",\"latitude\":\"30.2260578\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100135, 37, 413.00, 0.00, '', 'unpaid', 'pending', 14.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-31 15:14:16', '2023-11-04 01:52:02', 49.00, '2023-10-31 15:14:16', NULL, '7919', '2023-10-31 15:14:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159016\",\"latitude\":\"30.2260671\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100136, 37, 361.00, 0.00, '', 'unpaid', 'pending', 12.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-31 15:15:14', '2023-11-04 01:52:02', 49.00, '2023-10-31 15:15:14', NULL, '3599', '2023-10-31 15:15:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159016\",\"latitude\":\"30.2260671\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100137, 37, 361.00, 0.00, '', 'unpaid', 'pending', 12.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-31 15:16:36', '2023-11-04 01:52:02', 49.00, '2023-10-31 15:16:36', NULL, '5855', '2023-10-31 15:16:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Mr Awais\",\"contact_person_number\":\"+923279766335\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159016\",\"latitude\":\"30.2260671\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100138, 52, 675.00, 0.00, '', 'unpaid', 'pending', 24.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-31 16:02:21', '2023-11-04 01:52:02', 51.00, '2023-10-31 16:02:21', NULL, '8004', '2023-10-31 16:02:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12376780\",\"address_type\":\"Delivery\",\"address\":\"Multan, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5249154\",\"latitude\":\"30.157458\"}', 0, 0.00, 51.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100139, 52, 727.00, 0.00, '', 'unpaid', 'handover', 26.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-31 16:17:00', '2023-11-04 01:52:02', 51.00, '2023-10-31 16:17:00', NULL, '5816', '2023-10-31 16:17:00', NULL, '2023-10-31 16:18:50', NULL, '2023-10-31 16:19:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12376780\",\"address_type\":\"Delivery\",\"address\":\"Multan, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5249154\",\"latitude\":\"30.157458\"}', 0, 0.00, 51.00, NULL, 0.00, 0, 1, 0.00, '50', NULL, 'Pending', NULL, 1, 0),
(100140, 31, 496.00, 0.00, '', 'unpaid', 'pending', 17.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-31 16:35:03', '2023-11-04 01:52:02', 49.00, '2023-10-31 16:35:03', NULL, '9802', '2023-10-31 16:35:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Kiddy Ways\",\"contact_person_number\":\"+923038097676\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159173\",\"latitude\":\"30.2260791\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100141, 52, 445.00, 0.00, '', 'unpaid', 'pending', 15.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-31 17:07:08', '2023-11-04 01:52:02', 51.00, '2023-10-31 17:07:08', NULL, '3406', '2023-10-31 17:07:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12376780\",\"address_type\":\"Delivery\",\"address\":\"Multan, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5249154\",\"latitude\":\"30.157458\"}', 0, 1.00, 51.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100142, 81, 673.00, 0.00, '', 'unpaid', 'pending', 24.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-10-31 17:10:18', '2023-11-04 01:52:02', 49.00, '2023-10-31 17:10:18', NULL, '7426', '2023-10-31 17:10:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"maki zubair ijaz\",\"contact_person_number\":\"+923099941374\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159877\",\"latitude\":\"30.2260461\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100143, 102, 673.00, 0.00, '', 'unpaid', 'confirmed', 24.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-11-01 12:27:50', '2023-11-04 01:52:02', 49.00, '2023-11-01 12:27:50', NULL, '6529', '2023-11-01 12:27:50', NULL, '2023-11-01 12:28:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhammad Awais\",\"contact_person_number\":\"+923091116550\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.51590760797262\",\"latitude\":\"30.226067042422898\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, '50', NULL, 'Pending', NULL, NULL, 0),
(100144, 15, 465.00, 0.00, '', 'unpaid', 'pending', 16.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-11-04 16:36:59', '2023-11-04 21:33:45', 49.00, '2023-11-04 16:36:59', NULL, '5481', '2023-11-04 16:36:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Junaid Junaid\",\"contact_person_number\":\"+923043372285\",\"address_type\":\"Delivery\",\"address\":\"6GG8+C8Q, Main Madni St, Gulraiz Town, Multan, Punjab 60000, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.516126\",\"latitude\":\"30.226006\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100145, 15, 1089.00, 0.00, '', 'unpaid', 'pending', 40.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-11-04 16:43:36', '2023-11-04 21:33:45', 49.00, '2023-11-04 16:43:36', NULL, '1154', '2023-11-04 16:43:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Junaid Junaid\",\"contact_person_number\":\"+923043372285\",\"address_type\":\"Delivery\",\"address\":\"6GG8+C8Q, Main Madni St, Gulraiz Town, Multan, Punjab 60000, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.516126\",\"latitude\":\"30.226006\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100146, 109, 423.00, 0.00, '', 'unpaid', 'pending', 14.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-11-04 17:31:47', '2023-11-04 21:33:45', 49.00, '2023-11-04 17:31:47', NULL, '1730', '2023-11-04 17:31:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mr v\",\"contact_person_number\":\"+923091116550\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159266\",\"latitude\":\"30.226007\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0);
INSERT INTO `orders` (`id`, `user_id`, `order_amount`, `coupon_discount_amount`, `coupon_discount_title`, `payment_status`, `order_status`, `total_tax_amount`, `payment_method`, `transaction_reference`, `delivery_address_id`, `delivery_man_id`, `coupon_code`, `order_note`, `order_type`, `checked`, `restaurant_id`, `created_at`, `updated_at`, `delivery_charge`, `schedule_at`, `callback`, `otp`, `pending`, `accepted`, `confirmed`, `processing`, `handover`, `picked_up`, `rider_accepted`, `arrived_at_vendor`, `arrived_at_customer`, `delivered`, `canceled`, `refund_requested`, `refunded`, `delivery_address`, `scheduled`, `restaurant_discount_amount`, `original_delivery_charge`, `failed`, `adjusment`, `edited`, `zone_id`, `dm_tips`, `processing_time`, `free_delivery_by`, `assign_status`, `assign_at`, `pending_delivery_man_id`, `is_locked`) VALUES
(100147, 15, 486.00, 0.00, '', 'unpaid', 'pending', 18.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-11-04 17:55:37', '2023-11-04 21:33:45', 19.00, '2023-11-04 17:55:37', NULL, '6079', '2023-11-04 17:55:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Junaid Junaid\",\"contact_person_number\":\"+923043372285\",\"address_type\":\"Delivery\",\"address\":\"5FQ8+MRM, Muhalla Nawen Bhoain, Multan, Punjab, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.467008\",\"latitude\":\"30.1891584\"}', 0, 1.00, 19.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100148, 15, 954.00, 0.00, '', 'unpaid', 'failed', 36.00, 'digital_payment', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-11-04 18:20:03', '2023-11-04 21:33:45', 19.00, '2023-11-04 18:20:03', NULL, '4673', '2023-11-04 18:20:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Junaid Junaid\",\"contact_person_number\":\"+923043372285\",\"address_type\":\"Delivery\",\"address\":\"5FQ8+MRM, Muhalla Nawen Bhoain, Multan, Punjab, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.467008\",\"latitude\":\"30.1891584\"}', 0, 1.00, 19.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100149, 15, 954.00, 0.00, '', 'unpaid', 'pending', 36.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-11-04 18:23:52', '2023-11-04 21:33:45', 19.00, '2023-11-04 18:23:52', NULL, '3750', '2023-11-04 18:23:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Junaid Junaid\",\"contact_person_number\":\"+923043372285\",\"address_type\":\"Delivery\",\"address\":\"5FQ8+MRM, Muhalla Nawen Bhoain, Multan, Punjab, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.467008\",\"latitude\":\"30.1891584\"}', 0, 1.00, 19.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100150, 15, 1059.00, 0.00, '', 'unpaid', 'failed', 40.00, 'digital_payment', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-11-04 20:13:50', '2023-11-04 21:33:45', 19.00, '2023-11-04 20:13:50', NULL, '6893', '2023-11-04 20:13:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Junaid Junaid\",\"contact_person_number\":\"+923043372285\",\"address_type\":\"Delivery\",\"address\":\"5FQ8+MRM, Muhalla Nawen Bhoain, Multan, Punjab, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.467008\",\"latitude\":\"30.1891584\"}', 0, 0.00, 19.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100151, 53, 467.00, 0.00, '', 'unpaid', 'pending', 16.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-11-04 21:42:05', '2023-11-04 21:47:55', 51.00, '2023-11-04 21:42:05', NULL, '1055', '2023-11-04 21:42:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Moeeds Moeeds\",\"contact_person_number\":\"923039203804\",\"address_type\":\"Delivery\",\"address\":\"5G4F+XX Multan, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5249154\",\"latitude\":\"30.157458\"}', 0, 0.00, 51.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100152, 118, 1402.00, 0.00, '', 'unpaid', 'canceled', 52.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-11-04 23:52:24', '2023-11-05 00:22:28', 51.00, '2023-11-04 23:52:24', NULL, '9568', '2023-11-04 23:52:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-05 00:19:05', NULL, NULL, '{\"contact_person_name\":\"Muhammad Muhammad\",\"contact_person_number\":\"+923012345677\",\"address_type\":\"Delivery\",\"address\":\"5G4F+XX Multan, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5249154\",\"latitude\":\"30.157458\"}', 0, 0.00, 51.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100153, 53, 590.00, 0.00, '', 'unpaid', 'pending', 21.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-11-04 23:56:06', '2023-11-05 00:22:28', 39.00, '2023-11-04 23:56:06', NULL, '5082', '2023-11-04 23:56:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Moeeds Moeeds\",\"contact_person_number\":\"923039203804\",\"address_type\":\"Delivery\",\"address\":\"6G4F+Q5V, Shah Rukn E Alam Town, Multan, Punjab, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5228751\",\"latitude\":\"30.2071054\"}', 0, 0.00, 39.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100154, 53, 1402.00, 0.00, '', 'unpaid', 'pending', 52.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-11-04 23:58:27', '2023-11-05 00:22:28', 51.00, '2023-11-04 23:58:27', NULL, '6281', '2023-11-04 23:58:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Moeeds Moeeds\",\"contact_person_number\":\"923039203804\",\"address_type\":\"Delivery\",\"address\":\"5G4F+XX Multan, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5249154\",\"latitude\":\"30.157458\"}', 0, 0.00, 51.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100155, 118, 1402.00, 0.00, '', 'unpaid', 'pending', 52.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-11-05 00:23:35', '2023-11-05 00:25:09', 51.00, '2023-11-05 00:23:35', NULL, '7270', '2023-11-05 00:23:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Muhammad Muhammad\",\"contact_person_number\":\"+923012345677\",\"address_type\":\"Delivery\",\"address\":\"5G4F+XX Multan, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5249154\",\"latitude\":\"30.157458\"}', 0, 0.00, 51.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100156, 52, 602.00, 0.00, '', 'unpaid', 'canceled', 21.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2023-11-05 00:31:42', '2023-11-05 00:32:38', 51.00, '2023-11-05 00:31:42', NULL, '4726', '2023-11-05 00:31:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-05 00:32:38', NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12345678\",\"address_type\":\"Delivery\",\"address\":\"5G4F+XX Multan, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5249154\",\"latitude\":\"30.157458\"}', 0, 0.00, 51.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100157, 15, 2237.00, 0.00, '', 'unpaid', 'pending', 86.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 0, 1, '2023-11-05 03:15:59', '2023-11-05 03:15:59', 10.00, '2023-11-05 03:15:59', NULL, '2047', '2023-11-05 03:15:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Junaid Junaid\",\"contact_person_number\":\"+923043372285\",\"address_type\":\"Delivery\",\"address\":\"5FQP+WVH, Hafiz Jamal Rd, Manzoorabad, Multan, Punjab, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.4873664\",\"latitude\":\"30.1899105\"}', 0, 0.00, 10.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100158, 109, 774.00, 0.00, '', 'unpaid', 'disputed', 67.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 7, '2023-11-06 10:44:17', '2023-11-06 11:15:51', 37.00, '2023-11-06 10:44:17', NULL, '4901', '2023-11-06 10:44:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-06 10:44:44', NULL, NULL, '{\"contact_person_name\":\"mr v\",\"contact_person_number\":\"+923091116550\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159266\",\"latitude\":\"30.226007\"}', 0, 0.00, 37.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100159, 109, 642.00, 0.00, '', 'unpaid', 'delivered', 55.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 7, '2023-11-06 10:45:45', '2023-11-06 11:15:51', 37.00, '2023-11-06 10:45:45', NULL, '6560', '2023-11-06 10:45:45', NULL, '2023-11-06 10:49:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mr v\",\"contact_person_number\":\"+923091116550\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159266\",\"latitude\":\"30.226007\"}', 0, 0.00, 37.00, NULL, 0.00, 0, 1, 0.00, '12', NULL, 'Completed', '2023-11-06 11:49:50', 1, 1),
(100160, 52, 2702.00, 0.00, '', 'unpaid', 'pending', 104.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'take_away', 0, 1, '2023-11-06 10:46:48', '2023-11-06 10:46:48', 0.00, '2023-11-06 10:46:48', NULL, '3625', '2023-11-06 10:46:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12345678\",\"address_type\":\"Delivery\",\"address\":\"5CVG+7J9 Multan International Airport, Multan International Airport, Multan, Punjab 66000, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.4236835\",\"latitude\":\"30.19619130000001\"}', 0, 0.00, 61.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100161, 109, 774.00, 0.00, '', 'unpaid', 'delivered', 67.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 7, '2023-11-06 10:54:13', '2023-11-06 11:15:51', 37.00, '2023-11-06 10:54:13', NULL, '7408', '2023-11-06 10:54:13', NULL, '2023-11-06 11:07:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mr v\",\"contact_person_number\":\"+923091116550\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159266\",\"latitude\":\"30.226007\"}', 0, 0.00, 37.00, NULL, 0.00, 0, 1, 0.00, '25', NULL, 'Completed', '2023-11-06 12:07:17', 1, 1),
(100162, 109, 774.00, 0.00, '', 'unpaid', 'delivered', 67.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 7, '2023-11-06 10:56:57', '2023-11-06 11:15:51', 37.00, '2023-11-06 10:56:57', NULL, '5049', '2023-11-06 10:56:57', NULL, '2023-11-06 10:58:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mr v\",\"contact_person_number\":\"+923091116550\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159266\",\"latitude\":\"30.226007\"}', 0, 0.00, 37.00, NULL, 0.00, 0, 1, 0.00, '20', NULL, 'Completed', '2023-11-06 11:59:01', 1, 1),
(100163, 109, 774.00, 0.00, '', 'unpaid', 'confirmed', 67.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 7, '2023-11-06 11:02:22', '2023-11-06 11:45:57', 37.00, '2023-11-06 11:02:22', NULL, '2313', '2023-11-06 11:02:22', NULL, '2023-11-06 11:45:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mr v\",\"contact_person_number\":\"+923091116550\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5159266\",\"latitude\":\"30.226007\"}', 0, 0.00, 37.00, NULL, 0.00, 0, 1, 0.00, '00', NULL, 'Pending', NULL, 1, 0),
(100164, 109, 554.00, 0.00, '', 'unpaid', 'pending', 47.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 7, '2023-11-06 14:58:49', '2023-11-06 16:09:08', 37.00, '2023-11-06 14:58:49', NULL, '1195', '2023-11-06 14:58:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mr v\",\"contact_person_number\":\"+923091116550\",\"address_type\":\"Delivery Address\",\"address\":\"Muzaffargarh Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.51585161685944\",\"latitude\":\"30.226091666405534\"}', 0, 0.00, 37.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100165, 109, 361.00, 0.00, '', 'unpaid', 'failed', 12.00, 'digital_payment', NULL, NULL, NULL, NULL, NULL, 'delivery', 0, 1, '2023-11-11 15:12:24', '2023-11-11 15:12:24', 49.00, '2023-11-11 15:12:24', NULL, '6905', '2023-11-11 15:12:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mr v\",\"contact_person_number\":\"+923091116550\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5160711\",\"latitude\":\"30.2261805\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100166, 109, 1400.00, 0.00, '', 'unpaid', 'failed', 52.00, 'digital_payment', NULL, NULL, NULL, NULL, NULL, 'delivery', 0, 1, '2023-11-11 15:27:11', '2023-11-11 15:27:11', 49.00, '2023-11-11 15:27:11', NULL, '8709', '2023-11-11 15:27:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mr v\",\"contact_person_number\":\"+923091116550\",\"address_type\":\"Delivery Address\",\"address\":\"Gulraiz Town Multan Punjab\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.5160711\",\"latitude\":\"30.2261805\"}', 0, 0.00, 49.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100167, 52, 814.00, 0.00, '', 'unpaid', 'failed', 30.00, 'digital_payment', NULL, NULL, NULL, NULL, NULL, 'delivery', 0, 1, '2023-11-13 16:11:25', '2023-11-13 16:11:25', 24.00, '2023-11-13 16:11:25', NULL, '9204', '2023-11-13 16:11:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12345678\",\"address_type\":\"Delivery\",\"address\":\"Tomb of Allama Syed Ahmad Saeed Kazmi, 6F6H+482, Usmanabad Colony, Multan, Punjab, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.4779972\",\"latitude\":\"30.2105905\"}', 0, 0.00, 24.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100168, 52, 814.00, 0.00, '', 'unpaid', 'failed', 30.00, 'digital_payment', NULL, NULL, NULL, NULL, NULL, 'delivery', 0, 1, '2023-11-13 16:13:10', '2023-11-13 16:13:10', 24.00, '2023-11-13 16:13:10', NULL, '6859', '2023-11-13 16:13:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12345678\",\"address_type\":\"Delivery\",\"address\":\"Tomb of Allama Syed Ahmad Saeed Kazmi, 6F6H+482, Usmanabad Colony, Multan, Punjab, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.4779972\",\"latitude\":\"30.2105905\"}', 0, 0.00, 24.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100169, 52, 814.00, 0.00, '', 'unpaid', 'failed', 30.00, 'digital_payment', NULL, NULL, NULL, NULL, NULL, 'delivery', 0, 1, '2023-11-13 16:16:10', '2023-11-13 16:16:10', 24.00, '2023-11-13 16:16:10', NULL, '5047', '2023-11-13 16:16:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12345678\",\"address_type\":\"Delivery\",\"address\":\"Tomb of Allama Syed Ahmad Saeed Kazmi, 6F6H+482, Usmanabad Colony, Multan, Punjab, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.4779972\",\"latitude\":\"30.2105905\"}', 0, 0.00, 24.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100170, 52, 367.00, 0.00, '', 'unpaid', 'failed', 13.00, 'digital_payment', NULL, NULL, NULL, NULL, NULL, 'delivery', 0, 1, '2023-11-13 16:17:47', '2023-11-13 16:17:47', 24.00, '2023-11-13 16:17:47', NULL, '7889', '2023-11-13 16:17:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12345678\",\"address_type\":\"Delivery\",\"address\":\"Tomb of Allama Syed Ahmad Saeed Kazmi, 6F6H+482, Usmanabad Colony, Multan, Punjab, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.4779972\",\"latitude\":\"30.2105905\"}', 0, 0.00, 24.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100171, 52, 367.00, 0.00, '', 'unpaid', 'failed', 13.00, 'digital_payment', NULL, NULL, NULL, NULL, NULL, 'delivery', 0, 1, '2023-11-13 16:20:35', '2023-11-13 16:20:35', 24.00, '2023-11-13 16:20:35', NULL, '2077', '2023-11-13 16:20:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12345678\",\"address_type\":\"Delivery\",\"address\":\"Tomb of Allama Syed Ahmad Saeed Kazmi, 6F6H+482, Usmanabad Colony, Multan, Punjab, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.4779972\",\"latitude\":\"30.2105905\"}', 0, 0.00, 24.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100172, 52, 367.00, 0.00, '', 'unpaid', 'pending', 13.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 0, 1, '2023-11-13 16:22:55', '2023-11-13 16:22:55', 24.00, '2023-11-13 16:22:55', NULL, '4361', '2023-11-13 16:22:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12345678\",\"address_type\":\"Delivery\",\"address\":\"Tomb of Allama Syed Ahmad Saeed Kazmi, 6F6H+482, Usmanabad Colony, Multan, Punjab, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.4779972\",\"latitude\":\"30.2105905\"}', 0, 0.00, 24.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100173, 52, 367.00, 0.00, '', 'unpaid', 'failed', 13.00, 'digital_payment', NULL, NULL, NULL, NULL, NULL, 'delivery', 0, 1, '2023-11-13 16:27:50', '2023-11-13 16:27:50', 24.00, '2023-11-13 16:27:50', NULL, '9924', '2023-11-13 16:27:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12345678\",\"address_type\":\"Delivery\",\"address\":\"Tomb of Allama Syed Ahmad Saeed Kazmi, 6F6H+482, Usmanabad Colony, Multan, Punjab, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.4779972\",\"latitude\":\"30.2105905\"}', 0, 0.00, 24.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0),
(100174, 52, 367.00, 0.00, '', 'paid', 'confirmed', 13.00, 'digital_payment', NULL, NULL, NULL, NULL, NULL, 'delivery', 0, 1, '2023-11-13 16:56:38', '2023-11-13 16:57:11', 24.00, '2023-11-13 16:56:38', NULL, '9185', '2023-11-13 16:56:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"mahr mahr\",\"contact_person_number\":\"12345678\",\"address_type\":\"Delivery\",\"address\":\"Tomb of Allama Syed Ahmad Saeed Kazmi, 6F6H+482, Usmanabad Colony, Multan, Punjab, Pakistan\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"71.4779972\",\"latitude\":\"30.2105905\"}', 0, 0.00, 24.00, NULL, 0.00, 0, 1, 0.00, NULL, NULL, 'Pending', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_delivery_histories`
--

CREATE TABLE `order_delivery_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `start_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` decimal(24,2) NOT NULL DEFAULT '0.00',
  `food_details` text COLLATE utf8mb4_unicode_ci,
  `variation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_ons` text COLLATE utf8mb4_unicode_ci,
  `discount_on_food` decimal(24,2) DEFAULT NULL,
  `discount_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `quantity` int(11) NOT NULL DEFAULT '1',
  `tax_amount` decimal(24,2) NOT NULL DEFAULT '1.00',
  `variant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_campaign_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total_add_on_price` decimal(24,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `food_id`, `order_id`, `price`, `food_details`, `variation`, `add_ons`, `discount_on_food`, `discount_type`, `quantity`, `tax_amount`, `variant`, `created_at`, `updated_at`, `item_campaign_id`, `total_add_on_price`) VALUES
(1, 4, 100001, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-07 00:58:40', '2023-10-07 00:58:40', NULL, 0.00),
(2, 4, 100002, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-07 01:02:48', '2023-10-07 01:02:48', NULL, 0.00),
(3, 4, 100003, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-07 01:18:28', '2023-10-07 01:18:28', NULL, 0.00),
(4, 4, 100004, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-07 01:22:56', '2023-10-07 01:22:56', NULL, 0.00),
(5, 4, 100005, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-07 01:45:53', '2023-10-07 01:45:53', NULL, 0.00),
(6, 4, 100006, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-07 01:51:26', '2023-10-07 01:51:26', NULL, 0.00),
(7, 2, 100007, 300.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T23:19:15.000000Z\",\"updated_at\":\"2023-07-27T11:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T21:25:17.000000Z\",\"updated_at\":\"2022-12-29T21:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T13:08:05.000000Z\",\"updated_at\":\"2023-10-06T15:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Small\"', '2023-10-10 00:03:26', '2023-10-10 00:03:26', NULL, 0.00),
(8, 2, 100008, 300.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T23:19:15.000000Z\",\"updated_at\":\"2023-07-27T11:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T21:25:17.000000Z\",\"updated_at\":\"2022-12-29T21:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T13:08:05.000000Z\",\"updated_at\":\"2023-10-06T15:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":\"300\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":1}]', 0.00, 'discount_on_product', 1, 12.00, '\"Small\"', '2023-10-10 00:18:46', '2023-10-10 00:18:46', NULL, 50.00),
(9, 4, 100009, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-10 00:41:30', '2023-10-10 00:41:30', NULL, 0.00),
(10, 2, 100010, 300.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T23:19:15.000000Z\",\"updated_at\":\"2023-07-27T11:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T21:25:17.000000Z\",\"updated_at\":\"2022-12-29T21:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T13:08:05.000000Z\",\"updated_at\":\"2023-10-06T15:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":\"300\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":1}]', 0.00, 'discount_on_product', 1, 12.00, '\"Small\"', '2023-10-10 00:42:41', '2023-10-10 00:42:41', NULL, 50.00),
(11, 4, 100011, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-10 01:34:54', '2023-10-10 01:34:54', NULL, 0.00),
(12, 4, 100012, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-10 01:41:13', '2023-10-10 01:41:13', NULL, 0.00),
(13, 4, 100013, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-10 02:43:11', '2023-10-10 02:43:11', NULL, 0.00),
(14, 4, 100014, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-11 01:22:26', '2023-10-11 01:22:26', NULL, 0.00),
(15, 3, 100015, 100.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T23:19:15.000000Z\",\"updated_at\":\"2023-07-27T11:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-22T00:27:11.000000Z\",\"updated_at\":\"2021-08-22T00:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-22T00:27:45.000000Z\",\"updated_at\":\"2021-08-22T00:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:12:38.000000Z\",\"updated_at\":\"2023-08-26T13:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":\"100\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":1}]', 0.00, 'discount_on_product', 1, 4.00, '\"Small\"', '2023-10-11 01:23:19', '2023-10-11 01:23:19', NULL, 50.00),
(16, 2, 100015, 300.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T23:19:15.000000Z\",\"updated_at\":\"2023-07-27T11:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T21:25:17.000000Z\",\"updated_at\":\"2022-12-29T21:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T13:08:05.000000Z\",\"updated_at\":\"2023-10-06T15:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Small\"', '2023-10-11 01:23:19', '2023-10-11 01:23:19', NULL, 0.00),
(17, 26, 100016, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-22T00:27:45.000000Z\",\"updated_at\":\"2021-08-22T00:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":175,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-11T09:28:15.000000Z\",\"updated_at\":\"2023-10-11T09:28:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"200\"}]', '[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":1}]', 175.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-10-11 01:30:42', '2023-10-11 01:30:42', NULL, 30.00),
(18, 26, 100017, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-22T00:27:45.000000Z\",\"updated_at\":\"2021-08-22T00:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":175,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-11T09:28:15.000000Z\",\"updated_at\":\"2023-10-11T09:28:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"200\"}]', '[]', 175.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-10-11 02:24:45', '2023-10-11 02:24:45', NULL, 0.00),
(19, 4, 100018, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-11 02:26:23', '2023-10-11 02:26:23', NULL, 0.00),
(20, 4, 100019, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-11 02:39:42', '2023-10-11 02:39:42', NULL, 0.00),
(21, 4, 100020, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-11 02:55:48', '2023-10-11 02:55:48', NULL, 0.00),
(22, 26, 100021, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-22T00:27:45.000000Z\",\"updated_at\":\"2021-08-22T00:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":175,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-11T09:28:15.000000Z\",\"updated_at\":\"2023-10-11T09:28:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"200\"}]', '[]', 175.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-10-11 03:43:32', '2023-10-11 03:43:32', NULL, 0.00),
(23, 4, 100022, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-11 03:58:51', '2023-10-11 03:58:51', NULL, 0.00),
(24, 4, 100023, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-11 04:02:51', '2023-10-11 04:02:51', NULL, 0.00),
(25, 4, 100024, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-11 04:09:52', '2023-10-11 04:09:52', NULL, 0.00),
(26, 3, 100025, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T23:19:15.000000Z\",\"updated_at\":\"2023-07-27T11:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-22T00:27:11.000000Z\",\"updated_at\":\"2021-08-22T00:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-22T00:27:45.000000Z\",\"updated_at\":\"2021-08-22T00:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:12:38.000000Z\",\"updated_at\":\"2023-08-26T13:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-11 04:12:36', '2023-10-11 04:12:36', NULL, 0.00),
(27, 30, 100026, 0.00, '{\"id\":30,\"name\":\"Tasty Plus PIzza\",\"description\":\"This is too hot handle! yummy!\",\"image\":\"2023-10-12-6527d587535d8.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":0}],\"add_ons\":[],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":400,\"tax\":10,\"tax_type\":\"percent\",\"discount\":350,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":5,\"created_at\":\"2023-10-12T11:16:23.000000Z\",\"updated_at\":\"2023-10-12T11:16:23.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"Melt9\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":false}', '[{\"type\":\"Large\",\"price\":\"0\"}]', '[]', 350.00, 'discount_on_product', 1, 0.00, '\"Large\"', '2023-10-12 03:47:06', '2023-10-12 03:47:06', NULL, 0.00),
(28, 33, 100027, 400.00, '{\"id\":33,\"name\":\"Tasty pizza\",\"description\":\"best multani pizza!\",\"image\":\"2023-10-12-6527ef0b47e16.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":400}],\"add_ons\":[{\"id\":44,\"name\":\"cheese\",\"price\":50,\"created_at\":\"2023-10-12T12:56:54.000000Z\",\"updated_at\":\"2023-10-12T12:56:54.000000Z\",\"restaurant_id\":5,\"status\":1},{\"id\":45,\"name\":\"Sauce\",\"price\":30,\"created_at\":\"2023-10-12T12:58:04.000000Z\",\"updated_at\":\"2023-10-12T12:58:04.000000Z\",\"restaurant_id\":5,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":400,\"tax\":10,\"tax_type\":\"percent\",\"discount\":350,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":1,\"status\":1,\"restaurant_id\":5,\"created_at\":\"2023-10-12T13:05:15.000000Z\",\"updated_at\":\"2023-10-12T13:05:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"Melt9\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":false}', '[{\"type\":\"Large\",\"price\":\"400\"}]', '[]', 350.00, 'discount_on_product', 1, 40.00, '\"Large\"', '2023-10-12 04:13:33', '2023-10-12 04:13:33', NULL, 0.00),
(29, 3, 100028, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T23:19:15.000000Z\",\"updated_at\":\"2023-07-27T11:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-22T00:27:11.000000Z\",\"updated_at\":\"2021-08-22T00:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-22T00:27:45.000000Z\",\"updated_at\":\"2021-08-22T00:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:12:38.000000Z\",\"updated_at\":\"2023-08-26T13:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-12 04:18:10', '2023-10-12 04:18:10', NULL, 0.00),
(30, 33, 100029, 400.00, '{\"id\":33,\"name\":\"Tasty pizza\",\"description\":\"best multani pizza!\",\"image\":\"2023-10-12-6527ef0b47e16.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":400}],\"add_ons\":[{\"id\":44,\"name\":\"cheese\",\"price\":50,\"created_at\":\"2023-10-12T12:56:54.000000Z\",\"updated_at\":\"2023-10-12T12:56:54.000000Z\",\"restaurant_id\":5,\"status\":1},{\"id\":45,\"name\":\"Sauce\",\"price\":30,\"created_at\":\"2023-10-12T12:58:04.000000Z\",\"updated_at\":\"2023-10-12T12:58:04.000000Z\",\"restaurant_id\":5,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":400,\"tax\":10,\"tax_type\":\"percent\",\"discount\":350,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":1,\"status\":1,\"restaurant_id\":5,\"created_at\":\"2023-10-12T13:05:15.000000Z\",\"updated_at\":\"2023-10-12T13:05:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"Melt9\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":false}', '[{\"type\":\"Large\",\"price\":\"400\"}]', '[]', 350.00, 'discount_on_product', 1, 40.00, '\"Large\"', '2023-10-12 04:19:27', '2023-10-12 04:19:27', NULL, 0.00),
(31, 3, 100030, 200.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T23:19:15.000000Z\",\"updated_at\":\"2023-07-27T11:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-22T00:27:11.000000Z\",\"updated_at\":\"2021-08-22T00:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-22T00:27:45.000000Z\",\"updated_at\":\"2021-08-22T00:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:12:38.000000Z\",\"updated_at\":\"2023-08-26T13:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Medium\",\"price\":\"200\"}]', '[]', 0.00, 'discount_on_product', 1, 8.00, '\"Medium\"', '2023-10-13 03:35:53', '2023-10-13 03:35:53', NULL, 0.00),
(32, 31, 100031, 300.00, '{\"id\":31,\"name\":\"Chicken Biryani\",\"description\":\"People love Karachi biryani, which consists of chicken and potatoes cooked in yogurt gravy and topped with semi-boiled rice\",\"image\":\"2023-10-12-6527deb6e659e.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":300}],\"add_ons\":[],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":300,\"tax\":10,\"tax_type\":\"percent\",\"discount\":250,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":5,\"created_at\":\"2023-10-12T11:55:34.000000Z\",\"updated_at\":\"2023-10-12T11:55:34.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"Melt9\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":false}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 250.00, 'discount_on_product', 1, 30.00, '\"Large\"', '2023-10-13 22:34:15', '2023-10-13 22:34:15', NULL, 0.00);
INSERT INTO `order_details` (`id`, `food_id`, `order_id`, `price`, `food_details`, `variation`, `add_ons`, `discount_on_food`, `discount_type`, `quantity`, `tax_amount`, `variant`, `created_at`, `updated_at`, `item_campaign_id`, `total_add_on_price`) VALUES
(33, 33, 100032, 400.00, '{\"id\":33,\"name\":\"Tasty pizza\",\"description\":\"best multani pizza!\",\"image\":\"2023-10-12-6527ef0b47e16.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":400}],\"add_ons\":[{\"id\":44,\"name\":\"cheese\",\"price\":50,\"created_at\":\"2023-10-12T12:56:54.000000Z\",\"updated_at\":\"2023-10-12T12:56:54.000000Z\",\"restaurant_id\":5,\"status\":1},{\"id\":45,\"name\":\"Sauce\",\"price\":30,\"created_at\":\"2023-10-12T12:58:04.000000Z\",\"updated_at\":\"2023-10-12T12:58:04.000000Z\",\"restaurant_id\":5,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":400,\"tax\":10,\"tax_type\":\"percent\",\"discount\":350,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":1,\"status\":1,\"restaurant_id\":5,\"created_at\":\"2023-10-12T13:05:15.000000Z\",\"updated_at\":\"2023-10-12T13:05:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"Melt9\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":false}', '[{\"type\":\"Large\",\"price\":\"400\"}]', '[]', 350.00, 'discount_on_product', 1, 40.00, '\"Large\"', '2023-10-13 22:41:15', '2023-10-13 22:41:15', NULL, 0.00),
(34, 4, 100033, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-14 00:03:42', '2023-10-14 00:03:42', NULL, 0.00),
(35, 3, 100034, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T23:19:15.000000Z\",\"updated_at\":\"2023-07-27T11:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-22T00:27:11.000000Z\",\"updated_at\":\"2021-08-22T00:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-22T00:27:45.000000Z\",\"updated_at\":\"2021-08-22T00:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:12:38.000000Z\",\"updated_at\":\"2023-08-26T13:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-14 00:15:25', '2023-10-14 00:15:25', NULL, 0.00),
(36, 4, 100035, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-14 00:26:20', '2023-10-14 00:26:20', NULL, 0.00),
(37, 33, 100036, 400.00, '{\"id\":33,\"name\":\"Tasty pizza\",\"description\":\"best multani pizza!\",\"image\":\"2023-10-12-6527ef0b47e16.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":400}],\"add_ons\":[{\"id\":44,\"name\":\"cheese\",\"price\":50,\"created_at\":\"2023-10-12T12:56:54.000000Z\",\"updated_at\":\"2023-10-12T12:56:54.000000Z\",\"restaurant_id\":5,\"status\":1},{\"id\":45,\"name\":\"Sauce\",\"price\":30,\"created_at\":\"2023-10-12T12:58:04.000000Z\",\"updated_at\":\"2023-10-12T12:58:04.000000Z\",\"restaurant_id\":5,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":400,\"tax\":10,\"tax_type\":\"percent\",\"discount\":350,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":1,\"status\":1,\"restaurant_id\":5,\"created_at\":\"2023-10-12T13:05:15.000000Z\",\"updated_at\":\"2023-10-12T13:05:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"Melt9\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":false}', '[{\"type\":\"Large\",\"price\":\"400\"}]', '[{\"id\":44,\"name\":\"cheese\",\"price\":50,\"quantity\":1}]', 350.00, 'discount_on_product', 1, 40.00, '\"Large\"', '2023-10-14 00:48:54', '2023-10-14 00:48:54', NULL, 50.00),
(38, 3, 100037, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T23:19:15.000000Z\",\"updated_at\":\"2023-07-27T11:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-22T00:27:11.000000Z\",\"updated_at\":\"2021-08-22T00:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-22T00:27:45.000000Z\",\"updated_at\":\"2021-08-22T00:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:12:38.000000Z\",\"updated_at\":\"2023-08-26T13:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-17 00:21:22', '2023-10-17 00:21:22', NULL, 0.00),
(39, 4, 100038, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-17 00:21:55', '2023-10-17 00:21:55', NULL, 0.00),
(40, 33, 100039, 400.00, '{\"id\":33,\"name\":\"Tasty pizza\",\"description\":\"best multani pizza!\",\"image\":\"2023-10-12-6527ef0b47e16.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":400}],\"add_ons\":[{\"id\":44,\"name\":\"cheese\",\"price\":50,\"created_at\":\"2023-10-12T12:56:54.000000Z\",\"updated_at\":\"2023-10-12T12:56:54.000000Z\",\"restaurant_id\":5,\"status\":1},{\"id\":45,\"name\":\"Sauce\",\"price\":30,\"created_at\":\"2023-10-12T12:58:04.000000Z\",\"updated_at\":\"2023-10-12T12:58:04.000000Z\",\"restaurant_id\":5,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":400,\"tax\":10,\"tax_type\":\"percent\",\"discount\":350,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":1,\"status\":1,\"restaurant_id\":5,\"created_at\":\"2023-10-12T13:05:15.000000Z\",\"updated_at\":\"2023-10-12T13:05:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"Melt9\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":false}', '[{\"type\":\"Large\",\"price\":\"400\"}]', '[]', 350.00, 'discount_on_product', 1, 40.00, '\"Large\"', '2023-10-17 00:22:26', '2023-10-17 00:22:26', NULL, 0.00),
(41, 33, 100040, 400.00, '{\"id\":33,\"name\":\"Tasty pizza\",\"description\":\"best multani pizza!\",\"image\":\"2023-10-12-6527ef0b47e16.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":400}],\"add_ons\":[{\"id\":44,\"name\":\"cheese\",\"price\":50,\"created_at\":\"2023-10-12T12:56:54.000000Z\",\"updated_at\":\"2023-10-12T12:56:54.000000Z\",\"restaurant_id\":5,\"status\":1},{\"id\":45,\"name\":\"Sauce\",\"price\":30,\"created_at\":\"2023-10-12T12:58:04.000000Z\",\"updated_at\":\"2023-10-12T12:58:04.000000Z\",\"restaurant_id\":5,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":400,\"tax\":10,\"tax_type\":\"percent\",\"discount\":350,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":1,\"status\":1,\"restaurant_id\":5,\"created_at\":\"2023-10-12T13:05:15.000000Z\",\"updated_at\":\"2023-10-12T13:05:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"Melt9\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":false}', '[{\"type\":\"Large\",\"price\":\"400\"}]', '[]', 350.00, 'discount_on_product', 1, 40.00, '\"Large\"', '2023-10-17 00:31:34', '2023-10-17 00:31:34', NULL, 0.00),
(42, 34, 100041, 350.00, '{\"id\":34,\"name\":\"Spicy Broast\",\"description\":\"This is the best multani broast that you taste\",\"image\":\"2023-10-17-652e58c567489.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Small\",\"price\":200},{\"type\":\"Medium\",\"price\":250},{\"type\":\"Large\",\"price\":350}],\"add_ons\":[{\"id\":47,\"name\":\"salad\",\"price\":20,\"created_at\":\"2023-10-17T09:43:01.000000Z\",\"updated_at\":\"2023-10-17T09:43:01.000000Z\",\"restaurant_id\":4,\"status\":1},{\"id\":48,\"name\":\"sauce\",\"price\":10,\"created_at\":\"2023-10-17T09:43:57.000000Z\",\"updated_at\":\"2023-10-17T09:43:57.000000Z\",\"restaurant_id\":4,\"status\":1},{\"id\":49,\"name\":\"extra chicken\",\"price\":40,\"created_at\":\"2023-10-17T09:44:41.000000Z\",\"updated_at\":\"2023-10-17T09:44:41.000000Z\",\"restaurant_id\":4,\"status\":1},{\"id\":50,\"name\":\"beaf\",\"price\":50,\"created_at\":\"2023-10-17T09:45:27.000000Z\",\"updated_at\":\"2023-10-17T09:45:27.000000Z\",\"restaurant_id\":4,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":350,\"tax\":10,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":1,\"status\":1,\"restaurant_id\":4,\"created_at\":\"2023-10-17T09:49:57.000000Z\",\"updated_at\":\"2023-10-17T09:49:57.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"Ramada\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":false}', '[{\"type\":\"Large\",\"price\":\"350\"}]', '[]', 0.00, 'discount_on_product', 1, 35.00, '\"Large\"', '2023-10-17 00:53:27', '2023-10-17 00:53:27', NULL, 0.00),
(43, 4, 100042, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-17 03:21:17', '2023-10-17 03:21:17', NULL, 0.00),
(44, 4, 100043, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-18 01:37:52', '2023-10-18 01:37:52', NULL, 0.00),
(45, 20, 100044, 250.00, '{\"id\":20,\"name\":\"Biryani\",\"description\":\"Karachi Masala Biryani\",\"image\":\"2023-08-21-64e36de5b069e.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"small\",\"price\":250},{\"type\":\"large\",\"price\":395}],\"add_ons\":[{\"id\":30,\"name\":\"Coke\",\"price\":12,\"created_at\":\"2021-08-22T02:29:24.000000Z\",\"updated_at\":\"2021-08-22T02:29:24.000000Z\",\"restaurant_id\":2,\"status\":1},{\"id\":33,\"name\":\"Extra Spice\",\"price\":9,\"created_at\":\"2021-08-22T02:32:13.000000Z\",\"updated_at\":\"2021-08-22T02:32:13.000000Z\",\"restaurant_id\":2,\"status\":1},{\"id\":35,\"name\":\"Extra Chicken\",\"price\":12,\"created_at\":\"2021-08-22T02:32:35.000000Z\",\"updated_at\":\"2021-08-22T02:32:35.000000Z\",\"restaurant_id\":2,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"small\",\"large\"]}],\"price\":250,\"tax\":4,\"tax_type\":\"percent\",\"discount\":5,\"discount_type\":\"percent\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":1,\"status\":1,\"restaurant_id\":2,\"created_at\":\"2023-08-21T14:00:05.000000Z\",\"updated_at\":\"2023-08-21T14:00:05.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"Guru\",\"restaurant_discount\":0,\"restaurant_opening_time\":\"10:00\",\"restaurant_closing_time\":\"23:00\",\"schedule_order\":false}', '[{\"type\":\"small\",\"price\":\"250\"}]', '[{\"id\":30,\"name\":\"Coke\",\"price\":12,\"quantity\":1},{\"id\":33,\"name\":\"Extra Spice\",\"price\":9,\"quantity\":1},{\"id\":35,\"name\":\"Extra Chicken\",\"price\":12,\"quantity\":1}]', 12.50, 'discount_on_product', 1, 10.00, '\"small\"', '2023-10-21 04:22:25', '2023-10-21 04:22:25', NULL, 33.00),
(46, 26, 100045, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-22T00:27:45.000000Z\",\"updated_at\":\"2021-08-22T00:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":175,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-11T09:28:15.000000Z\",\"updated_at\":\"2023-10-11T09:28:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"200\"}]', '[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":1}]', 175.00, 'discount_on_product', 4, 8.00, '\"Large\"', '2023-10-21 04:26:17', '2023-10-21 04:26:17', NULL, 30.00),
(47, 26, 100046, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-22T00:27:45.000000Z\",\"updated_at\":\"2021-08-22T00:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":175,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-11T09:28:15.000000Z\",\"updated_at\":\"2023-10-11T09:28:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"200\"}]', '[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":1}]', 175.00, 'discount_on_product', 2, 8.00, '\"Large\"', '2023-10-21 04:28:57', '2023-10-21 04:28:57', NULL, 30.00),
(48, 4, 100047, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-22 21:44:41', '2023-10-22 21:44:41', NULL, 0.00),
(49, 3, 100048, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T23:19:15.000000Z\",\"updated_at\":\"2023-07-27T11:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-22T00:27:11.000000Z\",\"updated_at\":\"2021-08-22T00:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-22T00:27:45.000000Z\",\"updated_at\":\"2021-08-22T00:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:12:38.000000Z\",\"updated_at\":\"2023-08-26T13:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-22 22:20:37', '2023-10-22 22:20:37', NULL, 0.00),
(50, 34, 100049, 350.00, '{\"id\":34,\"name\":\"Spicy Broast\",\"description\":\"This is the best multani broast that you taste\",\"image\":\"2023-10-17-652e58c567489.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Small\",\"price\":200},{\"type\":\"Medium\",\"price\":250},{\"type\":\"Large\",\"price\":350}],\"add_ons\":[{\"id\":47,\"name\":\"salad\",\"price\":20,\"created_at\":\"2023-10-17T09:43:01.000000Z\",\"updated_at\":\"2023-10-17T09:43:01.000000Z\",\"restaurant_id\":4,\"status\":1},{\"id\":48,\"name\":\"sauce\",\"price\":10,\"created_at\":\"2023-10-17T09:43:57.000000Z\",\"updated_at\":\"2023-10-17T09:43:57.000000Z\",\"restaurant_id\":4,\"status\":1},{\"id\":49,\"name\":\"extra chicken\",\"price\":40,\"created_at\":\"2023-10-17T09:44:41.000000Z\",\"updated_at\":\"2023-10-17T09:44:41.000000Z\",\"restaurant_id\":4,\"status\":1},{\"id\":50,\"name\":\"beaf\",\"price\":50,\"created_at\":\"2023-10-17T09:45:27.000000Z\",\"updated_at\":\"2023-10-17T09:45:27.000000Z\",\"restaurant_id\":4,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":350,\"tax\":10,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":1,\"status\":1,\"restaurant_id\":4,\"created_at\":\"2023-10-17T09:49:57.000000Z\",\"updated_at\":\"2023-10-17T09:49:57.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"Ramada\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":false}', '[{\"type\":\"Large\",\"price\":\"350\"}]', '[{\"id\":47,\"name\":\"salad\",\"price\":20,\"quantity\":1},{\"id\":50,\"name\":\"beaf\",\"price\":50,\"quantity\":2}]', 0.00, 'discount_on_product', 1, 35.00, '\"Large\"', '2023-10-22 23:38:25', '2023-10-22 23:38:25', NULL, 120.00),
(51, 4, 100050, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-23 01:27:07', '2023-10-23 01:27:07', NULL, 0.00),
(52, 34, 100051, 350.00, '{\"id\":34,\"name\":\"Spicy Broast\",\"description\":\"This is the best multani broast that you taste\",\"image\":\"2023-10-17-652e58c567489.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Small\",\"price\":200},{\"type\":\"Medium\",\"price\":250},{\"type\":\"Large\",\"price\":350}],\"add_ons\":[{\"id\":47,\"name\":\"salad\",\"price\":20,\"created_at\":\"2023-10-17T09:43:01.000000Z\",\"updated_at\":\"2023-10-17T09:43:01.000000Z\",\"restaurant_id\":4,\"status\":1},{\"id\":48,\"name\":\"sauce\",\"price\":10,\"created_at\":\"2023-10-17T09:43:57.000000Z\",\"updated_at\":\"2023-10-17T09:43:57.000000Z\",\"restaurant_id\":4,\"status\":1},{\"id\":49,\"name\":\"extra chicken\",\"price\":40,\"created_at\":\"2023-10-17T09:44:41.000000Z\",\"updated_at\":\"2023-10-17T09:44:41.000000Z\",\"restaurant_id\":4,\"status\":1},{\"id\":50,\"name\":\"beaf\",\"price\":50,\"created_at\":\"2023-10-17T09:45:27.000000Z\",\"updated_at\":\"2023-10-17T09:45:27.000000Z\",\"restaurant_id\":4,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":350,\"tax\":10,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":1,\"status\":1,\"restaurant_id\":4,\"created_at\":\"2023-10-17T09:49:57.000000Z\",\"updated_at\":\"2023-10-17T09:49:57.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"Ramada\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":false}', '[{\"type\":\"Large\",\"price\":\"350\"}]', '[]', 0.00, 'discount_on_product', 1, 35.00, '\"Large\"', '2023-10-23 01:56:36', '2023-10-23 01:56:36', NULL, 0.00),
(53, 3, 100052, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T23:19:15.000000Z\",\"updated_at\":\"2023-07-27T11:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-22T00:27:11.000000Z\",\"updated_at\":\"2021-08-22T00:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-22T00:27:45.000000Z\",\"updated_at\":\"2021-08-22T00:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:12:38.000000Z\",\"updated_at\":\"2023-08-26T13:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-23 02:38:35', '2023-10-23 02:38:35', NULL, 0.00),
(54, 3, 100053, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T23:19:15.000000Z\",\"updated_at\":\"2023-07-27T11:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-22T00:27:11.000000Z\",\"updated_at\":\"2021-08-22T00:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-22T00:27:45.000000Z\",\"updated_at\":\"2021-08-22T00:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:12:38.000000Z\",\"updated_at\":\"2023-08-26T13:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-23 03:31:05', '2023-10-23 03:31:05', NULL, 0.00),
(55, 4, 100054, 400.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Medium\",\"price\":\"400\"}]', '[]', 0.00, 'discount_on_product', 1, 16.00, '\"Medium\"', '2023-10-24 01:13:54', '2023-10-24 01:13:54', NULL, 0.00),
(56, 4, 100055, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-24 03:46:40', '2023-10-24 03:46:40', NULL, 0.00),
(57, 4, 100056, 400.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Medium\",\"price\":\"400\"}]', '[]', 0.00, 'discount_on_product', 1, 16.00, '\"Medium\"', '2023-10-24 22:43:22', '2023-10-24 22:43:22', NULL, 0.00),
(58, 4, 100057, 300.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Small\"', '2023-10-24 22:51:41', '2023-10-24 22:51:41', NULL, 0.00),
(59, 3, 100058, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T23:19:15.000000Z\",\"updated_at\":\"2023-07-27T11:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-22T00:27:11.000000Z\",\"updated_at\":\"2021-08-22T00:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-22T00:27:45.000000Z\",\"updated_at\":\"2021-08-22T00:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:12:38.000000Z\",\"updated_at\":\"2023-08-26T13:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-24 23:43:51', '2023-10-24 23:43:51', NULL, 0.00),
(60, 4, 100059, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-25 00:35:00', '2023-10-25 00:35:00', NULL, 0.00),
(61, 3, 100060, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T23:19:15.000000Z\",\"updated_at\":\"2023-07-27T11:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-22T00:27:11.000000Z\",\"updated_at\":\"2021-08-22T00:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-22T00:27:45.000000Z\",\"updated_at\":\"2021-08-22T00:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:12:38.000000Z\",\"updated_at\":\"2023-08-26T13:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-25 00:57:52', '2023-10-25 00:57:52', NULL, 0.00),
(62, 3, 100061, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T23:19:15.000000Z\",\"updated_at\":\"2023-07-27T11:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-22T00:27:11.000000Z\",\"updated_at\":\"2021-08-22T00:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-22T00:27:45.000000Z\",\"updated_at\":\"2021-08-22T00:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:12:38.000000Z\",\"updated_at\":\"2023-08-26T13:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-25 01:01:35', '2023-10-25 01:01:35', NULL, 0.00);
INSERT INTO `order_details` (`id`, `food_id`, `order_id`, `price`, `food_details`, `variation`, `add_ons`, `discount_on_food`, `discount_type`, `quantity`, `tax_amount`, `variant`, `created_at`, `updated_at`, `item_campaign_id`, `total_add_on_price`) VALUES
(63, 4, 100062, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-25 03:12:11', '2023-10-25 03:12:11', NULL, 0.00),
(64, 4, 100063, 400.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Medium\",\"price\":\"400\"}]', '[]', 0.00, 'discount_on_product', 1, 16.00, '\"Medium\"', '2023-10-25 23:37:14', '2023-10-25 23:37:14', NULL, 0.00),
(65, 4, 100064, 400.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-22T00:27:32.000000Z\",\"updated_at\":\"2021-08-22T00:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:16:43.000000Z\",\"updated_at\":\"2023-08-26T13:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Medium\",\"price\":\"400\"}]', '[]', 0.00, 'discount_on_product', 1, 16.00, '\"Medium\"', '2023-10-26 01:25:33', '2023-10-26 01:25:33', NULL, 0.00),
(66, 3, 100065, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T23:19:15.000000Z\",\"updated_at\":\"2023-07-27T11:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-22T00:27:11.000000Z\",\"updated_at\":\"2021-08-22T00:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-22T00:27:45.000000Z\",\"updated_at\":\"2021-08-22T00:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:12:38.000000Z\",\"updated_at\":\"2023-08-26T13:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-26 01:45:19', '2023-10-26 01:45:19', NULL, 0.00),
(67, 3, 100066, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T23:19:15.000000Z\",\"updated_at\":\"2023-07-27T11:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-22T00:27:11.000000Z\",\"updated_at\":\"2021-08-22T00:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-22T00:27:45.000000Z\",\"updated_at\":\"2021-08-22T00:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:12:38.000000Z\",\"updated_at\":\"2023-08-26T13:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-26 02:32:47', '2023-10-26 02:32:47', NULL, 0.00),
(68, 3, 100067, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T23:19:15.000000Z\",\"updated_at\":\"2023-07-27T11:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-22T00:27:11.000000Z\",\"updated_at\":\"2021-08-22T00:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-22T00:27:45.000000Z\",\"updated_at\":\"2021-08-22T00:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:12:38.000000Z\",\"updated_at\":\"2023-08-26T13:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-26 03:03:45', '2023-10-26 03:03:45', NULL, 0.00),
(69, 3, 100068, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T23:19:15.000000Z\",\"updated_at\":\"2023-07-27T11:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-22T00:27:11.000000Z\",\"updated_at\":\"2021-08-22T00:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-22T00:27:45.000000Z\",\"updated_at\":\"2021-08-22T00:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:12:38.000000Z\",\"updated_at\":\"2023-08-26T13:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-26 03:12:25', '2023-10-26 03:12:25', NULL, 0.00),
(70, 3, 100069, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T23:19:15.000000Z\",\"updated_at\":\"2023-07-27T11:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-22T00:27:11.000000Z\",\"updated_at\":\"2021-08-22T00:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-22T00:27:45.000000Z\",\"updated_at\":\"2021-08-22T00:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:12:38.000000Z\",\"updated_at\":\"2023-08-26T13:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-26 03:16:01', '2023-10-26 03:16:01', NULL, 0.00),
(71, 3, 100070, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T23:19:15.000000Z\",\"updated_at\":\"2023-07-27T11:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-22T00:27:11.000000Z\",\"updated_at\":\"2021-08-22T00:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-22T00:27:45.000000Z\",\"updated_at\":\"2021-08-22T00:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-22T00:27:55.000000Z\",\"updated_at\":\"2021-08-22T00:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T16:12:38.000000Z\",\"updated_at\":\"2023-08-26T13:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-26 03:18:17', '2023-10-26 03:18:17', NULL, 0.00),
(72, 2, 100071, 300.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T23:19:15.000000Z\",\"updated_at\":\"2023-07-27T11:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T21:25:17.000000Z\",\"updated_at\":\"2022-12-29T21:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T13:08:05.000000Z\",\"updated_at\":\"2023-10-06T15:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":\"300\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":41,\"name\":\"picante\",\"price\":1,\"quantity\":\"1\"}]', 0.00, 'discount_on_product', 1, 12.00, '\"Small\"', '2023-10-28 05:37:52', '2023-10-28 05:37:52', NULL, 51.00),
(73, 7, 100072, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-30T11:46:46.000000Z\",\"updated_at\":\"2023-08-12T10:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"}]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-29 11:53:07', '2023-10-29 11:53:07', NULL, 30.00),
(74, 7, 100072, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-30T11:46:46.000000Z\",\"updated_at\":\"2023-08-12T10:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"}]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-29 11:53:07', '2023-10-29 11:53:07', NULL, 30.00),
(75, 26, 100072, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-22T00:27:45.000000Z\",\"updated_at\":\"2021-08-22T00:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":175,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-11T09:28:15.000000Z\",\"updated_at\":\"2023-10-11T09:28:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"200\"}]', '[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"}]', 175.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-10-29 11:53:07', '2023-10-29 11:53:07', NULL, 30.00),
(76, 29, 100072, 0.00, '{\"id\":29,\"name\":\"Tasty Pizza\",\"description\":\"This is too hot pizza. Such a yummy!\",\"image\":\"2023-10-12-6527d386c376c.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":0}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-22T00:27:45.000000Z\",\"updated_at\":\"2021-08-22T00:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"created_at\":\"2023-07-27T09:52:22.000000Z\",\"updated_at\":\"2023-07-27T09:52:22.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":400,\"tax\":4,\"tax_type\":\"percent\",\"discount\":350,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-12T11:07:50.000000Z\",\"updated_at\":\"2023-10-12T11:07:50.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"0\"}]', '[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"}]', 350.00, 'discount_on_product', 1, 0.00, '\"Large\"', '2023-10-29 11:53:07', '2023-10-29 11:53:07', NULL, 30.00),
(77, 3, 100073, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-21T12:27:11.000000Z\",\"updated_at\":\"2021-08-21T12:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T03:12:38.000000Z\",\"updated_at\":\"2023-08-26T01:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-30 12:56:03', '2023-10-30 12:56:03', NULL, 0.00),
(78, 35, 100074, 250.00, '{\"id\":35,\"name\":\"Coffee\",\"description\":\"Lorem ipsum sit amet\",\"image\":\"2023-10-30-653f7179094f8.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"small\",\"price\":200},{\"type\":\"large\",\"price\":250}],\"add_ons\":[{\"id\":36,\"name\":\"Tomato Sauce\",\"price\":10,\"created_at\":\"2021-08-21T14:44:58.000000Z\",\"updated_at\":\"2021-08-21T14:44:58.000000Z\",\"restaurant_id\":6,\"status\":1},{\"id\":37,\"name\":\"Hot Sauce\",\"price\":12,\"created_at\":\"2021-08-21T14:45:07.000000Z\",\"updated_at\":\"2021-08-21T14:45:07.000000Z\",\"restaurant_id\":6,\"status\":1},{\"id\":38,\"name\":\"Soft Drinks\",\"price\":20,\"created_at\":\"2021-08-21T14:45:48.000000Z\",\"updated_at\":\"2021-08-21T14:45:48.000000Z\",\"restaurant_id\":6,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"small\",\"large\"]}],\"price\":200,\"tax\":10,\"tax_type\":\"percent\",\"discount\":7,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":6,\"created_at\":\"2023-10-30T09:03:53.000000Z\",\"updated_at\":\"2023-10-30T09:03:53.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":\"10:00\",\"restaurant_closing_time\":\"23:00\",\"schedule_order\":false}', '[{\"type\":\"large\",\"price\":\"250\"}]', '[{\"id\":36,\"name\":\"Tomato Sauce\",\"price\":10,\"quantity\":\"1\"},{\"id\":37,\"name\":\"Hot Sauce\",\"price\":12,\"quantity\":\"1\"},{\"id\":38,\"name\":\"Soft Drinks\",\"price\":20,\"quantity\":\"1\"}]', 7.00, 'discount_on_product', 1, 25.00, '\"large\"', '2023-10-30 13:05:55', '2023-10-30 13:05:55', NULL, 42.00),
(79, 3, 100075, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-21T12:27:11.000000Z\",\"updated_at\":\"2021-08-21T12:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T03:12:38.000000Z\",\"updated_at\":\"2023-08-26T01:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-30 13:15:31', '2023-10-30 13:15:31', NULL, 0.00),
(80, 35, 100082, 200.00, '{\"id\":35,\"name\":\"Coffee\",\"description\":\"Lorem ipsum sit amet\",\"image\":\"2023-10-30-653f7179094f8.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"small\",\"price\":200},{\"type\":\"large\",\"price\":250}],\"add_ons\":[{\"id\":36,\"name\":\"Tomato Sauce\",\"price\":10,\"created_at\":\"2021-08-21T14:44:58.000000Z\",\"updated_at\":\"2021-08-21T14:44:58.000000Z\",\"restaurant_id\":6,\"status\":1},{\"id\":37,\"name\":\"Hot Sauce\",\"price\":12,\"created_at\":\"2021-08-21T14:45:07.000000Z\",\"updated_at\":\"2021-08-21T14:45:07.000000Z\",\"restaurant_id\":6,\"status\":1},{\"id\":38,\"name\":\"Soft Drinks\",\"price\":20,\"created_at\":\"2021-08-21T14:45:48.000000Z\",\"updated_at\":\"2021-08-21T14:45:48.000000Z\",\"restaurant_id\":6,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"small\",\"large\"]}],\"price\":200,\"tax\":10,\"tax_type\":\"percent\",\"discount\":7,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":6,\"created_at\":\"2023-10-30T09:03:53.000000Z\",\"updated_at\":\"2023-10-30T09:03:53.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":\"10:00\",\"restaurant_closing_time\":\"23:00\",\"schedule_order\":false}', '[{\"type\":\"small\",\"price\":\"200\"}]', '[{\"id\":36,\"name\":\"Tomato Sauce\",\"price\":10,\"quantity\":\"1\"},{\"id\":37,\"name\":\"Hot Sauce\",\"price\":12,\"quantity\":\"1\"},{\"id\":38,\"name\":\"Soft Drinks\",\"price\":20,\"quantity\":\"1\"}]', 7.00, 'discount_on_product', 1, 20.00, '\"small\"', '2023-10-30 13:30:01', '2023-10-30 13:30:01', NULL, 42.00),
(81, 2, 100083, 10.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-06T03:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"10\"}]', '[]', 0.00, 'discount_on_product', 1, 0.00, '\"Large\"', '2023-10-30 14:37:18', '2023-10-30 14:37:18', NULL, 0.00),
(82, 7, 100083, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-08-11T22:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-30 14:37:18', '2023-10-30 14:37:18', NULL, 0.00),
(83, 7, 100083, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-08-11T22:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-30 14:37:18', '2023-10-30 14:37:18', NULL, 0.00),
(84, 26, 100083, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":175,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-10T21:28:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"200\"}]', '[]', 175.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-10-30 14:37:18', '2023-10-30 14:37:18', NULL, 0.00),
(85, 29, 100083, 0.00, '{\"id\":29,\"name\":\"Tasty Pizza\",\"description\":\"This is too hot pizza. Such a yummy!\",\"image\":\"2023-10-12-6527d386c376c.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":0}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"created_at\":\"2023-07-26T21:52:22.000000Z\",\"updated_at\":\"2023-07-26T21:52:22.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":400,\"tax\":4,\"tax_type\":\"percent\",\"discount\":350,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-11T23:07:50.000000Z\",\"updated_at\":\"2023-10-11T23:07:50.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"0\"}]', '[]', 350.00, 'discount_on_product', 1, 0.00, '\"Large\"', '2023-10-30 14:37:18', '2023-10-30 14:37:18', NULL, 0.00),
(86, 2, 100084, 10.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-06T03:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"10\"}]', '[]', 0.00, 'discount_on_product', 1, 0.00, '\"Large\"', '2023-10-30 14:37:58', '2023-10-30 14:37:58', NULL, 0.00),
(87, 7, 100084, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-08-11T22:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-30 14:37:58', '2023-10-30 14:37:58', NULL, 0.00),
(88, 7, 100084, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-08-11T22:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-30 14:37:58', '2023-10-30 14:37:58', NULL, 0.00),
(89, 26, 100084, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":175,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-10T21:28:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"200\"}]', '[]', 175.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-10-30 14:37:58', '2023-10-30 14:37:58', NULL, 0.00),
(90, 29, 100084, 0.00, '{\"id\":29,\"name\":\"Tasty Pizza\",\"description\":\"This is too hot pizza. Such a yummy!\",\"image\":\"2023-10-12-6527d386c376c.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":0}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"created_at\":\"2023-07-26T21:52:22.000000Z\",\"updated_at\":\"2023-07-26T21:52:22.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":400,\"tax\":4,\"tax_type\":\"percent\",\"discount\":350,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-11T23:07:50.000000Z\",\"updated_at\":\"2023-10-11T23:07:50.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"0\"}]', '[]', 350.00, 'discount_on_product', 1, 0.00, '\"Large\"', '2023-10-30 14:37:58', '2023-10-30 14:37:58', NULL, 0.00),
(91, 2, 100085, 10.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-06T03:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"10\"}]', '[]', 0.00, 'discount_on_product', 1, 0.00, '\"Large\"', '2023-10-30 14:37:58', '2023-10-30 14:37:58', NULL, 0.00),
(92, 7, 100085, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-08-11T22:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-30 14:37:58', '2023-10-30 14:37:58', NULL, 0.00),
(93, 7, 100085, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-08-11T22:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-30 14:37:58', '2023-10-30 14:37:58', NULL, 0.00),
(94, 26, 100085, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":175,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-10T21:28:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"200\"}]', '[]', 175.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-10-30 14:37:59', '2023-10-30 14:37:59', NULL, 0.00),
(95, 29, 100085, 0.00, '{\"id\":29,\"name\":\"Tasty Pizza\",\"description\":\"This is too hot pizza. Such a yummy!\",\"image\":\"2023-10-12-6527d386c376c.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":0}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"created_at\":\"2023-07-26T21:52:22.000000Z\",\"updated_at\":\"2023-07-26T21:52:22.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":400,\"tax\":4,\"tax_type\":\"percent\",\"discount\":350,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-11T23:07:50.000000Z\",\"updated_at\":\"2023-10-11T23:07:50.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"0\"}]', '[]', 350.00, 'discount_on_product', 1, 0.00, '\"Large\"', '2023-10-30 14:37:59', '2023-10-30 14:37:59', NULL, 0.00);
INSERT INTO `order_details` (`id`, `food_id`, `order_id`, `price`, `food_details`, `variation`, `add_ons`, `discount_on_food`, `discount_type`, `quantity`, `tax_amount`, `variant`, `created_at`, `updated_at`, `item_campaign_id`, `total_add_on_price`) VALUES
(96, 2, 100086, 10.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-06T03:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"10\"}]', '[]', 0.00, 'discount_on_product', 1, 0.00, '\"Large\"', '2023-10-30 14:37:59', '2023-10-30 14:37:59', NULL, 0.00),
(97, 7, 100086, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-08-11T22:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-30 14:37:59', '2023-10-30 14:37:59', NULL, 0.00),
(98, 7, 100086, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-08-11T22:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-30 14:37:59', '2023-10-30 14:37:59', NULL, 0.00),
(99, 26, 100086, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":175,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-10T21:28:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"200\"}]', '[]', 175.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-10-30 14:37:59', '2023-10-30 14:37:59', NULL, 0.00),
(100, 29, 100086, 0.00, '{\"id\":29,\"name\":\"Tasty Pizza\",\"description\":\"This is too hot pizza. Such a yummy!\",\"image\":\"2023-10-12-6527d386c376c.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":0}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"created_at\":\"2023-07-26T21:52:22.000000Z\",\"updated_at\":\"2023-07-26T21:52:22.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":400,\"tax\":4,\"tax_type\":\"percent\",\"discount\":350,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-11T23:07:50.000000Z\",\"updated_at\":\"2023-10-11T23:07:50.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"0\"}]', '[]', 350.00, 'discount_on_product', 1, 0.00, '\"Large\"', '2023-10-30 14:37:59', '2023-10-30 14:37:59', NULL, 0.00),
(101, 2, 100087, 10.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-06T03:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"10\"}]', '[]', 0.00, 'discount_on_product', 1, 0.00, '\"Large\"', '2023-10-30 14:38:01', '2023-10-30 14:38:01', NULL, 0.00),
(102, 7, 100087, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-08-11T22:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-30 14:38:01', '2023-10-30 14:38:01', NULL, 0.00),
(103, 7, 100087, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-08-11T22:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-30 14:38:01', '2023-10-30 14:38:01', NULL, 0.00),
(104, 26, 100087, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":175,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-10T21:28:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"200\"}]', '[]', 175.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-10-30 14:38:01', '2023-10-30 14:38:01', NULL, 0.00),
(105, 29, 100087, 0.00, '{\"id\":29,\"name\":\"Tasty Pizza\",\"description\":\"This is too hot pizza. Such a yummy!\",\"image\":\"2023-10-12-6527d386c376c.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":0}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"created_at\":\"2023-07-26T21:52:22.000000Z\",\"updated_at\":\"2023-07-26T21:52:22.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":400,\"tax\":4,\"tax_type\":\"percent\",\"discount\":350,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-11T23:07:50.000000Z\",\"updated_at\":\"2023-10-11T23:07:50.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"0\"}]', '[]', 350.00, 'discount_on_product', 1, 0.00, '\"Large\"', '2023-10-30 14:38:01', '2023-10-30 14:38:01', NULL, 0.00),
(106, 2, 100088, 10.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-06T03:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"10\"}]', '[]', 0.00, 'discount_on_product', 1, 0.00, '\"Large\"', '2023-10-30 14:38:03', '2023-10-30 14:38:03', NULL, 0.00),
(107, 7, 100088, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-08-11T22:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-30 14:38:03', '2023-10-30 14:38:03', NULL, 0.00),
(108, 7, 100088, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-08-11T22:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-30 14:38:03', '2023-10-30 14:38:03', NULL, 0.00),
(109, 26, 100088, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":175,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-10T21:28:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"200\"}]', '[]', 175.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-10-30 14:38:03', '2023-10-30 14:38:03', NULL, 0.00),
(110, 29, 100088, 0.00, '{\"id\":29,\"name\":\"Tasty Pizza\",\"description\":\"This is too hot pizza. Such a yummy!\",\"image\":\"2023-10-12-6527d386c376c.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":0}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"created_at\":\"2023-07-26T21:52:22.000000Z\",\"updated_at\":\"2023-07-26T21:52:22.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":400,\"tax\":4,\"tax_type\":\"percent\",\"discount\":350,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-11T23:07:50.000000Z\",\"updated_at\":\"2023-10-11T23:07:50.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"0\"}]', '[]', 350.00, 'discount_on_product', 1, 0.00, '\"Large\"', '2023-10-30 14:38:03', '2023-10-30 14:38:03', NULL, 0.00),
(111, 2, 100089, 10.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-06T03:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"10\"}]', '[]', 0.00, 'discount_on_product', 1, 0.00, '\"Large\"', '2023-10-30 14:38:04', '2023-10-30 14:38:04', NULL, 0.00),
(112, 7, 100089, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-08-11T22:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-30 14:38:04', '2023-10-30 14:38:04', NULL, 0.00),
(113, 7, 100089, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-08-11T22:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-30 14:38:04', '2023-10-30 14:38:04', NULL, 0.00),
(114, 26, 100089, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":175,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-10T21:28:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"200\"}]', '[]', 175.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-10-30 14:38:04', '2023-10-30 14:38:04', NULL, 0.00),
(115, 29, 100089, 0.00, '{\"id\":29,\"name\":\"Tasty Pizza\",\"description\":\"This is too hot pizza. Such a yummy!\",\"image\":\"2023-10-12-6527d386c376c.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":0}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"created_at\":\"2023-07-26T21:52:22.000000Z\",\"updated_at\":\"2023-07-26T21:52:22.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":400,\"tax\":4,\"tax_type\":\"percent\",\"discount\":350,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-11T23:07:50.000000Z\",\"updated_at\":\"2023-10-11T23:07:50.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"0\"}]', '[]', 350.00, 'discount_on_product', 1, 0.00, '\"Large\"', '2023-10-30 14:38:04', '2023-10-30 14:38:04', NULL, 0.00),
(116, 2, 100090, 10.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-06T03:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"10\"}]', '[]', 0.00, 'discount_on_product', 1, 0.00, '\"Large\"', '2023-10-30 14:38:05', '2023-10-30 14:38:05', NULL, 0.00),
(117, 7, 100090, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-08-11T22:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-30 14:38:05', '2023-10-30 14:38:05', NULL, 0.00),
(118, 7, 100090, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-08-11T22:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-30 14:38:05', '2023-10-30 14:38:05', NULL, 0.00),
(119, 26, 100090, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":175,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-10T21:28:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"200\"}]', '[]', 175.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-10-30 14:38:06', '2023-10-30 14:38:06', NULL, 0.00),
(120, 29, 100090, 0.00, '{\"id\":29,\"name\":\"Tasty Pizza\",\"description\":\"This is too hot pizza. Such a yummy!\",\"image\":\"2023-10-12-6527d386c376c.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":0}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"created_at\":\"2023-07-26T21:52:22.000000Z\",\"updated_at\":\"2023-07-26T21:52:22.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":400,\"tax\":4,\"tax_type\":\"percent\",\"discount\":350,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-11T23:07:50.000000Z\",\"updated_at\":\"2023-10-11T23:07:50.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"0\"}]', '[]', 350.00, 'discount_on_product', 1, 0.00, '\"Large\"', '2023-10-30 14:38:06', '2023-10-30 14:38:06', NULL, 0.00),
(121, 2, 100091, 10.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-06T03:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"10\"}]', '[]', 0.00, 'discount_on_product', 1, 0.00, '\"Large\"', '2023-10-30 14:38:07', '2023-10-30 14:38:07', NULL, 0.00),
(122, 7, 100091, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-08-11T22:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-30 14:38:07', '2023-10-30 14:38:07', NULL, 0.00),
(123, 7, 100091, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-08-11T22:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-30 14:38:08', '2023-10-30 14:38:08', NULL, 0.00),
(124, 26, 100091, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":175,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-10T21:28:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"200\"}]', '[]', 175.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-10-30 14:38:08', '2023-10-30 14:38:08', NULL, 0.00),
(125, 29, 100091, 0.00, '{\"id\":29,\"name\":\"Tasty Pizza\",\"description\":\"This is too hot pizza. Such a yummy!\",\"image\":\"2023-10-12-6527d386c376c.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":0}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"created_at\":\"2023-07-26T21:52:22.000000Z\",\"updated_at\":\"2023-07-26T21:52:22.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":400,\"tax\":4,\"tax_type\":\"percent\",\"discount\":350,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-11T23:07:50.000000Z\",\"updated_at\":\"2023-10-11T23:07:50.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"0\"}]', '[]', 350.00, 'discount_on_product', 1, 0.00, '\"Large\"', '2023-10-30 14:38:08', '2023-10-30 14:38:08', NULL, 0.00),
(126, 2, 100092, 10.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-06T03:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"10\"}]', '[]', 0.00, 'discount_on_product', 1, 0.00, '\"Large\"', '2023-10-30 14:38:10', '2023-10-30 14:38:10', NULL, 0.00),
(127, 7, 100092, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-08-11T22:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-30 14:38:10', '2023-10-30 14:38:10', NULL, 0.00),
(128, 7, 100092, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-08-11T22:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-30 14:38:10', '2023-10-30 14:38:10', NULL, 0.00),
(129, 26, 100092, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":175,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-10T21:28:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"200\"}]', '[]', 175.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-10-30 14:38:10', '2023-10-30 14:38:10', NULL, 0.00),
(130, 29, 100092, 0.00, '{\"id\":29,\"name\":\"Tasty Pizza\",\"description\":\"This is too hot pizza. Such a yummy!\",\"image\":\"2023-10-12-6527d386c376c.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":0}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"created_at\":\"2023-07-26T21:52:22.000000Z\",\"updated_at\":\"2023-07-26T21:52:22.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":400,\"tax\":4,\"tax_type\":\"percent\",\"discount\":350,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-11T23:07:50.000000Z\",\"updated_at\":\"2023-10-11T23:07:50.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"0\"}]', '[]', 350.00, 'discount_on_product', 1, 0.00, '\"Large\"', '2023-10-30 14:38:10', '2023-10-30 14:38:10', NULL, 0.00),
(131, 2, 100093, 10.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-06T03:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"10\"}]', '[]', 0.00, 'discount_on_product', 1, 0.00, '\"Large\"', '2023-10-30 14:38:22', '2023-10-30 14:38:22', NULL, 0.00),
(132, 7, 100093, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-08-11T22:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-30 14:38:22', '2023-10-30 14:38:22', NULL, 0.00),
(133, 7, 100093, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-08-11T22:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-30 14:38:22', '2023-10-30 14:38:22', NULL, 0.00),
(134, 26, 100093, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":175,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-10T21:28:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"200\"}]', '[]', 175.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-10-30 14:38:22', '2023-10-30 14:38:22', NULL, 0.00);
INSERT INTO `order_details` (`id`, `food_id`, `order_id`, `price`, `food_details`, `variation`, `add_ons`, `discount_on_food`, `discount_type`, `quantity`, `tax_amount`, `variant`, `created_at`, `updated_at`, `item_campaign_id`, `total_add_on_price`) VALUES
(135, 29, 100093, 0.00, '{\"id\":29,\"name\":\"Tasty Pizza\",\"description\":\"This is too hot pizza. Such a yummy!\",\"image\":\"2023-10-12-6527d386c376c.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":0}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"created_at\":\"2023-07-26T21:52:22.000000Z\",\"updated_at\":\"2023-07-26T21:52:22.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":400,\"tax\":4,\"tax_type\":\"percent\",\"discount\":350,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-11T23:07:50.000000Z\",\"updated_at\":\"2023-10-11T23:07:50.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"0\"}]', '[]', 350.00, 'discount_on_product', 1, 0.00, '\"Large\"', '2023-10-30 14:38:22', '2023-10-30 14:38:22', NULL, 0.00),
(136, 2, 100094, 300.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-06T03:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":\"300\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"quantity\":\"1\"}]', 0.00, 'discount_on_product', 1, 12.00, '\"Small\"', '2023-10-30 14:40:14', '2023-10-30 14:40:14', NULL, 100.00),
(137, 16, 100094, 10.00, '{\"id\":16,\"name\":\"Test Product\",\"description\":\"Descriptioin\",\"image\":\"2023-10-10-65254195e7d62.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"small\",\"price\":10}],\"add_ons\":[{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"created_at\":\"2023-07-26T21:52:22.000000Z\",\"updated_at\":\"2023-07-26T21:52:22.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"small\"]}],\"price\":1,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"18:31:00\",\"available_time_ends\":\"18:31:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-08-12T00:10:50.000000Z\",\"updated_at\":\"2023-10-10T00:20:37.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"small\",\"price\":\"10\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"quantity\":\"1\"}]', 0.00, 'discount_on_product', 1, 0.00, '\"small\"', '2023-10-30 14:40:14', '2023-10-30 14:40:14', NULL, 100.00),
(138, 35, 100095, 250.00, '{\"id\":35,\"name\":\"Coffee\",\"description\":\"Lorem ipsum sit amet\",\"image\":\"2023-10-30-653f7179094f8.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"small\",\"price\":200},{\"type\":\"large\",\"price\":250}],\"add_ons\":[{\"id\":36,\"name\":\"Tomato Sauce\",\"price\":10,\"created_at\":\"2021-08-21T14:44:58.000000Z\",\"updated_at\":\"2021-08-21T14:44:58.000000Z\",\"restaurant_id\":6,\"status\":1},{\"id\":37,\"name\":\"Hot Sauce\",\"price\":12,\"created_at\":\"2021-08-21T14:45:07.000000Z\",\"updated_at\":\"2021-08-21T14:45:07.000000Z\",\"restaurant_id\":6,\"status\":1},{\"id\":38,\"name\":\"Soft Drinks\",\"price\":20,\"created_at\":\"2021-08-21T14:45:48.000000Z\",\"updated_at\":\"2021-08-21T14:45:48.000000Z\",\"restaurant_id\":6,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"small\",\"large\"]}],\"price\":200,\"tax\":10,\"tax_type\":\"percent\",\"discount\":7,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":6,\"created_at\":\"2023-10-30T09:03:53.000000Z\",\"updated_at\":\"2023-10-30T09:03:53.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":\"10:00\",\"restaurant_closing_time\":\"23:00\",\"schedule_order\":false}', '[{\"type\":\"large\",\"price\":\"250\"}]', '[{\"id\":36,\"name\":\"Tomato Sauce\",\"price\":10,\"quantity\":\"1\"},{\"id\":37,\"name\":\"Hot Sauce\",\"price\":12,\"quantity\":\"1\"},{\"id\":38,\"name\":\"Soft Drinks\",\"price\":20,\"quantity\":\"1\"}]', 7.00, 'discount_on_product', 1, 25.00, '\"large\"', '2023-10-30 14:51:58', '2023-10-30 14:51:58', NULL, 42.00),
(139, 2, 100096, 300.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-06T03:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":\"300\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":41,\"name\":\"picante\",\"price\":1,\"quantity\":\"1\"}]', 0.00, 'discount_on_product', 1, 12.00, '\"Small\"', '2023-10-30 14:55:12', '2023-10-30 14:55:12', NULL, 51.00),
(140, 35, 100097, 250.00, '{\"id\":35,\"name\":\"Coffee\",\"description\":\"Lorem ipsum sit amet\",\"image\":\"2023-10-30-653f7179094f8.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"small\",\"price\":200},{\"type\":\"large\",\"price\":250}],\"add_ons\":[{\"id\":36,\"name\":\"Tomato Sauce\",\"price\":10,\"created_at\":\"2021-08-21T14:44:58.000000Z\",\"updated_at\":\"2021-08-21T14:44:58.000000Z\",\"restaurant_id\":6,\"status\":1},{\"id\":37,\"name\":\"Hot Sauce\",\"price\":12,\"created_at\":\"2021-08-21T14:45:07.000000Z\",\"updated_at\":\"2021-08-21T14:45:07.000000Z\",\"restaurant_id\":6,\"status\":1},{\"id\":38,\"name\":\"Soft Drinks\",\"price\":20,\"created_at\":\"2021-08-21T14:45:48.000000Z\",\"updated_at\":\"2021-08-21T14:45:48.000000Z\",\"restaurant_id\":6,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"small\",\"large\"]}],\"price\":200,\"tax\":10,\"tax_type\":\"percent\",\"discount\":7,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":6,\"created_at\":\"2023-10-30T09:03:53.000000Z\",\"updated_at\":\"2023-10-30T09:03:53.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":\"10:00\",\"restaurant_closing_time\":\"23:00\",\"schedule_order\":false}', '[{\"type\":\"large\",\"price\":\"250\"}]', '[{\"id\":36,\"name\":\"Tomato Sauce\",\"price\":10,\"quantity\":\"1\"},{\"id\":37,\"name\":\"Hot Sauce\",\"price\":12,\"quantity\":\"1\"},{\"id\":38,\"name\":\"Soft Drinks\",\"price\":20,\"quantity\":\"1\"}]', 7.00, 'discount_on_product', 1, 25.00, '\"large\"', '2023-10-30 15:06:04', '2023-10-30 15:06:04', NULL, 42.00),
(141, 2, 100098, 300.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-06T03:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":\"300\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":41,\"name\":\"picante\",\"price\":1,\"quantity\":\"1\"}]', 0.00, 'discount_on_product', 1, 12.00, '\"Small\"', '2023-10-30 15:14:35', '2023-10-30 15:14:35', NULL, 51.00),
(142, 2, 100099, 300.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-06T03:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":\"300\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":41,\"name\":\"picante\",\"price\":1,\"quantity\":\"1\"}]', 0.00, 'discount_on_product', 1, 12.00, '\"Small\"', '2023-10-30 15:17:06', '2023-10-30 15:17:06', NULL, 51.00),
(143, 3, 100100, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-21T12:27:11.000000Z\",\"updated_at\":\"2021-08-21T12:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T03:12:38.000000Z\",\"updated_at\":\"2023-08-26T01:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-30 15:18:39', '2023-10-30 15:18:39', NULL, 0.00),
(144, 3, 100101, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-21T12:27:11.000000Z\",\"updated_at\":\"2021-08-21T12:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T03:12:38.000000Z\",\"updated_at\":\"2023-08-26T01:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-30 15:18:54', '2023-10-30 15:18:54', NULL, 0.00),
(145, 3, 100102, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-21T12:27:11.000000Z\",\"updated_at\":\"2021-08-21T12:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T03:12:38.000000Z\",\"updated_at\":\"2023-08-26T01:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-30 15:19:52', '2023-10-30 15:19:52', NULL, 0.00),
(146, 3, 100103, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-21T12:27:11.000000Z\",\"updated_at\":\"2021-08-21T12:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T03:12:38.000000Z\",\"updated_at\":\"2023-08-26T01:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-30 15:20:19', '2023-10-30 15:20:19', NULL, 0.00),
(147, 3, 100104, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-21T12:27:11.000000Z\",\"updated_at\":\"2021-08-21T12:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T03:12:38.000000Z\",\"updated_at\":\"2023-08-26T01:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-30 15:52:10', '2023-10-30 15:52:10', NULL, 0.00),
(148, 3, 100105, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-21T12:27:11.000000Z\",\"updated_at\":\"2021-08-21T12:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T03:12:38.000000Z\",\"updated_at\":\"2023-08-26T01:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-30 15:52:34', '2023-10-30 15:52:34', NULL, 0.00),
(149, 2, 100106, 300.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-06T03:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Small\"', '2023-10-30 15:54:26', '2023-10-30 15:54:26', NULL, 0.00),
(150, 2, 100107, 10.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-06T03:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"10\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"},{\"id\":41,\"name\":\"picante\",\"price\":1,\"quantity\":\"1\"}]', 0.00, 'discount_on_product', 1, 0.00, '\"Large\"', '2023-10-31 10:09:57', '2023-10-31 10:09:57', NULL, 81.00),
(151, 2, 100107, 300.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-06T03:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":\"300\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"},{\"id\":41,\"name\":\"picante\",\"price\":1,\"quantity\":\"1\"}]', 0.00, 'discount_on_product', 1, 12.00, '\"Small\"', '2023-10-31 10:09:57', '2023-10-31 10:09:57', NULL, 81.00),
(152, 26, 100107, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":175,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-10T21:28:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"200\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"},{\"id\":41,\"name\":\"picante\",\"price\":1,\"quantity\":\"1\"}]', 175.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-10-31 10:09:57', '2023-10-31 10:09:57', NULL, 81.00),
(153, 2, 100108, 300.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-06T03:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":\"300\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"}]', 0.00, 'discount_on_product', 1, 12.00, '\"Small\"', '2023-10-31 10:21:21', '2023-10-31 10:21:21', NULL, 80.00),
(154, 26, 100108, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":175,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-10T21:28:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"200\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"}]', 175.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-10-31 10:21:21', '2023-10-31 10:21:21', NULL, 80.00),
(155, 2, 100109, 300.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-06T03:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":\"300\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"},{\"id\":41,\"name\":\"picante\",\"price\":1,\"quantity\":\"1\"},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"quantity\":\"1\"}]', 0.00, 'discount_on_product', 1, 12.00, '\"Small\"', '2023-10-31 10:26:49', '2023-10-31 10:26:49', NULL, 131.00),
(156, 2, 100109, 300.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-06T03:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":\"300\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"},{\"id\":41,\"name\":\"picante\",\"price\":1,\"quantity\":\"1\"},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"quantity\":\"1\"}]', 0.00, 'discount_on_product', 1, 12.00, '\"Small\"', '2023-10-31 10:26:49', '2023-10-31 10:26:49', NULL, 131.00),
(157, 16, 100109, 10.00, '{\"id\":16,\"name\":\"Test Product\",\"description\":\"Descriptioin\",\"image\":\"2023-10-10-65254195e7d62.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"small\",\"price\":10}],\"add_ons\":[{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"created_at\":\"2023-07-26T21:52:22.000000Z\",\"updated_at\":\"2023-07-26T21:52:22.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"small\"]}],\"price\":1,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"18:31:00\",\"available_time_ends\":\"18:31:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-08-12T00:10:50.000000Z\",\"updated_at\":\"2023-10-10T00:20:37.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"small\",\"price\":\"10\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"},{\"id\":41,\"name\":\"picante\",\"price\":1,\"quantity\":\"1\"},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"quantity\":\"1\"}]', 0.00, 'discount_on_product', 1, 0.00, '\"small\"', '2023-10-31 10:26:49', '2023-10-31 10:26:49', NULL, 131.00),
(158, 26, 100109, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":175,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-10T21:28:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"200\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"},{\"id\":41,\"name\":\"picante\",\"price\":1,\"quantity\":\"1\"},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"quantity\":\"1\"}]', 175.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-10-31 10:26:49', '2023-10-31 10:26:49', NULL, 131.00),
(159, 26, 100109, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":175,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-10T21:28:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"200\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"},{\"id\":41,\"name\":\"picante\",\"price\":1,\"quantity\":\"1\"},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"quantity\":\"1\"}]', 175.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-10-31 10:26:49', '2023-10-31 10:26:49', NULL, 131.00),
(160, 2, 100110, 300.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-06T03:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":\"300\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":41,\"name\":\"picante\",\"price\":1,\"quantity\":\"1\"}]', 0.00, 'discount_on_product', 1, 12.00, '\"Small\"', '2023-10-31 11:58:04', '2023-10-31 11:58:04', NULL, 51.00),
(161, 2, 100111, 300.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-06T03:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":\"300\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":12,\"name\":\"salad\",\"price\":10,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"},{\"id\":41,\"name\":\"picante\",\"price\":1,\"quantity\":\"1\"},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"quantity\":\"1\"}]', 0.00, 'discount_on_product', 1, 12.00, '\"Small\"', '2023-10-31 12:00:04', '2023-10-31 12:00:04', NULL, 141.00),
(162, 7, 100111, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-08-11T22:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":12,\"name\":\"salad\",\"price\":10,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"},{\"id\":41,\"name\":\"picante\",\"price\":1,\"quantity\":\"1\"},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"quantity\":\"1\"}]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-31 12:00:04', '2023-10-31 12:00:04', NULL, 141.00),
(163, 28, 100111, 350.00, '{\"id\":28,\"name\":\"Tasty fries\",\"description\":\"This is our most popular product. too Yummy!\",\"image\":\"2023-10-31-6540b167f0795.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":350},{\"type\":\"Medium\",\"price\":300},{\"type\":\"Small\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"created_at\":\"2023-07-26T21:52:22.000000Z\",\"updated_at\":\"2023-07-26T21:52:22.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\",\"Medium\",\"Small\"]}],\"price\":350,\"tax\":4,\"tax_type\":\"percent\",\"discount\":300,\"discount_type\":\"amount\",\"available_time_starts\":\"12:48:00\",\"available_time_ends\":\"00:48:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T22:18:53.000000Z\",\"updated_at\":\"2023-10-31T07:48:55.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"350\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":12,\"name\":\"salad\",\"price\":10,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"},{\"id\":41,\"name\":\"picante\",\"price\":1,\"quantity\":\"1\"},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"quantity\":\"1\"}]', 300.00, 'discount_on_product', 1, 14.00, '\"Large\"', '2023-10-31 12:00:04', '2023-10-31 12:00:04', NULL, 141.00);
INSERT INTO `order_details` (`id`, `food_id`, `order_id`, `price`, `food_details`, `variation`, `add_ons`, `discount_on_food`, `discount_type`, `quantity`, `tax_amount`, `variant`, `created_at`, `updated_at`, `item_campaign_id`, `total_add_on_price`) VALUES
(164, 29, 100111, 600.00, '{\"id\":29,\"name\":\"Tasty Pizza\",\"description\":\"This is too hot pizza. Such a yummy!\",\"image\":\"2023-10-12-6527d386c376c.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":600},{\"type\":\"Medium\",\"price\":500},{\"type\":\"Small\",\"price\":400}],\"add_ons\":[{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-21T12:27:11.000000Z\",\"updated_at\":\"2021-08-21T12:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\",\"Medium\",\"Small\"]}],\"price\":400,\"tax\":4,\"tax_type\":\"percent\",\"discount\":350,\"discount_type\":\"amount\",\"available_time_starts\":\"11:44:00\",\"available_time_ends\":\"23:44:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-11T23:07:50.000000Z\",\"updated_at\":\"2023-10-31T07:45:06.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"600\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":12,\"name\":\"salad\",\"price\":10,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"},{\"id\":41,\"name\":\"picante\",\"price\":1,\"quantity\":\"1\"},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"quantity\":\"1\"}]', 350.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-31 12:00:04', '2023-10-31 12:00:04', NULL, 141.00),
(165, 3, 100112, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-21T12:27:11.000000Z\",\"updated_at\":\"2021-08-21T12:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T03:12:38.000000Z\",\"updated_at\":\"2023-08-26T01:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-31 12:00:55', '2023-10-31 12:00:55', NULL, 0.00),
(166, 4, 100113, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-21T12:27:32.000000Z\",\"updated_at\":\"2021-08-21T12:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T03:16:43.000000Z\",\"updated_at\":\"2023-08-26T01:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-31 12:03:28', '2023-10-31 12:03:28', NULL, 0.00),
(167, 2, 100114, 300.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-06T03:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":\"300\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"}]', 0.00, 'discount_on_product', 1, 12.00, '\"Small\"', '2023-10-31 12:06:07', '2023-10-31 12:06:07', NULL, 80.00),
(168, 7, 100114, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-08-11T22:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"}]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-31 12:06:07', '2023-10-31 12:06:07', NULL, 80.00),
(169, 26, 100114, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":175,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-10T21:28:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"200\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"}]', 175.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-10-31 12:06:07', '2023-10-31 12:06:07', NULL, 80.00),
(170, 28, 100114, 350.00, '{\"id\":28,\"name\":\"Tasty fries\",\"description\":\"This is our most popular product. too Yummy!\",\"image\":\"2023-10-31-6540b167f0795.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":350},{\"type\":\"Medium\",\"price\":300},{\"type\":\"Small\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"created_at\":\"2023-07-26T21:52:22.000000Z\",\"updated_at\":\"2023-07-26T21:52:22.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\",\"Medium\",\"Small\"]}],\"price\":350,\"tax\":4,\"tax_type\":\"percent\",\"discount\":300,\"discount_type\":\"amount\",\"available_time_starts\":\"12:48:00\",\"available_time_ends\":\"00:48:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T22:18:53.000000Z\",\"updated_at\":\"2023-10-31T07:48:55.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"350\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"}]', 300.00, 'discount_on_product', 1, 14.00, '\"Large\"', '2023-10-31 12:06:07', '2023-10-31 12:06:07', NULL, 80.00),
(171, 4, 100115, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-21T12:27:32.000000Z\",\"updated_at\":\"2021-08-21T12:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T03:16:43.000000Z\",\"updated_at\":\"2023-08-26T01:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-31 12:10:33', '2023-10-31 12:10:33', NULL, 0.00),
(172, 2, 100116, 300.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-06T03:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":\"300\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"}]', 0.00, 'discount_on_product', 1, 12.00, '\"Small\"', '2023-10-31 12:14:13', '2023-10-31 12:14:13', NULL, 80.00),
(173, 7, 100116, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-08-11T22:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"}]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-31 12:14:13', '2023-10-31 12:14:13', NULL, 80.00),
(174, 26, 100116, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":175,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-10T21:28:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"200\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"}]', 175.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-10-31 12:14:13', '2023-10-31 12:14:13', NULL, 80.00),
(175, 28, 100116, 350.00, '{\"id\":28,\"name\":\"Tasty fries\",\"description\":\"This is our most popular product. too Yummy!\",\"image\":\"2023-10-31-6540b167f0795.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":350},{\"type\":\"Medium\",\"price\":300},{\"type\":\"Small\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"created_at\":\"2023-07-26T21:52:22.000000Z\",\"updated_at\":\"2023-07-26T21:52:22.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\",\"Medium\",\"Small\"]}],\"price\":350,\"tax\":4,\"tax_type\":\"percent\",\"discount\":300,\"discount_type\":\"amount\",\"available_time_starts\":\"12:48:00\",\"available_time_ends\":\"00:48:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T22:18:53.000000Z\",\"updated_at\":\"2023-10-31T07:48:55.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"350\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"}]', 300.00, 'discount_on_product', 1, 14.00, '\"Large\"', '2023-10-31 12:14:14', '2023-10-31 12:14:14', NULL, 80.00),
(176, 4, 100117, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-21T12:27:32.000000Z\",\"updated_at\":\"2021-08-21T12:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T03:16:43.000000Z\",\"updated_at\":\"2023-08-26T01:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-31 12:23:21', '2023-10-31 12:23:21', NULL, 0.00),
(177, 3, 100118, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-21T12:27:11.000000Z\",\"updated_at\":\"2021-08-21T12:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T03:12:38.000000Z\",\"updated_at\":\"2023-08-26T01:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-31 12:24:43', '2023-10-31 12:24:43', NULL, 0.00),
(178, 4, 100119, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-21T12:27:32.000000Z\",\"updated_at\":\"2021-08-21T12:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T03:16:43.000000Z\",\"updated_at\":\"2023-08-26T01:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-31 12:30:13', '2023-10-31 12:30:13', NULL, 0.00),
(179, 29, 100120, 600.00, '{\"id\":29,\"name\":\"Tasty Pizza\",\"description\":\"This is too hot pizza. Such a yummy!\",\"image\":\"2023-10-12-6527d386c376c.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":600},{\"type\":\"Medium\",\"price\":500},{\"type\":\"Small\",\"price\":400}],\"add_ons\":[{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-21T12:27:11.000000Z\",\"updated_at\":\"2021-08-21T12:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\",\"Medium\",\"Small\"]}],\"price\":400,\"tax\":4,\"tax_type\":\"percent\",\"discount\":350,\"discount_type\":\"amount\",\"available_time_starts\":\"11:44:00\",\"available_time_ends\":\"23:44:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-11T23:07:50.000000Z\",\"updated_at\":\"2023-10-31T07:45:06.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"600\"}]', '[{\"id\":12,\"name\":\"salad\",\"price\":10,\"quantity\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":1}]', 350.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-31 12:39:55', '2023-10-31 12:39:55', NULL, 40.00),
(180, 2, 100120, 300.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-06T03:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":\"300\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"quantity\":1}]', 0.00, 'discount_on_product', 1, 12.00, '\"Small\"', '2023-10-31 12:39:55', '2023-10-31 12:39:55', NULL, 51.00),
(181, 7, 100120, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-08-11T22:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-31 12:39:55', '2023-10-31 12:39:55', NULL, 0.00),
(182, 2, 100121, 300.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-06T03:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":\"300\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"},{\"id\":41,\"name\":\"picante\",\"price\":1,\"quantity\":\"1\"}]', 0.00, 'discount_on_product', 1, 12.00, '\"Small\"', '2023-10-31 12:43:45', '2023-10-31 12:43:45', NULL, 81.00),
(183, 7, 100121, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-08-11T22:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"},{\"id\":41,\"name\":\"picante\",\"price\":1,\"quantity\":\"1\"}]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-31 12:43:45', '2023-10-31 12:43:45', NULL, 81.00),
(184, 26, 100121, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":175,\"discount_type\":\"amount\",\"available_time_starts\":null,\"available_time_ends\":null,\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-10T21:28:15.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"200\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"},{\"id\":41,\"name\":\"picante\",\"price\":1,\"quantity\":\"1\"}]', 175.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-10-31 12:43:45', '2023-10-31 12:43:45', NULL, 81.00),
(185, 28, 100121, 350.00, '{\"id\":28,\"name\":\"Tasty fries\",\"description\":\"This is our most popular product. too Yummy!\",\"image\":\"2023-10-31-6540b167f0795.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":350},{\"type\":\"Medium\",\"price\":300},{\"type\":\"Small\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"created_at\":\"2023-07-26T21:52:22.000000Z\",\"updated_at\":\"2023-07-26T21:52:22.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\",\"Medium\",\"Small\"]}],\"price\":350,\"tax\":4,\"tax_type\":\"percent\",\"discount\":300,\"discount_type\":\"amount\",\"available_time_starts\":\"12:48:00\",\"available_time_ends\":\"00:48:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T22:18:53.000000Z\",\"updated_at\":\"2023-10-31T07:48:55.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"350\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"},{\"id\":41,\"name\":\"picante\",\"price\":1,\"quantity\":\"1\"}]', 300.00, 'discount_on_product', 1, 14.00, '\"Large\"', '2023-10-31 12:43:45', '2023-10-31 12:43:45', NULL, 81.00),
(186, 2, 100122, 10.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-06T03:54:09.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"10\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"},{\"id\":41,\"name\":\"picante\",\"price\":1,\"quantity\":\"1\"}]', 0.00, 'discount_on_product', 1, 0.00, '\"Large\"', '2023-10-31 12:50:57', '2023-10-31 12:50:57', NULL, 81.00),
(187, 7, 100122, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":50,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-08-11T22:52:19.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"},{\"id\":41,\"name\":\"picante\",\"price\":1,\"quantity\":\"1\"}]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-31 12:50:57', '2023-10-31 12:50:57', NULL, 81.00),
(188, 28, 100122, 200.00, '{\"id\":28,\"name\":\"Tasty fries\",\"description\":\"This is our most popular product. too Yummy!\",\"image\":\"2023-10-31-6540b167f0795.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":350},{\"type\":\"Medium\",\"price\":300},{\"type\":\"Small\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"created_at\":\"2023-07-26T21:52:22.000000Z\",\"updated_at\":\"2023-07-26T21:52:22.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\",\"Medium\",\"Small\"]}],\"price\":350,\"tax\":4,\"tax_type\":\"percent\",\"discount\":300,\"discount_type\":\"amount\",\"available_time_starts\":\"12:48:00\",\"available_time_ends\":\"00:48:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T22:18:53.000000Z\",\"updated_at\":\"2023-10-31T07:48:55.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":\"200\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":\"1\"},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"},{\"id\":41,\"name\":\"picante\",\"price\":1,\"quantity\":\"1\"}]', 300.00, 'discount_on_product', 1, 8.00, '\"Small\"', '2023-10-31 12:50:57', '2023-10-31 12:50:57', NULL, 81.00),
(189, 28, 100123, 350.00, '{\"id\":28,\"name\":\"Tasty fries\",\"description\":\"This is our most popular product. too Yummy!\",\"image\":\"2023-10-31-6540b167f0795.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":350},{\"type\":\"Medium\",\"price\":300},{\"type\":\"Small\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"created_at\":\"2023-07-26T21:52:22.000000Z\",\"updated_at\":\"2023-07-26T21:52:22.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\",\"Medium\",\"Small\"]}],\"price\":350,\"tax\":4,\"tax_type\":\"percent\",\"discount\":300,\"discount_type\":\"amount\",\"available_time_starts\":\"12:48:00\",\"available_time_ends\":\"00:48:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T22:18:53.000000Z\",\"updated_at\":\"2023-10-31T07:48:55.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"350\"}]', '[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"quantity\":\"1\"}]', 300.00, 'discount_on_product', 1, 14.00, '\"Large\"', '2023-10-31 12:54:41', '2023-10-31 12:54:41', NULL, 80.00),
(190, 28, 100124, 350.00, '{\"id\":28,\"name\":\"Tasty fries\",\"description\":\"This is our most popular product. too Yummy!\",\"image\":\"2023-10-31-6540b167f0795.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":350},{\"type\":\"Medium\",\"price\":300},{\"type\":\"Small\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"created_at\":\"2023-07-26T21:52:22.000000Z\",\"updated_at\":\"2023-07-26T21:52:22.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\",\" Medium\",\" Small\"]}],\"price\":350,\"tax\":4,\"tax_type\":\"percent\",\"discount\":1,\"discount_type\":\"amount\",\"available_time_starts\":\"12:48:00\",\"available_time_ends\":\"00:48:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T22:18:53.000000Z\",\"updated_at\":\"2023-10-31T08:58:24.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"350\"}]', '[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"quantity\":\"1\"}]', 1.00, 'discount_on_product', 1, 14.00, '\"Large\"', '2023-10-31 12:59:50', '2023-10-31 12:59:50', NULL, 80.00),
(191, 3, 100135, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-21T12:27:11.000000Z\",\"updated_at\":\"2021-08-21T12:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T03:12:38.000000Z\",\"updated_at\":\"2023-08-26T01:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":1}]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-31 15:14:16', '2023-10-31 15:14:16', NULL, 50.00),
(192, 3, 100136, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-21T12:27:11.000000Z\",\"updated_at\":\"2021-08-21T12:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T03:12:38.000000Z\",\"updated_at\":\"2023-08-26T01:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-31 15:15:14', '2023-10-31 15:15:14', NULL, 0.00),
(193, 3, 100137, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-21T12:27:11.000000Z\",\"updated_at\":\"2021-08-21T12:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T03:12:38.000000Z\",\"updated_at\":\"2023-08-26T01:14:40.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-10-31 15:16:36', '2023-10-31 15:16:36', NULL, 0.00);
INSERT INTO `order_details` (`id`, `food_id`, `order_id`, `price`, `food_details`, `variation`, `add_ons`, `discount_on_food`, `discount_type`, `quantity`, `tax_amount`, `variant`, `created_at`, `updated_at`, `item_campaign_id`, `total_add_on_price`) VALUES
(194, 26, 100138, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"14:54:00\",\"available_time_ends\":\"01:00:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-31T08:55:13.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"200\"}]', '[]', 0.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-10-31 16:02:21', '2023-10-31 16:02:21', NULL, 0.00),
(195, 29, 100138, 400.00, '{\"id\":29,\"name\":\"Tasty Pizza\",\"description\":\"This is too hot pizza. Such a yummy!\",\"image\":\"2023-10-12-6527d386c376c.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":600},{\"type\":\"Medium\",\"price\":500},{\"type\":\"Small\",\"price\":400}],\"add_ons\":[{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-21T12:27:11.000000Z\",\"updated_at\":\"2021-08-21T12:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\",\" Medium\",\" Small\"]}],\"price\":400,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"11:44:00\",\"available_time_ends\":\"23:44:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-11T23:07:50.000000Z\",\"updated_at\":\"2023-10-31T08:47:24.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":\"400\"}]', '[]', 0.00, 'discount_on_product', 1, 16.00, '\"Small\"', '2023-10-31 16:02:21', '2023-10-31 16:02:21', NULL, 0.00),
(196, 7, 100139, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":60,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-10-31T11:44:54.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":\"50\"}]', '[]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-10-31 16:17:00', '2023-10-31 16:17:00', NULL, 0.00),
(197, 26, 100139, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"14:54:00\",\"available_time_ends\":\"01:00:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-31T08:55:13.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"200\"}]', '[]', 0.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-10-31 16:17:00', '2023-10-31 16:17:00', NULL, 0.00),
(198, 29, 100139, 400.00, '{\"id\":29,\"name\":\"Tasty Pizza\",\"description\":\"This is too hot pizza. Such a yummy!\",\"image\":\"2023-10-12-6527d386c376c.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":600},{\"type\":\"Medium\",\"price\":500},{\"type\":\"Small\",\"price\":400}],\"add_ons\":[{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-21T12:27:11.000000Z\",\"updated_at\":\"2021-08-21T12:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\",\" Medium\",\" Small\"]}],\"price\":400,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"11:44:00\",\"available_time_ends\":\"23:44:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-11T23:07:50.000000Z\",\"updated_at\":\"2023-10-31T08:47:24.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":\"400\"}]', '[]', 0.00, 'discount_on_product', 1, 16.00, '\"Small\"', '2023-10-31 16:17:00', '2023-10-31 16:17:00', NULL, 0.00),
(199, 26, 100140, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"14:54:00\",\"available_time_ends\":\"01:00:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-31T08:55:13.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"200\"}]', '[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":1}]', 0.00, 'discount_on_product', 2, 8.00, '\"Large\"', '2023-10-31 16:35:03', '2023-10-31 16:35:03', NULL, 30.00),
(200, 28, 100141, 350.00, '{\"id\":28,\"name\":\"Tasty fries\",\"description\":\"This is our most popular product. too Yummy!\",\"image\":\"2023-10-31-6540b167f0795.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":350},{\"type\":\"Medium\",\"price\":300},{\"type\":\"Small\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"created_at\":\"2023-07-26T21:52:22.000000Z\",\"updated_at\":\"2023-07-26T21:52:22.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\",\" Medium\",\" Small\"]}],\"price\":350,\"tax\":4,\"tax_type\":\"percent\",\"discount\":1,\"discount_type\":\"amount\",\"available_time_starts\":\"12:48:00\",\"available_time_ends\":\"00:48:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T22:18:53.000000Z\",\"updated_at\":\"2023-10-31T08:58:24.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"350\"}]', '[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"quantity\":\"1\"}]', 1.00, 'discount_on_product', 1, 14.00, '\"Large\"', '2023-10-31 17:07:08', '2023-10-31 17:07:08', NULL, 30.00),
(201, 4, 100142, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-21T12:27:32.000000Z\",\"updated_at\":\"2021-08-21T12:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T03:16:43.000000Z\",\"updated_at\":\"2023-08-26T01:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-10-31 17:10:18', '2023-10-31 17:10:18', NULL, 0.00),
(202, 4, 100143, 600.00, '{\"id\":4,\"name\":\"Zinger Mighty Burger\",\"description\":\"Mighty Burger With extra cheese\",\"image\":\"2023-02-22-63f63feb7460c.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":400},{\"type\":\"Large\",\"price\":599.970000000000027284841053187847137451171875}],\"add_ons\":[{\"id\":13,\"name\":\"extra beef\",\"price\":40,\"created_at\":\"2021-08-21T12:27:32.000000Z\",\"updated_at\":\"2021-08-21T12:27:32.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"21:16:00\",\"available_time_ends\":\"21:15:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T03:16:43.000000Z\",\"updated_at\":\"2023-08-26T01:14:38.000000Z\",\"order_count\":6,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"599.97\"}]', '[]', 0.00, 'discount_on_product', 1, 24.00, '\"Large\"', '2023-11-01 12:27:50', '2023-11-01 12:27:50', NULL, 0.00),
(203, 26, 100144, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"14:54:00\",\"available_time_ends\":\"01:00:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-31T08:55:13.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":200}]', '[]', 0.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-11-04 16:36:59', '2023-11-04 16:36:59', NULL, 0.00),
(204, 26, 100144, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"14:54:00\",\"available_time_ends\":\"01:00:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-31T08:55:13.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":200}]', '[]', 0.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-11-04 16:36:59', '2023-11-04 16:36:59', NULL, 0.00),
(205, 26, 100145, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"14:54:00\",\"available_time_ends\":\"01:00:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-31T08:55:13.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":200}]', '[]', 0.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-11-04 16:43:36', '2023-11-04 16:43:36', NULL, 0.00),
(206, 26, 100145, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"14:54:00\",\"available_time_ends\":\"01:00:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-31T08:55:13.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":200}]', '[]', 0.00, 'discount_on_product', 4, 8.00, '\"Large\"', '2023-11-04 16:43:36', '2023-11-04 16:43:36', NULL, 0.00),
(207, 3, 100146, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-21T12:27:11.000000Z\",\"updated_at\":\"2021-08-21T12:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T03:12:38.000000Z\",\"updated_at\":\"2023-10-31T11:41:27.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"quantity\":2}]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-11-04 17:31:47', '2023-11-04 17:31:47', NULL, 60.00),
(208, 26, 100147, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"14:54:00\",\"available_time_ends\":\"01:00:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-31T08:55:13.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":200}]', '[]', 0.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-11-04 17:55:37', '2023-11-04 17:55:37', NULL, 0.00),
(209, 28, 100147, 200.00, '{\"id\":28,\"name\":\"Tasty fries\",\"description\":\"This is our most popular product. too Yummy!\",\"image\":\"2023-10-31-6540b167f0795.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":350},{\"type\":\"Medium\",\"price\":300},{\"type\":\"Small\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"created_at\":\"2023-07-26T21:52:22.000000Z\",\"updated_at\":\"2023-07-26T21:52:22.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\",\" Medium\",\" Small\"]}],\"price\":350,\"tax\":4,\"tax_type\":\"percent\",\"discount\":1,\"discount_type\":\"amount\",\"available_time_starts\":\"12:48:00\",\"available_time_ends\":\"00:48:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T22:18:53.000000Z\",\"updated_at\":\"2023-10-31T08:58:24.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":200}]', '[]', 1.00, 'discount_on_product', 1, 8.00, '\"Small\"', '2023-11-04 17:55:37', '2023-11-04 17:55:37', NULL, 0.00),
(210, 7, 100147, 50.00, '{\"id\":7,\"name\":\"Spicy Pakora\",\"description\":\"Pakoora with Salad\",\"image\":\"2023-03-30-642576a6d4241.png\",\"category_id\":37,\"category_ids\":[{\"id\":\"37\",\"position\":1}],\"variations\":[{\"type\":\"OnDemand\",\"price\":50}],\"add_ons\":[],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Capacity\",\"options\":[\"On Demand\"]}],\"price\":60,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"12:00:00\",\"available_time_ends\":\"20:05:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-03-29T23:46:46.000000Z\",\"updated_at\":\"2023-10-31T11:44:54.000000Z\",\"order_count\":4,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"OnDemand\",\"price\":50}]', '[]', 0.00, 'discount_on_product', 1, 2.00, '\"OnDemand\"', '2023-11-04 17:55:37', '2023-11-04 17:55:37', NULL, 0.00),
(211, 26, 100148, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"14:54:00\",\"available_time_ends\":\"01:00:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-31T08:55:13.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":200}]', '[]', 0.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-11-04 18:20:03', '2023-11-04 18:20:03', NULL, 0.00),
(212, 28, 100148, 200.00, '{\"id\":28,\"name\":\"Tasty fries\",\"description\":\"This is our most popular product. too Yummy!\",\"image\":\"2023-10-31-6540b167f0795.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":350},{\"type\":\"Medium\",\"price\":300},{\"type\":\"Small\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"created_at\":\"2023-07-26T21:52:22.000000Z\",\"updated_at\":\"2023-07-26T21:52:22.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\",\" Medium\",\" Small\"]}],\"price\":350,\"tax\":4,\"tax_type\":\"percent\",\"discount\":1,\"discount_type\":\"amount\",\"available_time_starts\":\"12:48:00\",\"available_time_ends\":\"00:48:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T22:18:53.000000Z\",\"updated_at\":\"2023-10-31T08:58:24.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":200}]', '[]', 1.00, 'discount_on_product', 1, 8.00, '\"Small\"', '2023-11-04 18:20:03', '2023-11-04 18:20:03', NULL, 0.00),
(213, 29, 100148, 500.00, '{\"id\":29,\"name\":\"Tasty Pizza\",\"description\":\"This is too hot pizza. Such a yummy!\",\"image\":\"2023-10-12-6527d386c376c.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":600},{\"type\":\"Medium\",\"price\":500},{\"type\":\"Small\",\"price\":400}],\"add_ons\":[{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-21T12:27:11.000000Z\",\"updated_at\":\"2021-08-21T12:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\",\" Medium\",\" Small\"]}],\"price\":400,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"11:44:00\",\"available_time_ends\":\"23:44:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-11T23:07:50.000000Z\",\"updated_at\":\"2023-10-31T08:47:24.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Medium\",\"price\":500}]', '[]', 0.00, 'discount_on_product', 1, 20.00, '\"Medium\"', '2023-11-04 18:20:03', '2023-11-04 18:20:03', NULL, 0.00),
(214, 26, 100149, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"14:54:00\",\"available_time_ends\":\"01:00:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-31T08:55:13.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":200}]', '[]', 0.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-11-04 18:23:52', '2023-11-04 18:23:52', NULL, 0.00),
(215, 28, 100149, 200.00, '{\"id\":28,\"name\":\"Tasty fries\",\"description\":\"This is our most popular product. too Yummy!\",\"image\":\"2023-10-31-6540b167f0795.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":350},{\"type\":\"Medium\",\"price\":300},{\"type\":\"Small\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":42,\"name\":\"Extra Black Pepper\",\"price\":50,\"created_at\":\"2023-07-26T21:52:22.000000Z\",\"updated_at\":\"2023-07-26T21:52:22.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\",\" Medium\",\" Small\"]}],\"price\":350,\"tax\":4,\"tax_type\":\"percent\",\"discount\":1,\"discount_type\":\"amount\",\"available_time_starts\":\"12:48:00\",\"available_time_ends\":\"00:48:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T22:18:53.000000Z\",\"updated_at\":\"2023-10-31T08:58:24.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":200}]', '[]', 1.00, 'discount_on_product', 1, 8.00, '\"Small\"', '2023-11-04 18:23:52', '2023-11-04 18:23:52', NULL, 0.00),
(216, 29, 100149, 500.00, '{\"id\":29,\"name\":\"Tasty Pizza\",\"description\":\"This is too hot pizza. Such a yummy!\",\"image\":\"2023-10-12-6527d386c376c.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":600},{\"type\":\"Medium\",\"price\":500},{\"type\":\"Small\",\"price\":400}],\"add_ons\":[{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-21T12:27:11.000000Z\",\"updated_at\":\"2021-08-21T12:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\",\" Medium\",\" Small\"]}],\"price\":400,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"11:44:00\",\"available_time_ends\":\"23:44:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-11T23:07:50.000000Z\",\"updated_at\":\"2023-10-31T08:47:24.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Medium\",\"price\":500}]', '[]', 0.00, 'discount_on_product', 1, 20.00, '\"Medium\"', '2023-11-04 18:23:52', '2023-11-04 18:23:52', NULL, 0.00),
(217, 26, 100150, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"14:54:00\",\"available_time_ends\":\"01:00:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-31T08:55:13.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":200}]', '[]', 0.00, 'discount_on_product', 3, 8.00, '\"Large\"', '2023-11-04 20:13:50', '2023-11-04 20:13:50', NULL, 0.00),
(218, 26, 100150, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"14:54:00\",\"available_time_ends\":\"01:00:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-31T08:55:13.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":200}]', '[]', 0.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-11-04 20:13:50', '2023-11-04 20:13:50', NULL, 0.00),
(219, 26, 100150, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"14:54:00\",\"available_time_ends\":\"01:00:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-31T08:55:13.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":200}]', '[]', 0.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-11-04 20:13:50', '2023-11-04 20:13:50', NULL, 0.00),
(220, 29, 100151, 400.00, '{\"id\":29,\"name\":\"Tasty Pizza\",\"description\":\"This is too hot pizza. Such a yummy!\",\"image\":\"2023-10-12-6527d386c376c.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":600},{\"type\":\"Medium\",\"price\":500},{\"type\":\"Small\",\"price\":400}],\"add_ons\":[{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-21T12:27:11.000000Z\",\"updated_at\":\"2021-08-21T12:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\",\" Medium\",\" Small\"]}],\"price\":400,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"11:44:00\",\"available_time_ends\":\"23:44:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-11T23:07:50.000000Z\",\"updated_at\":\"2023-10-31T08:47:24.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":400}]', '[]', 0.00, 'discount_on_product', 1, 16.00, '\"Small\"', '2023-11-04 21:42:05', '2023-11-04 21:42:05', NULL, 0.00),
(221, 26, 100153, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"14:54:00\",\"available_time_ends\":\"01:00:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-31T08:55:13.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":200}]', '[]', 0.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-11-04 23:56:06', '2023-11-04 23:56:06', NULL, 0.00),
(222, 26, 100156, 200.00, '{\"id\":26,\"name\":\"Kabab\",\"description\":\"Spicy kabab! Yummy!\",\"image\":\"2023-10-11-65266aaf05f9f.png\",\"category_id\":6,\"category_ids\":[{\"id\":\"6\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":200}],\"add_ons\":[{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\"]}],\"price\":200,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"14:54:00\",\"available_time_ends\":\"01:00:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-10T21:28:15.000000Z\",\"updated_at\":\"2023-10-31T08:55:13.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":200}]', '[]', 0.00, 'discount_on_product', 1, 8.00, '\"Large\"', '2023-11-05 00:31:42', '2023-11-05 00:31:42', NULL, 0.00),
(223, 29, 100157, 400.00, '{\"id\":29,\"name\":\"Tasty Pizza\",\"description\":\"This is too hot pizza. Such a yummy!\",\"image\":\"2023-10-12-6527d386c376c.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Large\",\"price\":600},{\"type\":\"Medium\",\"price\":500},{\"type\":\"Small\",\"price\":400}],\"add_ons\":[{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-21T12:27:11.000000Z\",\"updated_at\":\"2021-08-21T12:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Large\",\" Medium\",\" Small\"]}],\"price\":400,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"11:44:00\",\"available_time_ends\":\"23:44:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-10-11T23:07:50.000000Z\",\"updated_at\":\"2023-10-31T08:47:24.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Small\",\"price\":400}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"quantity\":1}]', 0.00, 'discount_on_product', 1, 16.00, '\"Small\"', '2023-11-05 03:15:59', '2023-11-05 03:15:59', NULL, 51.00),
(224, 2, 100157, 10.00, '{\"id\":2,\"name\":\"Cold Coffee\",\"description\":\"Cold coffee description\",\"image\":\"2023-01-04-63b57a353acf9.png\",\"category_id\":32,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"32\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":5},{\"type\":\"Large\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"created_at\":\"2022-12-29T08:25:17.000000Z\",\"updated_at\":\"2022-12-29T08:25:17.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":30,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:59:00\",\"veg\":1,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-01-04T00:08:05.000000Z\",\"updated_at\":\"2023-10-31T11:41:21.000000Z\",\"order_count\":3,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":10}]', '[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"quantity\":1},{\"id\":41,\"name\":\"picante\",\"price\":1,\"quantity\":1}]', 0.00, 'discount_on_product', 1, 0.00, '\"Large\"', '2023-11-05 03:15:59', '2023-11-05 03:15:59', NULL, 51.00),
(225, 36, 100158, 600.00, '{\"id\":36,\"name\":\"White afghani karahi\",\"description\":\"Best ever taste. Please taste it!\",\"image\":\"2023-11-06-65488718ee5df.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":480},{\"type\":\"Large\",\"price\":600}],\"add_ons\":[{\"id\":53,\"name\":\"salad\",\"price\":30,\"created_at\":\"2023-11-06T06:31:17.000000Z\",\"updated_at\":\"2023-11-06T06:31:17.000000Z\",\"restaurant_id\":7,\"status\":1},{\"id\":54,\"name\":\"Dahi-raita\",\"price\":40,\"created_at\":\"2023-11-06T06:31:55.000000Z\",\"updated_at\":\"2023-11-06T06:31:55.000000Z\",\"restaurant_id\":7,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":400,\"tax\":10,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"09:33:00\",\"available_time_ends\":\"23:33:00\",\"veg\":1,\"status\":1,\"restaurant_id\":7,\"created_at\":\"2023-11-06T06:26:32.000000Z\",\"updated_at\":\"2023-11-06T06:34:00.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"ShahJahan Grill\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"600\"}]', '[{\"id\":53,\"name\":\"salad\",\"price\":30,\"quantity\":1},{\"id\":54,\"name\":\"Dahi-raita\",\"price\":40,\"quantity\":1}]', 0.00, 'discount_on_product', 1, 60.00, '\"Large\"', '2023-11-06 10:44:17', '2023-11-06 10:44:17', NULL, 70.00),
(226, 36, 100159, 480.00, '{\"id\":36,\"name\":\"White afghani karahi\",\"description\":\"Best ever taste. Please taste it!\",\"image\":\"2023-11-06-65488718ee5df.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":480},{\"type\":\"Large\",\"price\":600}],\"add_ons\":[{\"id\":53,\"name\":\"salad\",\"price\":30,\"created_at\":\"2023-11-06T06:31:17.000000Z\",\"updated_at\":\"2023-11-06T06:31:17.000000Z\",\"restaurant_id\":7,\"status\":1},{\"id\":54,\"name\":\"Dahi-raita\",\"price\":40,\"created_at\":\"2023-11-06T06:31:55.000000Z\",\"updated_at\":\"2023-11-06T06:31:55.000000Z\",\"restaurant_id\":7,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":400,\"tax\":10,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"09:33:00\",\"available_time_ends\":\"23:33:00\",\"veg\":1,\"status\":1,\"restaurant_id\":7,\"created_at\":\"2023-11-06T06:26:32.000000Z\",\"updated_at\":\"2023-11-06T06:34:00.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"ShahJahan Grill\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Medium\",\"price\":\"480\"}]', '[{\"id\":53,\"name\":\"salad\",\"price\":30,\"quantity\":1},{\"id\":54,\"name\":\"Dahi-raita\",\"price\":40,\"quantity\":1}]', 0.00, 'discount_on_product', 1, 48.00, '\"Medium\"', '2023-11-06 10:45:45', '2023-11-06 10:45:45', NULL, 70.00);
INSERT INTO `order_details` (`id`, `food_id`, `order_id`, `price`, `food_details`, `variation`, `add_ons`, `discount_on_food`, `discount_type`, `quantity`, `tax_amount`, `variant`, `created_at`, `updated_at`, `item_campaign_id`, `total_add_on_price`) VALUES
(227, 36, 100161, 600.00, '{\"id\":36,\"name\":\"White afghani karahi\",\"description\":\"Best ever taste. Please taste it!\",\"image\":\"2023-11-06-65488718ee5df.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":480},{\"type\":\"Large\",\"price\":600}],\"add_ons\":[{\"id\":53,\"name\":\"salad\",\"price\":30,\"created_at\":\"2023-11-06T06:31:17.000000Z\",\"updated_at\":\"2023-11-06T06:31:17.000000Z\",\"restaurant_id\":7,\"status\":1},{\"id\":54,\"name\":\"Dahi-raita\",\"price\":40,\"created_at\":\"2023-11-06T06:31:55.000000Z\",\"updated_at\":\"2023-11-06T06:31:55.000000Z\",\"restaurant_id\":7,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":400,\"tax\":10,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"09:33:00\",\"available_time_ends\":\"23:33:00\",\"veg\":1,\"status\":1,\"restaurant_id\":7,\"created_at\":\"2023-11-06T06:26:32.000000Z\",\"updated_at\":\"2023-11-06T06:34:00.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"ShahJahan Grill\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"600\"}]', '[{\"id\":53,\"name\":\"salad\",\"price\":30,\"quantity\":1},{\"id\":54,\"name\":\"Dahi-raita\",\"price\":40,\"quantity\":1}]', 0.00, 'discount_on_product', 1, 60.00, '\"Large\"', '2023-11-06 10:54:13', '2023-11-06 10:54:13', NULL, 70.00),
(228, 36, 100162, 600.00, '{\"id\":36,\"name\":\"White afghani karahi\",\"description\":\"Best ever taste. Please taste it!\",\"image\":\"2023-11-06-65488718ee5df.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":480},{\"type\":\"Large\",\"price\":600}],\"add_ons\":[{\"id\":53,\"name\":\"salad\",\"price\":30,\"created_at\":\"2023-11-06T06:31:17.000000Z\",\"updated_at\":\"2023-11-06T06:31:17.000000Z\",\"restaurant_id\":7,\"status\":1},{\"id\":54,\"name\":\"Dahi-raita\",\"price\":40,\"created_at\":\"2023-11-06T06:31:55.000000Z\",\"updated_at\":\"2023-11-06T06:31:55.000000Z\",\"restaurant_id\":7,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":400,\"tax\":10,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"09:33:00\",\"available_time_ends\":\"23:33:00\",\"veg\":1,\"status\":1,\"restaurant_id\":7,\"created_at\":\"2023-11-06T06:26:32.000000Z\",\"updated_at\":\"2023-11-06T06:34:00.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"ShahJahan Grill\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"600\"}]', '[{\"id\":53,\"name\":\"salad\",\"price\":30,\"quantity\":1},{\"id\":54,\"name\":\"Dahi-raita\",\"price\":40,\"quantity\":1}]', 0.00, 'discount_on_product', 1, 60.00, '\"Large\"', '2023-11-06 10:56:57', '2023-11-06 10:56:57', NULL, 70.00),
(229, 36, 100163, 600.00, '{\"id\":36,\"name\":\"White afghani karahi\",\"description\":\"Best ever taste. Please taste it!\",\"image\":\"2023-11-06-65488718ee5df.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Small\",\"price\":300},{\"type\":\"Medium\",\"price\":480},{\"type\":\"Large\",\"price\":600}],\"add_ons\":[{\"id\":53,\"name\":\"salad\",\"price\":30,\"created_at\":\"2023-11-06T06:31:17.000000Z\",\"updated_at\":\"2023-11-06T06:31:17.000000Z\",\"restaurant_id\":7,\"status\":1},{\"id\":54,\"name\":\"Dahi-raita\",\"price\":40,\"created_at\":\"2023-11-06T06:31:55.000000Z\",\"updated_at\":\"2023-11-06T06:31:55.000000Z\",\"restaurant_id\":7,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":400,\"tax\":10,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"09:33:00\",\"available_time_ends\":\"23:33:00\",\"veg\":1,\"status\":1,\"restaurant_id\":7,\"created_at\":\"2023-11-06T06:26:32.000000Z\",\"updated_at\":\"2023-11-06T06:34:00.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"ShahJahan Grill\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"600\"}]', '[{\"id\":53,\"name\":\"salad\",\"price\":30,\"quantity\":1},{\"id\":54,\"name\":\"Dahi-raita\",\"price\":40,\"quantity\":1}]', 0.00, 'discount_on_product', 1, 60.00, '\"Large\"', '2023-11-06 11:02:23', '2023-11-06 11:02:23', NULL, 70.00),
(230, 37, 100164, 400.00, '{\"id\":37,\"name\":\"Band Gobhi\",\"description\":\"Popular product!\",\"image\":\"2023-11-06-6548c3d62f3b2.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"7\",\"position\":1}],\"variations\":[{\"type\":\"Small\",\"price\":200},{\"type\":\"Medium\",\"price\":300},{\"type\":\"Large\",\"price\":400}],\"add_ons\":[{\"id\":53,\"name\":\"salad\",\"price\":30,\"created_at\":\"2023-11-06T06:31:17.000000Z\",\"updated_at\":\"2023-11-06T06:31:17.000000Z\",\"restaurant_id\":7,\"status\":1},{\"id\":54,\"name\":\"Dahi-raita\",\"price\":40,\"created_at\":\"2023-11-06T06:31:55.000000Z\",\"updated_at\":\"2023-11-06T06:31:55.000000Z\",\"restaurant_id\":7,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Type\",\"options\":[\"Small\",\" Medium\",\" Large\"]}],\"price\":400,\"tax\":10,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"17:54:00\",\"available_time_ends\":\"12:00:00\",\"veg\":1,\"status\":1,\"restaurant_id\":7,\"created_at\":\"2023-11-06T10:45:42.000000Z\",\"updated_at\":\"2023-11-06T10:56:36.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"ShahJahan Grill\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"400\"}]', '[{\"id\":53,\"name\":\"salad\",\"price\":30,\"quantity\":1},{\"id\":54,\"name\":\"Dahi-raita\",\"price\":40,\"quantity\":1}]', 0.00, 'discount_on_product', 1, 40.00, '\"Large\"', '2023-11-06 14:58:49', '2023-11-06 14:58:49', NULL, 70.00),
(231, 3, 100165, 300.00, '{\"id\":3,\"name\":\"Thigh Chicken\",\"description\":\"Best Thigh Chicken\",\"image\":\"2023-02-22-63f63ef6a3688.png\",\"category_id\":27,\"category_ids\":[{\"id\":\"5\",\"position\":1},{\"id\":\"27\",\"position\":2}],\"variations\":[{\"type\":\"Small\",\"price\":100},{\"type\":\"Medium\",\"price\":200},{\"type\":\"Large\",\"price\":300}],\"add_ons\":[{\"id\":1,\"name\":\"Cheese\",\"price\":50,\"created_at\":\"2021-08-21T11:19:15.000000Z\",\"updated_at\":\"2023-07-26T23:31:16.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":12,\"name\":\"salad\",\"price\":10,\"created_at\":\"2021-08-21T12:27:11.000000Z\",\"updated_at\":\"2021-08-21T12:27:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":14,\"name\":\"extra chicken\",\"price\":30,\"created_at\":\"2021-08-21T12:27:45.000000Z\",\"updated_at\":\"2021-08-21T12:27:45.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":15,\"name\":\"sauce\",\"price\":5,\"created_at\":\"2021-08-21T12:27:55.000000Z\",\"updated_at\":\"2021-08-21T12:27:55.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"1\"],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"Small\",\"Medium\",\"Large\"]}],\"price\":300,\"tax\":4,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"21:00:00\",\"available_time_ends\":\"20:59:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2023-02-22T03:12:38.000000Z\",\"updated_at\":\"2023-10-31T11:41:27.000000Z\",\"order_count\":7,\"avg_rating\":0,\"rating_count\":0,\"restaurant_name\":\"KFC\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[{\"type\":\"Large\",\"price\":\"300\"}]', '[]', 0.00, 'discount_on_product', 1, 12.00, '\"Large\"', '2023-11-11 15:12:24', '2023-11-11 15:12:24', NULL, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `order_earning`
--

CREATE TABLE `order_earning` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `delivery_man_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `delivery_man_earning` float NOT NULL,
  `restaurant_earning` float NOT NULL,
  `paid_to_delivery_man` int(11) NOT NULL DEFAULT '0',
  `paid_to_restaurant` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_earning`
--

INSERT INTO `order_earning` (`id`, `order_id`, `delivery_man_id`, `restaurant_id`, `delivery_man_earning`, `restaurant_earning`, `paid_to_delivery_man`, `paid_to_restaurant`, `created_at`, `updated_at`) VALUES
(8, 100002, 2, 1, 10, 265, 0, 0, '2023-07-07 23:29:04', '2023-07-07 23:29:04'),
(9, 100002, 1, 1, 10, 265, 0, 0, '2023-07-07 23:40:52', '2023-07-07 23:40:52'),
(10, 100003, 1, 1, 10, 577, 0, 0, '2023-07-07 23:51:30', '2023-07-07 23:51:30'),
(11, 100004, 1, 1, 10, 224, 0, 0, '2023-07-09 23:31:57', '2023-07-09 23:31:57'),
(12, 100003, 1, 1, 10, 265, 0, 0, '2023-07-25 00:28:36', '2023-07-25 00:28:36'),
(13, 100005, 1, 1, 10, 447, 0, 0, '2023-07-25 00:43:03', '2023-07-25 00:43:03'),
(14, 100012, 5, 1, 10, 510, 0, 0, '2023-08-23 03:49:47', '2023-08-23 03:49:47'),
(15, 100019, 1, 1, 10, 624, 0, 0, '2023-09-20 23:17:54', '2023-09-20 23:17:54'),
(16, 100017, 1, 1, 10, 312, 0, 0, '2023-09-21 01:13:09', '2023-09-21 01:13:09'),
(17, 100021, 1, 1, 10, 624, 0, 0, '2023-09-21 01:20:58', '2023-09-21 01:20:58'),
(18, 100023, 1, 1, 10, 312, 0, 0, '2023-09-21 01:45:43', '2023-09-21 01:45:43'),
(19, 100020, 1, 1, 10, 312, 0, 0, '2023-09-21 01:59:31', '2023-09-21 01:59:31'),
(20, 100031, 1, 1, 10, 312, 0, 0, '2023-09-25 01:29:49', '2023-09-25 01:29:49'),
(21, 100027, 1, 1, 10, 312, 0, 0, '2023-09-26 02:51:04', '2023-09-26 02:51:04'),
(22, 100032, 1, 1, 10, 312, 0, 0, '2023-09-27 03:52:44', '2023-09-27 03:52:44'),
(23, 100033, 1, 1, 10, 312, 0, 0, '2023-09-27 22:57:40', '2023-09-27 22:57:40'),
(24, 100025, 1, 1, 10, 208, 0, 0, '2023-09-28 01:05:13', '2023-09-28 01:05:13'),
(25, 100029, 1, 1, 10, 624, 0, 0, '2023-09-28 01:05:56', '2023-09-28 01:05:56'),
(26, 100034, 1, 1, 10, 624, 0, 0, '2023-09-28 01:06:03', '2023-09-28 01:06:03'),
(27, 100036, 1, 1, 10, 312, 0, 0, '2023-09-28 01:24:53', '2023-09-28 01:24:53'),
(28, 100037, 1, 1, 10, 312, 0, 0, '2023-09-28 01:43:34', '2023-09-28 01:43:34'),
(29, 100053, 7, 1, 10, 624, 0, 0, '2023-10-04 02:27:36', '2023-10-04 02:27:36'),
(30, 100056, 7, 1, 10, 624, 0, 0, '2023-10-04 02:57:47', '2023-10-04 02:57:47'),
(31, 100058, 7, 1, 10, 624, 0, 0, '2023-10-05 01:24:58', '2023-10-05 01:24:58'),
(32, 100059, 7, 1, 10, 624, 0, 0, '2023-10-05 01:55:41', '2023-10-05 01:55:41'),
(33, 100062, 7, 1, 10, 624, 0, 0, '2023-10-05 02:45:32', '2023-10-05 02:45:32'),
(34, 100063, 7, 1, 10, 624, 0, 0, '2023-10-05 03:42:42', '2023-10-05 03:42:42'),
(35, 100061, 7, 1, 10, 624, 0, 0, '2023-10-05 03:48:36', '2023-10-05 03:48:36'),
(36, 100065, 7, 1, 10, 624, 0, 0, '2023-10-05 04:25:51', '2023-10-05 04:25:51'),
(37, 100071, 7, 1, 10, 624, 0, 0, '2023-10-06 22:12:31', '2023-10-06 22:12:31'),
(38, 100074, 7, 1, 10, 624, 0, 0, '2023-10-06 23:18:41', '2023-10-06 23:18:41'),
(39, 100002, 7, 1, 10, 624, 0, 0, '2023-10-07 01:06:19', '2023-10-07 01:06:19'),
(40, 100004, 7, 1, 10, 624, 0, 0, '2023-10-07 01:24:30', '2023-10-07 01:24:30'),
(41, 100003, 7, 1, 10, 624, 0, 0, '2023-10-07 01:58:23', '2023-10-07 01:58:23'),
(42, 100006, 7, 1, 10, 624, 0, 0, '2023-10-07 01:58:39', '2023-10-07 01:58:39'),
(43, 100020, 1, 1, 10, 624, 0, 0, '2023-10-11 03:03:19', '2023-10-11 03:03:19'),
(44, 100047, 1, 1, 49, 624, 0, 0, '2023-10-22 22:15:44', '2023-10-22 22:15:44'),
(45, 100050, 1, 1, 49, 624, 0, 0, '2023-10-23 01:31:54', '2023-10-23 01:31:54'),
(46, 100051, 1, 4, 78, 385, 0, 0, '2023-10-23 02:03:06', '2023-10-23 02:03:06'),
(47, 100054, 1, 1, 49, 416, 0, 0, '2023-10-24 01:14:56', '2023-10-24 01:14:56'),
(48, 100055, 1, 1, 49, 624, 0, 0, '2023-10-24 03:47:29', '2023-10-24 03:47:29'),
(49, 100056, 1, 1, 48, 416, 0, 0, '2023-10-24 22:44:00', '2023-10-24 22:44:00'),
(50, 100057, 1, 1, 48, 312, 0, 0, '2023-10-24 22:52:30', '2023-10-24 22:52:30'),
(51, 100058, 1, 1, 49, 312, 0, 0, '2023-10-24 23:44:29', '2023-10-24 23:44:29'),
(52, 100059, 1, 1, 49, 624, 0, 0, '2023-10-25 00:40:32', '2023-10-25 00:40:32'),
(53, 100060, 1, 1, 48, 312, 0, 0, '2023-10-25 00:59:33', '2023-10-25 00:59:33'),
(54, 100061, 1, 1, 48, 312, 0, 0, '2023-10-25 01:02:17', '2023-10-25 01:02:17'),
(55, 100062, 1, 1, 49, 624, 0, 0, '2023-10-25 03:13:19', '2023-10-25 03:13:19'),
(56, 100064, 1, 1, 49, 416, 0, 0, '2023-10-26 01:28:44', '2023-10-26 01:28:44'),
(57, 100159, 1, 7, 37, 605, 0, 0, '2023-11-06 10:52:50', '2023-11-06 10:52:50'),
(58, 100162, 1, 7, 37, 737, 0, 0, '2023-11-06 11:01:41', '2023-11-06 11:01:41'),
(59, 100161, 1, 7, 37, 737, 0, 0, '2023-11-06 11:08:17', '2023-11-06 11:08:17');

-- --------------------------------------------------------

--
-- Table structure for table `order_online_payments`
--

CREATE TABLE `order_online_payments` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payable_amount` decimal(10,0) NOT NULL,
  `paid_amount` decimal(10,0) DEFAULT NULL,
  `ref_no` text NOT NULL,
  `status` enum('Pending','Successful','Failed') NOT NULL DEFAULT 'Pending',
  `msg` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_online_payments`
--

INSERT INTO `order_online_payments` (`id`, `order_id`, `user_id`, `payable_amount`, `paid_amount`, `ref_no`, `status`, `msg`, `created_at`, `updated_at`) VALUES
(6, 100001, 18, 1200, NULL, '20230713023316', 'Failed', 'Sorry! Your transaction was not successful. Please try again later.', '2023-07-13 00:33:16', '2023-07-13 00:34:09'),
(7, 100006, 24, 33200, NULL, '20230713024734', 'Failed', 'Sorry! Your transaction was not successful. Please try again later.', '2023-07-13 00:47:34', '2023-07-13 00:48:22'),
(8, 100009, 24, 0, NULL, '20230713025439', 'Failed', 'Please provide a valid value for pp_Amount.', '2023-07-13 00:54:39', '2023-07-13 00:54:49'),
(9, 100011, 24, 0, NULL, '20230713032601', 'Failed', 'Please provide a valid value for pp_Amount.', '2023-07-13 01:26:01', '2023-07-13 01:26:37'),
(10, 100006, 24, 33200, NULL, '20230713032658', 'Failed', 'Sorry! Your transaction was not successful. Please try again later.', '2023-07-13 01:26:58', '2023-07-13 01:27:36'),
(11, 100001, 24, 0, NULL, '20230725021212', 'Failed', 'Please provide a valid value for pp_Amount.', '2023-07-25 00:12:12', '2023-07-25 00:12:26'),
(12, 100001, 18, 1200, NULL, '20230727010021', 'Pending', NULL, '2023-07-26 23:00:21', '2023-07-26 23:00:21'),
(13, 100001, 18, 1200, NULL, '20230727010041', 'Pending', NULL, '2023-07-26 23:00:41', '2023-07-26 23:00:41'),
(14, 100001, 18, 1200, NULL, '20230727034724', 'Pending', NULL, '2023-07-27 01:47:24', '2023-07-27 01:47:24'),
(15, 100001, 18, 1200, NULL, '20230802021338', 'Pending', NULL, '2023-08-02 00:13:38', '2023-08-02 00:13:38'),
(16, 100001, 18, 1200, NULL, '20230808035258', 'Pending', NULL, '2023-08-08 01:52:58', '2023-08-08 01:52:58'),
(17, 100011, 24, 0, NULL, '20230819131458', 'Pending', NULL, '2023-08-19 11:14:58', '2023-08-19 11:14:58'),
(18, 100028, 38, 0, NULL, '20230923041835', 'Failed', 'Please provide a valid value for pp_Amount.', '2023-09-23 02:18:35', '2023-09-23 02:19:02'),
(19, 100022, 37, 0, NULL, '20231011055854', 'Failed', 'Please provide a valid value for pp_Amount.', '2023-10-11 03:58:54', '2023-10-11 03:58:59'),
(20, 100023, 37, 0, NULL, '20231011060254', 'Failed', 'Please provide a valid value for pp_Amount.', '2023-10-11 04:02:54', '2023-10-11 04:03:01'),
(21, 100024, 37, 0, NULL, '20231011060954', 'Failed', 'Please provide a valid value for pp_Amount.', '2023-10-11 04:09:54', '2023-10-11 04:10:00'),
(22, 100025, 37, 0, NULL, '20231011061238', 'Failed', 'Please provide a valid value for pp_Amount.', '2023-10-11 04:12:38', '2023-10-11 04:12:47'),
(23, 100001, 18, 1200, NULL, '20231020133543', 'Pending', NULL, '2023-10-20 11:35:43', '2023-10-20 11:35:43'),
(24, 100165, 109, 0, NULL, '20231111161227', 'Failed', 'Please provide a valid value for pp_Amount.', '2023-11-11 15:12:27', '2023-11-11 15:12:51'),
(25, 100166, 109, 0, NULL, '20231111162714', 'Failed', 'Please provide a valid value for pp_Amount.', '2023-11-11 15:27:14', '2023-11-11 15:27:18'),
(26, 100167, 52, 81440, NULL, '20231113151521', 'Failed', 'Sorry! Your transaction was not successful. Please try again later.', '2023-11-13 14:15:21', '2023-11-13 14:15:59'),
(27, 100167, 52, 84140, NULL, '20231113154347', 'Failed', 'Sorry! Your transaction was not successful. Please try again later.', '2023-11-13 14:43:47', '2023-11-13 14:44:58'),
(28, 100167, 52, 81440, NULL, '20231113160838', 'Failed', 'Transaction has been timed out.', '2023-11-13 15:08:38', '2023-11-13 15:10:53'),
(29, 100169, 52, 81440, NULL, '20231113171612', 'Pending', NULL, '2023-11-13 16:16:12', '2023-11-13 16:16:12'),
(30, 100170, 52, 36720, NULL, '20231113171748', 'Failed', 'Sorry! Your transaction was not successful. Please try again later.', '2023-11-13 16:17:48', '2023-11-13 16:18:43'),
(31, 100171, 52, 36720, NULL, '20231113172036', 'Pending', NULL, '2023-11-13 16:20:36', '2023-11-13 16:20:36'),
(32, 100173, 52, 36720, NULL, '20231113172751', 'Pending', NULL, '2023-11-13 16:27:51', '2023-11-13 16:27:51'),
(33, 100174, 52, 36720, 367, '20231113175639', 'Successful', 'testing', '2023-11-13 16:56:39', '2023-11-13 16:57:11');

-- --------------------------------------------------------

--
-- Table structure for table `order_reports`
--

CREATE TABLE `order_reports` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `complain` text NOT NULL,
  `response` text,
  `status` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_reports`
--

INSERT INTO `order_reports` (`id`, `order_id`, `user_id`, `complain`, `response`, `status`, `created_at`, `updated_at`) VALUES
(1, 100010, 31, 'not want because I deal with other', NULL, 'pending', '2023-08-03 02:33:51', '2023-08-03 02:33:51'),
(2, 100013, 39, 'cdhhxd', NULL, 'pending', '2023-09-09 02:13:59', '2023-09-09 02:13:59'),
(3, 100017, 42, 'an all all an eek AJ written so AJ WP so EP we\'ll do so ep we\'ll zohaib i love thin', NULL, 'pending', '2023-10-12 02:20:51', '2023-10-12 02:20:51'),
(4, 100035, 42, 'gg', NULL, 'pending', '2023-10-14 00:31:46', '2023-10-14 00:31:46'),
(5, 100015, 42, 'thb', NULL, 'pending', '2023-10-16 04:07:06', '2023-10-16 04:07:06'),
(6, 100036, 42, 'crvbganijcscvgbhtygkkcsf', NULL, 'pending', '2023-10-16 21:48:25', '2023-10-16 21:48:25'),
(7, 100028, 42, 'ye achi nhi hy apko tmeez nhi hy order deliver krny ki you are such a shame full.', NULL, 'pending', '2023-10-16 21:53:11', '2023-10-16 21:53:11'),
(8, 100016, 42, 'btcddfgujcdzxbibdszvjikcxfjjb', NULL, 'pending', '2023-10-16 23:32:52', '2023-10-16 23:32:52'),
(9, 100049, 37, 'vbb', NULL, 'pending', '2023-10-23 02:42:41', '2023-10-23 02:42:41'),
(10, 100053, 37, 'ye achi nhi hy!', NULL, 'pending', '2023-10-23 21:48:13', '2023-10-23 21:48:13'),
(11, 100027, 43, 'bht khrab', NULL, 'pending', '2023-10-26 01:21:37', '2023-10-26 01:21:37'),
(12, 100066, 43, 'Ggujuguriyseof futd', NULL, 'pending', '2023-10-26 02:40:56', '2023-10-26 02:40:56'),
(13, 100068, 37, 'cfbgbgdbn', NULL, 'pending', '2023-10-26 03:13:03', '2023-10-26 03:13:03'),
(14, 100069, 37, 'xfbb ffj', NULL, 'pending', '2023-10-26 03:16:27', '2023-10-26 03:16:27'),
(15, 100070, 37, 'cvbbbbv', NULL, 'pending', '2023-10-26 03:18:44', '2023-10-26 03:18:44'),
(16, 100092, 53, 'jjnjjkksdsdffsd', NULL, 'pending', '2023-10-30 23:03:28', '2023-10-30 23:03:28'),
(17, 100158, 109, 'vvvb', NULL, 'pending', '2023-11-06 10:44:53', '2023-11-06 10:44:53');

-- --------------------------------------------------------

--
-- Table structure for table `order_reviews`
--

CREATE TABLE `order_reviews` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `comment` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rating` int(1) DEFAULT NULL,
  `liked_category` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_reviews`
--

INSERT INTO `order_reviews` (`id`, `order_id`, `user_id`, `restaurant_id`, `comment`, `created_at`, `updated_at`, `rating`, `liked_category`) VALUES
(13, 100005, 24, 1, '', '2023-07-25 21:55:24', '2023-07-25 21:55:24', 5, 'Ingredients'),
(14, 100012, 24, 1, '', '2023-08-23 03:50:13', '2023-08-23 03:50:13', 4, 'Ingredients'),
(15, 100051, 37, 4, '', '2023-10-23 02:27:47', '2023-10-23 02:27:47', 5, ''),
(16, 100050, 37, 1, '', '2023-10-23 02:34:18', '2023-10-23 02:34:18', 5, ''),
(17, 100047, 37, 1, '', '2023-10-23 21:49:51', '2023-10-23 21:49:51', 1, ''),
(18, 100054, 37, 1, '', '2023-10-24 01:17:33', '2023-10-24 01:17:33', 3, 'Ingredients'),
(19, 100055, 37, 1, '', '2023-10-24 03:47:47', '2023-10-24 03:47:47', 5, 'Taste'),
(20, 100056, 37, 1, '', '2023-10-24 22:44:42', '2023-10-24 22:44:42', 4, 'Recipee'),
(21, 100057, 37, 1, '', '2023-10-24 22:52:49', '2023-10-24 22:52:49', 4, 'Packaging'),
(22, 100058, 37, 1, '', '2023-10-25 00:29:13', '2023-10-25 00:29:13', 3, 'Taste'),
(23, 100059, 37, 1, '', '2023-10-25 00:41:29', '2023-10-25 00:41:29', 2, 'Taste'),
(24, 100060, 37, 1, '', '2023-10-25 00:59:50', '2023-10-25 00:59:50', 5, 'Recipee'),
(25, 100061, 37, 1, '', '2023-10-25 01:02:38', '2023-10-25 01:02:38', 3, 'Ingredients'),
(26, 100062, 37, 1, '', '2023-10-25 03:13:43', '2023-10-25 03:13:43', 4, 'Recipee'),
(27, 100064, 43, 1, '', '2023-10-26 01:29:29', '2023-10-26 01:29:29', 3, 'Ingredients');

-- --------------------------------------------------------

--
-- Table structure for table `order_transactions`
--

CREATE TABLE `order_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `order_amount` decimal(24,2) NOT NULL,
  `restaurant_amount` decimal(24,2) NOT NULL,
  `admin_commission` decimal(24,2) NOT NULL,
  `received_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivery_charge` decimal(24,2) NOT NULL DEFAULT '0.00',
  `original_delivery_charge` decimal(24,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(24,2) NOT NULL DEFAULT '0.00',
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dm_tips` double(24,2) NOT NULL DEFAULT '0.00',
  `delivery_fee_comission` double(24,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('test@gmail.com', '9644', '2023-07-31 22:10:16'),
('atif99ml@gmail.com', '2775', '2023-07-31 22:12:01'),
('atif99ml@gmail.com', '7461', '2023-07-31 22:13:38'),
('atif99ml@gmail.com', '2288', '2023-07-31 22:13:59'),
('atif99ml@gmail.com', '3274', '2023-07-31 22:14:18'),
('atif99ml@gmail.com', '3644', '2023-07-31 22:14:48'),
('atif99ml@gmail.com', '7130', '2023-07-31 22:15:31'),
('atif99ml@gmail.com', '3391', '2023-07-31 22:15:48'),
('fgh@gmail.com', '2474', '2023-10-31 10:56:18'),
('fgh@gmail.com', '7086', '2023-10-31 10:58:18'),
('zohaibworkspace@gmail.com', 'XKROwbY1MtiiQg4QtPVNVa2tlwKP5C', '2023-11-04 21:52:59'),
('moeed.hussain3@gmail.com', 'RpvQ4K7DM90lRab9KyZXkIEutssBcI', '2023-11-04 22:03:19'),
('zohaibworkspace@gmail.com', 'x9iIY2AerJKexknmKLXJ85NfDRgB1f', '2023-11-04 22:08:28'),
('zohaibworkspace@gmail.com', '6em5awUMziEWm7xaeMTqSBio3P0pLv', '2023-11-04 22:10:18'),
('zohaibworkspace@gmail.com', '2IGJU31L5dKC0ch50r3xaFAzLVJJEi', '2023-11-04 22:12:52');

-- --------------------------------------------------------

--
-- Table structure for table `phone_verifications`
--

CREATE TABLE `phone_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phone_verifications`
--

INSERT INTO `phone_verifications` (`id`, `phone`, `token`, `created_at`, `updated_at`) VALUES
(1, '03043372285', '1093', '2023-01-26 01:06:19', '2023-01-26 01:06:19'),
(2, '03056860156', '9746', '2023-03-01 07:22:40', '2023-03-01 07:22:40'),
(3, '+923012345678', '5784', '2023-10-11 01:51:45', '2023-10-11 01:51:45'),
(4, '1234567890', '9853', '2023-02-01 07:26:02', '2023-02-01 07:26:02'),
(5, '03077511060', '4849', '2023-02-23 04:15:55', '2023-02-23 04:15:55'),
(6, '0524433289', '6793', '2023-02-23 07:32:48', '2023-02-23 07:32:48'),
(7, '03030300303', '2487', '2023-05-08 01:30:07', '2023-05-08 01:30:07'),
(8, '030303003033333', '1863', '2023-03-16 04:34:59', '2023-03-16 04:34:59'),
(9, '03020173199', '6993', '2023-03-27 22:28:53', '2023-03-27 22:28:53'),
(10, '03116266746', '6567', '2023-06-23 22:09:25', '2023-06-23 22:09:25'),
(11, '03123456789', '7610', '2023-10-07 02:04:20', '2023-10-07 02:04:20'),
(12, '03001234567', '3497', '2023-05-15 03:27:54', '2023-05-15 03:27:54'),
(13, '937593453', '3977', '2023-06-03 18:34:53', '2023-06-03 18:34:53'),
(14, '03087024770', '2945', '2023-06-15 06:34:31', '2023-06-15 06:34:31'),
(15, '+923116266746', '3046', '2023-11-03 23:47:45', '2023-11-03 23:47:45'),
(16, '+923030266740', '7215', '2023-08-24 02:29:49', '2023-08-24 02:29:49'),
(17, '+923091116550', '8830', '2023-11-01 20:08:46', '2023-11-01 20:08:46'),
(18, '+923091116556', '6514', '2023-09-05 01:12:44', '2023-09-05 01:12:44'),
(19, '+923091116558', '1772', '2023-09-05 01:44:38', '2023-09-05 01:44:38'),
(20, '+923056860156', '4030', '2023-11-01 18:39:29', '2023-11-01 18:39:29'),
(21, '+923091126550', '6480', '2023-09-07 01:17:46', '2023-09-07 01:17:46'),
(22, '+923091126650', '8596', '2023-09-07 02:32:59', '2023-09-07 02:32:59'),
(23, '+923081116550', '1449', '2023-09-11 00:15:40', '2023-09-11 00:15:40'),
(24, '+923091136550', '6943', '2023-09-13 03:26:48', '2023-09-13 03:26:48'),
(25, '+923123456789', '4321', '2023-09-20 22:36:03', '2023-09-20 22:36:03'),
(26, '+923116266749', '3170', '2023-09-20 22:47:30', '2023-09-20 22:47:30'),
(27, '+923364859687', '9770', '2023-10-07 02:11:43', '2023-10-07 02:11:43'),
(28, '+923077442481', '9447', '2023-10-07 02:24:06', '2023-10-07 02:24:06'),
(29, '+923030266745', '5305', '2023-10-18 03:40:09', '2023-10-18 03:40:09'),
(30, '+92307744248', '1781', '2023-10-07 02:28:48', '2023-10-07 02:28:48'),
(31, '+923057772568', '7426', '2023-10-07 02:30:46', '2023-10-07 02:30:46'),
(32, '+923099766335', '6875', '2023-10-07 03:46:47', '2023-10-07 03:46:47'),
(33, '+923200163647', '3351', '2023-10-11 21:42:15', '2023-10-11 21:42:15'),
(34, '+923039203804', '2607', '2023-10-30 20:42:33', '2023-10-30 20:42:33'),
(35, '+923216115758', '9080', '2023-10-31 10:36:56', '2023-10-31 10:36:56'),
(36, '03216115758', '4161', '2023-10-31 10:42:25', '2023-10-31 10:42:25'),
(37, '+923216115759', '9230', '2023-10-31 10:46:55', '2023-10-31 10:46:55'),
(38, '03216115756', '2956', '2023-10-31 10:51:11', '2023-10-31 10:51:11'),
(39, '+923057772635', '1899', '2023-10-31 11:03:21', '2023-10-31 11:03:21'),
(40, '+923057442369', '4116', '2023-10-31 16:30:01', '2023-10-31 16:30:01'),
(41, '+923043372286', '5666', '2023-10-31 16:35:04', '2023-10-31 16:35:04'),
(42, '+923091116555', '8545', '2023-10-31 16:49:48', '2023-10-31 16:49:48'),
(43, '+923099941374', '2809', '2023-10-31 17:08:49', '2023-10-31 17:08:49'),
(44, '032161157564', '7340', '2023-10-31 20:56:28', '2023-10-31 20:56:28'),
(45, '+923279766334', '7305', '2023-10-31 21:02:22', '2023-10-31 21:02:22'),
(46, '03123456799', '2091', '2023-10-31 21:39:15', '2023-10-31 21:39:15'),
(47, '032161157566', '8825', '2023-10-31 22:09:29', '2023-10-31 22:09:29'),
(48, '032161157569', '2863', '2023-11-01 11:20:52', '2023-11-01 11:20:52'),
(49, '+923095523675', '9923', '2023-11-01 11:24:08', '2023-11-01 11:24:08'),
(50, '+923057772634', '1907', '2023-11-01 11:34:16', '2023-11-01 11:34:16'),
(51, '+923074446235', '1937', '2023-11-01 11:35:52', '2023-11-01 11:35:52'),
(52, '+923091116552', '9040', '2023-11-01 11:56:41', '2023-11-01 11:56:41'),
(53, '+92305712688', '9852', '2023-11-01 12:00:58', '2023-11-01 12:00:58'),
(54, '032161157560', '7570', '2023-11-01 12:01:41', '2023-11-01 12:01:41'),
(55, '+923057772674', '5346', '2023-11-01 12:35:48', '2023-11-01 12:35:48'),
(56, '+923057726341', '9399', '2023-11-01 12:37:14', '2023-11-01 12:37:14'),
(57, '+923091274362', '4987', '2023-11-01 12:41:05', '2023-11-01 12:41:05'),
(58, '+923208839689', '9605', '2023-11-01 14:10:13', '2023-11-01 14:10:13'),
(59, '+923087772642', '5885', '2023-11-02 12:16:10', '2023-11-02 12:16:10'),
(60, '12376780', '7448', '2023-11-02 14:18:24', '2023-11-02 14:18:24'),
(61, '+923266367752', '1956', '2023-11-06 20:30:37', '2023-11-06 20:30:37');

-- --------------------------------------------------------

--
-- Table structure for table `provide_d_m_earnings`
--

CREATE TABLE `provide_d_m_earnings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `parent_id` int(11) DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `role` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `queries`
--

INSERT INTO `queries` (`id`, `name`, `description`, `parent_id`, `level`, `role`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Order not accepted', 'I have placed order and it is yet not accepted after long time passed', 0, 0, 'user', '2023-03-15 17:53:32', '2023-06-26 23:09:23', 1),
(2, 'Cancel order', 'I want to cancel this order', 0, 0, 'user', '2023-03-15 17:53:32', '2023-06-26 23:12:32', 1),
(3, 'Drop Order', 'I want to drop this order', 0, 0, 'rider', '2023-03-15 17:53:32', '2023-06-26 23:13:26', 1),
(4, 'Sub-Query 1.1', 'Description for sub-query 1.1', 1, 1, 'rider', '2023-03-15 17:53:53', '2023-04-28 23:11:05', 1),
(5, 'Sub-Query 1.2', 'Description for sub-query 1.2', 1, 1, 'rider', '2023-03-15 17:53:53', '2023-03-15 18:18:39', 1),
(6, 'Sub-Query 1.3', 'Description for sub-query 1.3', 1, 1, 'rider', '2023-03-15 17:53:53', '2023-03-15 18:18:39', 1),
(7, 'Sub-Query 1.4', 'Description for sub-query 1.1', 1, 1, 'rider', '2023-03-15 17:56:20', '2023-03-15 18:18:39', 1),
(8, 'Sub-Query 1.6', 'Description for sub-query 1.2', 1, 1, 'rider', '2023-03-15 17:56:20', '2023-03-15 18:18:39', 1),
(9, 'Sub-Query 1.5', 'Description for sub-query 1.3', 1, 1, 'rider', '2023-03-15 17:56:20', '2023-03-15 18:18:39', 1),
(10, 'Sub-Query 1.1', 'Description for sub-query 1.1', 2, 1, 'rider', '2023-03-15 17:56:20', '2023-03-15 18:18:39', 1),
(11, 'Sub-Query 1.2', 'Description for sub-query 1.2', 2, 1, 'rider', '2023-03-15 17:56:20', '2023-03-15 18:18:39', 1),
(12, 'Sub-Query 1.3', 'Description for sub-query 1.3', 2, 1, 'rider', '2023-03-15 17:56:20', '2023-03-15 18:18:39', 1),
(13, 'Sub-Query 1.1', 'Description for sub-query 1.1', 3, 1, 'rider', '2023-03-15 17:56:20', '2023-03-15 18:18:39', 1),
(14, 'Sub-Query 1.2', 'Description for sub-query 1.2', 3, 1, 'rider', '2023-03-15 17:56:20', '2023-03-15 18:18:39', 1),
(15, 'Sub-Query 1.3', 'Description for sub-query 1.3', 3, 1, 'rider', '2023-03-15 17:56:20', '2023-03-15 18:18:39', 1),
(16, 'Sub-Sub-Query 1.1.1', 'Description for sub-sub-query 1.1.1', 7, 2, 'rider', '2023-03-15 18:01:05', '2023-03-15 18:18:39', 1),
(17, 'Sub-Sub-Query 1.1.2', 'Description for sub-sub-query 1.1.2', 8, 2, 'rider', '2023-03-15 18:01:05', '2023-03-15 18:18:39', 1),
(18, 'Sub-Sub-Query 1.1.3', 'Description for sub-sub-query 1.1.3', 9, 2, 'rider', '2023-03-15 18:01:05', '2023-03-15 18:18:39', 1),
(19, 'Sub-Sub-Query 1.2.1', 'Description for sub-sub-query 1.2.1', 10, 2, 'rider', '2023-03-15 18:01:05', '2023-03-15 18:18:39', 1),
(20, 'Sub-Sub-Query 1.2.2', 'Description for sub-sub-query 1.2.2', 11, 2, 'rider', '2023-03-15 18:01:05', '2023-03-15 18:18:39', 1),
(21, 'Sub-Sub-Query 1.2.3', 'Description for sub-sub-query 1.2.3', 12, 2, 'rider', '2023-03-15 18:01:05', '2023-03-15 18:18:39', 1),
(22, 'Sub-Sub-Query 1.3.1', 'Description for sub-sub-query 1.3.1', 13, 2, 'rider', '2023-03-15 18:01:05', '2023-03-15 18:18:39', 1),
(23, 'Sub-Sub-Query 1.3.2', 'Description for sub-sub-query 1.3.2', 14, 2, 'rider', '2023-03-15 18:01:05', '2023-03-15 18:18:39', 1),
(24, 'Sub-Sub-Query 1.3.3', 'Description for sub-sub-query 1.3.3', 1, 2, 'user', '2023-03-15 18:01:05', '2023-07-20 05:59:14', 1),
(25, 'Can not deliver this order', 'I am too busy to deliver this order', 0, 0, 'rider', '2023-06-26 23:18:00', '2023-06-26 23:18:00', 1),
(26, 'Cannot full fill order', 'I am current unable to fulfill this order due to some reason', 0, 0, 'vendor', '2023-07-20 06:55:50', '2023-07-20 07:11:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `footer_text` text COLLATE utf8mb4_unicode_ci,
  `minimum_order` decimal(24,2) NOT NULL DEFAULT '0.00',
  `comission` decimal(24,2) DEFAULT NULL,
  `schedule_order` tinyint(1) NOT NULL DEFAULT '0',
  `opening_time` time DEFAULT '10:00:00',
  `closeing_time` time DEFAULT '23:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `free_delivery` tinyint(1) NOT NULL DEFAULT '0',
  `rating` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery` tinyint(1) NOT NULL DEFAULT '1',
  `take_away` tinyint(1) NOT NULL DEFAULT '1',
  `dine_in` tinyint(1) NOT NULL DEFAULT '1',
  `food_section` tinyint(1) NOT NULL DEFAULT '1',
  `tax` decimal(24,2) NOT NULL DEFAULT '0.00',
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reviews_section` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `off_day` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `gst` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `self_delivery_system` tinyint(1) NOT NULL DEFAULT '0',
  `pos_system` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_shipping_charge` decimal(24,2) NOT NULL DEFAULT '0.00',
  `delivery_time` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '30-40',
  `veg` tinyint(1) NOT NULL DEFAULT '1',
  `non_veg` tinyint(1) NOT NULL DEFAULT '1',
  `order_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `per_km_shipping_charge` double(16,3) UNSIGNED DEFAULT NULL,
  `business_type` int(11) NOT NULL,
  `total_earning` float DEFAULT NULL,
  `total_withdrawn` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `phone`, `email`, `logo`, `latitude`, `longitude`, `address`, `footer_text`, `minimum_order`, `comission`, `schedule_order`, `opening_time`, `closeing_time`, `status`, `vendor_id`, `created_at`, `updated_at`, `free_delivery`, `rating`, `cover_photo`, `delivery`, `take_away`, `dine_in`, `food_section`, `tax`, `zone_id`, `reviews_section`, `active`, `off_day`, `gst`, `self_delivery_system`, `pos_system`, `minimum_shipping_charge`, `delivery_time`, `veg`, `non_veg`, `order_count`, `total_order`, `per_km_shipping_charge`, `business_type`, `total_earning`, `total_withdrawn`) VALUES
(1, 'KFC', '03043372285', 'junaidvendor@gmail.com', '2023-02-22-63f64154deef2.png', '30.190113599595335', '71.48707057616609', 'Manzoorabad metro station Multan Pakistan', NULL, 300.00, NULL, 1, NULL, NULL, 1, 1, '2022-11-29 07:51:26', '2023-11-13 16:56:39', 0, NULL, '2023-02-22-63f64154df23f.png', 1, 0, 1, 1, 4.00, 1, 1, 1, '', '{\"status\":\"1\",\"code\":\"10\"}', 0, 0, 0.00, '30-60', 1, 1, 5, 321, NULL, 1, 23571, NULL),
(2, 'Guru', '03003003030', 'Khizarvendor@gmail.com', '2023-02-22-63f642239a11b.png', '30.190113599595335', '71.48707057616609', 'Manzoorabad metro station multan', NULL, 0.00, NULL, 0, '10:00:00', '23:00:00', 1, 2, '2022-11-29 07:51:26', '2023-10-21 04:22:27', 0, NULL, '2023-02-22-63f642239a3a4.png', 1, 0, 1, 1, 4.00, 1, 1, 1, ' ', NULL, 0, 0, 0.00, '30-60', 1, 1, 0, 3, NULL, 1, NULL, NULL),
(3, 'Al Tabash', '03001234567', 'jhon@gmail.com', '2023-08-21-64e36abd66ec0.png', '30.174007282206162', '71.50877595043723', 'Street no Z Road A City M', NULL, 0.00, NULL, 0, '10:00:00', '23:00:00', 1, 9, '2023-08-21 04:46:37', '2023-08-21 04:46:37', 0, NULL, '2023-08-21-64e36abd6fb07.png', 1, 1, 1, 1, 12.00, 1, 1, 1, ' ', NULL, 0, 0, 0.00, '45-60', 1, 1, 0, 0, NULL, 1, NULL, NULL),
(4, 'Ramada', '+92309116550', 'ma2309809@gmail.com', '2023-10-11-6526664f7b59a.png', '30.155933073365276', '71.50966107941214', 'Multan,Pakistan', NULL, 100.00, NULL, 0, NULL, NULL, 1, 10, '2023-10-11 00:09:35', '2023-10-23 02:03:06', 0, NULL, '2023-10-11-6526664f7ea42.png', 1, 1, 1, 1, 10.00, 1, 1, 1, '', '{\"status\":null,\"code\":null}', 0, 0, 0.00, '30-60', 1, 1, 0, 3, NULL, 1, 385, NULL),
(5, 'Melt9', '03077442481', 'ahsanaliali295@gmail.com', '2023-10-12-6527cfda78912.png', '30.181352895538918', '71.54709004892949', 'Multan pakistan', NULL, 0.00, NULL, 0, NULL, NULL, 1, 11, '2023-10-12 01:52:10', '2023-10-17 00:31:35', 0, NULL, '2023-10-12-6527cfda826e9.png', 1, 1, 1, 1, 10.00, 1, 1, 1, '', '{\"status\":null,\"code\":null}', 0, 0, 0.00, '30-60', 1, 1, 0, 8, NULL, 1, NULL, NULL),
(6, 'Cafe', '03200163647', 'zohaibworkspace@gmail.com', '2023-10-30-653f6bc543077.png', '31.443566579997004', '74.29239581170866', 'Lahore', NULL, 0.00, NULL, 0, '10:00:00', '23:00:00', 1, 12, '2023-10-30 12:39:33', '2023-10-30 15:06:06', 0, NULL, '2023-10-30-653f6bc548adf.png', 1, 1, 1, 1, 10.00, 5, 1, 1, ' ', NULL, 0, 0, 0.00, '25-30', 1, 1, 0, 4, NULL, 1, NULL, NULL),
(7, 'ShahJahan Grill', '+923091116550', 'ijazhu33@gmail.com', '2023-11-06-654883f8376d7.png', '30.192794327588413', '71.51350738809425', 'Block A، 11 - A Gulgasht Ave, A Block Gulgasht Colony, Multan, Punjab, Pakistan', NULL, 100.00, NULL, 1, NULL, NULL, 1, 13, '2023-11-06 10:13:12', '2023-11-06 14:58:50', 0, NULL, '2023-11-06-654883f83a1b8.png', 1, 1, 1, 1, 10.00, 1, 1, 1, '', '{\"status\":null,\"code\":null}', 0, 0, 0.00, '40-60', 1, 1, 0, 6, NULL, 1, 2079, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_schedule`
--

CREATE TABLE `restaurant_schedule` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `day` int(11) NOT NULL,
  `opening_time` time DEFAULT NULL,
  `closing_time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant_schedule`
--

INSERT INTO `restaurant_schedule` (`id`, `restaurant_id`, `day`, `opening_time`, `closing_time`, `created_at`, `updated_at`) VALUES
(3, 2, 6, '00:00:00', '23:59:00', NULL, NULL),
(4, 2, 0, '00:00:00', '23:59:00', NULL, NULL),
(29, 5, 1, '00:00:00', '20:00:00', NULL, NULL),
(30, 5, 2, '00:00:00', '20:00:00', NULL, NULL),
(31, 5, 3, '00:00:00', '20:00:00', NULL, NULL),
(32, 5, 4, '00:00:00', '20:00:00', NULL, NULL),
(33, 5, 5, '00:00:00', '20:00:00', NULL, NULL),
(34, 5, 6, '00:00:00', '20:00:00', NULL, NULL),
(35, 5, 0, '00:00:00', '20:00:00', NULL, NULL),
(56, 1, 1, '00:00:00', '23:58:00', NULL, NULL),
(57, 1, 2, '00:00:00', '23:58:00', NULL, NULL),
(58, 1, 3, '00:00:00', '23:58:00', NULL, NULL),
(59, 1, 4, '00:00:00', '23:58:00', NULL, NULL),
(60, 1, 5, '00:00:00', '23:58:00', NULL, NULL),
(61, 1, 6, '00:00:00', '23:58:00', NULL, NULL),
(62, 1, 0, '00:00:00', '23:58:00', NULL, NULL),
(63, 4, 1, '00:00:00', '23:51:00', NULL, NULL),
(64, 4, 2, '00:00:00', '23:51:00', NULL, NULL),
(65, 4, 3, '00:00:00', '23:51:00', NULL, NULL),
(66, 4, 4, '00:00:00', '23:51:00', NULL, NULL),
(67, 4, 5, '00:00:00', '23:51:00', NULL, NULL),
(68, 4, 6, '00:00:00', '23:51:00', NULL, NULL),
(69, 4, 0, '00:00:00', '23:51:00', NULL, NULL),
(70, 7, 1, '00:00:00', '23:40:00', NULL, NULL),
(71, 7, 2, '00:00:00', '23:40:00', NULL, NULL),
(72, 7, 3, '00:00:00', '23:40:00', NULL, NULL),
(73, 7, 4, '00:00:00', '23:40:00', NULL, NULL),
(74, 7, 5, '00:00:00', '23:40:00', NULL, NULL),
(75, 7, 6, '00:00:00', '23:40:00', NULL, NULL),
(76, 7, 0, '00:00:00', '23:40:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_wallets`
--

CREATE TABLE `restaurant_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `total_earning` decimal(24,2) NOT NULL DEFAULT '0.00',
  `total_withdrawn` decimal(24,2) NOT NULL DEFAULT '0.00',
  `pending_withdraw` decimal(24,2) NOT NULL DEFAULT '0.00',
  `collected_cash` decimal(24,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant_wallets`
--

INSERT INTO `restaurant_wallets` (`id`, `vendor_id`, `total_earning`, `total_withdrawn`, `pending_withdraw`, `collected_cash`, `created_at`, `updated_at`) VALUES
(1, 1, 733.00, 0.00, 733.00, 0.00, '2022-11-29 07:53:10', '2023-07-21 21:09:41'),
(2, 2, 0.00, 0.00, 0.00, 0.00, '2022-11-29 07:53:10', '2022-11-29 07:53:10'),
(3, 10, 0.00, 0.00, 0.00, 0.00, '2023-10-11 00:14:15', '2023-10-11 00:14:15'),
(4, 11, 0.00, 0.00, 0.00, 0.00, '2023-10-30 12:28:58', '2023-10-30 12:28:58');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_zone`
--

CREATE TABLE `restaurant_zone` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT '0',
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_campaign_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `food_id`, `user_id`, `comment`, `attachment`, `rating`, `order_id`, `created_at`, `updated_at`, `item_campaign_id`, `status`) VALUES
(1, 3, 1, 'Perfect', NULL, 4, 100001, '2023-07-27 13:32:46', NULL, NULL, 1),
(2, 2, 1, 'Grear experience', NULL, 4, 100004, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rider_queries`
--

CREATE TABLE `rider_queries` (
  `id` int(11) NOT NULL,
  `rider_id` int(11) NOT NULL,
  `query_id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `response` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `status_updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rider_queries`
--

INSERT INTO `rider_queries` (`id`, `rider_id`, `query_id`, `name`, `description`, `images`, `response`, `created_at`, `status`, `status_updated_at`) VALUES
(13, 1, 23, 'Sub-Sub-Query 1.3.2', 'rider test sub question', NULL, NULL, '2023-07-19 06:10:20', 'pending', '2023-07-19 06:10:20'),
(14, 1, 25, 'Can not deliver this order', 'busy!', NULL, NULL, '2023-10-17 08:04:48', 'pending', '2023-10-17 08:04:48'),
(15, 1, 25, 'Can not deliver this order', 'vnj pra', NULL, NULL, '2023-10-17 08:07:04', 'pending', '2023-10-17 08:07:04'),
(16, 1, 25, 'Can not deliver this order', 'not available!', NULL, NULL, '2023-10-17 08:35:01', 'pending', '2023-10-17 08:35:01'),
(17, 1, 25, 'Can not deliver this order', 'not available!', NULL, NULL, '2023-10-17 08:36:30', 'pending', '2023-10-17 08:36:30');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `wa_number` text NOT NULL,
  `zone_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `image`, `user_id`, `status`, `wa_number`, `zone_id`, `created_at`, `updated_at`) VALUES
(1, 'Pavement Service', 'We do all kind of pavement on your floors.', '2023-02-27-63ae03dfjb07c2.jpg', 16, 1, '+923056860156', 1, '2023-02-27 11:22:31', '2023-02-27 11:22:31');

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `description` text,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `shift_date` date NOT NULL,
  `delivery_man` int(11) DEFAULT NULL,
  `status` enum('Active','Started','Ended','Inactive','Assigned','Left','Paused') NOT NULL DEFAULT 'Inactive',
  `shift_started_at` datetime DEFAULT NULL,
  `shift_ended_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`id`, `zone_id`, `description`, `start_time`, `end_time`, `shift_date`, `delivery_man`, `status`, `shift_started_at`, `shift_ended_at`, `created_at`, `updated_at`) VALUES
(2, 1, 'Multan, Manzoorabad', '03:47:10', '23:59:59', '2023-03-19', 12, 'Ended', '2023-03-19 03:41:00', '2023-03-19 05:52:58', '2023-03-10 19:00:24', '2023-03-27 20:22:28'),
(3, 1, 'Multan, MA Junah Road', '03:47:10', '23:59:59', '2023-03-29', 12, 'Ended', '2023-03-22 20:30:57', '2023-04-01 16:20:52', '2023-03-20 19:00:24', '2023-04-01 14:20:52'),
(4, 1, 'Babar Colony', '07:54:50', '23:54:50', '2023-03-21', 12, 'Ended', '2023-03-21 18:55:46', '2023-03-21 18:55:53', '2023-03-21 12:57:08', '2023-03-21 17:55:53'),
(5, 1, 'Babar Colony', '05:54:50', '18:59:11', '2023-03-21', 12, 'Ended', '2023-03-21 18:53:31', '2023-03-21 18:54:47', '2023-03-21 13:00:37', '2023-03-21 17:54:47'),
(6, 1, 'Babar Colony', '01:54:50', '23:54:50', '2023-04-11', 12, 'Ended', '2023-03-21 19:07:29', '2023-04-12 16:57:06', '2023-03-21 13:00:46', '2023-04-12 14:57:06'),
(7, 1, 'Babar Colony', '17:54:50', '23:54:50', '2023-03-22', 12, 'Active', '2023-03-21 18:31:55', '2023-03-21 18:35:00', '2023-03-21 13:00:52', '2023-04-08 10:02:21'),
(8, 1, 'Babar Colony', '17:54:50', '22:54:50', '2023-03-22', NULL, 'Ended', NULL, NULL, '2023-03-21 13:01:03', '2023-03-26 22:29:32'),
(9, 1, 'Chowk kumharan wala', '11:54:50', '18:54:50', '2023-04-04', 13, 'Ended', '2023-04-03 17:29:59', '2023-04-04 18:05:34', '2023-03-23 08:07:19', '2023-04-04 16:05:34'),
(10, 2, 'Chowk kumharan wala', '12:54:50', '05:54:50', '2023-03-23', NULL, 'Active', NULL, NULL, '2023-03-23 08:07:52', '2023-03-26 22:19:35'),
(11, 1, '1', '15:00:00', '19:00:00', '2023-03-30', 13, 'Ended', '2023-03-30 18:08:28', '2023-04-01 15:32:44', '2023-03-30 02:43:03', '2023-04-01 13:32:44'),
(12, 1, '2', '15:30:00', '17:00:00', '2023-03-30', NULL, 'Active', NULL, NULL, '2023-03-30 03:17:17', '2023-03-30 12:20:53'),
(13, 1, '3', '18:00:00', '19:00:00', '2023-03-30', NULL, 'Active', NULL, NULL, '2023-03-30 03:18:36', '2023-03-30 12:20:55'),
(14, 1, '4', '19:30:00', '20:30:00', '2023-03-30', NULL, 'Active', NULL, NULL, '2023-03-30 03:19:45', '2023-03-30 12:20:58'),
(15, 1, NULL, '15:25:00', '16:45:00', '2023-03-30', NULL, 'Active', NULL, NULL, '2023-03-30 03:21:50', '2023-03-30 03:26:25'),
(16, 1, NULL, '16:25:00', '16:45:00', '2023-03-30', NULL, 'Active', NULL, NULL, '2023-03-30 03:23:09', '2023-03-30 03:26:09'),
(17, 1, NULL, '15:25:00', '15:45:00', '2023-03-30', NULL, 'Active', NULL, NULL, '2023-03-30 03:24:21', '2023-03-30 03:25:50'),
(18, 1, NULL, '16:45:00', '17:15:00', '2023-03-30', NULL, 'Active', NULL, NULL, '2023-03-30 03:25:08', '2023-03-30 03:25:35'),
(19, 1, 'Ahmar k Mashhoor Pakore(Gulgusht)', '16:15:00', '16:45:00', '2023-03-30', NULL, 'Inactive', NULL, NULL, '2023-03-30 03:28:38', '2023-03-30 03:28:38'),
(20, 1, 'King Burger (Gulgusht)', '17:00:00', '17:30:00', '2023-03-30', NULL, 'Inactive', NULL, NULL, '2023-03-30 03:29:41', '2023-03-30 03:29:41'),
(21, 2, 'hfhhff', '17:32:00', '17:34:00', '2023-03-31', NULL, 'Ended', NULL, NULL, '2023-03-30 03:34:09', '2023-04-01 01:24:22'),
(22, 2, 'mllmlmlmlmlmlmlm', '01:56:00', '01:57:00', '2023-04-13', NULL, 'Active', NULL, NULL, '2023-03-31 21:55:07', '2023-03-31 22:01:16'),
(23, 1, 'Food Delivery', '15:20:00', '16:00:00', '2023-04-01', 13, 'Ended', '2023-04-01 15:36:15', '2023-04-01 16:24:55', '2023-04-01 01:17:57', '2023-04-01 14:24:55'),
(24, 1, 'Pizza Delivery shift', '18:10:00', '18:20:00', '2023-04-01', 13, 'Assigned', NULL, NULL, '2023-04-01 01:19:03', '2023-04-01 01:34:04'),
(25, 1, 'lasani chargha house lksjdk;sdl ;ldskj; lskdj; lksdj;lksdj ;lksdj;l skdj aslkdfas a;sidj;sdjfl;ksd asdlkfjas;ldkfas ;lkfas fklasj;flkas falksjflkasjf;lkasjflasani chargha house lksjdk;sdl ;ldskj; lskdj; lksdj;lksdj ;lksdj;l skdj aslkdfas a;sidj;sdjfl;ksd asdlkfjas;ldkfas ;lkfas fklasj;flkas falksjflkasjf;lkasjflasani chargha house lksjdk;sdl ;ldskj; lskdj; lksdj;lksdj ;lksdj;l skdj aslkdfas a;sidj;sdjfl;ksd asdlkfjas;ldkfas ;lkfas fklasj;flkas falksjflkasjf;lkasjflasani chargha house lksjdk;sdl ;ldskj; lskdj; lksdj;lksdj ;lksdj;l skdj aslkdfas a;sidj;sdjfl;ksd asdlkfjas;ldkfas ;lkfas fklasj;flkas falksjflkasjf;lkasjf', '10:25:00', '18:45:00', '2023-04-11', 13, 'Ended', '2023-04-08 15:18:03', '2023-04-12 17:38:44', '2023-04-01 01:21:31', '2023-04-12 15:38:44'),
(26, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing', '16:15:00', '16:45:00', '2023-04-01', 13, 'Ended', '2023-04-01 16:27:17', '2023-04-01 16:33:17', '2023-04-01 02:15:50', '2023-04-01 14:33:17'),
(27, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing', '17:00:00', '18:30:00', '2023-04-01', 12, 'Ended', '2023-04-01 18:11:07', '2023-04-01 20:07:54', '2023-04-01 02:20:28', '2023-04-01 18:07:54'),
(28, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing', '15:25:00', '16:00:00', '2023-04-01', NULL, 'Started', NULL, NULL, '2023-04-01 02:21:52', '2023-04-01 02:23:02'),
(29, 1, 'Chowk kumharan wala shift', '14:30:00', '19:30:00', '2023-04-01', 12, 'Ended', '2023-04-01 16:51:05', '2023-04-01 18:10:38', '2023-04-01 02:29:00', '2023-04-01 16:10:38'),
(30, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing', '14:35:00', '17:35:00', '2023-04-01', NULL, 'Active', NULL, NULL, '2023-04-01 02:34:42', '2023-04-01 02:34:42'),
(31, 1, 'this is a shift', '18:08:00', '23:08:00', '2023-04-01', 12, 'Ended', '2023-04-01 20:08:07', '2023-04-08 17:11:05', '2023-04-01 04:09:11', '2023-04-08 15:11:05'),
(32, 1, 'Ahmad sweets', '12:15:00', '12:45:00', '2023-04-03', 13, 'Ended', '2023-04-03 12:20:43', '2023-04-03 13:20:33', '2023-04-02 22:14:37', '2023-04-03 11:20:33'),
(33, 1, 'zaika sweets', '13:20:00', '13:50:00', '2023-04-03', 13, 'Ended', '2023-04-03 13:20:41', '2023-04-03 17:27:15', '2023-04-02 22:15:30', '2023-04-03 15:27:15'),
(34, 1, 'afc', '18:10:00', '19:00:00', '2023-04-04', 13, 'Ended', '2023-04-04 18:22:56', '2023-04-08 14:57:40', '2023-04-04 04:05:14', '2023-04-08 12:57:40'),
(35, 1, 'chock kumara', '18:15:00', '18:45:00', '2023-04-04', NULL, 'Active', NULL, NULL, '2023-04-04 04:06:15', '2023-04-04 04:06:15'),
(36, 1, 'lodhi colony', '18:30:00', '19:06:00', '2023-04-04', 14, 'Ended', '2023-04-04 18:23:09', '2023-04-05 13:54:28', '2023-04-04 04:07:13', '2023-04-05 11:54:28'),
(37, 1, 'lodhi colony', '18:30:00', '19:06:00', '2023-04-04', NULL, 'Active', NULL, NULL, '2023-04-04 04:07:13', '2023-04-04 04:07:13'),
(38, 1, 'pakgate', '18:45:00', '19:15:00', '2023-04-04', NULL, 'Active', NULL, NULL, '2023-04-04 04:08:03', '2023-04-04 04:08:03'),
(39, 1, 'dehli gate', '19:00:00', '19:30:00', '2023-04-04', NULL, 'Active', NULL, NULL, '2023-04-04 04:09:29', '2023-04-04 04:09:29'),
(40, 1, 'kabir wala', '19:15:00', '19:45:00', '2023-04-04', 14, 'Assigned', NULL, NULL, '2023-04-04 04:10:13', '2023-04-04 04:22:01'),
(41, 1, 'Dehli Gate', '18:20:00', '22:00:00', '2023-04-04', NULL, 'Active', NULL, NULL, '2023-04-04 04:16:06', '2023-04-04 04:16:06'),
(42, 1, 'Dehli Gate', '18:20:00', '22:00:00', '2023-04-04', NULL, 'Active', NULL, NULL, '2023-04-04 04:16:07', '2023-04-04 04:16:07'),
(43, 1, 'Bohar Gate', '18:22:00', '20:30:00', '2023-04-04', NULL, 'Active', NULL, NULL, '2023-04-04 04:17:06', '2023-04-04 04:17:06'),
(44, 1, 'Chowk Kumharan', '09:17:00', '11:22:00', '2023-04-06', 13, 'Assigned', NULL, NULL, '2023-04-04 04:18:10', '2023-04-06 02:19:07'),
(45, 1, 'Dehli Gate', '17:00:00', '20:00:00', '2023-04-12', 11, 'Ended', '2023-04-12 17:04:07', '2023-04-12 17:08:27', '2023-04-12 02:59:07', '2023-04-12 15:08:27'),
(46, 1, 'Bohar Gate', '17:10:00', '19:59:00', '2023-04-12', 12, 'Ended', '2023-04-12 17:04:09', '2023-04-12 17:08:29', '2023-04-12 02:59:54', '2023-04-12 15:08:29'),
(47, 1, 'Chowk Kumharan', '16:00:00', '18:01:00', '2023-04-12', NULL, 'Active', NULL, NULL, '2023-04-12 03:01:34', '2023-04-12 03:01:34'),
(48, 1, 'Nigana Chowk', '15:01:00', '19:01:00', '2023-04-12', 13, 'Assigned', NULL, NULL, '2023-04-12 03:02:12', '2023-04-12 03:38:50'),
(49, 1, 'BZU, Multan', '17:35:00', '18:20:00', '2023-04-12', 12, 'Ended', '2023-04-12 17:16:40', '2023-04-12 17:53:13', '2023-04-12 03:03:07', '2023-04-12 15:53:13'),
(50, 1, 'Ginnah Road', '17:10:00', '20:10:00', '2023-04-12', NULL, 'Active', NULL, NULL, '2023-04-12 03:08:47', '2023-04-12 03:08:47'),
(51, 1, 'BCG Chowk', '17:00:00', '19:10:00', '2023-04-12', NULL, 'Active', NULL, NULL, '2023-04-12 03:09:21', '2023-04-12 03:09:21'),
(52, 1, 'Sabzi Mandi', '17:15:00', '21:10:00', '2023-04-12', 11, 'Started', '2023-04-12 17:15:21', NULL, '2023-04-12 03:10:05', '2023-04-12 15:15:21'),
(53, 1, 'MDA Chowk', '17:12:00', '20:20:00', '2023-04-12', NULL, 'Active', NULL, NULL, '2023-04-12 03:10:45', '2023-04-12 03:10:45'),
(54, 1, 'Coke factory', '15:00:00', '19:00:00', '2023-04-19', 12, 'Started', '2023-04-18 16:17:06', NULL, '2023-04-18 02:05:13', '2023-04-19 13:09:55'),
(55, 1, 'description for the multan shit', '05:00:00', '06:00:00', '2023-04-19', NULL, 'Active', NULL, NULL, '2023-04-18 02:06:25', '2023-04-18 02:06:25'),
(56, 1, 'manzoorabad', '15:00:00', '16:40:00', '2023-04-18', NULL, 'Active', NULL, NULL, '2023-04-18 02:07:46', '2023-04-18 02:14:07'),
(57, 1, 'hafiz jamal', '15:30:00', '19:30:00', '2023-04-18', NULL, 'Active', NULL, NULL, '2023-04-18 02:08:50', '2023-04-18 02:13:18'),
(58, 1, 'Hussain agahi', '16:00:00', '16:40:00', '2023-04-18', 17, 'Started', '2023-04-18 16:18:39', NULL, '2023-04-18 02:09:48', '2023-04-18 14:18:39'),
(59, 1, 'Jinnah Road', '15:30:00', '20:30:00', '2023-05-20', 18, 'Ended', '2023-05-20 17:01:53', '2023-05-23 17:51:30', '2023-05-20 03:00:54', '2023-05-23 15:51:30'),
(60, 1, '2nd shift for harry', '09:28:00', '22:52:00', '2023-06-17', 1, 'Ended', '2023-06-17 17:07:16', '2023-07-05 10:12:06', '2023-05-23 03:53:10', '2023-07-05 08:12:06'),
(61, 1, '3rd testing shift', '11:37:00', '22:38:00', '2023-06-17', 1, 'Ended', '2023-06-17 12:31:52', '2023-06-17 17:07:03', '2023-05-23 03:54:47', '2023-06-17 15:07:03'),
(62, 1, 'rest .dev', '11:51:00', '12:51:00', '2023-06-24', 5, 'Ended', '2023-06-24 11:53:07', '2023-08-23 17:35:25', '2023-06-23 21:52:30', '2023-08-23 15:35:25'),
(63, 1, 'Testing Shift', '11:01:00', '23:15:00', '2023-07-06', 1, 'Ended', '2023-07-06 11:16:11', '2023-07-08 10:21:48', '2023-07-05 21:15:42', '2023-07-08 08:21:48'),
(64, 1, 'testing', '10:21:00', '22:22:00', '2023-07-08', 1, 'Ended', '2023-07-08 10:26:32', '2023-07-10 10:22:41', '2023-07-07 20:22:22', '2023-07-10 08:22:41'),
(65, 1, '10 July Shift', '10:20:00', '22:21:00', '2023-07-10', 1, 'Active', '2023-07-10 10:23:26', NULL, '2023-07-09 20:21:22', '2023-07-24 23:53:05'),
(66, 1, 'Test Shift', '13:51:00', '01:51:00', '2023-07-25', 1, 'Assigned', NULL, NULL, '2023-07-24 23:52:18', '2023-07-24 23:57:07'),
(67, 1, '25 July Shift', '14:14:00', '20:14:00', '2023-07-25', 1, 'Ended', '2023-07-25 14:15:48', '2023-08-23 17:42:33', '2023-07-25 00:15:13', '2023-08-23 15:42:33'),
(68, 1, 'shift', '17:34:00', '21:35:00', '2023-08-23', 5, 'Ended', '2023-08-23 17:43:48', '2023-09-14 16:01:43', '2023-08-23 03:35:22', '2023-09-14 14:01:43'),
(69, 1, 'Second Shift', '17:39:00', '22:39:00', '2023-08-23', NULL, 'Active', NULL, NULL, '2023-08-23 03:39:50', '2023-08-23 03:39:50'),
(70, 1, 'Third Shift', '19:41:00', '21:41:00', '2023-08-23', 1, 'Assigned', NULL, NULL, '2023-08-23 03:41:43', '2023-08-23 03:42:40'),
(71, 1, 'Shift for One hour', '15:46:00', '16:48:00', '2023-09-14', NULL, 'Active', NULL, NULL, '2023-09-14 01:47:24', '2023-09-14 01:47:24'),
(72, 1, 'Shift Two hour', '15:48:00', '17:48:00', '2023-09-14', NULL, 'Active', NULL, NULL, '2023-09-14 01:48:50', '2023-09-14 01:48:50'),
(73, 1, 'Shift Till 8', '15:49:00', '19:49:00', '2023-09-14', NULL, 'Active', NULL, NULL, '2023-09-14 01:49:37', '2023-09-14 01:49:37'),
(74, 1, 'Shift till 9', '15:49:00', '20:49:00', '2023-09-14', NULL, 'Active', NULL, NULL, '2023-09-14 01:50:26', '2023-09-14 01:50:26'),
(75, 1, 'New Shift', '12:02:00', '22:02:00', '2023-09-14', NULL, 'Active', NULL, NULL, '2023-09-14 02:02:38', '2023-09-14 02:02:38'),
(76, 1, 'Next Day Shift', '12:03:00', '21:03:00', '2023-09-15', NULL, 'Active', NULL, NULL, '2023-09-14 02:04:06', '2023-09-14 02:04:06'),
(77, 1, 'Moring to night shift', '11:35:00', '23:40:00', '2023-09-21', 1, 'Ended', '2023-09-21 11:50:09', '2023-09-23 12:44:08', '2023-09-20 21:40:52', '2023-09-23 10:44:08'),
(78, 1, 'Morning to evening shift', '11:41:00', '23:41:00', '2023-09-22', NULL, 'Active', NULL, NULL, '2023-09-20 21:41:58', '2023-09-20 21:41:58'),
(79, 1, 'Day to Night', '11:42:00', '23:42:00', '2023-09-23', 1, 'Ended', '2023-09-23 12:44:25', '2023-09-24 14:54:21', '2023-09-20 21:42:33', '2023-09-24 12:54:21'),
(80, 1, 'Todasy', '16:48:00', '22:48:00', '2023-09-26', 1, 'Ended', '2023-09-26 16:49:33', '2023-09-27 17:54:53', '2023-09-26 02:48:50', '2023-09-27 15:54:53'),
(81, 1, 'My shift', '23:26:00', '06:00:00', '2023-09-27', 1, 'Assigned', NULL, NULL, '2023-09-27 04:01:17', '2023-09-27 04:01:34'),
(82, 1, 'that shift', '17:02:00', '23:03:00', '2023-09-27', 1, 'Ended', '2023-09-27 18:04:24', '2023-09-28 12:04:20', '2023-09-27 04:03:34', '2023-09-28 10:04:20'),
(83, 1, 'this!', '07:58:00', '11:59:00', '2023-09-28', 1, 'Assigned', NULL, NULL, '2023-09-27 21:59:50', '2023-09-27 22:01:45'),
(84, 1, 'hoja!', '12:02:00', '18:30:00', '2023-09-28', 1, 'Ended', '2023-09-28 12:04:30', '2023-09-30 12:09:09', '2023-09-27 22:03:09', '2023-09-30 10:09:09'),
(85, 1, 'Good!', '11:05:00', '20:07:00', '2023-09-30', 1, 'Ended', '2023-09-30 12:09:15', '2023-09-30 15:31:01', '2023-09-29 22:07:49', '2023-09-30 13:31:01'),
(86, 1, '2nd Shift', '13:20:00', '23:21:00', '2023-09-30', 7, 'Ended', '2023-09-30 15:56:55', '2023-10-04 12:46:19', '2023-09-30 01:21:21', '2023-10-04 10:46:19'),
(87, 1, '3rd Shift', '14:22:00', '20:22:00', '2023-09-30', NULL, 'Active', NULL, NULL, '2023-09-30 01:22:52', '2023-09-30 01:22:52'),
(88, 1, 'fourth shift', '12:23:00', '21:24:00', '2023-09-30', 1, 'Ended', '2023-09-30 15:55:59', '2023-10-11 13:19:15', '2023-09-30 01:24:16', '2023-10-11 11:19:15'),
(89, 1, '5th shift', '14:41:00', '22:42:00', '2023-09-30', NULL, 'Active', NULL, NULL, '2023-09-30 01:42:40', '2023-09-30 01:42:40'),
(90, 1, 'shift!', '21:45:00', '19:45:00', '2023-10-04', 7, 'Ended', NULL, NULL, '2023-10-03 22:46:05', '2023-10-04 02:06:57'),
(91, 1, 'hi!', '22:46:00', '19:47:00', '2023-10-04', 7, 'Ended', NULL, NULL, '2023-10-03 22:47:41', '2023-10-04 02:05:59'),
(92, 1, 'jdekje', '07:49:00', '20:49:00', '2023-10-04', 7, 'Ended', '2023-10-04 16:09:34', '2023-10-05 14:50:24', '2023-10-03 22:50:03', '2023-10-05 12:50:24'),
(93, 1, 'hoja na!', '09:48:00', '20:48:00', '2023-10-05', 7, 'Ended', '2023-10-05 14:50:49', '2023-10-06 16:55:59', '2023-10-05 00:48:48', '2023-10-06 14:55:59'),
(94, 1, 'good.', '14:54:00', '23:55:00', '2023-10-06', 7, 'Assigned', NULL, NULL, '2023-10-06 02:55:30', '2023-10-06 02:56:04'),
(95, 1, 'done!', '09:34:00', '22:35:00', '2023-10-07', 7, 'Started', '2023-10-07 11:36:35', NULL, '2023-10-06 21:35:20', '2023-10-07 09:36:35'),
(96, 1, 'jjzjj', '10:18:00', '19:18:00', '2023-10-11', 1, 'Ended', '2023-10-11 13:19:37', '2023-10-17 11:33:16', '2023-10-10 23:18:50', '2023-10-17 09:33:16'),
(97, 1, 'fejdj', '10:55:00', '20:55:00', '2023-10-17', 1, 'Ended', '2023-10-17 12:56:59', '2023-10-18 17:39:26', '2023-10-16 22:55:38', '2023-10-18 15:39:26'),
(98, 1, 'sahi!', '15:34:00', '21:34:00', '2023-10-18', 1, 'Assigned', NULL, NULL, '2023-10-18 03:35:05', '2023-10-18 03:39:34'),
(99, 1, 'djns', '08:39:00', '20:42:00', '2023-10-23', 1, 'Ended', '2023-10-23 11:40:08', '2023-10-24 15:11:48', '2023-10-22 21:39:38', '2023-10-24 13:11:48'),
(100, 1, 'j2asa', '12:09:00', '21:09:00', '2023-10-24', 1, 'Ended', '2023-10-24 15:12:05', '2023-10-25 12:42:41', '2023-10-24 01:10:01', '2023-10-25 10:42:41'),
(101, 1, 'kiqmna', '10:12:00', '22:10:00', '2023-10-25', 1, 'Ended', '2023-10-25 12:42:49', '2023-10-26 13:36:32', '2023-10-24 01:11:03', '2023-10-26 11:36:32'),
(102, 1, 'njui', '10:27:00', '21:29:00', '2023-10-26', 1, 'Ended', '2023-10-26 13:36:47', '2023-10-31 16:45:15', '2023-10-25 23:26:48', '2023-10-31 15:45:15'),
(103, 1, 'njui', '10:27:00', '21:29:00', '2023-10-26', NULL, 'Active', NULL, NULL, '2023-10-25 23:26:51', '2023-10-25 23:26:51'),
(104, 1, 'ueidir', '10:28:00', '23:31:00', '2023-10-28', NULL, 'Active', NULL, NULL, '2023-10-25 23:28:24', '2023-10-25 23:28:24'),
(105, 1, 'yghbh', '13:01:00', '22:01:00', '2023-10-28', NULL, 'Active', NULL, NULL, '2023-10-28 01:01:38', '2023-10-28 01:01:38'),
(106, 1, 'yghbh', '13:01:00', '22:01:00', '2023-10-28', NULL, 'Active', NULL, NULL, '2023-10-28 01:01:39', '2023-10-28 01:01:39'),
(107, 1, 'bdwhsjwi', '15:42:00', '22:42:00', '2023-10-31', 1, 'Ended', '2023-10-31 16:47:10', '2023-11-06 11:46:51', '2023-10-31 15:42:27', '2023-11-06 10:46:51'),
(108, 1, 'bdwhsjwi', '15:42:00', '22:42:00', '2023-10-31', NULL, 'Active', NULL, NULL, '2023-10-31 15:42:29', '2023-10-31 15:42:29'),
(109, 1, 'bdwhsjwi', '15:42:00', '22:42:00', '2023-10-31', NULL, 'Active', NULL, NULL, '2023-10-31 15:42:29', '2023-10-31 15:42:29'),
(110, 1, 'bdwhsjwi', '15:42:00', '22:42:00', '2023-10-31', NULL, 'Active', NULL, NULL, '2023-10-31 15:42:30', '2023-10-31 15:42:30'),
(111, 1, 'bdwhsjwi', '15:42:00', '22:42:00', '2023-10-31', NULL, 'Active', NULL, NULL, '2023-10-31 15:42:30', '2023-10-31 15:42:30'),
(112, 1, 'bdwhsjwi', '15:42:00', '22:42:00', '2023-10-31', NULL, 'Active', NULL, NULL, '2023-10-31 15:42:30', '2023-10-31 15:42:30'),
(113, 1, 'bdwhsjwi', '15:42:00', '22:42:00', '2023-10-31', NULL, 'Active', NULL, NULL, '2023-10-31 15:42:30', '2023-10-31 15:42:30'),
(114, 1, 'kerfajwb', '09:36:00', '21:36:00', '2023-11-06', 1, 'Started', '2023-11-06 11:47:09', NULL, '2023-11-06 10:37:10', '2023-11-06 10:47:09');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `soft_credentials`
--

CREATE TABLE `soft_credentials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `special_deals`
--

CREATE TABLE `special_deals` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `restaurant_id` int(11) NOT NULL,
  `number_of_items` int(11) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `has_optional_products` enum('true','false') NOT NULL DEFAULT 'false',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `special_deals`
--

INSERT INTO `special_deals` (`id`, `title`, `description`, `restaurant_id`, `number_of_items`, `price`, `image`, `start_time`, `end_time`, `has_optional_products`, `status`, `created_at`, `updated_at`) VALUES
(1, '2 Burgers with 1 Drink', 'Serving for 3 person Medium pizza small fries & 1 litre soft drink', 1, 2, 1299, '2021-05-08-6096bb467d0c6.png', '2023-04-07 11:21:35', '2023-07-26 11:21:53', 'true', 'Active', '2023-03-25 10:31:57', '2023-07-28 09:43:08'),
(2, 'Cold Coffee with Thigh Chicken', 'Serving for 3 person Medium pizza small fries & 1.5 ltr soft drink', 1, 2, 330, '2021-05-08-6096bb66385aa.png', '2023-04-07 11:22:14', '2023-07-05 11:22:19', 'true', 'Active', '2023-03-25 11:30:02', '2023-08-05 08:49:42'),
(8, 'Azadi Deal', 'Azadi Deal Desctiption', 1, 2, 1299, '2023-07-27-64c230e8e4c9e.png', NULL, NULL, 'false', 'Active', '2023-07-27 08:55:04', '2023-08-05 08:48:26'),
(13, 'Test deal update', 'Test deal description', 1, 1, 1299, '2023-08-08-64d1fda6c7d05.png', NULL, NULL, 'false', 'Active', '2023-08-08 08:32:38', '2023-08-12 12:13:43'),
(14, 'Combo Deal', NULL, 2, 1, 760, '2023-08-21-64e36e744386b.png', NULL, NULL, 'false', 'Active', '2023-08-21 14:02:28', NULL),
(15, 'Combo Deal', 'Enjoy Jumbo Deal', 2, 1, 760, '2023-08-21-64e36ec94e4ef.png', NULL, NULL, 'false', 'Active', '2023-08-21 14:03:53', NULL),
(16, 'Combo Deal', 'Enjoy Jumbo Deal', 2, 1, 760, '2023-08-21-64e36eeb53adc.png', NULL, NULL, 'false', 'Active', '2023-08-21 14:04:27', NULL),
(17, 'Combo Deal', 'Enjoy Jumbo Deal', 2, 1, 760, '2023-08-21-64e36f623d622.png', NULL, NULL, 'false', 'Active', '2023-08-21 14:06:26', NULL),
(18, 'Combo Deal', 'Enjoy Jumbo Deal', 2, 1, 760, '2023-08-21-64e36f6f67eae.png', NULL, NULL, 'false', 'Active', '2023-08-21 14:06:39', NULL),
(19, 'Combo Deal', 'Enjoy Jumbo Deal', 2, 1, 760, '2023-08-21-64e36f7aaf7df.png', NULL, NULL, 'false', 'Active', '2023-08-21 14:06:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `id` int(11) NOT NULL,
  `timezone` text NOT NULL,
  `gmt_time` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`id`, `timezone`, `gmt_time`, `status`) VALUES
(1, 'Asia/Karachi', '+05:00', 1),
(2, 'Asia/Jerusalem', '+2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `time_logs`
--

CREATE TABLE `time_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `online` time DEFAULT NULL,
  `offline` time DEFAULT NULL,
  `working_hour` double(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `track_deliverymen`
--

CREATE TABLE `track_deliverymen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `longitude` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `translationable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `translationable_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_phone_verified` tinyint(1) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `interest` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cm_firebase_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `order_count` int(11) NOT NULL DEFAULT '0',
  `login_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `wallet_balance` decimal(24,3) NOT NULL DEFAULT '0.000',
  `loyalty_point` decimal(24,3) NOT NULL DEFAULT '0.000',
  `ref_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `f_name`, `l_name`, `phone`, `email`, `image`, `is_phone_verified`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `interest`, `cm_firebase_token`, `status`, `order_count`, `login_medium`, `social_id`, `zone_id`, `wallet_balance`, `loyalty_point`, `ref_code`) VALUES
(1, 'Junaid', 'Ali', '03043372286', 'junaidaliansari@gmail.com', NULL, 1, NULL, '$2y$10$hTI1lqYEm9GLvlynUDUqxO9OuVm6N.HFLV.guX0J8nMWC3R8RcNou', NULL, '2023-01-25 04:33:05', '2023-06-26 01:23:07', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'junaidali5'),
(15, 'Junaid', 'Ali', '+923043372285', 'junaidaliansaree@gmail.com', NULL, 1, NULL, '$2y$10$ypCB9/skS21lBvfDQm80oeoVIOCDNvdUPwgOso98Mai5sTBbTwN/y', NULL, '2023-01-25 11:00:25', '2023-09-30 01:49:52', NULL, 'dOYumoTgQtG-j1ssbjieQL:APA91bFBQmeBhbfySQdMadAbWnUyfElUjEPYmps8rQCKZrsb0OtPSgIk0_OlouMbXye_SfEkcV9ouNBqYm3xbnj0MscBhNM2wRORyh0sSDjhOT3zoqytaQ0_K977k_H_96KgS0S9UkbE', 1, 0, NULL, NULL, 1, 0.000, 0.000, 'junaidal15'),
(16, 'Muhammad', 'Khizr', '03056860156', 'muhamad.khizr@gmail.com', '2023-02-28-63fdea48cf47d.png', 0, NULL, '$2y$10$e8P3IetrraUJUT4zodu4hO6k9XyNBYJSoVlc7eQTaG9/AOiy0fVCW', NULL, '2023-01-26 01:29:47', '2023-03-04 01:51:09', NULL, NULL, 1, 0, NULL, NULL, 1, 0.000, 0.000, 'muhamad.16'),
(17, 'John', 'Doe', '+923012345678', 'abcd@gmail.com', NULL, 0, NULL, '$2y$10$ypCB9/skS21lBvfDQm80oeoVIOCDNvdUPwgOso98Mai5sTBbTwN/y', NULL, '2023-01-31 02:18:18', '2023-01-31 02:18:18', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'abcd170000'),
(18, 'John', 'First', '1234567890', 'one@gmail.com', NULL, 0, NULL, '$2y$10$YRNjzMg5AeN29oxIt70pkOOCb4Mmdo3ARVAtODiCws9L6KPlkEHEq', NULL, '2023-02-01 07:26:02', '2023-02-01 07:26:02', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'one1800000'),
(19, 'usama', 'abbas', '03077511060', 'usamaabbas887@gmail.com', NULL, 0, NULL, '$2y$10$X2cV.7bP9YCsQApBynUuEuEq4nhsoJpNt.nu8QFfA8Nt/KyX9H8kq', NULL, '2023-02-22 04:49:47', '2023-02-22 04:49:47', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'usamaabb19'),
(20, 'abod', 'cohen', '0524433289', 'abood.gm@gmail.com', NULL, 0, NULL, '$2y$10$5rePtrpSHK4IZB1P2L0Tjeelf7klgfiyxWjscUOo0i8aJ/e9Ay/OS', NULL, '2023-02-23 07:32:48', '2023-02-23 07:32:48', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'abood.gm20'),
(23, 'ahmar', 'subhan', '03020173199', 'ahmarjani1212@gmail.com', NULL, 0, NULL, '$2y$10$coEqMTbvzTUi6kA1p8XYTe.q8QeUiE1GaDcIwk0mcQn3pBz7X.VQa', NULL, '2023-03-27 22:28:53', '2023-03-27 22:28:53', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'ahmarjan23'),
(26, 'Humaira', 'Bashir', '03001234567', 'humaira@gmail.com', '2023-05-15-646225a5b0210.png', 0, NULL, '$2y$10$l5N0LX/dFfAepD15ujKQSuDaItnFZcJzR5xhBaCthWalSdEbsesL6', NULL, '2023-05-15 03:27:54', '2023-05-15 03:36:58', NULL, NULL, 1, 0, NULL, NULL, 1, 0.000, 0.000, 'humaira260'),
(27, 'John', 'John', '937593453', 'john@gmail.com', NULL, 0, NULL, '$2y$10$aTIwHqm47rEBQb3j.SGpC.Tq6QSqfgSav/iOGZqfeMONbXwo891EO', NULL, '2023-06-03 18:34:53', '2023-06-03 18:34:53', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'john270000'),
(28, 'taimoor', 'alam', '03087024770', 'taimooralam41@gmail.com', NULL, 0, NULL, '$2y$10$oJCUXHA/loCZhclRIHVHZ.f/Tupqljl24IfSpCmUgEZ0I1aAK70jW', NULL, '2023-06-15 06:34:30', '2023-06-15 06:34:30', NULL, 'fEZAwkckS-W22-NpVQrx4p:APA91bFRuk4lRueqAWx-EH4uXKY_0BafQMwW4J_ZG3iv3TWoeojdLyqTZcKO0OmhRGtEPR-SsDzZnpEeZ935t8WUMEAiVXsUQI5pyveAqVFxQU7cEd8gfjNKT93kDfYu318dRIwILPjM', 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'taimoora28'),
(31, 'Kiddy Ways', NULL, '+923038097676', 'kiddyways@gmail.com', NULL, 1, '2023-08-03 14:29:31', '$2y$10$VueKI.6QWXekyLzlRbZD9uOmSkzyQtXOQ1bMmg5aQY0TafyP6iGhi', NULL, '2023-08-03 01:25:02', '2023-08-03 02:30:25', NULL, 'daB0-B5kS56BVWP12-zrOh:APA91bHBF_WN5XgTSeAuyjsts3b59Ps42L2nr8cVbsTgcXOlbTELfCkIohqLwzhdbCZToXiuAEeaqME9K_jAJV42EqnPlFeadYlOUlP2e8vH3bhBTie1nDowp0rcakBfOOncyeEFihND', 1, 0, NULL, NULL, 1, 0.000, 0.000, 'kiddyway31'),
(32, 'farhan', 'asas', '03019876567', 'arham@gmail.com', NULL, 0, NULL, '$2y$10$NVMQU8HJRxYU.gYzBJQTLeGeLIBeJEaa9xUfHprOpUdV5DjZOrtBG', NULL, '2023-08-07 11:30:46', '2023-08-07 11:30:46', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, NULL),
(33, 'Humaira', 'Bashir', '03001234566', 'humaira123@gmail.com', NULL, 0, NULL, '$2y$10$XGUAVCSOO.Vx7jR7kjrRwe73pgLskjCBuIpyHpvoVUCcoDMEZ7z0K', NULL, '2023-08-19 01:46:31', '2023-08-19 01:46:31', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, NULL),
(44, 'M', 'Ali', '03123456789', 'mahr@gmail.com', NULL, 0, NULL, '$2y$10$dc3Ey15Ft2GfZWR1k7OBU.Fwj3R9mJefTOPlUEFQFABk2pPSDswOu', NULL, '2023-10-07 02:04:20', '2023-10-07 02:04:20', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'mahr440000'),
(45, 'Mr.', 'A', '+923364859687', 'dbc@gmail.com', NULL, 0, NULL, '$2y$10$MXhZfd.0hxaVOsLXGzYzGuhUtlYQhfqVkCGJdmyyjdp0Nq1JER2H.', NULL, '2023-10-07 02:10:10', '2023-10-07 02:10:10', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'dbc4500000'),
(46, 'Mr.', 'A', '+923077442481', 'dfc@gmail.com', NULL, 0, NULL, '$2y$10$VtPqguJynr1D3lMdYESGu.8o8UK7YrU0fHW7aAvj3OiddobKC1SuC', NULL, '2023-10-07 02:12:34', '2023-10-07 02:12:34', NULL, 'ec3hjguSSeyT4Jwz5G_lvC:APA91bG4YCmKiFedjLK5P7bMMINiRJsabXvDNtn9G1jpaaQ5Mh-aqudKfzS9sf_l9JJgLrDtuKJ3HglgXy1EeFzgS-HVoy3nQhvyJcidHpzChFpSTe1n9-coKrBXucNPRGMlHgRAclCS', 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'dfc4600000'),
(47, 'Mr', 'abc', '+92307744248', 'dha@gmail.com', NULL, 0, NULL, '$2y$10$mQ5qzvR..iblRLLmlKsAuehjTCB4fksevbumSZhs3MU6iGaEteMra', NULL, '2023-10-07 02:28:47', '2023-10-07 02:28:48', NULL, 'c6_TAu7NQLWnT0phG6HtA5:APA91bEBV2pbtWbhQiBhCUUBF3LRF-sUCizwNsu8F7nWRtGsdRRVu_YGWV7MWrmbmTrxwMoN7JM1Wdaq1XkrMYbFXaT7D-xFOlDVsLgxqaPSoT5U-G4Iqi1kWxbRBX3eJDjJPE32KZqv', 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'dha4700000'),
(48, 'tec', 'no', '+923057772568', 'dby@gmail.com', NULL, 1, NULL, '$2y$10$urbQ4jrGn3sE7s6B8F7K9.2Fkj/9SNIXPyWa2jc.RjPxaYgxqXEnW', NULL, '2023-10-07 02:30:46', '2023-10-07 02:30:57', NULL, 'ec3hjguSSeyT4Jwz5G_lvC:APA91bG4YCmKiFedjLK5P7bMMINiRJsabXvDNtn9G1jpaaQ5Mh-aqudKfzS9sf_l9JJgLrDtuKJ3HglgXy1EeFzgS-HVoy3nQhvyJcidHpzChFpSTe1n9-coKrBXucNPRGMlHgRAclCS', 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'dby4800000'),
(49, 'Mr', 'cvb', '+923099766335', 'gvh@gmail.com', NULL, 0, NULL, '$2y$10$2QZxusH2rFK6qn52bI.vIeY04v/AN97v5nwQeJnC37gewyrD/y9Mu', NULL, '2023-10-07 03:46:47', '2023-10-07 03:46:47', NULL, 'ec3hjguSSeyT4Jwz5G_lvC:APA91bG4YCmKiFedjLK5P7bMMINiRJsabXvDNtn9G1jpaaQ5Mh-aqudKfzS9sf_l9JJgLrDtuKJ3HglgXy1EeFzgS-HVoy3nQhvyJcidHpzChFpSTe1n9-coKrBXucNPRGMlHgRAclCS', 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'gvh4900000'),
(52, 'mahr', 'developer', '12345678', 'developer@gmail.com', '2023-11-04-6545e5756dae2.png', 0, NULL, '$2y$10$oud77T5rDz1r9In83taqDu4pAoToPkomyUg6Y6HlMF72cbdv.jcSW', NULL, '2023-10-28 05:18:41', '2023-11-04 10:32:21', NULL, 'dEhtQpPgQ5uxl-ohtXJiPx:APA91bEYimEsks_Stdoy-LFEJHCgcZ8tqlB01us3O9BjUHCywZvNff2lBqmIElN2PWGDR6SXezvmcTQEluuebuSrHhl0rRZ_gxtwhQyJYs9LYZaRHrpaoBwI3KRhXvXbx0arbfOIaPuZ', 1, 0, NULL, NULL, 1, 0.000, 0.000, 'develope52'),
(53, 'Moeeds', 'Hussain', '923039203804', 'moeed.hussain3@gmail.com', '2023-11-05-65469dafdd3cd.png', 0, NULL, '$2y$10$.pQMJLPzmYrKdaIynrqbju9YMoIi8W8IHwEyS3C0vYA0v7Qt7ww22', NULL, '2023-10-29 11:47:49', '2023-11-04 23:38:23', NULL, 'daB0-B5kS56BVWP12-zrOh:APA91bHBF_WN5XgTSeAuyjsts3b59Ps42L2nr8cVbsTgcXOlbTELfCkIohqLwzhdbCZToXiuAEeaqME9K_jAJV42EqnPlFeadYlOUlP2e8vH3bhBTie1nDowp0rcakBfOOncyeEFihND', 1, 0, NULL, NULL, 1, 0.000, 0.000, 'moeed.hu53'),
(54, 'moeed', 'hussain', '+923039203804', 'moeedhussain836@gmail.com', NULL, 0, NULL, '$2y$10$cEhEa04QM4V6BI6Sj68.2u6xDK4V.yMXeV4DbIGQcdxVLP8ycNqwy', NULL, '2023-10-30 20:42:33', '2023-10-30 20:42:33', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'moeedhus54'),
(55, 'babar', 'shehzad', '+923216115758', 'mrzohaib@gmail.com', NULL, 0, NULL, '$2y$10$egWIsib76Pfta3cFsBNhyu2tT53izcyLX1/pPCcyjEsLaI8OlreUO', NULL, '2023-10-31 10:36:56', '2023-10-31 10:36:56', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'mrzohaib55'),
(56, 'babar', 'shehzad', '03216115758', 'babarshehzad@gmail.com', NULL, 0, NULL, '$2y$10$Fw7oegmFvAYgrp7F4b9Vzea3/SnMpV1awL5Zaq88uX9nxBxDjL/nC', NULL, '2023-10-31 10:42:25', '2023-10-31 10:42:25', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'babarshe56'),
(57, 'babar', 'shehzad', '+923216115759', 'bs@gmail.com', NULL, 0, NULL, '$2y$10$/PFUhsgk0h2VgZaQMl7o5.uS5CcnavIE3qPsZPk/x4ukqdzR3ZjVu', NULL, '2023-10-31 10:46:55', '2023-10-31 10:46:55', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'bs57000000'),
(58, 'babar', 'shehzad', '03216115756', 'babar@gmail.com', NULL, 0, NULL, '$2y$10$sEmZMGJeES3vBadH7SjJNOhATB/u3K7cG.HIOmGbq6ih/gR7/wwWy', NULL, '2023-10-31 10:51:11', '2023-10-31 10:51:11', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'babar58000'),
(59, 'M', 'zohain', '+923057772635', 'mr@gmail.com', NULL, 0, NULL, '$2y$10$w8AnaAEDwFuNqGhClZpl4..w2xfxQcrP2Rus8z/qawt7T1osJouAW', NULL, '2023-10-31 11:03:21', '2023-10-31 11:03:21', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'mr59000000'),
(65, 'Muhammad', 'Ramzan', '+923116266746', 'atif99ml@gmail.com', '2023-10-31-6540f0922f730.png', 0, NULL, '$2y$10$CAC/aBjBbRHBE.ubXDIDKOx4UDpmovVWI9m0QmBS5YdKSXmOOZiri', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYmIzMzhiOWExMGM4ZjhkZDFmZDk4ODZjMGQzNDJiMWE1ZjkwY2RlYzA1YzUzMmJiMTFkMDJjNmRkYzYyMjQ4NDFjZGM0YmNjNjk4Yzk5N2YiLCJpYXQiOjE2OTg5MzE5NjYuNTE3MjU3OTI4ODQ4MjY2NjAxNTYyNSwibmJmIjoxNjk4OTMxOTY2LjUxNzI2MTAyODI4OTc5NDkyMTg3NSwiZXhwIjoxNzMwNTU0MzY2LjUwODc2NTkzNTg5NzgyNzE0ODQzNzUsInN1YiI6IjY1Iiwic2NvcGVzIjpbXX0.o5fEfeVybmm-dmanPh0bFpBOQW8rUAFF45S6W-i1-3UaE1ryg__WcWq0syRqlwMbziLbDig5qJ56F722EE4RcSlAUqcN1adsizoWI0LYRFonWbbi62DsoKHKCihjA9xQRWezKQi058ii5gHwElM2RB11npiO3pY01o2WMTkwy2r8pFuh1b6EXCUQCo8zOrcy2RhGNtnj0TzU0QDzmXkupTZ5vkWNfZO9G7mXRsd_OrHMCab2p3oTtNmgBaeFLV6fPrXm1SKVPIkl0kM6nO7jAcfVQrKzQW-B7ATgfi1uZataZ-yvZUpKAhGY-zpktJxQesI17CCZ-yU75b7--_3p-wuGw_xusJPhnjvkl3KCQMY7BdX_EXclqXFuVzYYFOe6R0mWTYfH5eKN7VzYGN8HrWDGU5mKdicqIe1dZ8lM4RjQSrfHb75pIdhiIiHyxKZBKk8xTCHSSh6q93DTAQvJZQ4K4e2kDKLRXGeHpsMG1heU1tSKSMpvd4jaOVqq9DqUbMmQK2ObY0Y5VBAB-OvaeTIv-FURtBHpjcyCXpmecmHzx6MEklJJpFx-J5VNcFJFaPnEEYzIKjNnFVfXfbNvqbbKzUrgFXi5rTKLR_yCoc-PomFgACAvVolXIWeKZUzKKE1Nt1epqQYMVcYwr53pS4ERk4UVE5AFZ9XP0ZhfyOA', '2023-10-31 15:56:35', '2023-11-02 17:32:46', NULL, 'fH4_c-FpT2CI7D0j88FDfj:APA91bGzZpjvDN3QCyBrUAsZeHO7m9zwuaQ5i1O4SiU4PZHNo_Y0Ynt0Y3J4VW_8vcKvjbYCSj8Z6rx2rR_FlW4nAnDKTqu5NKWz5bY5zOC8culPUPbeoqEVow_PuUNtcd96bRJPtYRQ', 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'atif99ml65'),
(66, 'Ahsan', 'Ali', '+923057442369', 'ahsan@gmail.com', NULL, 0, NULL, '$2y$10$uufsPJDAox4tnFbJuHWEy.RwsEF50K2DO9kPt3h9k0AFXAX2m3dXC', NULL, '2023-10-31 16:30:00', '2023-10-31 16:30:00', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'ahsan66000'),
(67, 'junaid', 'ali', '+923043372286', 'junaidealiansari@gmail.com', NULL, 0, NULL, '$2y$10$TRYdl/PXGMWfxdp9ORTuQ.vrQvwUQbb/2JlNuwhIc9p3UBArisLmm', NULL, '2023-10-31 16:35:04', '2023-10-31 16:35:04', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'junaidea67'),
(78, 'mr', 'z', '+923091116555', 'fty@gmail.com', NULL, 0, NULL, '$2y$10$sfy6MTTc6ObrGOy2ZXoXE.rUAx/.LrbeqmbA2QBdahn0QlDdrd0Ze', NULL, '2023-10-31 16:49:48', '2023-10-31 16:49:48', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'fty7800000'),
(81, 'maki zubair', 'ijaz', '+923099941374', 'maki@gmail.con', NULL, 1, NULL, '$2y$10$M.EYmtBYhLuyTdvNqs12Ce1Og74sGbmO6FMKuSsQEg14JqrXFuh4e', NULL, '2023-10-31 17:08:49', '2023-10-31 17:10:19', NULL, 'dBea0ZdVTOWiy-kwpWBP4o:APA91bGzzfI_oOYydxicvb2jN_A3Y_CZcnRcYq-nBWGQtnimYecwcJ-NDY4tU92dc8mdA22DrgveGtTCBf_C8qnUVERaEjR-PKcsrOqbWGxLt5Ya2-bpaAXsDQoqpYgRykKCjgGINCU1', 1, 0, NULL, NULL, 1, 0.000, 0.000, 'maki810000'),
(84, 'babar', 'shehzad', '032161157564', 'babaggr@gmail.com', NULL, 0, NULL, '$2y$10$F6rB68dB/C8XkGbuTowlWe8JE2OIZLNo4A4hzfzCHnbWXT/JVHppy', NULL, '2023-10-31 20:56:28', '2023-10-31 20:56:28', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'babaggr840'),
(85, 'Abdul', 'Rehman', '+923279766334', 'Abd@gmail.com', NULL, 1, NULL, '$2y$10$T26XxSmaFRabkWL2BPgIueLK1mnuuoDnZbMF3Vti0mAAbDNDBlcj2', NULL, '2023-10-31 21:02:22', '2023-10-31 21:03:05', NULL, 'f1fRD2DdSH2XM3V6Uf02rO:APA91bGRRRj6K0H5P5V1wOMjXmXQ_96OGZBY5dpxU1F5_DydJ2pljtNRCLIcypvxqjssRMeE5fDaXsYSWJjkIRDxqCrW-o8FpgZ1Y1g42MHhW1gxLzaTzsFmRFW5hppFojseZAj0uVPT', 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'Abd8500000'),
(86, 'M', 'Ali', '03123456799', 'test@gmail.com', NULL, 0, NULL, '$2y$10$c/ZdbMNU/gvkkIWnz0e58.t0y0mr4qId/vnPMbOfCcwTBBMNyd20.', NULL, '2023-10-31 21:39:15', '2023-10-31 21:39:15', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'test860000'),
(87, 'babar', 'shehzad', '032161157566', 'babagggr@gmail.com', NULL, 0, NULL, '$2y$10$dBz1nWJRedPQFsQlX0yNKe2eCfJsO13tn4/Plviiq0IVlSdwWptfy', NULL, '2023-10-31 22:09:29', '2023-10-31 22:09:29', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'babagggr87'),
(89, 'babar', 'shehzad', '032161157569', 'babagghgr@gmail.com', NULL, 0, NULL, '$2y$10$kmbmsaorifWARzJUG9UHYOw9uPPj8TmaTdMw9SY62ti5dH.4ZtnHO', NULL, '2023-11-01 11:20:52', '2023-11-01 11:20:52', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'babagghg89'),
(90, 'hay', 'oye', '+923095523675', 'oye@gmail.com', NULL, 0, NULL, '$2y$10$WwGbo4JfReto1BzdO88Be.G6u8zLNSlwbPXXRFjq87148SUJ60Esi', NULL, '2023-11-01 11:24:08', '2023-11-01 11:24:08', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'oye9000000'),
(91, 'ha', 'oye', '+923057772634', 'oy@gmail.com', NULL, 0, NULL, '$2y$10$/DXbs2r1b6g4II9oe5vpIeZqkWuvU2Pg.do0Ps4vUjm8iVafsB66O', NULL, '2023-11-01 11:34:16', '2023-11-01 11:34:16', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'oy91000000'),
(92, 'hay', 'voye', '+923074446235', 'voye@gmail.com', NULL, 0, NULL, '$2y$10$b.jwQTsVwCEqOGU.IinrQeS0B/GL3BAgZ64kM9bjvnnx9SVouAvcq', NULL, '2023-11-01 11:35:52', '2023-11-01 11:35:52', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'voye920000'),
(93, 'ffc', 'ccc', '+923091116552', 'c@gmail.com', NULL, 0, NULL, '$2y$10$anfkgFvf5gegcULgmBgMmui8XGbzCIdmqTyPRzxII5Crq58kvIjJO', NULL, '2023-11-01 11:56:41', '2023-11-01 11:56:41', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'c930000000'),
(95, 'ffv', 'ccg', '+92305712688', 'evit@gmail.com', NULL, 0, NULL, '$2y$10$G.nklAP/x8kCF4IUMOf06.IYX1/qjlT5UueYlydphX3.rTjllkSn2', NULL, '2023-11-01 12:00:58', '2023-11-01 12:00:58', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'evit950000'),
(96, 'babar', 'shehzad', '032161157560', 'babagjdjghgr@gmail.com', NULL, 0, NULL, '$2y$10$KbHu7vYeX.xWbp5pMSXlveKREdvpIfpA9POIelDoznd3zIYjquOp.', NULL, '2023-11-01 12:01:41', '2023-11-01 12:01:41', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'babagjdj96'),
(102, 'Muhammad', 'Awais', '03091116550', 'ma4397479@gmail.com', '2023-11-01-6542231751725.png', 1, NULL, '$2y$10$iJnkh/dh0BtegcjFQuDuieIwlSKh893anbpoo/KDAzotDDgzdWMiC', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMGYyNmY5MzRiNGJiZTdjZGU1MWU3NzMyNzI3YTFkOWM2NTUzYWFjZDcwZTJlYzdlOTAwOWVlNWFkM2ZmNDg3NDZmNTk5OTMzNzcwM2M0YTUiLCJpYXQiOjE2OTk2OTkzMjkuNTIxNjM1MDU1NTQxOTkyMTg3NSwibmJmIjoxNjk5Njk5MzI5LjUyMTYzOTEwODY1NzgzNjkxNDA2MjUsImV4cCI6MTczMTMyMTcyOS41MDQ5NjQxMTMyMzU0NzM2MzI4MTI1LCJzdWIiOiIxMDIiLCJzY29wZXMiOltdfQ.rZIm7ubXXGGwgfgSV8ami0khbdhoU8MTaQ9rWAzrSa7xTgRnZI4dycz6e8GV9tcp85Swjo4S_G3e3BjsVFTZXp_7J_OXoQ3hF5BX9A_YTooy2CPjRrIRZL1_TVStQ9O0azfDpLblK9OWgw9HlWq4TmfYFPYwRCRs9WQCJ_ROj0yOur9WsykvFXtakVZuTwwDsPSH5XIb7_ixVW9xEmJfR0aNNV776ZQv2Kk6t8c2gRyufpdlDIjGikBWaPJJgez_l6kk9SwFKgbgHFXU1iio_sUEhAyjl7EtwgYGY8k2Ug7mYNNdyJ-c8cX3hDe8rNdIyjbD6nQT1Bv-6K4V2pSRAVTKvdy5z1EaqM6HNDJklSPeuz40ydNQ8WzQsZl7pfORd5-4vAu3NRCOekDsQ7U7zrlH7z-hgzltES1Jb7rcTMPFx1HEeN0y-j16dXADzLzcyS3_HZ3rT4h6QCRRcgzpvkuYAjc6dUYEXAga1EIsilfRC1T6r-dREc8-qqJuhgpGBsfyaEHsD4xCCWyv0pD2lHA4rKSHMESUk1l695bxh9XNTv-SrrWcEGMkuh-TAq6SSpI6Jon9re5eQkSEX_EnVlk_A0xs0o67dnN3DnU9k7lAweed42PrlLDFaFNpSYCylz1sC2ss3trLbdjaPWKXliXNlmtTPx_34amP3FzP-mc', '2023-11-01 12:18:39', '2023-11-11 14:42:09', NULL, 'f4_dAfaBQVW47Roz7rRk_T:APA91bHmvStc7ShiOruuzw7W3UeAz9MktLorx25GCCnttKdNjz-gybNBYmOx2i4E2M1P-D_I7_Xj0YqsrqZRbxmQKaQmtPNF71b5gIE8UNzJzho9AdgauQ8Ga8hlrrpN48qAFZRx20ZD', 1, 0, NULL, NULL, 1, 0.000, 0.000, 'ma43974102'),
(103, 'mobi', 'cash', '+923057772674', 'mobic@gmail.com', NULL, 0, NULL, '$2y$10$cq3Jsrc7Z9ERmvgGZa5HXe5jvguZXrVZ2UpfsVelzrMbzAuMAcrai', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiOGEwZjAzNGY3ZWJiYjZmNDFkOWIzMzlkMmYyODFkOGIxZDc2MTZiY2Y3YTgxOTliMmU4NWFhODVkYjU4OGY2ZjllNTgyYmNjZWJhYzk5ZTQiLCJpYXQiOjE2OTg4Mjc3NDguODYxNjQ4MDgyNzMzMTU0Mjk2ODc1LCJuYmYiOjE2OTg4Mjc3NDguODYxNjUwOTQzNzU2MTAzNTE1NjI1LCJleHAiOjE3MzA0NTAxNDguODU3MDE3MDQwMjUyNjg1NTQ2ODc1LCJzdWIiOiIxMDMiLCJzY29wZXMiOltdfQ.niINwW1I78DeVh0n2abXmuojtG6J0EQ-aPOgs41KvcmJuerQgZmht5nM9xsuJ3-UR_A9PCvFRcbDzyAcUCInic15DLTwMRH2horuUjlV9tzLzxbXTolUnINS2gdPcqmOVWh2vWgveL2mwPOfW3fpQEno-IeKpF2KQFceiWlu7mScU7isHXoSClWc9ke4KWw_rKTdIIWlIfW2mJB17ctMCisilOGmUZfDQHG-cvBfX1j5gtFPlcsA_YLl6DGImWBRrkZf_ZP9r93-XzY4twrX3-XbLzTm4XVIuctYTgjjqW0GCd5dqKUxoAU_eK-JU9tZYF_aU46c_JXxvNGbX_D-Dy5dGMRmPR5mZKhJk5fYU4nmtee6QyghXzayw5MEjufCOSqgvd5v5AOMh15e0kgSXJ1TF6VzjrvXiECFsPgm8ylIpklG_k3LTALlqm-9tzCVHEoc5eAmLKvMn3ytf2-p4lCDR-4V-Ik6GXcyTrgyKjVysXVtwcafc9kL_dHEOG3TBmdAUTA_RyuFo8N8e0uj25uTunKn4aP1yW1NW5b6TVFRyssiw94CLkWg9GyClDgECwcxls9EaUP4m_E1OkaHJtZG-rv2xZoiFm20yzrbEU9HT3Q3_fw8tX6GI3SnuizOT1FYFDs5J5TPuNy7ybeI8EVHbh35YOaUQ0hZcinbOFw', '2023-11-01 12:35:48', '2023-11-01 12:35:48', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'mobic10300'),
(104, 'xdcx', 'ccvd', '+923057726341', 'ccc@gmail.com', NULL, 0, NULL, '$2y$10$YyfYEgDto.Ebps1snT5r3.O8wTSLpD/nCvaNN9Gs4blLF2dLLB5Ea', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNDRiNzE4NGJiN2Y5NzgxM2U4MjhjMTRlYmUxMWJlODY1ZDczYTlhNDI3MjUxZjllN2JjZDczYjRiMGJkYTgwM2FiMDE4ZTNkYTRkNzFmYTMiLCJpYXQiOjE2OTg4Mjc4MzQuMDU3OTkxOTgxNTA2MzQ3NjU2MjUsIm5iZiI6MTY5ODgyNzgzNC4wNTc5OTYwMzQ2MjIxOTIzODI4MTI1LCJleHAiOjE3MzA0NTAyMzQuMDUyODM5MDQwNzU2MjI1NTg1OTM3NSwic3ViIjoiMTA0Iiwic2NvcGVzIjpbXX0.SXb0Cf2q-3v8b0L7Gbs99SFceKe7aSA8Dj8dxx6PgusDFVOtA6rH1A3l2iTJ3-n2Idagl0p2zLCRpuZWUxd3_HllnmhvoLFlYx_BPxB-nTn_48YZfeA27uX-MdYtb6QpnapI79z5TUfCisykBbLQ0qh7nJNlCUGx0yqW5TB-Sy-R9dC4A5u97_tkUfau3onG7tLgh5iKw__2rlPdmTQwzm0TlUCjBy-vrnVnL7Pzjr9wmtnvIke-ax6GkwZdyswKmL8RNYv4k9wZxawHqzzg9AGEtoaqq4nAPXg76c4mK41R8REq_Kpt5Ykxg4f-vmpuQvKQReckjtmLfGx60OltkWUckucR4FYAmgtKBMdWLzMX6JCG0TidC-FTdOgzGwArJZyRholvYYH6nsMEXnwQ9now_dE5xhvbMh5Sb50x0uaIK1xzGdE4MseTG2mxtFx-LTdOAn8wetWydav1bppQ7mqOZbLY0Exj33RYeXluXXImzEBR5zn3bm1kP7QA-XRqaYVYuxTMJx4v_RAye54HN55XwtYEb1-ZgFWDgW6Os2PpEPxu7PqyJb2aefCFY5h1rj75tJ7APqh1NEYBZqx2U763dNOjmcnWhadal7HCq87eSUwdLYc5SPSdmqWNk5pOTpUlWTWpOe3mscbLRV_BpEow0G_hWIubcZUBfW9oyZM', '2023-11-01 12:37:14', '2023-11-01 12:37:14', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'ccc1040000'),
(105, 'Mr', 'x', '+923091274362', 'xcf@gmail.com', NULL, 0, NULL, '$2y$10$3T8kXgkSll4iU1oVHwoZpeDEkrma7uPtEFEBpJWRIAUEBRZMZ5csu', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNGVlNTQyOGMzOWZhNGQ2N2M2MTk3YTUyZDMyNDIwODAzOGZjYzMwZGRmYTY3MDI2NDgzNGZhZmRhNzgzZDY0Y2FmY2U1MTkzYWY0OTAzOGMiLCJpYXQiOjE2OTg4MjgwNjUuMDYyNTQ1MDYxMTExNDUwMTk1MzEyNSwibmJmIjoxNjk4ODI4MDY1LjA2MjU0NzkyMjEzNDM5OTQxNDA2MjUsImV4cCI6MTczMDQ1MDQ2NS4wNTYxNTA5MTMyMzg1MjUzOTA2MjUsInN1YiI6IjEwNSIsInNjb3BlcyI6W119.JoAgpABeujQXxuY2dID_x552MuUd_p00-xVRdbjA2P0mTSjfvyudXCCq5Dp0R0dSltdjjhFZMBcj3ZAurXKlGVJQKLAZPfTMtxGV2oqXZQna0u8DiECUlMr7SWyyU9e0dSNaJjE7qK7SetNEbvLOzx8t7byFo4_vrVMdA77_iSAcYeIBhRb7UI2xWDXfPZ8cAn4olk3TwHOWSlRSzI9KUwMH0lW21O1pjYJM82FQsjAYb6SwCjBSMcjTGiCkZEkSONBNVjvZmb76a7NOKQyyc7gRQj8YeClknSmYJ0ZlVwqiEZowcQbOgcXugRY75kogpaz3xrHiqx1W3nCRTStVr-GRnMrA6yDAIRaEuyzT6YM__GJ55Vqx-kRkEDCIzi7SGqcS-JM-QWAkjPk0wpNQvfguGwsi6Qog-4iSlzZwlWlDp5MOY4p0miXS3p6zjSjXnK6_HZTOYPctU5F5v8htOHheOGWlgAWoYcKt_-wyVMs5GeE39wby9_QeK57uCer_Yt-0NdSE7t0TI6K7wvTyZvKA_NDn7loGpfTa78hZEpIYg6D3ateeSCeTWFVsXdRAY6CGqv5ZEr8sq6n1H2qiTliEymyKqOE849p7NGQzFUfSNCjim38t7__vays5fRIHGNNonYHKl9pJdOT2HVSKObDuGxIKTF2Z5aurl2rgMyE', '2023-11-01 12:41:04', '2023-11-01 12:41:05', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'xcf1050000'),
(106, 'Mohammed', 'Awais', '+923208839689', 'moawais@gmail.com', '2023-11-01-65422429b756b.png', 1, NULL, '$2y$10$o7Vje1XDEKekOWQEqmaWvOD2IXr.QA/8YbrzCLVmkMSZW1sKeBXom', '923102944', '2023-11-01 14:08:31', '2023-11-11 14:49:46', NULL, 'f1fRD2DdSH2XM3V6Uf02rO:APA91bGRRRj6K0H5P5V1wOMjXmXQ_96OGZBY5dpxU1F5_DydJ2pljtNRCLIcypvxqjssRMeE5fDaXsYSWJjkIRDxqCrW-o8FpgZ1Y1g42MHhW1gxLzaTzsFmRFW5hppFojseZAj0uVPT', 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'moawais106'),
(107, 'Istafada Islam', '', NULL, 'istafadaislam@gmail.com', NULL, 0, NULL, '$2y$10$xVwWSajM9DdT8dze847Pr.3jlIr9QsK6lMT1B4OItefPscQRXOqGu', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYzYxMDM1N2Q1MGRkOWFjYmQ3NThiNTMzMGMzNDkyNGZjOTQwODJkZWYxNzNkYjNhMDFlNThhNGQ3Y2VlMjU3YTUwMTE4NjYzYzg3NGY1ZDEiLCJpYXQiOjE2OTg4NDkxMTIuMzk3ODM1OTY5OTI0OTI2NzU3ODEyNSwibmJmIjoxNjk4ODQ5MTEyLjM5NzgzOTA2OTM2NjQ1NTA3ODEyNSwiZXhwIjoxNzMwNDcxNTEyLjM5MTUyNDA3NjQ2MTc5MTk5MjE4NzUsInN1YiI6IjEwNyIsInNjb3BlcyI6W119.kq2Z21GDmyrKk8tHrBf5XqMID9bXbMKwVvYLMk5M_GfOkCrOZxeML6hBQRe5TOzeldxBpT67oALUDKhnjvndHQMQ6wHuDv-MCGyxLsRO8S5D6SMUYADun2w-nfOc2njsmt_rhpGUvlPxZcXIJPnb4uNZ-CQLhSMepPZEyS7bGATYiwtd3My9MywF3Mkv1l3L4SB5BuXbR9f4Rnd5_zt0jIJzgZOGTHd_iVugGTCVfEBVfGZrFU9W9Qs6VD8yZ2PO-n6WIya3P8ni1hBlNvs78dgTWgXPZuh_x6JpPqb4lPAniERBQZaFUerggRypjVHAOVg8pk3aOUz1ce72RDmG9nVYicNj7qBCG85QZ16HSCRR61wzLSOoL14olFAE-QlMnk1BmcznabeuH94u0S9EREGUQPyhbBH10H-l1ON29ZhHNSwCegyZFOMst58VU6woaIgDrMfQT5RjDQVYAuvkn2kwLdifirVT2DINHjKD-d6OWUGNiWHygPvCRN0kRASExxpGhh_suNAdsAPOp3QxwrqZqha5aJWhiAdHVC20WqDO4pXYrMylTbEq9L1feu0nzFq3L3IYG3PaVgNppg-7ASYToa7UDwrhzaP8Yq3kxTVZW3PMQ49qx2XfsJZ4n13rIAfDFDxg6nHhDAcVbwJsQpeW4VXoWdz0f_kF4rNsLMY', '2023-11-01 18:31:52', '2023-11-01 18:31:52', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'istafad107'),
(108, 'moeed', 'Hussain', '+923056860156', 'june@gmail.com', NULL, 1, NULL, '$2y$10$y40pqAb9zKSXMfsibKeFhePDC4oFNQzxIULkDnioPJB9vNy5zfYCK', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiOTBmZDJkYTkyMjA0MWM3NjRiOGE4OGZkMGIyYmQ2MmNkNjUwM2FmYjE5NGNmMTYzODM4MzM3ZmM2Y2Y1ZWRkMDYwNzBjOTRlNTg3YWQ0N2EiLCJpYXQiOjE2OTg4NDk1NjkuMzg0MDY5OTE5NTg2MTgxNjQwNjI1LCJuYmYiOjE2OTg4NDk1NjkuMzg0MDcyMDY1MzUzMzkzNTU0Njg3NSwiZXhwIjoxNzMwNDcxOTY5LjM3OTcwNzA5ODAwNzIwMjE0ODQzNzUsInN1YiI6IjEwOCIsInNjb3BlcyI6W119.TnQ-BDRAOPyZw3LYUPDCjQOIth1XrkzAFrG7CxWiV_Y5U7g81prUqFIitaghyr3rgcIuTo7WygOd6YZ0ao-xKfoZsWIWyaT2AN_8JtRdYgNrW-eD7loA-pMdiv-UjZ7Cm3ZUNp6YA-F_17XOLoB94LbtPzeKmApkGrm_o1LFoUK5-TXWxkeaRNwS06hRZ4tKz-DNHrfjet3pow2JRYORkQCBtFbgC1zwe4wA-K8a6OBFpPjAtwtBnfMfFG24eXWd_RyOKZ1lpzVHSb5ai9GryPORFN9CwQ3YHM2F8AalpLsmCM5LCUmF0va8ZuFHBLGcFwvMEq3VLGzBEFKDlVSiG30RadX0k6hmNHOA46R09cw4WMLR3tP1DwNYpL52688lSOMXb4Q0W_sJANeHYMqaPJmJi-sw37ABsk812lR_3V4uIJeir03pncy-IVTG2RvTYY7Cp2uFPKe-_oen6t4gmeqXqR7rbaMCTAtN_ymRAArflWAv7PJG2bHDKurqjTv440r9X1eIkZWiWjZyPllwo12-CHcmyUyySWBBdc7DnMQcEIsGfeTHw5tkD231JVZ_VfR7oeUDzdbk0QOmMHF7viy2Loei_OYeFRITLObPXen3A4kKf3CG2wrT91VW3cbR32k7EBn5fIMzCsyeHRt3HMujdAotM5yvCkU57Xw7cVw', '2023-11-01 18:39:29', '2023-11-01 18:40:24', NULL, 'eTx9vntGSJKtapBblkWp5Y:APA91bEQFTEUmM1ws6_e6M_50DAS8JBBgEiPWLKNSWIcLpfsGDuADz1QXp-fN-_SYITSadQMLOX3eM4sXhAmFpQ_88bD6HkisL4am_ojlYe6zdeA_mA-jXAMMWY6sLmMI-Vo6HirdQcb', 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'june108000'),
(109, 'mr', 'v', '+923091116550', 'v@gmail.com', '2023-11-01-6542783e2868b.png', 1, NULL, '$2y$10$/u/WRt/kqZSDCo6SjDGiOurRYujJcgE/Xp8B/Op6iEoVou9NtwJXG', '931080527', '2023-11-01 20:08:46', '2023-11-11 14:27:30', NULL, 'f4_dAfaBQVW47Roz7rRk_T:APA91bHmvStc7ShiOruuzw7W3UeAz9MktLorx25GCCnttKdNjz-gybNBYmOx2i4E2M1P-D_I7_Xj0YqsrqZRbxmQKaQmtPNF71b5gIE8UNzJzho9AdgauQ8Ga8hlrrpN48qAFZRx20ZD', 1, 0, NULL, NULL, 1, 0.000, 108.000, 'v109000000'),
(110, 'hay e', 'zohaib', '+923087772642', 'zo@gmail.com', NULL, 0, NULL, '$2y$10$b8yZMcEkIVXkRULJ6B9g5e/jg3bOa.ktPtuYUmVvAiqtSzsAar0Ke', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiN2ZiYmQwZGIxZGViMGNhNTg1OTU0YWFmMDdlOWJmNzU4NjIzMWZmZjMwMzUzM2NhNjQxZjZkNTM1MmU0MjcxODI0ZTc1NjAxMDEzODM5MDMiLCJpYXQiOjE2OTg5MTI5NzAuNjU5NDQ3OTA4NDAxNDg5MjU3ODEyNSwibmJmIjoxNjk4OTEyOTcwLjY1OTQ1MTk2MTUxNzMzMzk4NDM3NSwiZXhwIjoxNzMwNTM1MzcwLjY1MzQwMzk5NzQyMTI2NDY0ODQzNzUsInN1YiI6IjExMCIsInNjb3BlcyI6W119.S8ab91onP_Vnbhx38-CGVjYVJ86CoPgLqDEqJZlI9SANi1V8bJPsTf9Cp0TrgRJ3reJoIeG1my-Icv29_SZvfiYO5l6BTCHR4gC8ZhhB8xWq-_85AzM7r1LOLYIHtm6KpMcjilW1xI5H2yU5ISPAtKbpdUCDiojgKI5XfM8GlM8ofJRiBpeR1Fn-vXKiKWQV8lSqkU8zdxu1GMGDXMYtd4-Lqnv7wXXH1hg1md3wasuDi_uHaX5IiPP0HMRH05zRKNyNjtV0smGLJu6r-4oavvPEYxNtr9NJkW_bIBXdAHi7jzBHWdr_jfpxwkBs130mL7JrtM7o8vdlXr5zBTzHefghUTQXzyS_PibnDTP7MASUlYHrAJ0KTdg7AmXaLS1KrmYb55-mP0UnPPXBDlAeOl1uycj0SEB1XZKJ9dVsLgfbZxmfMH5Ts2hj59XUdYXQbd7-zh6_uCGhXtL8ztJR_JO4dC_ETpKlsa9_bvftYYVK2yhT94e_XuOshVlUUcinUU6zCMSv9_TkxpL0K3TP26xgAx7KoO0nt-xLU3w-UUkhZza2EnCgLoRR-G4FGLVVjTwe0bxWlqIPMs95KQ8I3OUYA7HWRIRm33AuzktJt3X35XkGHQ_7fYEegrnlItGLZ6ifkHhps6tydYGGDzdKc1kf0V4lRGz3GatjqXXpIO8', '2023-11-02 12:16:10', '2023-11-02 12:16:10', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'zo11000000'),
(111, 'Muhammad', 'Khizr', '03326140999', 'khizr@gmail.com', NULL, 0, NULL, '$2y$10$GM6Pj0paUEil1NHNyjBYLOOrBwWekRM9sQQOFLncekRf/Iii8XscW', NULL, '2023-11-04 01:08:20', '2023-11-04 01:08:20', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, NULL),
(112, 'Muhmmad Awais', '', '+923200163647', 'ma2309809@gmail.com', NULL, 1, NULL, '$2y$10$lzKzLF8tGtk6I2qvn9.b4.fFx4bm09PUUNR63aa.cZj/28vDpLRaC', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNDY0Mjc1NjJmMTBmNGVmYmFmZWYxZjIxZmYyMjZlZWZlOGRhN2FhODMxZWI4ZTllZTIxNTIwMzdjZmRmM2U1NWJlYjc3ZGIzZDQ5MmY0OTkiLCJpYXQiOjE2OTk2OTk1ODkuMTc1NzYxOTM4MDk1MDkyNzczNDM3NSwibmJmIjoxNjk5Njk5NTg5LjE3NTc2NTk5MTIxMDkzNzUsImV4cCI6MTczMTMyMTk4OS4xNjYxOTg5Njg4ODczMjkxMDE1NjI1LCJzdWIiOiIxMTIiLCJzY29wZXMiOltdfQ.nP1VCNRIBSANjvlVvyUQoIX4Zj4pA5uNUnMGXqX23DCf_iAj2QV3LIFsQ48Q49rtR-wbLwuyr8Z7uR7kI_GrI1YMZWRGJHZlPnITCyW_3K-R7V9quBBxNXF1hH9Uk5zaeJewtxKHRZcFa9nfTD2Qa2piFpt_3CIFPnXqFt98axoBdOw8lC16TDhR-1NNDCd3KCmA4cVxB_zYWVRY2uLi6sDRZwpgrRmmWDTAnifcOe3yOTD86QnKEHs6Xhq9_RfDLzeuoipNEjCY5Lst-7GpoJvp84nxhdQSE2iF8T6jFL7dnoH3EG6p5bdj0ZIhZtOphdEAfKSjUungWN_PZ5JpYH-MMcnLe8V4QI1xB0z0MSRqwCqCkdjcH_ujIeVR-EMGiQWcfDtKvQfKQueR7ETIaivG3Vi2iNw1Mt--IzVXN-OA6xOiUE2ku1aPUajVCNzsTNyUls9My-DKWiscN50E6U4trJ9Ix4pAaxn_1ipKEOWnLm8BqmuSb8r7cGZOx4JXU15IxLr5ET0GtQXrmxqlDVs--zai73B86SeO-9HXIsIjt436F6_u1CCQpXbMy6c-xdUp6zk2J8RTAPBBLe1RKvs2VuPh7ePrxBbaFwlwZUUXAIr9OL_8T8dHVY7SOKllw6LO9q8Er3dmKHxPRE3ZbO6REzzxzaGYkScfhKY-LIY', '2023-11-04 15:01:21', '2023-11-11 14:47:41', NULL, 'f4_dAfaBQVW47Roz7rRk_T:APA91bHmvStc7ShiOruuzw7W3UeAz9MktLorx25GCCnttKdNjz-gybNBYmOx2i4E2M1P-D_I7_Xj0YqsrqZRbxmQKaQmtPNF71b5gIE8UNzJzho9AdgauQ8Ga8hlrrpN48qAFZRx20ZD', 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'ma23098112'),
(116, 'zohaib', 'workspace', '3456789', 'zohaibworkspace@gmail.com', '2023-11-04-65463b50dfa79.png', 0, NULL, '$2y$10$b5kuvnI8GzDWDPjbW6XUEeBQ1jLBYzedK0s/X0QDsAi0DATPKb8c6', NULL, '2023-11-04 16:33:44', '2023-11-04 16:38:40', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, NULL),
(117, 'mjcoders.dev', 'Mj', 'coders', 'mjcoders.dev@gmail.com', '2023-11-04-65463dd3068e0.png', 0, NULL, '$2y$10$Q372sK5PjB71FtA/3LlT4.gYoPkQfMb1tGKkRxt.jtF40ixgSbGQW', NULL, '2023-11-04 16:48:54', '2023-11-04 16:49:23', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, NULL),
(118, 'Muhammad', 'Syed', '+923012345677', 'dev@gmail.com', NULL, 0, NULL, '$2y$10$hEqONPxQDEHEHVyLlELrCeBThH2xFCrhvlqFjOaTrUn5kj.Oa/Y.2', NULL, '2023-11-04 23:17:20', '2023-11-04 23:52:25', NULL, NULL, 1, 0, NULL, NULL, 1, 0.000, 0.000, NULL),
(119, 'Adnan Chughtai', '', '+923335543180', 'adnanchughtai091@gmail.com', NULL, 0, NULL, '$2y$10$Q2qNfoKjUO60RkBFCt/koe4/GLaC8VeqiSWlCZWHIz7KM860ZkNAy', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNmQ4ZWRmN2NhZGRiYmI4N2Y2NjE2MTA3OWFlY2MyMGVjZTVmYTU0Y2Q0YjZkMjExYzhlY2I5OTFmYzdiZDY1NjFlNmU1MTgxNDE4NjE4ZmUiLCJpYXQiOjE2OTkyNDcwMjAuNDAwMjMzMDMwMzE5MjEzODY3MTg3NSwibmJmIjoxNjk5MjQ3MDIwLjQwMDIzNTg5MTM0MjE2MzA4NTkzNzUsImV4cCI6MTczMDg2OTQyMC4zOTU0NjI5ODk4MDcxMjg5MDYyNSwic3ViIjoiMTE5Iiwic2NvcGVzIjpbXX0.Bv32AtYXnrL9eYPjyVCGcrg0eBT057lWx9pZeuJARoOrmO1amyVQzPZE_UdaCY5XF7q37lKy4UzG2kgCi0ke3Cxtj4NT5pHWkCzNLCrvr1kVVmMZNtLkhGC5mEYxiOuUwV144CVUywxtoynWuPLT9IST8eWSsfMuiaaNHLMWsT9te34QcYLFwGxkijusiPqdcwSwqlVd-17dvg5-SrFCy_xF_YwI4iDXeVA236Wp9efcbyVr9RcdlCBNaqpRjpVn3vlr-VE6jTUdgBZlpDqytKHsNq6flMX8C6AIcu25LjybDZ9mIjhcwoh2OCCtk6meNZvD76Iie1VcZ63w6hvHsreMsMGImOoIvAAI8RcbX_-jUXO7KCtPijqmX1pW-Xoir5yWK3WzQfjTkzPKzwyWUsEn-9L9QxPq5PIV1lkn5EI6W7xbLqU8jcHZvptCgqUODts7l77WkwXoMEx-SkpEtc2vnYp9xUA9IpvSKHPEvvjFpWtOr7k0mZQ-D3zs71oMvhcpecuvzPDyQTeDBZEJNp0F-J7ekSkI1qw3m_T51SodNLjDWSGeicPr_sIJFPQOyFQMWhEk_DG3vSUx2YNlCT-pGmTRDitRhWeTz50R90pzIrUrpHucSRItUbMLbRLP1lnO2NmMSi2zo_uOYh2laisBoeYCA6HS7Iu3O1BM6m4', '2023-11-06 08:51:02', '2023-11-06 09:03:40', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'adnanch119'),
(120, 'Abdul', 'Rehman', '+923266367752', 'abdulr@gmail.com', NULL, 1, NULL, '$2y$10$Ei9l0UBQX2FqRgx4rr9WKemNWmB/UXDTx/0OBaZrs7qrDNmgDB2I6', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYzk5Y2M3MDNhNjU2OWIxZTBmMGE1ZDljY2I1OWViYzI2ZjJlMmRhMjRkNDE0YmRlYTMxZmQ5NmJjZDM1ZDczNjFmM2UzYzhlZjEwMDgwZWEiLCJpYXQiOjE2OTkyODgyMzcuMDU4MzIyOTA2NDk0MTQwNjI1LCJuYmYiOjE2OTkyODgyMzcuMDU4MzI2MDA1OTM1NjY4OTQ1MzEyNSwiZXhwIjoxNzMwOTEwNjM3LjA0OTQyNzAzMjQ3MDcwMzEyNSwic3ViIjoiMTIwIiwic2NvcGVzIjpbXX0.mLx6-M5wkoabMUGe3jfJfvKHPJRfw0OXlxG95BjhQyDitopH4akONuhQ_5bxDuXOwNGevCt3K9t84cPvnU_L8CjvfvXCTd2D-bnikNyNhcYXYwRYIgBpRyxGbVQ9LS5ZhxpLr5yzhYK2yEFfm-FfgaisLUZCmuQyAqLgXwm2XkROfQpsvr11EYeUDDDWbqm74AlScsUJyQfhcqE8Z3Cirj4fSoOIuDe0gsepzN6Vv2p8x6RvhCly07qS-DAVAQMb1g04d-_bHLTJibzl_J1d2V3uytPpPSd3UTEoa3rHqFBaSDcUDKQ1IL2KXYuYzyATK0KBaOWFmX7Ku31XvHVWDYxsgT8nxf0RSfFaH6q7wFlMItcJXQU5Eve03GnVuGvppbj6kszGJJHbA-1ZC4zom9-qFWzrSbWOhmUodT0rLIpRjipXKS0amCs6YBir2QB5Epuc_MVsT-BMbSRpatK4yYUA-4_bpVo4kqUC7CpXWy8Ca0-5t5CeCBt7maCUfRD-GDRNK26sDTXEh-xCb9l2SlZqVtfr2VlKGVZ4hkU-3yZlvJzZuM-QHM8-RZaxeIvqNDhlyW1hAr87ApGF5glydMkEvGh4LAWJFIbeeVPX6BHhDTVKH0ZRZxnly8glNS_dQ0Dgk1GmIiLCP9B7-ZebQDSAu2kEktl2HEdRbxbpuTc', '2023-11-06 20:30:37', '2023-11-06 20:31:20', NULL, 'eRuec12ZT9KvGPsyJAn0Sx:APA91bGk1DjAbtm5d0ouSHcNPnFK7PomKnDycs5yLQJjj9zufHjPVu3ndAe9Kh__aPXthWAFfEMm7NPGMwWBEXtxtUWY5uAozD3ghFMoaUpgxdDXoWE3r2RC0wNkKkUBMteo21HFQWft', 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'abdulr1200'),
(121, 'Taimoor Academy', '', '+923087024770', 'eventblogging41@gmail.com', NULL, 1, NULL, '$2y$10$0xhQsuDZ./wBaUCZ54qWkeGk/3Jm97rVXXFliBnCJO1xqSAD6hiba', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYzgxODMwMzEzMGJkMTU5ZjZjOTVkMjAwY2JhN2M0NGYzNTAzMmI3YWEzN2U5NThjZTRhMDFjZDM5NmRmM2Y0MThjMWJmMDQ5YzZiZWM3NTMiLCJpYXQiOjE3MDAyMzYzNzQuMDYwNDAxOTE2NTAzOTA2MjUsIm5iZiI6MTcwMDIzNjM3NC4wNjA0MjUwNDMxMDYwNzkxMDE1NjI1LCJleHAiOjE3MzE4NTg3NzQuMDUxMDg1OTQ4OTQ0MDkxNzk2ODc1LCJzdWIiOiIxMjEiLCJzY29wZXMiOltdfQ.e8ZvRo2HThOk3zHOeGCCDqF_-o2x2wVsAYlyG2_gqA8y44sCYZ_eSAMgl0QMZcplkMRgqqUWbjsrbEn8QVOTKI2EqSka22SBDX3FMGANvNUcAWkvPwMfv4tqRj5QJKP6k0PKmbj36KXh3LXCGgNYIKYg31IbOGW7Le7b5-RxR7KQGE2bBha15I4Ix9iVEjtv8x3dUk0X1S7AeV4UXyaC1hi3VRJL3pWb-khi0wETnN5ty5mMT-4gwO1J-xeTpgfDbiuaUj-igku-epuj0WV1peEhwHq9sPOwOPcGcq5OIW3olAOirO9kyfsgYOhF7qX4BkZFJiDdPe-jhLrc7pP308bq_VmuOjvac3pTGvPy4LGeT-zka2oRh_mG9ZsXGszJFYn-Q-BdEFLM_rWIwh2QCHYqZrKQOcgIvrq4A5BOZc6YU8wcmoIe6F678vYHXqVQ6Hc-8rLZdJgvFtuVjS6oR66Z2q3iOg6FxCf1hKXdYsvn1JLtX_bLMbKu0agt5ae6xbSACr37WKU1hE0EHq4W7yDCP_HJsKNjpSZ4j5KWXE13h0dmyuHYFVNBiFZiSSucVlhfUY3fa-5XRKH4RxUFJA7JkLVQVNPW5GQe8A8zeN3Cq_HRS6xoNtcFgMB6kd-xjOFSSN-0iCn0SlQL_z6lZVePsyqzcVnvHRyTugzbmNk', '2023-11-07 18:28:53', '2023-11-17 19:53:42', NULL, 'fpw3UB7_Qd626A3qB6X0ZA:APA91bGe1BkmNUicEz1VjS1uxPuSLWcfzqMc0BcCsEYkOhtcLj5BTyWQ0jIFO357X6jojUH4JDpbUaxeBxqkXUaRKCs8uXjH6QhA_TOINprsHkSx1O-Rckoqdc-grtqyGojreRvHwLzS', 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'eventbl121'),
(122, 'Abdul Rehman', '', NULL, 'chabdulrehman919@gmail.com', NULL, 0, NULL, '$2y$10$bJaGeuv0kbTTqYLGsjo3FOAZ0ZWOVwAG08Fq/H8H9tEhe2U0MsN3.', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiODE3OWRmOTAzYWYzZjVmM2E2MTRlNWU0OWU1MmVmMzA0ZTNhY2ExMTg0MzBiMGZlYjlhYjEyMzhhMDYyNzBmMDQzYTEwYWEwNGZlYWYwZTYiLCJpYXQiOjE2OTk2MTAxODAuNTM2MjczMDAyNjI0NTExNzE4NzUsIm5iZiI6MTY5OTYxMDE4MC41MzYyNzg5NjMwODg5ODkyNTc4MTI1LCJleHAiOjE3MzEyMzI1ODAuNTI0NjIxOTYzNTAwOTc2NTYyNSwic3ViIjoiMTIyIiwic2NvcGVzIjpbXX0.sJeaoIdYEvkZW0s-UL2xJDx-IUlZniNHey7VfrVO44xNQFnNDpQkjGH1W9G0WSafhSNeX3ColRyLikEhFPdtsXnJykshMlrNLZqyc0JfxBJkhV_bv_xKvBKql8gqxPvYX604dJ7SXNXRtcG1CuiszlofA4-ZTnPhRQcNph2fHewmgRUxs4Il98p3NcWbAFsuKRDhvUvJ80hVoKPmFdb4RiMr2S_1_W8gZ4NZ_gYge15p1NThDwuTWgyr4O8VDXMK7nzYSHJ0PqvKSz_ATJuPx4FHAFzVpJ74MebhmcTUtv06CB6XEbvi6XvZsXIBaweaHs5v7SxWon_1PGT4pbMgpL_XbZm0O_zetCuFr0XukzM7PqwrW_epH9N7nNNuWY_3koxJR_Vsu_kHLcQTSKjryE2KXfgUnXf0u9Gz8fJCNuom6Yn8neNEOUjZCC0mIEKHQ1dIRa2NVuPdfkD_jEuH79xZnL8B7T_aOHzpL8TBPs4_rf2loWdTrgqZ1Tod6OmIzD8HMFHoj3ybKbRohCvZDI_vaOY7y8Js8VCoQJvH0t8GtQzTAJnR1jUYwqhAtIqUlJYsNl8Mvy-M4oyzQnN2rBEQ-vlrJtx0YAVLwR7Q7s8Vtruq86pQ7uI1QbhFID1ZlbZqrl1tC9QbsmeF71VT56y5ReluFRTrAcjSZ4dC5nM', '2023-11-10 13:56:20', '2023-11-10 13:56:20', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'chabdul122');

-- --------------------------------------------------------

--
-- Table structure for table `user_infos`
--

CREATE TABLE `user_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deliveryman_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`id`, `data`, `status`, `user_id`, `vendor_id`, `delivery_man_id`, `created_at`, `updated_at`) VALUES
(1, '{\"title\":\"Suspended\",\"description\":\"Sorry! Your account has been suspended.\",\"order_id\":\"\",\"image\":\"\",\"type\":\"block\"}', 1, 37, 1, 5, '2022-12-29 12:15:06', '2022-12-29 12:15:06'),
(2, '{\"title\":\"Order\",\"description\":\"You are unassigned from a order\",\"order_id\":\"\",\"image\":\"\",\"type\":\"assign\"}', 1, 37, 1, 2, '2023-01-04 04:53:32', '2023-01-04 04:53:32'),
(3, '{\"title\":\"Order\",\"description\":\"You are assigned to a order\",\"order_id\":100001,\"image\":\"\",\"type\":\"assign\"}', 1, 37, 1, 2, '2023-01-04 04:53:32', '2023-01-04 04:53:32'),
(4, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100002,\"image\":\"\",\"type\":\"new_order\"}', 1, 37, 1, NULL, '2023-05-16 23:37:50', '2023-05-16 23:37:50'),
(5, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100003,\"image\":\"\",\"type\":\"new_order\"}', 1, 37, 1, NULL, '2023-05-16 23:38:06', '2023-05-16 23:38:06'),
(6, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100006,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-05-17 16:34:26', '2023-05-17 16:34:26'),
(7, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100007,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-05-18 02:45:29', '2023-05-18 02:45:29'),
(8, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100008,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-05-18 02:46:18', '2023-05-18 02:46:18'),
(9, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100015,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-05-23 04:23:44', '2023-05-23 04:23:44'),
(10, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100003,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-06-23 22:10:13', '2023-06-23 22:10:13'),
(16, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100083,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-10-30 14:37:19', '2023-10-30 14:37:19'),
(17, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100084,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-10-30 14:37:59', '2023-10-30 14:37:59'),
(18, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100085,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-10-30 14:38:00', '2023-10-30 14:38:00'),
(19, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100086,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-10-30 14:38:01', '2023-10-30 14:38:01'),
(20, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100087,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-10-30 14:38:02', '2023-10-30 14:38:02'),
(21, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100088,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-10-30 14:38:05', '2023-10-30 14:38:05'),
(22, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100089,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-10-30 14:38:06', '2023-10-30 14:38:06'),
(23, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100090,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-10-30 14:38:07', '2023-10-30 14:38:07'),
(24, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100091,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-10-30 14:38:09', '2023-10-30 14:38:09'),
(25, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100092,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-10-30 14:38:12', '2023-10-30 14:38:12'),
(26, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100093,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-10-30 14:38:23', '2023-10-30 14:38:23'),
(27, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100094,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-10-30 14:40:15', '2023-10-30 14:40:15'),
(28, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100095,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 12, NULL, '2023-10-30 14:52:00', '2023-10-30 14:52:00'),
(29, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100096,\"image\":\"\",\"type\":\"new_order\"}', 1, 37, 1, NULL, '2023-10-30 14:55:13', '2023-10-30 14:55:13'),
(30, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100097,\"image\":\"\",\"type\":\"new_order\"}', 1, 37, 12, NULL, '2023-10-30 15:06:06', '2023-10-30 15:06:06'),
(31, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100098,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-10-30 15:14:36', '2023-10-30 15:14:36'),
(32, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100099,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-10-30 15:17:07', '2023-10-30 15:17:07'),
(33, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100100,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-10-30 15:18:41', '2023-10-30 15:18:41'),
(34, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100101,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-10-30 15:18:55', '2023-10-30 15:18:55'),
(35, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100102,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-10-30 15:19:54', '2023-10-30 15:19:54'),
(36, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100103,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-10-30 15:20:20', '2023-10-30 15:20:20'),
(37, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100104,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-10-30 15:52:12', '2023-10-30 15:52:12'),
(38, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100105,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-10-30 15:52:36', '2023-10-30 15:52:36'),
(39, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100106,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-10-30 15:54:27', '2023-10-30 15:54:27'),
(40, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100125,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-10-31 14:55:05', '2023-10-31 14:55:05'),
(41, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100126,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-10-31 14:59:03', '2023-10-31 14:59:03'),
(42, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100127,\"image\":\"\",\"type\":\"new_order\"}', 1, 100127, 1, NULL, '2023-10-31 15:01:26', '2023-10-31 15:01:26'),
(43, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100128,\"image\":\"\",\"type\":\"new_order\"}', 1, 21, 1, NULL, '2023-10-31 15:04:11', '2023-10-31 15:04:11'),
(44, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100135,\"image\":\"\",\"type\":\"new_order\"}', 1, 37, 1, NULL, '2023-10-31 15:14:18', '2023-10-31 15:14:18'),
(45, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100136,\"image\":\"\",\"type\":\"new_order\"}', 1, 37, 1, NULL, '2023-10-31 15:15:15', '2023-10-31 15:15:15'),
(46, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100137,\"image\":\"\",\"type\":\"new_order\"}', 1, 37, 1, NULL, '2023-10-31 15:16:38', '2023-10-31 15:16:38'),
(47, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100138,\"image\":\"\",\"type\":\"new_order\"}', 1, 52, 1, NULL, '2023-10-31 16:02:23', '2023-10-31 16:02:23'),
(48, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100139,\"image\":\"\",\"type\":\"new_order\"}', 1, 52, 1, NULL, '2023-10-31 16:17:01', '2023-10-31 16:17:01'),
(49, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100140,\"image\":\"\",\"type\":\"new_order\"}', 1, 31, 1, NULL, '2023-10-31 16:35:04', '2023-10-31 16:35:04'),
(50, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100141,\"image\":\"\",\"type\":\"new_order\"}', 1, 52, 1, NULL, '2023-10-31 17:07:09', '2023-10-31 17:07:09'),
(51, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100160,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2023-11-06 10:46:49', '2023-11-06 10:46:49');

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `query_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `images` json DEFAULT NULL,
  `response` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `status_updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_queries`
--

INSERT INTO `user_queries` (`id`, `user_id`, `query_id`, `name`, `description`, `images`, `response`, `created_at`, `status`, `status_updated_at`) VALUES
(1, 15, 4, 'Sub-Query 1.1', 'Description for sub-query 1.1', NULL, NULL, '2023-03-16 13:25:22', 'pending', '2023-03-16 13:25:22'),
(2, 15, 4, 'Sub-Query 1.1', 'Description for sub-query 1.1', NULL, NULL, '2023-03-16 13:27:23', 'pending', '2023-03-16 13:27:23'),
(3, 15, 4, 'Sub-Query 1.1', 'Description for sub-query 1.1', NULL, NULL, '2023-03-16 13:28:48', 'pending', '2023-03-16 13:28:48'),
(4, 17, 4, 'Sub-Query 1.1', 'Description for sub-query 1.1', NULL, NULL, '2023-03-16 13:29:50', 'pending', '2023-03-16 13:29:50'),
(5, 17, 4, 'Sub-Query 1.1', 'Description for sub-query 1.1', NULL, NULL, '2023-03-16 13:30:13', 'pending', '2023-03-16 13:30:13'),
(6, 18, 4, 'Sub-Query 1.1', 'Description for sub-query 1.1', NULL, NULL, '2023-03-16 13:30:35', 'pending', '2023-03-16 13:30:35'),
(7, 17, 4, 'Sub-Query 1.1', 'testing road', NULL, NULL, '2023-03-16 13:32:55', 'pending', '2023-03-16 13:32:55'),
(8, 18, 16, 'Sub-Sub-Query 1.1.1', 'testing', NULL, NULL, '2023-03-16 13:37:28', 'pending', '2023-03-16 13:37:28'),
(9, 15, 4, 'Sub-Query 1.1', 'dhskshs sjd sjd sjxs xjs dje djslsdheldjd dks ddhskshs sjd sjd sjxs xjs dje djslsdheldjd dkdhskshs sjd sjd sjxs xjs dje djslsdheldjd dks ds d', NULL, NULL, '2023-04-01 10:43:55', 'pending', '2023-04-01 10:43:55'),
(10, 17, 4, 'Sub-Query 1.1', 'dhskshs sjd sjd sjxs xjs dje djslsdheldjd dks ddhskshs sjd sjd sjxs xjs dje djslsdheldjd dkdhskshs sjd sjd sjxs xjs dje djslsdheldjd dks ds d', NULL, NULL, '2023-04-01 10:44:07', 'pending', '2023-04-01 10:44:07'),
(11, 18, 24, 'Sub-Sub-Query 1.3.3', 'hi', NULL, NULL, '2023-04-01 11:59:45', 'pending', '2023-04-01 11:59:45'),
(12, 17, 24, 'Sub-Sub-Query 1.3.3', 'hi', NULL, NULL, '2023-04-01 12:01:43', 'pending', '2023-04-01 12:01:43'),
(13, 18, 6, 'Sub-Query 1.3', 'I need  a refund for my order id 100041', NULL, NULL, '2023-05-01 11:23:08', 'pending', '2023-05-01 11:23:08'),
(14, 18, 4, 'Sub-Query 1.1', 'Not found', NULL, NULL, '2023-05-20 12:08:23', 'pending', '2023-05-20 12:08:23'),
(15, 1, 25, 'Can not deliver this order', 'test Reason ✴️ 18 July', NULL, NULL, '2023-07-18 11:26:20', 'pending', '2023-07-18 11:26:20'),
(16, 1, 23, 'Sub-Sub-Query 1.3.2', 'rider test description', NULL, NULL, '2023-07-19 05:48:25', 'pending', '2023-07-19 05:48:25'),
(17, 24, 24, 'Sub-Sub-Query 1.3.3', 'user queries', NULL, NULL, '2023-07-20 06:06:22', 'pending', '2023-07-20 06:06:22'),
(18, 24, 24, 'Sub-Sub-Query 1.3.3', 'user test description', NULL, NULL, '2023-07-20 06:07:14', 'pending', '2023-07-20 06:07:14'),
(19, 24, 24, 'Sub-Sub-Query 1.3.3', 'user test description', NULL, NULL, '2023-07-20 06:09:09', 'pending', '2023-07-20 06:09:09'),
(20, 24, 24, 'Sub-Sub-Query 1.3.3', 'user test description', NULL, NULL, '2023-07-20 06:09:56', 'pending', '2023-07-20 06:09:56'),
(21, 39, 24, 'Sub-Sub-Query 1.3.3', 'fff', NULL, NULL, '2023-09-09 09:32:29', 'pending', '2023-09-09 09:32:29');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `firebase_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `f_name`, `l_name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `bank_name`, `branch`, `holder_name`, `account_no`, `image`, `status`, `firebase_token`, `auth_token`) VALUES
(1, 'JUNAID', 'Ali', '+923043372285', 'junaidvendor@gmail.com', NULL, '$2y$10$xSVvKodtUpLhMZDmkUZr5ewxF9CkXqIj3weMg2aB2QuHBPrRimsom', 'KgoHO3QLTvexjFLXmjA7fJ9T7YIJv3NCHNUGEQc6XmXkb14MN2MWyj5YZvQ3', '2022-11-29 07:51:26', '2023-11-11 10:37:15', 'Naya Pay', 'Naya Pay Branch', 'Junaid Ali', '4242424242424242', '2022-12-13-639856abbb83e.png', 1, 'dgOuWbB-TfmSzz3lnVWoVw:APA91bHeYeDOSIfj0UjIVz9YBOTVngRGeNZWEHoRDOsIzfyhxlNpQlwbaYfbZH2-DoDl8tQ7TstFaxGwV94aHQM7gsf1aEtRs1ZW5I6BoGwN4ENdnd1E44ui5ZIg06eVOKMCv9LP02mG', 'CFParQqDguPntWLO9xj1RrwvVatV21HIK73cVcE0Q1WJXjqm27wR2HbyrayxNxtbog54FZ2wMeXEnqs8iSkhfvp996I2xabXF9vZBkgTsFnhHARuUZ1jZsnY'),
(2, 'Goru', 'Shop', '+923003003030', 'ma4397479@gmail.com', NULL, '$2y$10$PSzDT.yYjhz6L8zsGZVties9t/VpFa0.ALvB8erEwpaH8E3vXaQ.q', NULL, '2023-02-13 05:49:00', '2023-10-04 01:49:45', NULL, NULL, NULL, NULL, NULL, 1, 'ek2Z6QU-Qo-T1O3C4FjanV:APA91bG8qodv9oyfMX_DaISsDeXG3QaqtcW4TMbOVlLuER7tMZ_7OddN5Q8yrfUHmZuMNQXSOsIbtHcrUoNl4iXFz8enHtDJU_ahCklAPlI4TJR11hR-r-xEynabu6kDGEnHD10XrPAb', 'R10iHJMCHIGptpW8etZGqflvoHHLhRbmnvSLGx4ug7xBQnCGiFLzbbv3pfilGyPAYt7nnsCHP9QiKRrjfrbGVhUQHgdyZW8Ga6xN6yz5bQsMQgOyr71SeKcp'),
(3, 'Nablus', 'User', '+923043372299', 'nablusvendor@GMAIL.COM', NULL, '$2y$10$EuROOj1AF7BOTZkQp1QDLuYeJRR0vCjsQxmvbN/ZeGEu0vD0WP.uW', NULL, '2023-02-23 08:06:58', '2023-02-23 08:06:58', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(4, 'Nablus', 'User', '03043372297', 'nabl@gmail.com', NULL, '$2y$10$dviioZXc6F0VuZP.KLD1TeE1glunVRSIr/gcIC27qGP40uVbyeFYi', NULL, '2023-02-23 08:13:06', '2023-02-23 08:13:06', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(5, 'its_testing', 'testing1', '0123456754', 'testing@testing.com', NULL, '$2y$10$3yCNNBpQRR7xxSDkypsm9.tK9vQl1eLx7DpvZvG4WfhKxhnbet7/2', NULL, '2023-03-11 03:18:20', '2023-03-22 22:17:02', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(6, 'Muhammad Ahmar', 'Subhan', '03020173199', 'asbhutta54@gmail.com', NULL, '$2y$10$tzjIQNGNWXS8YBbvMk9WEeHco2ascuvTEQ0QD.2b63Eu45CsoZN1e', '3LcXvPDvmlmzBEWhf7Xoh1OS4yOJQwz1BBpXkDkbp43KAf5smgmFWu0W0u4E', '2023-03-30 02:28:41', '2023-03-30 02:28:41', NULL, NULL, NULL, NULL, '2022-12-13-639856abbb83e.png', 1, NULL, NULL),
(7, 'Ahmer', 'Bhutta', '+923012345677', 'bsbhutta54@gmail.com', NULL, '$2y$10$I7mhp96oNdfBA3gAapY4pOMMftaZXpr12Dx4lPueWdz0r2Px9i3ZW', 'wXGZnDLpoTfX6639rwpc0vVjKJmzRbRteO9RaJ8nuJG3zIo7fJfTDFiXZrIJ', '2023-04-12 03:00:11', '2023-04-12 03:00:11', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(8, 'John', 'Doe', '+923030266746', 'atif99ml@gmail.com', NULL, '$2y$10$IwuH5QoCM4hus1nmMVM5R.BDDJLBs5e9rkn/ip5oRQRkZ6.ZuPR/S', NULL, '2023-05-23 04:33:49', '2023-05-24 00:29:52', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Khjt5scqRu1O2Uu3jJhlUAWJmFgawJ3enNiyyrDoxXJnLhU5oBIDQEMATFl8uPJZlEKxXnQX6VXSoMbiPFttfJxophTNRnxwUi4NyP0NF8bYj748nc5dwpbs'),
(9, 'John', 'Doe', '+923091135565', 'jhon@gmail.com', NULL, '$2y$10$JIaAZSP.9uw4YWU4OQW/VO8fpffTyEDayYIEpS8p4WJhbytD.nS3.', '1234567', '2023-08-21 04:46:37', '2023-09-19 03:54:45', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(10, 'Muhammad', 'Awais', '+92309116550', 'ma2309809@gmail.com', NULL, '$2y$10$8Ey6HfWaT53Rq/4iYD/TbOVHIrDKmJB/rr18SbyHu5ZaXGe6vbO.W', 'aTOvGeZqbQJEqqWZshEhCsGdGrwSqWcZ7ONAi5YhgptqVb2mxCPG4xwElHNl', '2023-10-11 00:09:35', '2023-10-23 02:00:30', NULL, NULL, NULL, NULL, NULL, 1, 'fa2C14B_TZOsb3qtCN_V6F:APA91bGAry3LBgitQ6vuorWx2F6ILpRQn2UofPdF4AmRlM4pA_FpPmxyWlWseGIbNMicGO9x7rhkhG3EYnOY5mldyGGQAFxwDy5ieP3dx9GvgmSuqPPFhPNa994Jv0BasTwW8RrAYM4f', 'GkDH9z32snAEGZzeM7vrTuWFDNQrfVdnspMIuczhUwv0HhaO6Yuo1e8gSGhzINX3Q7fJmYPiqeN0FDCUhpLmw2H9OnZD8VOcb3WUtN87b9RyTUut7cnKBj4q'),
(11, 'Ahsan', 'Ali', '03077442481', 'ahsanaliali295@gmail.com', NULL, '$2y$10$1pFU4MWpKEQY2G9luFTG3u9dqH/EXtMsGAv7E2qv8LE7kXGcg6OaS', '2cdf9MFJRZTz00SSFvCCxLkVX8YtxUJ18k8Vb7UiMMQYXbhqvubKEHj9Zcu9', '2023-10-12 01:52:10', '2023-10-12 03:59:37', NULL, NULL, NULL, NULL, NULL, 1, 'cYlkwqJISva5NGYFta1BIe:APA91bF0HY27_hnnJeFxLP62LsPU6pcBf2wLGdvzNaLTN10D63UNPYw-PKrhdmkjmln1wiK5MYYykTmPN67PL9PQf8ikm_YrSBTbzV5PdeZxyJcxg-JXvWlvIkio2GBcwm5bRSg72YZW', '1bAJqGNjXRM1lSVxqqkuV3drPJgM70CRiiFMcozAYFEszXkN2pINx5eHTo5nqkG3nDAIN9WAmWJoa0p4Eq648cbXVwsO1UeDroUBUcsPES2JfJtC9oBUVi6B'),
(12, 'Mahr', 'Zohaib', '03200163647', 'zohaibworkspace@gmail.com', NULL, '$2y$10$3JaLbby4cFYMKcShQkBOru/eDiPfx1NgBRbwTsJ7cDgb4lR9RNGlG', 'saxDqG8cwGRzAFOybQ74F4clsOvxNlD8BcwInWgnq8VA42JtskhkxVJsFtdo', '2023-10-30 12:39:33', '2023-10-30 12:39:33', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(13, 'Mr', 'Awais', '+923091116550', 'ijazhu33@gmail.com', NULL, '$2y$10$WxFE7FOP4uiInps1aJ8c6elKe4hmELt.5wEabaAxYDE2xszj18Fti', '6B6PApwqkYeo6NSq2ltfHRTGVFZ7E42YTFRoJQ7k9UlSSNaDHMMTb49hc9Bg', '2023-11-06 10:13:12', '2023-11-09 22:04:29', NULL, NULL, NULL, NULL, NULL, 1, 'ckyfPkSnS-eHaL5Lmp6EA0:APA91bHiV-EnwL-gpFlvSKJGWWAIjfpC1CvuTyChejGVCpETm4WVbSuoMh1u0cMeQjKBHLaOXin2v-HiPaNdDinxeE4WCM0NdgWyGertoC92SL7AXsL3vla5MUaXW5m0zue0MydH2asf', 'nHbcSnZ6WxtEruMVzdUz0r49CP895g2Wi2AAhHsnii656lWa9Uz1T2RO4Ip3VY7ASVrnquw4cGQYZiPxJkZqeiv1aYeZfT3SZDnA2pBUJnLn8RNHmDAajUl3');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_employees`
--

CREATE TABLE `vendor_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_role_id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firebase_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_employees`
--

INSERT INTO `vendor_employees` (`id`, `f_name`, `l_name`, `phone`, `email`, `image`, `employee_role_id`, `vendor_id`, `restaurant_id`, `password`, `status`, `remember_token`, `firebase_token`, `auth_token`, `created_at`, `updated_at`) VALUES
(1, 'Anas', 'Khan', '+923123456789', 'anasworker@gmail.com', '2022-11-29-638671c6c1fe1.png', 1, 1, 1, '$2y$10$1UhUpjDmoekYWMIhTXlDiONXGZ3N15bwo7Xcb0G0Ynp4d4htzi5Mu', 1, 'ia7ijsr5NoN6CSmrlTxuvStyjCpU9rTNGHmsyTDuPec9qAjyeVlqg14pogpv', NULL, NULL, '2022-11-29 07:55:34', '2022-11-29 07:55:34'),
(2, 'John', 'Doe', '+13445667878', 'john@gmail.com', '2022-12-12-6397252a97e24.png', 1, 1, 1, '$2y$10$hzlueOs4nUFNLGF95uFqWObPauKnNxNhJVICDrbw48qoz.Uhhrpw.', 1, '1LvbbI7QAp8lWVYXxfDqYgrAjFJPbkW7oXEqveHD48WHClJ1GePfSZRq3KZq', NULL, NULL, '2022-12-12 03:57:14', '2022-12-12 03:57:14');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_queries`
--

CREATE TABLE `vendor_queries` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `query_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `response` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `status_updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_queries`
--

INSERT INTO `vendor_queries` (`id`, `vendor_id`, `query_id`, `name`, `description`, `images`, `response`, `created_at`, `status`, `status_updated_at`) VALUES
(1, 1, 26, 'Cannot full fill order', 'submitted vendor query', NULL, NULL, '2023-07-20 07:21:39', 'pending', '2023-07-20 07:21:39'),
(2, 0, 26, 'Cannot full fill order', 'haye kesa hy', NULL, NULL, '2023-09-19 12:14:11', 'pending', '2023-09-19 12:14:11');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` decimal(24,3) NOT NULL DEFAULT '0.000',
  `debit` decimal(24,3) NOT NULL DEFAULT '0.000',
  `admin_bonus` decimal(24,3) NOT NULL DEFAULT '0.000',
  `balance` decimal(24,3) NOT NULL DEFAULT '0.000',
  `transaction_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `food_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `food_id`, `created_at`, `updated_at`, `restaurant_id`) VALUES
(15, 16, 3, '2023-02-23 03:27:22', '2023-02-23 03:27:22', NULL),
(16, 16, 2, '2023-02-23 04:03:29', '2023-02-23 04:03:29', NULL),
(17, 25, NULL, '2023-05-15 00:08:02', '2023-05-15 00:08:02', 1),
(18, 251, NULL, '2023-05-15 00:19:21', '2023-05-15 00:19:21', 1),
(21, 24, 2, '2023-06-19 21:25:48', '2023-06-19 21:25:48', NULL),
(37, 24, NULL, '2023-06-19 23:18:11', '2023-06-19 23:18:11', 2),
(42, 24, 4, '2023-06-19 23:40:49', '2023-06-19 23:40:49', NULL),
(46, 24, 3, '2023-07-04 04:24:51', '2023-07-04 04:24:51', NULL),
(48, 29, NULL, '2023-08-02 01:27:45', '2023-08-02 01:27:45', 1),
(50, 31, 6, '2023-08-03 01:48:38', '2023-08-03 01:48:38', NULL),
(51, 31, NULL, '2023-08-03 01:48:48', '2023-08-03 01:48:48', 1),
(54, 24, NULL, '2023-08-21 21:44:39', '2023-08-21 21:44:39', 3),
(57, 37, NULL, '2023-09-01 23:19:57', '2023-09-01 23:19:57', 1),
(60, 39, NULL, '2023-09-08 23:17:10', '2023-09-08 23:17:10', 3),
(66, 38, 20, '2023-09-28 21:10:08', '2023-09-28 21:10:08', NULL),
(67, 38, 19, '2023-09-28 21:10:59', '2023-09-28 21:10:59', NULL),
(68, 38, 18, '2023-09-28 21:11:06', '2023-09-28 21:11:06', NULL),
(69, 38, 16, '2023-09-28 21:11:11', '2023-09-28 21:11:11', NULL),
(70, 38, NULL, '2023-09-28 21:11:50', '2023-09-28 21:11:50', 2),
(72, 38, 4, '2023-09-29 22:12:41', '2023-09-29 22:12:41', NULL),
(73, 15, 24, '2023-09-30 01:35:26', '2023-09-30 01:35:26', NULL),
(75, 37, 16, '2023-10-08 22:48:03', '2023-10-08 22:48:03', NULL),
(80, 53, NULL, '2023-10-30 20:51:22', '2023-10-30 20:51:22', 2),
(81, 65, NULL, '2023-10-31 16:03:56', '2023-10-31 16:03:56', 5),
(82, 65, 32, '2023-10-31 16:04:01', '2023-10-31 16:04:01', NULL),
(83, 65, 31, '2023-10-31 16:05:41', '2023-10-31 16:05:41', NULL),
(84, 65, 34, '2023-10-31 16:07:24', '2023-10-31 16:07:24', NULL),
(85, 109, NULL, '2023-11-02 10:38:57', '2023-11-02 10:38:57', 1),
(86, 109, 3, '2023-11-02 10:39:14', '2023-11-02 10:39:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_requests`
--

CREATE TABLE `withdraw_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_requests`
--

INSERT INTO `withdraw_requests` (`id`, `vendor_id`, `admin_id`, `transaction_note`, `amount`, `approved`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, 733.00, 0, '2023-07-21 21:09:41', '2023-07-21 21:09:41');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordinates` polygon NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_wise_topic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_wise_topic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deliveryman_wise_topic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minimum_shipping_charge` double(16,3) UNSIGNED DEFAULT NULL,
  `per_km_shipping_charge` double(16,3) UNSIGNED DEFAULT NULL,
  `currency` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_purchase_for_point` double NOT NULL DEFAULT '1',
  `currency_symbol` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` int(100) DEFAULT NULL,
  `timezone_id` int(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `name`, `coordinates`, `status`, `created_at`, `updated_at`, `restaurant_wise_topic`, `customer_wise_topic`, `deliveryman_wise_topic`, `minimum_shipping_charge`, `per_km_shipping_charge`, `currency`, `min_purchase_for_point`, `currency_symbol`, `currency_id`, `timezone_id`) VALUES
(1, 'Multan', 0x000000000103000000010000000d00000061fd1806f8e05140d4f5d938a1353e4063fd18e605e45140adebb123a13b3e407cfd187603de51407ac37d95153f3e4067fd18a6a9da5140f55c29d5d1353e407cfd187633db514098f3e0a5902e3e4065b689ae72df514098c271e237253e4058b6896e83e15140f9b9fec488243e4048b6894ea2e25140c4f5b4d50a273e4032b6898e07e3514039f66832c7293e404db6890e86e45140486c6a2e9d2a3e405ab6894e91e45140806a2bd6c72f3e403fb689ce7ae45140cf7d1421bb393e4061fd1806f8e05140d4f5d938a1353e40, 1, '2022-11-29 07:49:41', '2023-06-10 03:19:24', 'zone_1_restaurant', 'zone_1_customer', 'zone_1_delivery_man', 10.000, 10.000, NULL, 20, NULL, 87, 1),
(2, 'Al toor', 0x0000000001030000000100000007000000b32acad7fca2414019f5c51dc41a4040cd2aca93b8a3414027c4bb274a1a4040522aca93d7a2414019afb6bb30194040b52aca7b79a0414055de70e47c1940409a2acafb62a04140c53b9661001a40408a2aca2746a04140a0865c8fa71a4040b32acad7fca2414019f5c51dc41a4040, 1, '2022-12-22 07:14:28', '2022-12-22 07:14:28', 'zone_2_restaurant', 'zone_2_customer', 'zone_2_delivery_man', 10.000, 10.000, NULL, 1, NULL, 87, 1),
(3, 'Nablus', 0x000000000103000000010000000a000000cc022b32989f4140bf4596b95b1d4040bf022bf28c9f4140f6e07b12f21b4040e6022bb216a141403e9ab73a3d1b4040b2022bb2b9a34140f30c6d06551b404083022b52faa4414002330886e91c40408e022bb213a44140514877e7571e40409e022bd2d8a0414006e194b9821e4040c5022b92929f41406b7264a1491e4040c5022b92929f4140f27aaa6a3a1d4040cc022b32989f4140bf4596b95b1d4040, 1, '2023-02-23 08:02:50', '2023-02-23 08:02:50', 'zone_3_restaurant', 'zone_3_customer', 'zone_3_delivery_man', 4.000, 8.000, NULL, 1, NULL, 87, 1),
(4, 'Isreal', 0x0000000001030000000100000005000000826dd3699fb14240fe87e0fd525a4040b76d53fe386e4140df3e563378f63c403c6d53b257424040aa28008f9d843f40806d33ad68dc4140bca316ed78974040826dd3699fb14240fe87e0fd525a4040, 1, '2023-05-29 10:45:30', '2023-05-29 10:45:30', 'zone_4_restaurant', 'zone_4_customer', 'zone_4_delivery_man', 1.000, 1.000, NULL, 1, NULL, 48, 2),
(5, 'Lahore', 0x0000000001030000000100000008000000206768e465905240942747bf3eae3f400e6768e4f6775240666d696aef6f3f40fd6668e4878c524028b84483493c3f40206768e4c19d5240f011f8004b3f3f400e6768e4f6a45240e9df669bbb773f40fd6668e453a2524057c2915510a73f40326768e440975240e1fd51fddba83f40206768e465905240942747bf3eae3f40, 1, '2023-06-10 03:15:13', '2023-06-10 03:15:13', 'zone_5_restaurant', 'zone_5_customer', 'zone_5_delivery_man', 10.000, 10.000, NULL, 10, NULL, 87, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absher_express`
--
ALTER TABLE `absher_express`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `absher_express_tracking`
--
ALTER TABLE `absher_express_tracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_transactions`
--
ALTER TABLE `account_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_ons`
--
ALTER TABLE `add_ons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_wallets`
--
ALTER TABLE `admin_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_requests`
--
ALTER TABLE `business_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_slider`
--
ALTER TABLE `business_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_types`
--
ALTER TABLE `business_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deal_optional_products`
--
ALTER TABLE `deal_optional_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deal_options`
--
ALTER TABLE `deal_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deal_order_detail`
--
ALTER TABLE `deal_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deal_products`
--
ALTER TABLE `deal_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_man_wallets`
--
ALTER TABLE `delivery_man_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_men`
--
ALTER TABLE `delivery_men`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `delivery_men_phone_unique` (`phone`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d_m_reviews`
--
ALTER TABLE `d_m_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_verifications`
--
ALTER TABLE `email_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_roles`
--
ALTER TABLE `employee_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `express_categories`
--
ALTER TABLE `express_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_requests`
--
ALTER TABLE `gift_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_campaigns`
--
ALTER TABLE `item_campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loyalty_gifts`
--
ALTER TABLE `loyalty_gifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loyalty_points_history`
--
ALTER TABLE `loyalty_points_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loyalty_point_transactions`
--
ALTER TABLE `loyalty_point_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_configs`
--
ALTER TABLE `mail_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletters_email_unique` (`email`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_delivery_histories`
--
ALTER TABLE `order_delivery_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_earning`
--
ALTER TABLE `order_earning`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_online_payments`
--
ALTER TABLE `order_online_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_reports`
--
ALTER TABLE `order_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_reviews`
--
ALTER TABLE `order_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_transactions`
--
ALTER TABLE `order_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_transactions_zone_id_index` (`zone_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `phone_verifications`
--
ALTER TABLE `phone_verifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_verifications_phone_unique` (`phone`);

--
-- Indexes for table `provide_d_m_earnings`
--
ALTER TABLE `provide_d_m_earnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restaurants_phone_unique` (`phone`),
  ADD KEY `business_type` (`business_type`);

--
-- Indexes for table `restaurant_schedule`
--
ALTER TABLE `restaurant_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_wallets`
--
ALTER TABLE `restaurant_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_zone`
--
ALTER TABLE `restaurant_zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rider_queries`
--
ALTER TABLE `rider_queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soft_credentials`
--
ALTER TABLE `soft_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_deals`
--
ALTER TABLE `special_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_logs`
--
ALTER TABLE `time_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_deliverymen`
--
ALTER TABLE `track_deliverymen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_translationable_id_index` (`translationable_id`),
  ADD KEY `translations_locale_index` (`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_ref_code_unique` (`ref_code`),
  ADD KEY `users_zone_id_index` (`zone_id`);

--
-- Indexes for table `user_infos`
--
ALTER TABLE `user_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_phone_unique` (`phone`),
  ADD UNIQUE KEY `vendors_email_unique` (`email`);

--
-- Indexes for table `vendor_employees`
--
ALTER TABLE `vendor_employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendor_employees_email_unique` (`email`);

--
-- Indexes for table `vendor_queries`
--
ALTER TABLE `vendor_queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zones_name_unique` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absher_express`
--
ALTER TABLE `absher_express`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `absher_express_tracking`
--
ALTER TABLE `absher_express_tracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_transactions`
--
ALTER TABLE `account_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `add_ons`
--
ALTER TABLE `add_ons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_wallets`
--
ALTER TABLE `admin_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `business_requests`
--
ALTER TABLE `business_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `business_slider`
--
ALTER TABLE `business_slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `business_types`
--
ALTER TABLE `business_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `deal_optional_products`
--
ALTER TABLE `deal_optional_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `deal_options`
--
ALTER TABLE `deal_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `deal_order_detail`
--
ALTER TABLE `deal_order_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `deal_products`
--
ALTER TABLE `deal_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `delivery_man_wallets`
--
ALTER TABLE `delivery_man_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `delivery_men`
--
ALTER TABLE `delivery_men`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `d_m_reviews`
--
ALTER TABLE `d_m_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `email_verifications`
--
ALTER TABLE `email_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_roles`
--
ALTER TABLE `employee_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `express_categories`
--
ALTER TABLE `express_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `gift_requests`
--
ALTER TABLE `gift_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `item_campaigns`
--
ALTER TABLE `item_campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loyalty_gifts`
--
ALTER TABLE `loyalty_gifts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loyalty_points_history`
--
ALTER TABLE `loyalty_points_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `loyalty_point_transactions`
--
ALTER TABLE `loyalty_point_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mail_configs`
--
ALTER TABLE `mail_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100175;

--
-- AUTO_INCREMENT for table `order_delivery_histories`
--
ALTER TABLE `order_delivery_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `order_earning`
--
ALTER TABLE `order_earning`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `order_online_payments`
--
ALTER TABLE `order_online_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `order_reports`
--
ALTER TABLE `order_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order_reviews`
--
ALTER TABLE `order_reviews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `order_transactions`
--
ALTER TABLE `order_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_verifications`
--
ALTER TABLE `phone_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `provide_d_m_earnings`
--
ALTER TABLE `provide_d_m_earnings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `queries`
--
ALTER TABLE `queries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `restaurant_schedule`
--
ALTER TABLE `restaurant_schedule`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `restaurant_wallets`
--
ALTER TABLE `restaurant_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `restaurant_zone`
--
ALTER TABLE `restaurant_zone`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rider_queries`
--
ALTER TABLE `rider_queries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `soft_credentials`
--
ALTER TABLE `soft_credentials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `special_deals`
--
ALTER TABLE `special_deals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `time_logs`
--
ALTER TABLE `time_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `track_deliverymen`
--
ALTER TABLE `track_deliverymen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `user_infos`
--
ALTER TABLE `user_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `vendor_employees`
--
ALTER TABLE `vendor_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vendor_queries`
--
ALTER TABLE `vendor_queries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`business_type`) REFERENCES `business_types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
