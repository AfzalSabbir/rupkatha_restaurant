-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 26, 2019 at 07:44 AM
-- Server version: 10.1.40-MariaDB-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_role` tinyint(4) DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `admin_role`, `photo`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'super@gmail.com', 'superadmin', 1, 'public/images/admins/1556106587.png', '$2y$10$tQVwD5VequDrZsgg5NUaHexmp3fGf.XI7zylpDEqSxf9WJITYiRWO', 1, '5kC7RD5e1DfFUMzPpg14as7DEztaTQXMyozW5vCo0eWOZwxSh8vU9Q0ouEPh', '2019-03-24 12:00:00', '2019-04-24 11:49:48'),
(2, 'Admin', 'admin@gmail.com', 'admin', 2, NULL, '$2y$10$tQVwD5VequDrZsgg5NUaHexmp3fGf.XI7zylpDEqSxf9WJITYiRWO', 1, 'gV02AWVRulaSdFKJqqwcgB8964FxjAKuVn6uP0s9QbuHG0K1hZWeNm2W6pdg', '2019-03-24 12:00:00', '2019-04-15 03:51:44'),
(3, 'Zowardear', 'rukpatha1@gmail.com', 'aslatali', 3, NULL, '$2y$10$icXOHmcjZUZRx8lvV6WTuuDOdSs/oG7rozHz2PLk86enqkVn0.JMS', 1, NULL, '2019-06-18 22:09:35', '2019-06-18 22:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `admin_access_infos`
--

CREATE TABLE `admin_access_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `admin_access_infos`
--

INSERT INTO `admin_access_infos` (`id`, `admin_id`, `ip`, `country`, `device`, `browser`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '::1', NULL, 'PC', 'Chrome', 1, '2019-04-15 02:39:07', '2019-04-15 02:39:07'),
(2, 1, '::1', NULL, 'PC', 'Firefox', 1, '2019-04-15 02:59:01', '2019-04-15 02:59:01'),
(3, 1, '::1', NULL, 'PC', 'Firefox', 1, '2019-04-15 21:18:25', '2019-04-15 21:18:25'),
(4, 1, '::1', NULL, 'PC', 'Firefox', 1, '2019-04-16 05:13:57', '2019-04-16 05:13:57'),
(5, 1, '::1', NULL, 'PC', 'Chrome', 1, '2019-04-16 21:29:30', '2019-04-16 21:29:30'),
(6, 1, '127.0.0.1', NULL, 'PC', 'Firefox', 1, '2019-04-17 21:10:33', '2019-04-17 21:10:33'),
(7, 1, '::1', NULL, 'PC', 'Firefox', 1, '2019-04-18 02:15:15', '2019-04-18 02:15:15'),
(8, 1, '::1', NULL, 'PC', 'Chrome', 1, '2019-04-18 13:54:08', '2019-04-18 13:54:08'),
(9, 1, '::1', NULL, 'PC', 'Chrome', 1, '2019-04-18 15:09:37', '2019-04-18 15:09:37'),
(10, 1, '::1', NULL, 'PC', 'Chrome', 1, '2019-04-18 15:14:41', '2019-04-18 15:14:41'),
(11, 1, '::1', NULL, 'PC', 'Chrome', 1, '2019-04-18 15:17:54', '2019-04-18 15:17:54'),
(12, 1, '::1', NULL, 'PC', 'Chrome', 1, '2019-04-18 15:18:35', '2019-04-18 15:18:35'),
(13, 1, '::1', NULL, 'PC', 'Chrome', 1, '2019-04-19 03:15:19', '2019-04-19 03:15:19'),
(14, 1, '::1', NULL, 'PC', 'Chrome', 1, '2019-04-20 10:57:04', '2019-04-20 10:57:04'),
(15, 1, '::1', NULL, 'PC', 'Firefox', 1, '2019-04-20 22:25:42', '2019-04-20 22:25:42'),
(16, 1, '::1', NULL, 'PC', 'Chrome', 1, '2019-04-21 03:25:11', '2019-04-21 03:25:11'),
(17, 1, '::1', NULL, 'PC', 'Chrome', 1, '2019-04-23 00:34:40', '2019-04-23 00:34:40'),
(18, 1, '::1', NULL, 'PC', 'Firefox', 1, '2019-04-23 11:35:12', '2019-04-23 11:35:12'),
(19, 2, '::1', NULL, 'PC', 'Firefox', 1, '2019-04-23 11:41:11', '2019-04-23 11:41:11'),
(20, 1, '::1', NULL, 'PC', 'Firefox', 1, '2019-04-23 11:43:51', '2019-04-23 11:43:51'),
(21, 1, '::1', NULL, 'PC', 'Chrome', 1, '2019-04-23 12:27:19', '2019-04-23 12:27:19'),
(22, 1, '::1', NULL, 'PC', 'Firefox', 1, '2019-04-24 04:02:21', '2019-04-24 04:02:21'),
(23, 1, '::1', NULL, 'PC', 'Firefox', 1, '2019-04-24 04:15:16', '2019-04-24 04:15:16'),
(24, 1, '::1', NULL, 'PC', 'Firefox', 1, '2019-04-24 05:11:48', '2019-04-24 05:11:48'),
(25, 1, '::1', NULL, 'PC', 'Firefox', 1, '2019-04-24 11:46:49', '2019-04-24 11:46:49'),
(26, 1, '::1', NULL, 'PC', 'Chrome', 1, '2019-06-18 04:32:03', '2019-06-18 04:32:03'),
(27, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-18 20:28:25', '2019-06-18 20:28:25'),
(28, 1, '103.107.123.230', NULL, 'PC', 'Chrome', 1, '2019-06-18 20:35:42', '2019-06-18 20:35:42'),
(29, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-18 20:41:10', '2019-06-18 20:41:10'),
(30, 1, '103.107.123.230', NULL, 'PC', 'Chrome', 1, '2019-06-18 21:23:21', '2019-06-18 21:23:21'),
(31, 1, '103.107.123.230', NULL, 'PC', 'Chrome', 1, '2019-06-18 21:23:27', '2019-06-18 21:23:27'),
(32, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-18 21:51:10', '2019-06-18 21:51:10'),
(33, 3, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-06-18 22:10:35', '2019-06-18 22:10:35'),
(34, 1, '103.107.123.230', NULL, 'PC', 'Chrome', 1, '2019-06-19 00:16:57', '2019-06-19 00:16:57'),
(35, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-06-19 00:23:35', '2019-06-19 00:23:35'),
(36, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-06-19 00:29:47', '2019-06-19 00:29:47'),
(37, 1, '103.83.207.50', NULL, 'Mobile', 'Chrome', 1, '2019-06-19 05:07:24', '2019-06-19 05:07:24'),
(38, 1, '103.83.207.50', NULL, 'Mobile', 'Chrome', 1, '2019-06-19 06:10:59', '2019-06-19 06:10:59'),
(39, 1, '103.83.207.50', NULL, 'Mobile', 'Chrome', 1, '2019-06-19 06:33:23', '2019-06-19 06:33:23'),
(40, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-19 13:34:04', '2019-06-19 13:34:04'),
(41, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-19 13:39:43', '2019-06-19 13:39:43'),
(42, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-19 19:54:45', '2019-06-19 19:54:45'),
(43, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-19 20:31:46', '2019-06-19 20:31:46'),
(44, 1, '103.83.206.3', NULL, 'PC', 'Firefox', 1, '2019-06-19 22:47:40', '2019-06-19 22:47:40'),
(45, 1, '103.83.206.3', NULL, 'PC', 'Edge', 1, '2019-06-19 23:17:51', '2019-06-19 23:17:51'),
(46, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-19 23:29:11', '2019-06-19 23:29:11'),
(47, 1, '103.83.207.50', NULL, 'PC', 'Chrome', 1, '2019-06-20 00:10:19', '2019-06-20 00:10:19'),
(48, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-20 13:36:21', '2019-06-20 13:36:21'),
(49, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-20 18:00:47', '2019-06-20 18:00:47'),
(50, 1, '103.107.161.198', NULL, 'PC', 'Firefox', 1, '2019-06-20 19:36:54', '2019-06-20 19:36:54'),
(51, 1, '103.83.207.50', NULL, 'PC', 'Chrome', 1, '2019-06-21 07:26:32', '2019-06-21 07:26:32'),
(52, 1, '103.16.24.24', NULL, 'PC', 'Chrome', 1, '2019-06-22 02:18:20', '2019-06-22 02:18:20'),
(53, 1, '103.83.207.50', NULL, 'Mobile', 'Chrome', 1, '2019-06-22 05:00:17', '2019-06-22 05:00:17'),
(54, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-22 13:47:36', '2019-06-22 13:47:36'),
(55, 1, '51.38.83.185', NULL, 'Mobile', 'Chrome', 1, '2019-06-23 06:50:25', '2019-06-23 06:50:25'),
(56, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-23 13:54:41', '2019-06-23 13:54:41'),
(57, 1, '103.107.123.230', NULL, 'PC', 'Chrome', 1, '2019-06-23 16:04:42', '2019-06-23 16:04:42'),
(58, 3, '103.107.123.230', NULL, 'PC', 'Chrome', 1, '2019-06-23 18:07:15', '2019-06-23 18:07:15'),
(59, 1, '103.107.123.230', NULL, 'PC', 'Chrome', 1, '2019-06-23 18:07:32', '2019-06-23 18:07:32'),
(60, 3, '103.107.123.230', NULL, 'PC', 'Chrome', 1, '2019-06-23 18:08:28', '2019-06-23 18:08:28'),
(61, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-06-23 19:59:22', '2019-06-23 19:59:22'),
(62, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-06-23 20:55:18', '2019-06-23 20:55:18'),
(63, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-23 22:13:56', '2019-06-23 22:13:56'),
(64, 1, '103.83.207.50', NULL, 'PC', 'Firefox', 1, '2019-06-24 02:24:34', '2019-06-24 02:24:34'),
(65, 1, '103.83.207.50', NULL, 'PC', 'Chrome', 1, '2019-06-24 03:34:33', '2019-06-24 03:34:33'),
(66, 1, '103.16.24.8', NULL, 'PC', 'Firefox', 1, '2019-06-24 13:48:54', '2019-06-24 13:48:54'),
(67, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-24 13:56:40', '2019-06-24 13:56:40'),
(68, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-06-24 15:12:54', '2019-06-24 15:12:54'),
(69, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-06-25 00:53:07', '2019-06-25 00:53:07'),
(70, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-06-25 00:55:58', '2019-06-25 00:55:58'),
(71, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-06-25 01:18:31', '2019-06-25 01:18:31'),
(72, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-25 14:40:02', '2019-06-25 14:40:02'),
(73, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-25 14:42:33', '2019-06-25 14:42:33'),
(74, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-25 18:40:22', '2019-06-25 18:40:22'),
(75, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-25 18:56:36', '2019-06-25 18:56:36'),
(76, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-25 18:56:47', '2019-06-25 18:56:47'),
(77, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-06-25 19:03:18', '2019-06-25 19:03:18'),
(78, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-25 19:07:48', '2019-06-25 19:07:48'),
(79, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-25 19:08:22', '2019-06-25 19:08:22'),
(80, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-25 19:12:13', '2019-06-25 19:12:13'),
(81, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-25 19:13:50', '2019-06-25 19:13:50'),
(82, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-25 19:15:35', '2019-06-25 19:15:35'),
(83, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-25 19:15:50', '2019-06-25 19:15:50'),
(84, 1, '103.83.206.3', NULL, 'Mobile', 'Chrome', 1, '2019-06-25 19:34:02', '2019-06-25 19:34:02'),
(85, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-25 21:33:16', '2019-06-25 21:33:16'),
(86, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-25 21:35:25', '2019-06-25 21:35:25'),
(87, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-06-26 02:14:11', '2019-06-26 02:14:11'),
(88, 1, '103.83.207.50', NULL, 'Mobile', 'Chrome', 1, '2019-06-26 03:11:01', '2019-06-26 03:11:01'),
(89, 1, '103.67.159.246', NULL, 'PC', 'Firefox', 1, '2019-06-26 15:32:02', '2019-06-26 15:32:02'),
(90, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-26 16:49:23', '2019-06-26 16:49:23'),
(91, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-06-26 19:12:59', '2019-06-26 19:12:59'),
(92, 1, '103.67.159.246', NULL, 'PC', 'Firefox', 1, '2019-06-26 19:42:55', '2019-06-26 19:42:55'),
(93, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-06-26 21:13:47', '2019-06-26 21:13:47');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `sub_category_id` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Burger', 'burger', 'public/images/category/1560854436.jpg', 1, '2019-06-18 20:40:36', '2019-06-18 20:40:36'),
(2, 'Barbeque', 'barbeque', 'public/images/category/1560855900.jpg', 1, '2019-06-18 21:05:00', '2019-06-18 21:05:00'),
(3, 'Biryani', 'biryani', 'public/images/category/1560860372.jpg', 1, '2019-06-18 22:19:32', '2019-06-18 22:19:32'),
(4, 'Rice', 'fride-rice', 'public/images/category/1560860511.jpg', 1, '2019-06-18 22:21:51', '2019-06-18 22:46:52'),
(5, 'Kabab', 'kabab', 'public/images/category/1560860619.jpg', 1, '2019-06-18 22:23:39', '2019-06-18 22:23:39'),
(6, 'Pizza', 'pizza', 'public/images/category/1560860673.jpg', 1, '2019-06-18 22:24:33', '2019-06-18 22:24:33'),
(7, 'Shawarma', 'shawarma', 'public/images/category/1560860826.jpg', 1, '2019-06-18 22:27:06', '2019-06-18 22:27:06'),
(8, 'Sides', 'sides', 'public/images/category/1561271614.jpg', 1, '2019-06-23 16:33:34', '2019-06-23 16:33:34'),
(9, 'Pasta', 'pasta', 'public/images/category/1561272551.jpg', 1, '2019-06-23 16:49:12', '2019-06-23 16:49:12'),
(10, 'Chicken Breast Pasta', 'chicken-breast-pasta', 'public/images/category/1561272643.jpg', 1, '2019-06-23 16:50:43', '2019-06-23 16:50:43'),
(11, 'Juice', 'juice', 'public/images/category/1561273285.jpg', 1, '2019-06-23 17:01:26', '2019-06-23 17:01:26'),
(12, 'Lassi', 'lassi', 'public/images/category/1561273770.jpg', 1, '2019-06-23 17:09:30', '2019-06-23 17:09:30'),
(13, 'Cold Drinks', 'cold-drinks', 'public/images/category/1561273933.jpg', 1, '2019-06-23 17:12:13', '2019-06-23 17:12:13'),
(14, 'Soup', 'soup', 'public/images/category/1561274579.jpg', 1, '2019-06-23 17:22:59', '2019-06-23 17:22:59'),
(15, 'Coffee', 'coffee', 'public/images/category/1561275017.jpg', 1, '2019-06-23 17:30:17', '2019-06-23 17:30:17'),
(16, 'Faluda', 'faluda', 'public/images/category/1561275590.jpg', 1, '2019-06-23 17:39:50', '2019-06-23 17:39:50');

-- --------------------------------------------------------

--
-- Table structure for table `costs`
--

CREATE TABLE `costs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'General',
  `cost_field_id` int(10) UNSIGNED DEFAULT NULL,
  `cost_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Other',
  `pickdate` date NOT NULL,
  `quantity` double(8,2) DEFAULT '1.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `costs`
--

INSERT INTO `costs` (`id`, `title`, `cost_field_id`, `cost_type`, `pickdate`, `quantity`, `description`, `price`, `cost_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'General', 1, 'General', '2019-06-18', 1.00, 'cbc', '500', 'ddd', 1, '2019-06-18 21:49:00', '2019-06-18 21:49:00'),
(4, 'General', 5, 'General', '2019-06-23', 1.00, 'fridge vara', '100', 'jkjh', 1, '2019-06-23 21:13:11', '2019-06-23 21:13:11'),
(6, 'General', 2, 'General', '2019-06-19', 1.00, 'fgfg', '200', 'Sohel', 1, '2019-06-26 15:46:52', '2019-06-26 15:46:52'),
(7, 'General', 5, 'General', '2019-06-26', 1.00, 'তকত', '100', 'Sohel', 1, '2019-06-26 15:51:30', '2019-06-26 15:51:30'),
(8, 'General', 4, 'General', '2019-06-26', 1.00, 'িুিু', '200', 'Sohel', 1, '2019-06-26 16:02:20', '2019-06-26 16:02:20'),
(9, 'General', 2, 'General', '2019-06-26', 1.00, 'ুুুুু', '300', 'Sohel', 1, '2019-06-26 16:02:52', '2019-06-26 16:02:52'),
(10, 'General', 1, 'General', '2019-06-26', 1.00, 'রররর', '100', 'Sohel', 1, '2019-06-26 16:06:43', '2019-06-26 16:06:43'),
(11, 'General', 3, 'General', '2019-06-26', 1.00, 'রররর', '100', 'Sohel', 1, '2019-06-26 16:07:11', '2019-06-26 16:07:11');

-- --------------------------------------------------------

--
-- Table structure for table `cost_fields`
--

CREATE TABLE `cost_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cost_fields`
--

INSERT INTO `cost_fields` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Internet Bill', 1, '2019-06-18 21:47:10', '2019-06-18 21:47:10'),
(2, 'Electricity Bill', 1, '2019-06-18 21:47:41', '2019-06-18 21:47:41'),
(3, 'Bazar Khoroch', 1, '2019-06-23 21:10:07', '2019-06-23 21:10:07'),
(4, 'Road Cost', 1, '2019-06-23 21:10:22', '2019-06-23 21:10:22'),
(5, 'Rikshaw vara', 1, '2019-06-23 21:10:39', '2019-06-23 21:10:39');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `menu_position` int(10) UNSIGNED DEFAULT NULL COMMENT '0 - Left | 1 - Top | 2 - Dropdown',
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `menu`, `menu_bn`, `parent_id`, `menu_position`, `icon`, `url`, `route`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin Settings', 'এডমিন সেটিংস', NULL, 0, 'fa fa-cogs', NULL, NULL, 500, 0, '2019-03-25 04:40:17', '2019-04-23 10:57:50'),
(2, 'Change Password', 'পাসওয়ার্ড পরিবর্তন', 1, 0, 'fa fa-cog', '/admin/change-password', 'admin.password.form', 1, 0, '2019-03-25 04:42:35', '2019-04-23 10:56:21'),
(3, 'Menu Permission', 'মেনু পারমিশন', NULL, 0, 'fa fa-diamond', '/admin/role', 'admin.role.index', 499, 1, '2019-03-25 04:44:32', '2019-06-19 06:26:13'),
(4, 'Log Activity', 'লগ এক্টিভিটি', NULL, 0, 'fa fa-history', '/admin/log', 'admin.log.index', 500, 1, '2019-03-25 04:46:37', '2019-06-19 06:25:43'),
(5, 'Assign', 'অনুমতি প্রদান', 108, 1, 'fa fa-pencil', '/admin/role/assign', 'admin.role.assign', 1, 1, '2019-03-25 04:48:50', '2019-04-23 00:10:19'),
(6, 'Dashboard', 'ড্যাশবোর্ড', NULL, 0, 'fa fa-dashboard', '/admin', 'admin.home', 1, 1, '2019-03-25 05:02:05', '2019-03-25 05:02:05'),
(33, 'Product', 'পণ্য', NULL, 0, 'fa fa-archive', NULL, NULL, 50, 1, '2019-03-29 21:43:47', '2019-03-29 22:43:46'),
(34, 'Product List', 'পণ্য তালিকা', 33, 0, 'fa fa-list-ul', '/admin/product', 'admin.product.index', 2, 1, '2019-03-29 21:45:03', '2019-04-21 00:07:45'),
(35, 'Add New', 'নতুন যোগ করুন', 33, 0, 'fa fa-plus', '/admin/product/add', 'admin.product.create', 1, 1, '2019-03-29 21:47:44', '2019-04-21 00:07:42'),
(36, 'Edit', 'এডিট', 34, 1, 'fa fa-pencil', NULL, 'admin.product.edit', 2, 1, '2019-03-29 21:48:20', '2019-04-05 23:27:38'),
(37, 'Delete', 'ডিলিট', 34, 1, 'fa fa-trash', NULL, 'admin.product.delete', 3, 1, '2019-03-29 21:49:55', '2019-04-05 23:27:26'),
(38, 'Category', 'ক্যাটাগরি', NULL, 0, 'fa fa-pie-chart', NULL, NULL, 90, 1, '2019-03-29 21:51:15', '2019-03-30 00:11:55'),
(39, 'Category List', 'ক্যাটাগরি তালিকা', 38, 0, 'fa fa-list-ul', '/admin/category', 'admin.category.index', 2, 1, '2019-03-29 21:51:59', '2019-04-21 00:08:34'),
(40, 'Add New', 'নতুন যোগ করুন', 38, 0, 'fa fa-plus', '/admin/category/add', 'admin.category.create', 1, 1, '2019-03-29 21:52:31', '2019-04-21 00:08:29'),
(41, 'Edit', 'এডিট', 39, 1, 'fa fa-pencil', NULL, 'admin.category.edit', 1, 1, '2019-03-29 21:53:02', '2019-03-29 22:55:28'),
(42, 'Delete', 'ডিলিট', 39, 1, 'fa fa-trash', NULL, 'admin.category.delete', 2, 1, '2019-03-29 21:53:33', '2019-03-29 23:01:25'),
(82, 'Site Settings', 'সাইট সেটিংস', NULL, 0, 'fa fa-sliders', '/admin/setting', 'admin.setting.index', 450, 1, '2019-04-10 22:30:44', '2019-04-11 02:33:10'),
(88, 'Sale', 'বিক্রয়', NULL, 0, 'fa fa-money', NULL, NULL, 2, 1, '2019-04-15 21:53:59', '2019-04-15 21:53:59'),
(89, 'All Sale', 'সকল বিক্রয়', 88, 0, 'fa fa-list-ul', '/admin/sale', 'admin.sale.index', 2, 1, '2019-04-15 22:03:48', '2019-04-21 00:02:07'),
(90, 'New Sale', 'নতুন বিক্রয়', 88, 0, 'fa fa-plus', '/admin/sale/add', 'admin.sale.add', 1, 1, '2019-04-15 22:04:42', '2019-04-21 00:02:10'),
(91, 'Edit', 'ইডিট', 89, 1, 'fa fa-edit', NULL, 'admin.sale.edit', 2, 1, '2019-04-15 22:05:33', '2019-04-15 22:05:33'),
(92, 'Delete', 'ডিলিট', 89, 1, 'fa fa-trash', NULL, 'admin.sale.delete', 3, 1, '2019-04-15 22:06:43', '2019-04-15 22:06:43'),
(93, 'View', 'ভিউ', 89, 1, 'fa fa-eye', NULL, 'admin.sale.view', 1, 1, '2019-04-16 04:13:15', '2019-04-16 04:13:15'),
(94, 'Cost', 'খরচ', NULL, 0, 'fa fa-contao', NULL, NULL, 100, 1, '2019-04-17 00:05:39', '2019-04-20 22:26:08'),
(95, 'Cost List', 'খরচ তালিকা', 94, 0, 'fa fa-list-ul', '/admin/cost', 'admin.cost.index', 2, 1, '2019-04-17 00:29:35', '2019-04-17 00:29:35'),
(96, 'Add New', 'নতুন যোগ করুন', 94, 0, 'fa fa-plus', '/admin/cost/add', 'admin.cost.add', 1, 1, '2019-04-17 00:30:27', '2019-04-17 00:30:27'),
(97, 'Edit', 'এডিট', 95, 1, 'fa fa-edit', NULL, 'admin.cost.edit', 1, 1, '2019-04-17 00:31:30', '2019-04-17 00:31:30'),
(98, 'Delete', 'ডিলিট', 95, 1, 'fa fa-trash', NULL, 'admin.cost.delete', 2, 1, '2019-04-17 00:33:15', '2019-04-17 00:33:15'),
(99, 'View', 'দেখা', 34, 1, 'fa fa-eye', NULL, 'admin.product.view', 1, 1, '2019-04-18 04:15:38', '2019-04-18 04:15:38'),
(100, 'Backup', 'ব্যাকআপ', NULL, 0, 'fa fa-database', '/admin/backup', 'admin.backup.index', 999, 1, '2019-04-19 03:49:55', '2019-06-19 06:27:00'),
(101, 'Action', 'কার্যক্রম', 100, 0, 'fa fa-home', '/admin/backup', 'admin.backup.index', 1, 1, '2019-04-19 03:51:23', '2019-04-19 03:54:34'),
(102, 'Download', 'ডাউনলোড', 101, 1, 'fa fa-download', NULL, 'admin.backup.index', 1, 1, '2019-04-19 03:52:24', '2019-04-19 03:52:24'),
(103, 'Delete', 'ডিলিট', 101, 1, 'fa fa-trash', NULL, 'admin.backup.index', 2, 1, '2019-04-19 03:52:58', '2019-04-19 03:52:58'),
(104, 'Cost Field', 'খরচ ক্ষেত্র', 94, 2, 'fa fa-contao', '/admin/cost_field', 'admin.cost_field.index', 0, 1, '2019-04-20 22:10:13', '2019-04-23 00:03:15'),
(106, 'Edit', 'এডিট', 104, 1, 'fa fa-pencil', NULL, 'admin.cost_field.edit', 1, 1, '2019-04-20 22:12:17', '2019-04-23 00:04:37'),
(107, 'Delete', 'ডিলিট', 104, 1, 'fa fa-trash', NULL, 'admin.cost_field.delete', 2, 1, '2019-04-20 22:13:04', '2019-04-23 00:04:46'),
(108, 'Action', 'একশন', 3, 0, 'fa fa-edit', '/admin/role', 'admin.role.index', 1, 1, '2019-04-23 00:09:44', '2019-04-23 00:11:56'),
(109, 'Balance Sheet', 'ব্যালেন্স শীট', NULL, 0, 'fa fa-money', '/admin/balance_sheet', 'admin.balance_sheet.index', 150, 1, '2019-04-23 01:03:14', '2019-04-23 01:03:14'),
(111, 'Purchase', 'পার্চেস', NULL, 0, 'fa fa-sitemap', NULL, NULL, 110, 1, '2019-06-18 05:22:06', '2019-06-18 08:30:39'),
(112, 'Add Item', 'আইটেম যোগ করুন', 111, 0, 'fa fa-plus', 'admin/purchase/purchase_item/add', 'admin.purchase_item.add', 3, 1, '2019-06-18 05:22:06', '2019-06-18 08:29:40'),
(113, 'Item List', 'আইটেম তালিকা', 111, 0, 'fa fa-list-ul', 'admin/purchase/purchase_item', 'admin.purchase_item.index', 4, 1, '2019-06-18 05:22:06', '2019-06-18 08:29:36'),
(114, 'Edit', 'এডিট', 113, 1, 'fa fa-pencil', '', 'admin.purchase_item.edit', 1, 1, '2019-06-18 05:22:06', '2019-06-18 05:22:06'),
(115, 'Delete', 'ডিলিট', 113, 1, 'fa fa-trash', '', 'admin.purchase_item.delete', 2, 1, '2019-06-18 05:22:06', '2019-06-18 05:22:06'),
(116, 'Add Purchase', 'পার্চেস যোগ করুন', 111, 0, 'fa fa-dollar', '/admin/purchase/add', 'admin.purchase.add', 1, 1, '2019-06-18 05:33:36', '2019-06-18 08:31:04'),
(117, 'Purchase History', 'পার্চেস হিস্টরি', 111, 0, 'fa fa-history', '/admin/purchase', 'admin.purchase.index', 2, 1, '2019-06-18 08:27:34', '2019-06-18 08:27:34'),
(118, 'Edit', 'এডিট', 117, 1, 'fa fa-pencil', '/admin/purchase/edit', 'admin.purchase.edit', 1, 1, '2019-06-18 09:13:12', '2019-06-18 09:13:12'),
(119, 'Delete', 'ডিলিট', 117, 1, 'fa fa-trash', '/admin/purchase/delete', 'admin.purchase.delete', 2, 1, '2019-06-18 09:13:45', '2019-06-18 09:13:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_03_26_200821_create_admins_table', 1),
(2, '2019_03_04_084037_create_menus_table', 1),
(3, '2019_03_05_074453_create_roles_table', 1),
(4, '2019_03_06_090310_create_admin_access_infos_table', 1),
(5, '2019_03_25_140140_create_units_table', 1),
(6, '2019_03_25_140157_create_categories_table', 1),
(7, '2019_03_25_140207_create_sub_categories_table', 1),
(8, '2019_03_25_140231_create_brands_table', 1),
(9, '2019_03_25_140240_create_password_resets_table', 1),
(10, '2019_03_25_140240_create_users_table', 1),
(11, '2019_04_10_152516_create_settings_table', 1),
(12, '2019_04_15_081819_create_products_table', 1),
(13, '2019_04_15_082535_create_sales_table', 1),
(14, '2019_04_15_082553_create_sale_products_table', 1),
(15, '2019_04_15_083217_create_costs_table', 1),
(16, '2019_04_21_043538_create_cost_fields_table', 2),
(17, '2019_06_18_111635_create_purchase_items_table', 3),
(18, '2019_06_18_111935_create_purchase_histories_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regular_sale_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_sale` int(10) UNSIGNED DEFAULT '0',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `category_id`, `description`, `image`, `purchase_price`, `regular_sale_price`, `discount`, `total_sale`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Burger Vegetable', 'burger-vegetable', 1, 'k', 'public/images/products/1560854606.jpg', '0', '60', '0', 0, 0, '2019-06-18 20:43:26', '2019-06-18 23:13:50'),
(2, 'Chicken B.B.Q', 'chicken-b.b.q-1', 2, 'B.B.Q', 'public/images/products/1560863903.jpg', '140', '200', '0', 0, 1, '2019-06-18 21:06:14', '2019-06-18 23:18:23'),
(3, 'Tandury B.B.Q', 'tandury-b.b.q-1', 2, 'h', 'public/images/products/1560857610.jpg', '60', '120', '0', 0, 0, '2019-06-18 21:33:30', '2019-06-18 23:14:02'),
(4, 'Hydrabadi Mutton Dom Biriyani Full', 'hydrabadi-mutton-dom-biriyani-full', 3, 'Hydrabadi Mutton Dom Biriyani Full', 'public/images/products/1560861237.jpg', '280', '320', '0', 0, 1, '2019-06-18 22:33:57', '2019-06-18 22:33:57'),
(5, 'Hydrabadi Mutton Dom Biriyani Half', 'hydrabadi-mutton-dom-biriyani-half', 3, 'Hydrabadi Mutton Dom Biriyani Full', 'public/images/products/1560861297.jpg', '140', '170', '0', 0, 1, '2019-06-18 22:34:58', '2019-06-18 22:34:58'),
(6, 'Hydrabadi Chicken Dom Biriyani Full', 'hydrabadi-chicken-dom-biriyani-full', 3, 'Hydrabadi Chicken Dom Biriyani Full', 'public/images/products/1560861539.jpg', '210', '250', '0', 0, 1, '2019-06-18 22:38:59', '2019-06-18 22:38:59'),
(7, 'Hydrabadi Chicken Dom Biriyani Half', 'hydrabadi-chicken-dom-biriyani-half', 3, 'Hydrabadi Chicken Dom Biriyani Half', 'public/images/products/1560861591.jpg', '110', '140', '0', 0, 1, '2019-06-18 22:39:51', '2019-06-18 22:39:51'),
(8, 'Fride Rice', 'fride-rice', 4, 'Fride Rice', 'public/images/products/1560862060.jpg', '300', '350', '0', 0, 1, '2019-06-18 22:47:40', '2019-06-18 22:47:40'),
(9, 'Chicken Masala / Jhal Fray Full', 'chicken-masala-jhal-fray-full', 4, 'Chicken Masala / Jhal Fray Full', 'public/images/products/1560862787.jpg', '220', '280', '0', 0, 1, '2019-06-18 22:59:47', '2019-06-18 22:59:47'),
(10, 'Mutton Masala / Jhal Fray Full', 'mutton-masala-jhal-fray-full', 4, 'Mutton Masala / Jhal Fray Full', 'public/images/products/1560862992.jpg', '280', '350', '0', 0, 1, '2019-06-18 23:03:12', '2019-06-18 23:03:12'),
(11, 'Rupkatha Special Salad', 'rupkatha-special-salad', 4, 'Rupkatha Special Salad', 'public/images/products/1560863105.jpg', '100', '150', '0', 0, 1, '2019-06-18 23:05:05', '2019-06-18 23:05:05'),
(12, 'Fish Kabab (Rupkatha Special)', 'fish-kabab-(rupkatha-special)', 5, 'Fish Kabab (Rupkatha Special)', 'public/images/products/1560863273.jpg', '0', '0', '0', 0, 1, '2019-06-18 23:07:53', '2019-06-18 23:07:53'),
(13, 'Chicken Kabab', 'chicken-kabab', 5, 'Chicken Kabab', 'public/images/products/1560863369.jpg', '120', '200', '0', 0, 1, '2019-06-18 23:09:29', '2019-06-18 23:09:29'),
(14, 'Mutton Kabab', 'mutton-kabab', 5, 'Mutton Kabab', 'public/images/products/1560863500.jpg', '180', '250', '0', 0, 1, '2019-06-18 23:11:41', '2019-06-18 23:11:41'),
(15, 'Tandury Chicken', 'tandury-chicken', 2, 'Tandury Chicken', 'public/images/products/1560863847.jpg', '80', '120', '0', 0, 1, '2019-06-18 23:17:27', '2019-06-18 23:17:27'),
(16, 'Chicken Burger', 'chicken-burger', 1, 'Chicken Burger', 'public/images/products/1560864074.jpg', '120', '160', '0', 0, 1, '2019-06-18 23:21:14', '2019-06-18 23:21:14'),
(17, 'Chicken Cheese Burger', 'chicken-cheese-burger', 1, 'Chicken Cheese Burger', 'public/images/products/1560864392.jpg', '100', '160', '0', 0, 1, '2019-06-18 23:26:32', '2019-06-18 23:26:32'),
(18, 'Tandury Chicken Burger', 'tandury-chicken-burger', 1, 'Tandury Chicken Burger', 'public/images/products/1560864553.jpg', '130', '180', '0', 0, 1, '2019-06-18 23:29:13', '2019-06-18 23:29:13'),
(19, 'Crispy Chicken Burger', 'crispy-chicken-burger', 1, 'Crispy Chicken Burger', 'public/images/products/1560864645.jpg', '130', '190', '0', 0, 1, '2019-06-18 23:30:45', '2019-06-18 23:30:45'),
(20, 'Fish Burger', 'fish-burger', 1, 'Fish Burger', 'public/images/products/1560864796.jpg', '130', '180', '0', 0, 1, '2019-06-18 23:33:16', '2019-06-18 23:33:16'),
(21, 'Vegetable Burger', 'vegetable-burger', 1, 'Vegetable Burger', 'public/images/products/1560864926.jpg', '50', '100', '0', 0, 1, '2019-06-18 23:35:26', '2019-06-18 23:35:26'),
(22, 'Chicken Pizza- S', 'chicken-pizza-s', 6, 'Chicken Pizza', 'public/images/products/1560865067.jpg', '380', '450', '0', 0, 1, '2019-06-18 23:37:47', '2019-06-18 23:37:47'),
(23, 'Chicken Pizza- M', 'chicken-pizza-m', 6, 'Chicken Pizza', 'public/images/products/1560865118.jpg', '450', '550', '0', 0, 1, '2019-06-18 23:38:38', '2019-06-18 23:38:38'),
(24, 'Chicken Pizza- L', 'chicken-pizza-l', 6, 'Chicken Pizza', 'public/images/products/1560865148.jpg', '500', '600', '0', 0, 1, '2019-06-18 23:39:08', '2019-06-18 23:39:08'),
(25, 'Cheese Pizzaa -S', 'cheese-pizzaa-s', 6, 'Cheese Pizzaa', 'public/images/products/1560865298.jpg', '300', '400', '0', 0, 1, '2019-06-18 23:41:38', '2019-06-18 23:41:38'),
(26, 'Cheese Pizzaa -M', 'cheese-pizzaa-m', 6, 'Cheese Pizzaa -', 'public/images/products/1560865328.jpg', '380', '450', '0', 0, 1, '2019-06-18 23:42:08', '2019-06-18 23:42:08'),
(27, 'Cheese Pizzaa -L', 'cheese-pizzaa-l', 6, 'Cheese Pizzaa -', 'public/images/products/1560865366.jpg', '380', '500', '0', 0, 1, '2019-06-18 23:42:47', '2019-06-18 23:42:47'),
(28, 'Chicken Shawarma', 'chicken-shawarma', 7, 'Chicken Shawarma', 'public/images/products/1561270715.jpg', '100', '120', '0', 0, 1, '2019-06-23 16:18:35', '2019-06-23 16:18:35'),
(29, 'Shawarma With Cheese', 'shawarma-with-cheese', 7, 'Shawarma With Cheese', 'public/images/products/1561271116.jpg', '120', '170', '0', 0, 1, '2019-06-23 16:25:16', '2019-06-23 16:25:16'),
(30, 'Fish Shawarma', 'fish-shawarma', 7, 'Fish Shawarma', 'public/images/products/1561271313.jpg', '100', '150', '0', 0, 1, '2019-06-23 16:28:33', '2019-06-23 16:28:33'),
(31, 'Vegetable Shawarma', 'vegetable-shawarma', 7, 'Vegetable Shawarma', 'public/images/products/1561271481.jpg', '100', '140', '0', 0, 1, '2019-06-23 16:31:21', '2019-06-23 16:31:21'),
(32, 'French Fries', 'french-fries', 8, 'French Fries', 'public/images/products/1561271727.jpg', '60', '100', '0', 0, 1, '2019-06-23 16:35:27', '2019-06-23 16:35:27'),
(33, 'Naan', 'naan', 8, 'Naan', 'public/images/products/1561271859.jpg', '10', '25', '0', 0, 1, '2019-06-23 16:37:39', '2019-06-23 16:37:39'),
(34, 'Butter Naan', 'butter-naan', 8, 'Butter Naan', 'public/images/products/1561271925.jpg', '30', '50', '0', 0, 1, '2019-06-23 16:38:45', '2019-06-23 16:38:45'),
(35, 'Shrimp Pasta', 'shrimp-pasta-1', 9, 'Shrimp Pasta', 'public/images/products/1561272808.jpg', '200', '280', '0', 0, 1, '2019-06-23 16:53:28', '2019-06-23 16:55:43'),
(36, 'Chicken Breast Pasta', 'chicken-breast-pasta', 9, 'Chicken Breast Pasta', 'public/images/products/1561272932.jpg', '200', '270', '0', 0, 1, '2019-06-23 16:55:32', '2019-06-23 16:55:32'),
(37, 'Vegetable Pasta', 'vegetable-pasta', 9, 'Vegetable Pasta', 'public/images/products/1561273066.jpg', '120', '200', '0', 0, 1, '2019-06-23 16:57:46', '2019-06-23 16:57:46'),
(38, 'R.K Special Pasta', 'r.k-special-pasta', 9, 'R.K Special Pasta', 'public/images/products/1561273178.jpg', '200', '300', '0', 0, 1, '2019-06-23 16:59:38', '2019-06-23 16:59:38'),
(39, 'Fresh Mix Fruits', 'fresh-mix-fruits', 11, 'Fresh Mix Fruits', 'public/images/products/1561273403.jpg', '100', '150', '0', 0, 1, '2019-06-23 17:03:23', '2019-06-23 17:03:23'),
(40, 'Apple Juice', 'apple-juice', 11, 'Apple Juice', 'public/images/products/1561273466.jpg', '50', '120', '0', 0, 1, '2019-06-23 17:04:26', '2019-06-23 17:04:26'),
(41, 'Lemon Juice', 'lemon-juice', 11, 'Lemon Juice', 'public/images/products/1561273535.jpg', '20', '40', '0', 0, 1, '2019-06-23 17:05:35', '2019-06-23 17:05:35'),
(42, 'Pineapple Juice', 'pineapple-juice', 11, 'Pineapple Juice', 'public/images/products/1561273624.jpg', '50', '100', '0', 0, 1, '2019-06-23 17:07:04', '2019-06-23 17:07:04'),
(43, 'Malta Orange Juice', 'malta-orange-juice', 11, 'Malta Orange Juice', 'public/images/products/1561273704.jpg', '60', '120', '0', 0, 1, '2019-06-23 17:08:25', '2019-06-23 17:08:25'),
(44, 'Lassi (Regular)', 'lassi-(regular)', 12, 'Lassi (Regular)', 'public/images/products/1561273841.jpg', '60', '100', '0', 0, 1, '2019-06-23 17:10:41', '2019-06-23 17:10:41'),
(45, 'Pepsi', 'pepsi-1', 13, 'Pepsi', 'public/images/products/1561274002.jpg', '0', '15', '0', 0, 1, '2019-06-23 17:13:22', '2019-06-23 20:20:16'),
(46, 'Coca Cola', 'coca-cola-1', 13, 'Coca Cola', 'public/images/products/1561274059.jpg', '0', '18', '0', 0, 1, '2019-06-23 17:14:20', '2019-06-23 20:23:39'),
(47, 'Dew', 'dew', 13, 'Dew', 'public/images/products/1561274157.jpg', '0', '30', '0', 0, 1, '2019-06-23 17:15:57', '2019-06-23 21:22:27'),
(48, 'Seven Up', 'seven-up', 13, 'Seven Up', 'public/images/products/1561274213.jpg', '0', '16', '0', 0, 1, '2019-06-23 17:16:53', '2019-06-23 20:56:38'),
(49, 'Marinda', 'marinda-1', 13, 'Marinda', 'public/images/products/1561274277.jpg', '0', '30', '0', 0, 1, '2019-06-23 17:17:57', '2019-06-23 20:37:01'),
(50, 'Mineral Water- 500ml', 'mineral-water-500ml', 13, 'Mineral Water', 'public/images/products/1561274369.jpg', '0', '15', '0', 0, 1, '2019-06-23 17:19:29', '2019-06-23 20:05:14'),
(51, 'Chicken Corn Soup', 'chicken-corn-soup', 14, 'Chicken Corn Soup', 'public/images/products/1561274754.jpg', '60', '110', '0', 0, 1, '2019-06-23 17:25:54', '2019-06-23 17:25:54'),
(52, 'Thai Soup', 'thai-soup', 14, 'Thai Soup', 'public/images/products/1561274824.jpg', '60', '120', '0', 0, 1, '2019-06-23 17:27:04', '2019-06-23 17:27:04'),
(53, 'Vegetable Soup (Clear)', 'vegetable-soup-(clear)', 14, 'Vegetable Soup (Clear)', 'public/images/products/1561274937.jpg', '50', '95', '0', 0, 1, '2019-06-23 17:28:57', '2019-06-23 17:28:57'),
(54, 'Regular Coffee', 'regular-coffee', 15, 'Regular Coffee', 'public/images/products/1561275104.jpg', '30', '60', '0', 0, 1, '2019-06-23 17:31:44', '2019-06-23 17:31:44'),
(55, 'Black Coffee', 'black-coffee', 15, 'Black Coffee', 'public/images/products/1561275170.jpg', '25', '50', '0', 0, 1, '2019-06-23 17:32:50', '2019-06-23 17:32:50'),
(56, 'Cappuccino Coffee', 'cappuccino-coffee', 15, 'Cappuccino Coffee', 'public/images/products/1561275281.jpg', '50', '80', '0', 0, 1, '2019-06-23 17:34:41', '2019-06-23 17:34:41'),
(57, 'Latte Coffee', 'latte-coffee', 15, 'Latte Coffee', 'public/images/products/1561275356.jpg', '70', '120', '0', 0, 1, '2019-06-23 17:35:56', '2019-06-23 17:35:56'),
(58, 'Cold Coffee', 'cold-coffee', 15, 'Cold Coffee', 'public/images/products/1561275438.jpg', '40', '80', '0', 0, 1, '2019-06-23 17:37:18', '2019-06-23 17:37:18'),
(59, 'Cold Coffee With Ice Cream', 'cold-coffee-with-ice-cream', 15, 'Cold Coffee With Ice Cream', 'public/images/products/1561275538.jpg', '80', '130', '0', 0, 1, '2019-06-23 17:38:59', '2019-06-23 17:38:59'),
(60, 'Special Faluda', 'special-faluda', 16, 'Special Faluda', 'public/images/products/1561275697.jpg', '100', '150', '0', 0, 1, '2019-06-23 17:41:37', '2019-06-23 17:41:37'),
(61, 'Faluda Ice Cream', 'faluda-ice-cream', 16, 'Faluda Ice Cream', 'public/images/products/1561275809.jpg', '0', '0', '0', 0, 1, '2019-06-23 17:43:29', '2019-06-23 17:43:29'),
(62, 'Mineral Water- 1000ml', 'mineral-water-1000ml', 13, 'Mineral Water- 1000ml', 'public/images/products/1561284966.jpg', '0', '20', '0', 0, 1, '2019-06-23 20:16:06', '2019-06-23 20:16:06'),
(63, 'Mineral Water- 1500ml', 'mineral-water-1500ml', 13, 'Mineral Water- 1000ml', 'public/images/products/1561285006.jpg', '0', '25', '0', 0, 1, '2019-06-23 20:16:46', '2019-06-23 20:16:46'),
(64, 'Mineral Water- 2000ml', 'mineral-water-2000ml', 13, 'Mineral Water- 1000ml', 'public/images/products/1561285030.jpg', '0', '30', '0', 0, 1, '2019-06-23 20:17:10', '2019-06-23 20:17:10'),
(65, 'Pepsi .', 'pepsi-.', 13, 'Pepsi', 'public/images/products/1561285302.jpg', '0', '18', '0', 0, 1, '2019-06-23 20:21:42', '2019-06-23 20:21:42'),
(66, 'Coca Cola 500ml', 'coca-cola-500ml', 13, 'Coca-Cola', 'public/images/products/1561285519.jpg', '0', '35', '0', 0, 1, '2019-06-23 20:25:19', '2019-06-23 20:25:19'),
(67, 'Coca Cola- 1000ml', 'coca-cola-1000ml', 13, 'Coca-Cola', 'public/images/products/1561285553.jpg', '0', '60', '0', 0, 1, '2019-06-23 20:25:53', '2019-06-23 20:25:53'),
(68, 'Dew 400ml', 'dew-400ml', 13, 'dew', 'public/images/products/1561285716.jpg', '0', '30', '0', 0, 1, '2019-06-23 20:28:37', '2019-06-23 20:28:37'),
(69, 'Dew 200ml', 'dew-200ml', 13, 'dew', 'public/images/products/1561285848.jpg', '0', '16', '0', 0, 1, '2019-06-23 20:30:48', '2019-06-23 20:30:48'),
(70, 'Coca Cola 2000ml', 'coca-cola-2000ml', 13, 'jh', 'public/images/products/1561288860.jpg', '95', '110', '0', 0, 1, '2019-06-23 21:21:00', '2019-06-23 21:21:00'),
(71, 'Test Product 1', 'test-product-1', 16, 'Test Product 1 Description', 'public/images/products/1561359284.png', '156.156', '204.204', '0', 0, 1, '2019-06-24 16:54:44', '2019-06-24 16:54:44');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_histories`
--

CREATE TABLE `purchase_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `voucher` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'current time',
  `purchase_item_id` int(11) NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_histories`
--

INSERT INTO `purchase_histories` (`id`, `voucher`, `purchase_item_id`, `price`, `quantity`, `unit`, `purchase_date`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, '0', 1, '45', '1', NULL, '2019-06-18', NULL, 1, '2019-06-18 21:54:17', '2019-06-18 21:54:17'),
(2, '0', 2, '950', '2', NULL, '2019-06-18', NULL, 1, '2019-06-18 21:54:17', '2019-06-18 21:54:17'),
(3, '0', 1, '45', '10', NULL, '2019-06-18', NULL, 1, '2019-06-18 21:54:17', '2019-06-18 21:54:17'),
(4, '0', 3, '864', '1', NULL, '2019-06-18', NULL, 9, '2019-06-18 22:09:52', '2019-06-18 22:10:19'),
(5, '0', 77, '0', '1.1', NULL, '2019-06-23', NULL, 1, '2019-06-23 20:50:10', '2019-06-23 20:50:10'),
(6, '0', 77, '23', '3.5', NULL, '2019-06-23', NULL, 1, '2019-06-23 21:08:34', '2019-06-23 21:08:34'),
(7, '0', 51, '16', '4.3', NULL, '2019-06-23', NULL, 1, '2019-06-23 21:08:34', '2019-06-23 21:08:34'),
(8, '0', 42, '8', '50', NULL, '2019-06-23', NULL, 1, '2019-06-23 21:43:00', '2019-06-23 21:43:00'),
(9, '0', 56, '15', '10', NULL, '2019-06-23', NULL, 1, '2019-06-23 21:43:00', '2019-06-23 21:43:00'),
(10, '0', 60, '50', '1', NULL, '2019-06-23', NULL, 1, '2019-06-23 21:43:00', '2019-06-23 21:43:00'),
(11, '0', 54, '50', '5', NULL, '2019-06-23', NULL, 1, '2019-06-23 21:43:00', '2019-06-23 21:43:00'),
(12, '0', 77, '40', '1', NULL, '2019-06-23', NULL, 1, '2019-06-23 21:43:00', '2019-06-23 21:43:00'),
(13, '0', 39, '30', '1', NULL, '2019-06-23', NULL, 1, '2019-06-23 21:43:00', '2019-06-23 21:43:00'),
(14, '0', 77, '250', '100', NULL, '2019-06-23', NULL, 9, '2019-06-23 22:30:34', '2019-06-23 22:32:03'),
(15, '0', 78, '25', '22.5', NULL, '2019-06-23', NULL, 9, '2019-06-23 22:31:18', '2019-06-23 22:32:08'),
(16, '0', 76, '15', '15.5', NULL, '2019-06-23', NULL, 1, '2019-06-23 22:31:18', '2019-06-23 22:31:18'),
(17, '0', 77, '15.5', '1.5', NULL, '2019-06-24', NULL, 1, '2019-06-24 14:00:18', '2019-06-24 14:00:18'),
(18, '0', 75, '110', '1', NULL, '2019-06-24', NULL, 9, '2019-06-24 20:08:43', '2019-06-24 20:08:54'),
(19, '0', 74, '10', '100', NULL, '2019-06-24', NULL, 9, '2019-06-24 20:08:43', '2019-06-24 20:08:59'),
(20, '0', 78, '10', '10', NULL, '2019-06-26', NULL, 1, '2019-06-26 15:45:26', '2019-06-26 15:45:26'),
(21, '0', 77, '1', '20', NULL, '2019-06-26', NULL, 1, '2019-06-26 15:45:26', '2019-06-26 15:45:26'),
(22, '0', 76, '122', '30', NULL, '2019-06-26', NULL, 1, '2019-06-26 15:45:26', '2019-06-26 15:45:26'),
(23, '0', 78, '1', '40', NULL, '2019-06-26', NULL, 1, '2019-06-26 15:45:26', '2019-06-26 15:45:26'),
(24, '0', 78, '40', '5', NULL, '2019-06-26', NULL, 1, '2019-06-26 16:23:24', '2019-06-26 16:23:24'),
(25, '0', 76, '20', '2', NULL, '2019-06-26', NULL, 1, '2019-06-26 16:23:24', '2019-06-26 16:23:24'),
(26, '0', 78, '20', '1', NULL, '2019-06-26', NULL, 1, '2019-06-26 19:45:08', '2019-06-26 19:45:08'),
(27, '0', 77, '30', '1', NULL, '2019-06-26', NULL, 1, '2019-06-26 19:45:08', '2019-06-26 19:45:08'),
(28, '0', 78, '12', '12', NULL, '2019-06-26', NULL, 1, '2019-06-26 20:09:04', '2019-06-26 20:09:04'),
(29, '0', 77, '2', '2', NULL, '2019-06-26', NULL, 1, '2019-06-26 20:09:04', '2019-06-26 20:09:04'),
(30, '0', 78, '12', '12', NULL, '2019-06-26', NULL, 1, '2019-06-26 20:11:22', '2019-06-26 20:47:22'),
(31, '0', 77, '2', '12.21', NULL, '2019-06-26', NULL, 1, '2019-06-26 20:12:56', '2019-06-26 20:12:56'),
(32, '0', 77, '12', '12.10', NULL, '2019-06-26', NULL, 1, '2019-06-26 20:12:56', '2019-06-26 20:12:56'),
(33, '0', 78, '12', '122', NULL, '2019-06-26', NULL, 1, '2019-06-26 20:14:59', '2019-06-26 20:14:59'),
(34, '0', 76, '12', '2', NULL, '2019-06-26', NULL, 1, '2019-06-26 20:16:58', '2019-06-26 20:16:58'),
(35, '1561544533716', 77, '12', '2', NULL, '2019-06-26', NULL, 1, '2019-06-26 20:22:13', '2019-06-26 20:22:13'),
(36, '1561545450782', 76, '321', '1', NULL, '2019-06-26', NULL, 1, '2019-06-26 20:37:30', '2019-06-26 20:37:30'),
(37, '1561545515235', 76, '12', '213', NULL, '2019-06-26', NULL, 1, '2019-06-26 20:38:35', '2019-06-26 20:38:35'),
(38, '1561545515235', 74, '213', '2', NULL, '2019-06-26', NULL, 1, '2019-06-26 20:38:35', '2019-06-26 20:38:35'),
(39, '1561545515235', 75, '12', '12', NULL, '2019-06-26', NULL, 1, '2019-06-26 20:38:35', '2019-06-26 20:38:35'),
(40, '0', 78, '12', '12', NULL, '2019-06-26', NULL, 1, '2019-06-26 20:41:17', '2019-06-26 20:41:17'),
(41, '0', 78, '12', '12', NULL, '2019-06-26', NULL, 1, '2019-06-26 20:41:29', '2019-06-26 20:41:29');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_items`
--

INSERT INTO `purchase_items` (`id`, `title`, `regular_price`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Flower Packet', '45', 'Flower', 1, '2019-06-18 21:06:59', '2019-06-18 21:52:37'),
(2, 'Ghee', '950', 'Ghee', 1, '2019-06-18 21:50:25', '2019-06-18 21:50:25'),
(3, 'Excepturi cillum ali', '864', 'Incidunt temporibus', 9, '2019-06-18 22:09:24', '2019-06-18 22:10:29'),
(4, 'ব্রয়লার মুরগি', '0', 'ব্রয়লার মুরগি', 1, '2019-06-22 02:23:48', '2019-06-22 02:23:48'),
(5, 'সোনালী মুরগি', '0', 'সোনালী মুরগি', 1, '2019-06-22 02:24:15', '2019-06-22 02:24:15'),
(6, 'খাসীর মাংস', '0', 'খাসীর মাংস', 1, '2019-06-22 02:24:37', '2019-06-22 02:24:37'),
(7, 'মাছ', '0', 'মাছ', 1, '2019-06-22 02:24:55', '2019-06-22 02:24:55'),
(8, 'জেলি', '0', 'জেলি', 1, '2019-06-22 02:25:16', '2019-06-22 02:25:16'),
(9, 'আইস ক্রিম', '0', 'আইস ক্রিম', 1, '2019-06-22 02:26:40', '2019-06-22 02:26:40'),
(10, 'কফি', '0', 'কফি', 1, '2019-06-22 02:27:02', '2019-06-22 02:27:02'),
(11, 'ঘি', '0', 'ঘি', 1, '2019-06-22 02:27:18', '2019-06-22 02:27:52'),
(12, 'দুধ', '0', 'দুধ', 1, '2019-06-22 02:28:07', '2019-06-22 02:28:07'),
(13, 'সয়াবিন তেল', '0', 'সয়াবিন তেল', 1, '2019-06-22 02:28:33', '2019-06-22 02:28:33'),
(14, 'বিরিয়ানি চাল', '0', 'বিরিয়ানি চাল', 1, '2019-06-22 02:28:50', '2019-06-22 02:28:50'),
(15, 'পোলাও চাল', '0', 'পোলাও চাল', 1, '2019-06-22 02:29:05', '2019-06-22 02:29:05'),
(16, 'পাতা কপি', '0', 'পাতা কপি', 1, '2019-06-22 02:29:30', '2019-06-22 02:29:30'),
(17, 'বরবটি', '0', 'বরবটি', 1, '2019-06-22 02:29:44', '2019-06-22 02:29:44'),
(18, 'মটরসুুটি', '0', 'মটরসুুটি', 1, '2019-06-22 02:30:06', '2019-06-22 02:30:06'),
(19, 'সিম', '0', 'সিম', 1, '2019-06-22 02:30:20', '2019-06-22 02:30:20'),
(20, 'গাজর', '0', 'গাজর', 1, '2019-06-22 02:30:34', '2019-06-22 02:30:34'),
(21, 'শসা', '0', 'শসা', 1, '2019-06-22 02:31:17', '2019-06-22 02:31:17'),
(22, 'লেবু', '0', 'লেবু', 1, '2019-06-22 02:31:32', '2019-06-22 02:31:32'),
(23, 'পেঁয়াজ', '0', 'পেঁয়াজ', 1, '2019-06-22 02:32:40', '2019-06-22 02:32:40'),
(24, 'আদা', '0', 'আদা', 1, '2019-06-22 02:33:18', '2019-06-22 02:33:18'),
(25, 'রসুন', '0', 'রসুন', 1, '2019-06-22 02:33:35', '2019-06-22 02:33:35'),
(26, 'জিরা', '0', 'জিরা', 1, '2019-06-22 02:34:17', '2019-06-22 02:34:17'),
(27, 'মরিচ', '0', 'মরিচ', 1, '2019-06-22 02:34:32', '2019-06-22 02:34:32'),
(28, 'দারুচিনি', '0', 'দারুচিনি', 1, '2019-06-22 02:34:55', '2019-06-22 02:34:55'),
(29, 'লবঙ্গ', '0', 'লবঙ্গ', 1, '2019-06-22 02:35:27', '2019-06-22 02:35:27'),
(30, 'এলাচ', '0', 'এলাচ', 1, '2019-06-22 02:35:38', '2019-06-22 02:35:38'),
(31, 'কাজু বাদাম', '0', 'কাজু বাদাম', 1, '2019-06-22 02:36:03', '2019-06-22 02:36:03'),
(32, 'কোকাকোলা', '0', 'কোকাকোলা', 1, '2019-06-22 02:36:27', '2019-06-22 02:36:27'),
(33, 'পেপসি', '0', 'পেপসি', 1, '2019-06-22 02:36:48', '2019-06-22 02:36:48'),
(34, 'স্প্রাইট', '0', 'স্প্রাইট', 1, '2019-06-22 02:37:26', '2019-06-22 02:37:26'),
(35, 'ডিউ', '0', 'ডিউ', 1, '2019-06-22 02:37:55', '2019-06-22 02:37:55'),
(36, 'সেভেন আপ', '0', 'সেভেন আপ', 1, '2019-06-22 02:38:21', '2019-06-22 02:38:21'),
(37, 'স্পিড এনার্জি ড্রিংক', '0', 'স্পিড এনার্জি ড্রিংক', 1, '2019-06-22 02:39:58', '2019-06-22 02:39:58'),
(38, 'সাবান', '0', 'সাবান', 1, '2019-06-22 02:40:27', '2019-06-22 02:40:27'),
(39, 'ভিম বার', '0', 'ভিম বার', 1, '2019-06-22 02:40:39', '2019-06-22 02:40:39'),
(40, 'ভিম লিকুইড', '0', 'ভিম লিকুইড', 9, '2019-06-22 02:41:05', '2019-06-22 02:41:13'),
(41, 'ভিম লিকুইড', '0', 'ভিম লিকুইড', 1, '2019-06-22 02:41:38', '2019-06-22 02:41:38'),
(42, 'ডিম', '0', 'ডিম', 1, '2019-06-22 02:42:08', '2019-06-22 02:42:08'),
(43, 'ফালুদা স্ট্র', '0', 'ফালুদা স্ট্র', 1, '2019-06-22 02:42:21', '2019-06-22 02:42:21'),
(44, 'লাচ্চি স্ট্র', '0', 'লাচ্চি স্ট্র', 1, '2019-06-22 02:42:40', '2019-06-22 02:42:40'),
(45, 'কয়েল', '0', 'কয়েল', 1, '2019-06-22 02:43:00', '2019-06-22 02:43:00'),
(46, 'এয়ার ফ্রেশনার', '0', 'এয়ার ফ্রেশনার', 1, '2019-06-22 02:43:20', '2019-06-22 02:43:20'),
(47, 'হ্যান্ড ওয়াস', '0', 'হ্যান্ড ওয়াস', 1, '2019-06-22 02:43:41', '2019-06-22 02:43:41'),
(48, 'কাচা মরিচ', '0', 'কাচা মরিচ', 1, '2019-06-22 02:44:19', '2019-06-22 02:44:19'),
(49, 'কমলা', '0', 'কমলা', 1, '2019-06-22 02:44:43', '2019-06-22 02:44:43'),
(50, 'মাল্টা', '0', 'মাল্টা', 1, '2019-06-22 02:45:02', '2019-06-22 02:45:02'),
(51, 'আপেল', '0', 'আপেল', 1, '2019-06-22 02:45:19', '2019-06-22 02:45:19'),
(52, 'আঙ্গুর', '0', 'আঙ্গুর', 1, '2019-06-22 02:45:47', '2019-06-22 02:45:47'),
(53, 'বেদেনা', '0', 'বেদেনা', 1, '2019-06-22 02:46:07', '2019-06-22 02:46:07'),
(54, 'আম', '0', 'আম', 1, '2019-06-22 02:46:16', '2019-06-22 02:46:16'),
(55, 'কলা', '0', 'কলা', 1, '2019-06-22 02:46:40', '2019-06-22 02:46:40'),
(56, 'পেঁপে', '0', 'পেঁপে', 1, '2019-06-22 02:47:10', '2019-06-22 02:47:10'),
(57, 'কাজু বাদাম', '0', 'কাজু বাদাম', 1, '2019-06-22 02:47:30', '2019-06-22 02:47:30'),
(58, 'ড্রাই চিলি', '0', 'ড্রাই চিলি', 1, '2019-06-23 16:05:37', '2019-06-23 16:05:37'),
(59, 'ব্রেকিং পাউডার', '0', 'ব্রেকিং পাউডার', 1, '2019-06-23 16:06:05', '2019-06-23 16:06:05'),
(60, 'চাট মসলা', '0', 'চাট মসলা', 1, '2019-06-23 16:06:23', '2019-06-23 16:06:23'),
(61, 'ছস', '0', 'ছস', 1, '2019-06-23 16:06:52', '2019-06-23 16:06:52'),
(62, 'গোলাপ পানি', '0', 'গোলাপ পানি', 1, '2019-06-23 16:07:12', '2019-06-23 16:07:12'),
(63, 'কেওড়া পানি', '0', 'কেওড়া পানি', 1, '2019-06-23 16:07:29', '2019-06-23 16:07:29'),
(64, 'ধনে গুড়া', '0', 'ধনে গুড়া', 1, '2019-06-23 16:07:58', '2019-06-23 16:07:58'),
(65, 'ধনে পাতা', '0', 'ধনে পাতা', 1, '2019-06-23 16:08:13', '2019-06-23 16:08:13'),
(66, 'গোল মরিচ', '0', 'গোল মরিচ', 1, '2019-06-23 16:08:32', '2019-06-23 16:08:32'),
(67, 'চিনি', '0', 'চিনি', 1, '2019-06-23 16:08:44', '2019-06-23 16:08:44'),
(68, 'ক্যাপসি ক্যাপ', '0', 'ক্যাপসি ক্যাপ', 1, '2019-06-23 16:09:32', '2019-06-23 16:09:32'),
(69, 'সাবু', '0', 'সাবু', 1, '2019-06-23 16:09:56', '2019-06-23 16:09:56'),
(70, 'সয়াছস', '0', 'সাবু', 1, '2019-06-23 16:10:57', '2019-06-23 16:10:57'),
(71, 'সিসকা', '0', 'সিসকা', 1, '2019-06-23 16:11:13', '2019-06-23 16:11:13'),
(72, 'লিকুইড চকলেট', '0', 'লিকুইড চকলেট', 1, '2019-06-23 16:11:42', '2019-06-23 16:11:42'),
(73, 'চকলেট পাউডার', '0', 'চকলেট পাউডার', 1, '2019-06-23 16:12:19', '2019-06-23 16:12:19'),
(74, 'পাস্তা', '0', 'পাস্তা', 1, '2019-06-23 16:13:24', '2019-06-23 16:13:24'),
(75, 'বিট লবন', '0', 'বিট লবন', 1, '2019-06-23 16:13:52', '2019-06-23 16:13:52'),
(76, 'সাদা লবন', '0', 'সাদা লবন', 1, '2019-06-23 16:14:05', '2019-06-23 16:14:05'),
(77, 'টেস্টিং লবন', '0', 'টেস্টিং লবন', 1, '2019-06-23 16:14:20', '2019-06-23 16:14:20'),
(78, 'বাসমতি লবন', '0', 'বাসমতি লবন', 1, '2019-06-23 16:14:42', '2019-06-23 16:14:42');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_menu` text COLLATE utf8mb4_unicode_ci,
  `in_body` text COLLATE utf8mb4_unicode_ci,
  `role` tinyint(3) UNSIGNED NOT NULL,
  `admin_id` int(10) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `menu`, `sub_menu`, `in_body`, `role`, `admin_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '[\"6\",\"88\",\"33\",\"38\",\"94\",\"111\",\"109\",\"82\",\"3\",\"4\",\"100\"]', '[\"104\",\"101\",\"40\",\"108\",\"35\",\"116\",\"39\",\"34\",\"96\",\"95\",\"90\",\"89\",\"117\",\"113\",\"112\"]', '[\"93\",\"102\",\"103\",\"92\",\"114\",\"5\",\"37\",\"119\",\"91\",\"118\",\"36\",\"97\",\"42\",\"106\",\"107\",\"41\",\"98\",\"99\",\"115\"]', 1, 1, 1, '2019-04-15 03:12:29', '2019-06-26 20:57:40'),
(2, '[\"6\",\"88\",\"33\",\"38\",\"94\",\"111\"]', '[\"104\",\"116\",\"40\",\"96\",\"35\",\"90\",\"39\",\"34\",\"89\",\"95\",\"117\",\"112\",\"113\"]', '[\"93\",\"114\",\"115\",\"92\",\"119\",\"118\",\"37\",\"97\",\"91\",\"106\",\"36\",\"41\",\"42\",\"99\",\"107\",\"98\"]', 3, 3, 1, '2019-06-19 20:12:55', '2019-06-23 18:08:14');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` float(10,2) DEFAULT '0.00' COMMENT 'in TK',
  `discount_2` float(10,2) NOT NULL DEFAULT '0.00' COMMENT 'in %',
  `vat` float(10,2) NOT NULL DEFAULT '0.00',
  `total_price_after_discount` float(10,2) DEFAULT NULL,
  `total_product` double(8,2) NOT NULL,
  `given_money` double(8,2) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `admin_id`, `customer_name`, `customer_mobile`, `total_price`, `discount`, `discount_2`, `vat`, `total_price_after_discount`, `total_product`, `given_money`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Rimat', '01710511241', '200.00', 0.00, 0.00, 0.00, 200.00, 1.00, 200.00, 1, '2019-06-18 21:12:12', '2019-06-18 21:12:12'),
(2, 1, 'S.M.Sujan', '01402005516', '300.00', 100.00, 0.00, 0.00, 0.00, 5.00, 100.00, 1, '2019-06-18 21:13:01', '2019-06-18 21:13:01'),
(3, 1, NULL, NULL, '380.00', 0.00, 0.00, 0.00, 380.00, 3.00, 500.00, 1, '2019-06-18 21:42:40', '2019-06-18 21:42:40'),
(4, 1, NULL, NULL, '380.00', 0.00, 0.00, 0.00, 380.00, 3.00, 500.00, 1, '2019-06-18 21:43:56', '2019-06-18 21:43:56'),
(5, 1, 'Sabbir', '01234567890', '200.00', 15.00, 0.00, 15.00, 200.00, 1.00, 500.00, 1, '2019-06-19 22:32:30', '2019-06-19 22:32:30'),
(6, 1, 'fdhfghfg', '123456798', '200.00', 0.00, 0.00, 15.00, 230.00, 1.00, 300.00, 1, '2019-06-19 23:29:55', '2019-06-19 23:29:55'),
(7, 1, 'Sabbir', '4564651451', '200.00', 0.00, 0.00, 15.00, 230.00, 1.00, 300.00, 1, '2019-06-19 23:36:05', '2019-06-19 23:36:05'),
(8, 1, 'AfzalSabbir', '184792936382', '890.00', 15.00, 0.00, 15.00, 890.00, 4.00, 1000.00, 1, '2019-06-20 00:15:44', '2019-06-20 00:15:44'),
(9, 1, 'fgdfg', '132456', '500.00', 0.00, 0.00, 15.00, 575.00, 1.00, 600.00, 1, '2019-06-20 15:09:51', '2019-06-20 15:09:51'),
(10, 1, 'sabbir', '454564545', '750.00', 0.00, 0.00, 15.00, 862.50, 3.00, 1200.00, 1, '2019-06-20 18:25:25', '2019-06-20 18:25:25'),
(11, 1, NULL, NULL, '320.00', 20.00, 0.00, 0.00, 300.00, 1.00, 500.00, 1, '2019-06-22 14:06:03', '2019-06-22 14:06:03'),
(12, 1, NULL, NULL, '520.00', 0.00, 0.00, 15.00, 598.00, 2.00, 1000.00, 1, '2019-06-22 16:23:23', '2019-06-22 16:23:23'),
(13, 1, 'Sabbir', '4646465456', '740.00', 0.00, 0.00, 15.00, 851.00, 3.00, 900.00, 1, '2019-06-22 16:28:48', '2019-06-22 16:28:48'),
(14, 1, 'asdsad', '5146546', '350.00', 0.00, 0.00, 15.00, 402.50, 2.00, 500.00, 1, '2019-06-22 16:32:55', '2019-06-22 16:32:55'),
(15, 1, NULL, NULL, '770.00', 70.00, 0.00, 15.00, 815.50, 3.00, 820.00, 1, '2019-06-22 16:34:04', '2019-06-22 16:34:04'),
(16, 1, NULL, NULL, '630.00', 0.00, 0.00, 15.00, 724.50, 4.00, 800.00, 1, '2019-06-23 16:44:20', '2019-06-23 16:44:20'),
(17, 1, NULL, NULL, '690.00', 0.00, 0.00, 15.00, 793.50, 3.00, 1000.00, 1, '2019-06-23 16:45:13', '2019-06-23 16:45:13'),
(18, 1, NULL, NULL, '180.00', 10.00, 0.00, 15.00, 197.00, 2.00, 200.00, 1, '2019-06-23 20:02:24', '2019-06-23 20:02:24'),
(19, 1, NULL, NULL, '391.00', 0.00, 0.00, 15.00, 449.65, 9.00, 500.00, 1, '2019-06-23 20:58:55', '2019-06-23 20:58:55'),
(20, 1, NULL, NULL, '170.00', 53.00, 10.00, 100.00, 270.00, 1.00, 300.00, 1, '2019-06-24 16:20:36', '2019-06-24 16:20:36'),
(21, 1, 'Sabbir', '123456789', '224.62', 0.00, 0.00, 0.00, 224.62, 1.10, 300.00, 1, '2019-06-24 16:56:58', '2019-06-24 16:56:58'),
(22, 1, NULL, NULL, '940.00', 10.00, 0.00, 0.00, 930.00, 4.00, 1200.00, 1, '2019-06-25 00:57:58', '2019-06-25 00:57:58'),
(23, 1, NULL, NULL, '3,040.00', 0.00, 0.00, 0.00, 3040.00, 9.50, 4000.00, 1, '2019-06-25 14:40:42', '2019-06-25 14:40:42'),
(24, 1, NULL, NULL, '2,664.00', 2000.00, 20.00, 0.00, 131.20, 19.00, 10000.00, 1, '2019-06-25 21:39:49', '2019-06-25 21:39:49'),
(25, 1, NULL, NULL, '670.00', 0.00, 10.00, 0.00, 603.00, 3.00, 2000.00, 1, '2019-06-26 02:27:31', '2019-06-26 02:27:31'),
(26, 1, NULL, NULL, '1,600.00', 100.00, 0.00, 0.00, 1500.00, 10.00, 1500.00, 1, '2019-06-26 15:33:06', '2019-06-26 15:33:06'),
(27, 1, NULL, NULL, '2,430.00', 0.00, 0.00, 0.00, 2430.00, 11.00, 2500.00, 1, '2019-06-26 20:49:42', '2019-06-26 20:49:42'),
(28, 1, NULL, NULL, '1,270.00', 0.00, 0.00, 0.00, 1270.00, 7.00, 2000.00, 1, '2019-06-26 21:04:16', '2019-06-26 21:04:16');

-- --------------------------------------------------------

--
-- Table structure for table `sale_products`
--

CREATE TABLE `sale_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` double(8,2) NOT NULL DEFAULT '1.00',
  `price` double(8,2) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `sale_products`
--

INSERT INTO `sale_products` (`id`, `sale_id`, `product_id`, `quantity`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1.00, 200.00, 1, NULL, NULL),
(2, 2, 1, 5.00, 60.00, 1, NULL, NULL),
(3, 3, 2, 1.00, 200.00, 1, NULL, NULL),
(4, 3, 3, 1.00, 120.00, 1, NULL, NULL),
(5, 3, 1, 1.00, 60.00, 1, NULL, NULL),
(6, 4, 1, 1.00, 60.00, 1, NULL, NULL),
(7, 4, 3, 1.00, 120.00, 1, NULL, NULL),
(8, 4, 2, 1.00, 200.00, 1, NULL, NULL),
(9, 5, 2, 1.00, 200.00, 1, NULL, NULL),
(10, 6, 2, 1.00, 200.00, 1, NULL, NULL),
(11, 7, 2, 1.00, 200.00, 1, NULL, NULL),
(12, 8, 2, 2.00, 200.00, 1, NULL, NULL),
(13, 8, 4, 1.00, 320.00, 1, NULL, NULL),
(14, 8, 5, 1.00, 170.00, 1, NULL, NULL),
(15, 9, 27, 1.00, 500.00, 1, NULL, NULL),
(16, 10, 6, 3.00, 250.00, 1, NULL, NULL),
(17, 11, 4, 1.00, 320.00, 1, NULL, NULL),
(18, 12, 4, 1.00, 320.00, 1, NULL, NULL),
(19, 12, 2, 1.00, 200.00, 1, NULL, NULL),
(20, 13, 6, 1.00, 250.00, 1, NULL, NULL),
(21, 13, 5, 1.00, 170.00, 1, NULL, NULL),
(22, 13, 4, 1.00, 320.00, 1, NULL, NULL),
(23, 14, 13, 1.00, 200.00, 1, NULL, NULL),
(24, 14, 11, 1.00, 150.00, 1, NULL, NULL),
(25, 15, 6, 1.00, 250.00, 1, NULL, NULL),
(26, 15, 4, 1.00, 320.00, 1, NULL, NULL),
(27, 15, 2, 1.00, 200.00, 1, NULL, NULL),
(28, 16, 2, 1.00, 200.00, 1, NULL, NULL),
(29, 16, 16, 1.00, 160.00, 1, NULL, NULL),
(30, 16, 29, 1.00, 170.00, 1, NULL, NULL),
(31, 16, 32, 1.00, 100.00, 1, NULL, NULL),
(32, 17, 2, 1.00, 200.00, 1, NULL, NULL),
(33, 17, 4, 1.00, 320.00, 1, NULL, NULL),
(34, 17, 5, 1.00, 170.00, 1, NULL, NULL),
(35, 18, 54, 1.00, 60.00, 1, NULL, NULL),
(36, 18, 57, 1.00, 120.00, 1, NULL, NULL),
(37, 19, 50, 1.00, 15.00, 1, NULL, NULL),
(38, 19, 62, 1.00, 20.00, 1, NULL, NULL),
(39, 19, 63, 1.00, 25.00, 1, NULL, NULL),
(40, 19, 45, 1.00, 15.00, 1, NULL, NULL),
(41, 19, 46, 1.00, 18.00, 1, NULL, NULL),
(42, 19, 48, 1.00, 18.00, 1, NULL, NULL),
(43, 19, 55, 1.00, 50.00, 1, NULL, NULL),
(44, 19, 56, 1.00, 80.00, 1, NULL, NULL),
(45, 19, 60, 1.00, 150.00, 1, NULL, NULL),
(46, 20, 5, 1.00, 170.00, 1, NULL, NULL),
(47, 21, 71, 1.10, 204.20, 1, NULL, NULL),
(48, 22, 4, 1.00, 320.00, 1, NULL, NULL),
(49, 22, 2, 1.00, 200.00, 1, NULL, NULL),
(50, 22, 6, 1.00, 250.00, 1, NULL, NULL),
(51, 22, 5, 1.00, 170.00, 1, NULL, NULL),
(52, 23, 4, 9.50, 320.00, 1, NULL, NULL),
(53, 24, 2, 1.00, 200.00, 1, NULL, NULL),
(54, 24, 39, 1.00, 150.00, 1, NULL, NULL),
(55, 24, 4, 4.00, 320.00, 1, NULL, NULL),
(56, 24, 64, 2.00, 30.00, 1, NULL, NULL),
(57, 24, 65, 3.00, 18.00, 1, NULL, NULL),
(58, 24, 44, 4.00, 100.00, 1, NULL, NULL),
(59, 24, 59, 4.00, 130.00, 1, NULL, NULL),
(60, 25, 10, 1.00, 350.00, 1, NULL, NULL),
(61, 25, 39, 1.00, 150.00, 1, NULL, NULL),
(62, 25, 5, 1.00, 170.00, 1, NULL, NULL),
(63, 26, 16, 10.00, 160.00, 1, NULL, NULL),
(64, 27, 24, 1.00, 600.00, 1, NULL, NULL),
(65, 27, 54, 1.00, 60.00, 1, NULL, NULL),
(66, 27, 4, 1.00, 320.00, 1, NULL, NULL),
(67, 27, 50, 1.00, 15.00, 1, NULL, NULL),
(68, 27, 63, 1.00, 25.00, 1, NULL, NULL),
(69, 27, 39, 1.00, 150.00, 1, NULL, NULL),
(70, 27, 14, 1.00, 250.00, 1, NULL, NULL),
(71, 27, 60, 1.00, 150.00, 1, NULL, NULL),
(72, 27, 35, 2.00, 280.00, 1, NULL, NULL),
(73, 27, 38, 1.00, 300.00, 1, NULL, NULL),
(74, 28, 44, 1.00, 100.00, 1, NULL, NULL),
(75, 28, 14, 1.00, 250.00, 1, NULL, NULL),
(76, 28, 40, 1.00, 120.00, 1, NULL, NULL),
(77, 28, 54, 1.00, 60.00, 1, NULL, NULL),
(78, 28, 57, 1.00, 120.00, 1, NULL, NULL),
(79, 28, 29, 1.00, 170.00, 1, NULL, NULL),
(80, 28, 22, 1.00, 450.00, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `title`, `email`, `mobile`, `facebook`, `twitter`, `youtube`, `linkedin`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 'logo-1555583380.jpg', 'favicon-1555584605.jpg', 'Rupkatha Restaurent', 'rupkatharestaurent@gmail.com', '01786474726', 'facebook', 'twitter', 'youtube', 'linkedin', 'Zero Point, Satkhira Road, Khulna', '1', '2019-04-10 12:00:00', '2019-06-25 01:02:07');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_role` tinyint(4) DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_id` int(10) UNSIGNED DEFAULT NULL,
  `upazilla_id` int(10) UNSIGNED DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `admins_email_unique` (`email`) USING BTREE,
  ADD UNIQUE KEY `admins_username_unique` (`username`) USING BTREE;

--
-- Indexes for table `admin_access_infos`
--
ALTER TABLE `admin_access_infos`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `brands_slug_unique` (`slug`) USING BTREE;

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `categories_slug_unique` (`slug`) USING BTREE;

--
-- Indexes for table `costs`
--
ALTER TABLE `costs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `cost_fields`
--
ALTER TABLE `cost_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cost_fields_title_unique` (`title`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `products_slug_unique` (`slug`) USING BTREE;

--
-- Indexes for table `purchase_histories`
--
ALTER TABLE `purchase_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sale_products`
--
ALTER TABLE `sale_products`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `sub_categories_slug_unique` (`slug`) USING BTREE;

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE,
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`) USING BTREE,
  ADD UNIQUE KEY `users_username_unique` (`username`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_access_infos`
--
ALTER TABLE `admin_access_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `costs`
--
ALTER TABLE `costs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cost_fields`
--
ALTER TABLE `cost_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `purchase_histories`
--
ALTER TABLE `purchase_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `sale_products`
--
ALTER TABLE `sale_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
