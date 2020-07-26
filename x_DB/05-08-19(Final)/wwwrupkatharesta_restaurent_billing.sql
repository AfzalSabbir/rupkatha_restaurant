-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 05, 2019 at 01:34 AM
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
-- Database: `wwwrupkatharesta_restaurent_billing`
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
(1, 'Super Admin', 'mrskuet08@gmail.com', 'superadmin', 1, 'public/images/admins/1556106587.png', '$2y$10$EpdBHT5T5peYIn1PPchM.OmDxHvTwM4gHLoELePXlbimam66AQOEe', 1, 'BAj8JVTYPTQDcJz7mrKlyqlwJbAeue6uvQ8YA5qYeeX74BPj9jS2IhW1ZKtz', '2019-03-24 12:00:00', '2019-07-16 23:40:52'),
(2, 'Admin', 'afzalbd1@gmail.com', 'admin', 2, NULL, '$2y$10$L6og53R53iReHxNIO3Onx.1/D1DNK2ABsSkbGZd9fM11fEzGoRzAS', 1, 'Q1RCwRSoTlwrSYBg5ZJDfNg8FpZspmaSjB96IL4bUwObYwK0eK9x3BQcN2gb', '2019-03-24 12:00:00', '2019-07-16 16:10:19'),
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
(93, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-06-26 21:13:47', '2019-06-26 21:13:47'),
(94, 1, '103.67.159.246', NULL, 'PC', 'Firefox', 1, '2019-06-26 22:05:10', '2019-06-26 22:05:10'),
(95, 1, '103.83.207.50', NULL, 'Mobile', 'Chrome', 1, '2019-06-26 23:58:53', '2019-06-26 23:58:53'),
(96, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-06-27 03:06:03', '2019-06-27 03:06:03'),
(97, 1, '51.38.83.179', NULL, 'Mobile', 'Chrome', 1, '2019-06-27 05:02:57', '2019-06-27 05:02:57'),
(98, 1, '103.83.206.3', NULL, 'PC', 'Firefox', 1, '2019-06-27 13:31:22', '2019-06-27 13:31:22'),
(99, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-27 13:33:32', '2019-06-27 13:33:32'),
(100, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-06-27 13:39:56', '2019-06-27 13:39:56'),
(101, 1, '103.83.206.3', NULL, 'PC', 'Firefox', 1, '2019-06-27 15:02:39', '2019-06-27 15:02:39'),
(102, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-06-27 18:30:15', '2019-06-27 18:30:15'),
(103, 1, '42.0.5.239', NULL, 'PC', 'Chrome', 1, '2019-06-28 01:37:21', '2019-06-28 01:37:21'),
(104, 1, '116.58.202.51', NULL, 'PC', 'Firefox', 1, '2019-06-29 14:06:43', '2019-06-29 14:06:43'),
(105, 1, '103.83.206.3', NULL, 'PC', 'Firefox', 1, '2019-06-30 01:36:55', '2019-06-30 01:36:55'),
(106, 1, '116.206.44.34', NULL, 'PC', 'Firefox', 1, '2019-06-30 01:48:38', '2019-06-30 01:48:38'),
(107, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-07-01 15:05:44', '2019-07-01 15:05:44'),
(108, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-07-03 14:39:58', '2019-07-03 14:39:58'),
(109, 1, '42.0.4.245', NULL, 'Mobile', 'Chrome', 1, '2019-07-10 23:19:52', '2019-07-10 23:19:52'),
(110, 1, '103.67.158.75', NULL, 'PC', 'Firefox', 1, '2019-07-11 11:01:33', '2019-07-11 11:01:33'),
(111, 1, '103.67.158.75', NULL, 'PC', 'Firefox', 1, '2019-07-11 12:26:26', '2019-07-11 12:26:26'),
(112, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-07-11 14:12:31', '2019-07-11 14:12:31'),
(113, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-07-11 14:33:36', '2019-07-11 14:33:36'),
(114, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-07-11 16:55:50', '2019-07-11 16:55:50'),
(115, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-07-11 17:58:20', '2019-07-11 17:58:20'),
(116, 1, '103.83.206.3', NULL, 'PC', 'Firefox', 1, '2019-07-11 19:06:39', '2019-07-11 19:06:39'),
(117, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-07-11 19:54:44', '2019-07-11 19:54:44'),
(118, 1, '42.0.5.233', NULL, 'Mobile', 'Chrome', 1, '2019-07-11 20:42:56', '2019-07-11 20:42:56'),
(119, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-07-13 17:39:47', '2019-07-13 17:39:47'),
(120, 1, '103.83.206.3', NULL, 'PC', 'Firefox', 1, '2019-07-13 18:05:46', '2019-07-13 18:05:46'),
(121, 1, '103.83.206.3', NULL, 'Mobile', 'Chrome', 1, '2019-07-13 20:27:16', '2019-07-13 20:27:16'),
(122, 1, '103.83.206.3', NULL, 'PC', 'Firefox', 1, '2019-07-13 20:44:15', '2019-07-13 20:44:15'),
(123, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-07-13 21:30:18', '2019-07-13 21:30:18'),
(124, 1, '103.83.206.3', NULL, 'PC', 'Firefox', 1, '2019-07-13 22:04:13', '2019-07-13 22:04:13'),
(125, 1, '103.83.206.3', NULL, 'PC', 'Firefox', 1, '2019-07-13 22:17:05', '2019-07-13 22:17:05'),
(126, 1, '42.0.6.229', NULL, 'Mobile', 'Chrome', 1, '2019-07-13 22:37:40', '2019-07-13 22:37:40'),
(127, 1, '116.58.201.150', NULL, 'Mobile', 'Chrome', 1, '2019-07-14 03:05:27', '2019-07-14 03:05:27'),
(128, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-07-14 13:32:23', '2019-07-14 13:32:23'),
(129, 1, '103.83.206.3', NULL, 'PC', 'Firefox', 1, '2019-07-14 14:34:50', '2019-07-14 14:34:50'),
(130, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-07-14 17:43:28', '2019-07-14 17:43:28'),
(131, 1, '103.67.156.225', NULL, 'Mobile', 'Chrome', 1, '2019-07-14 18:31:00', '2019-07-14 18:31:00'),
(132, 1, '103.67.156.225', NULL, 'PC', 'Chrome', 1, '2019-07-14 18:32:59', '2019-07-14 18:32:59'),
(133, 1, '42.0.4.253', NULL, 'Mobile', 'Chrome', 1, '2019-07-14 19:30:00', '2019-07-14 19:30:00'),
(134, 1, '103.67.158.140', NULL, 'PC', 'Chrome', 1, '2019-07-14 21:21:27', '2019-07-14 21:21:27'),
(135, 1, '103.67.157.14', NULL, 'PC', 'Chrome', 1, '2019-07-15 04:36:03', '2019-07-15 04:36:03'),
(136, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-07-15 13:25:52', '2019-07-15 13:25:52'),
(137, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-07-15 13:49:38', '2019-07-15 13:49:38'),
(138, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-07-15 13:59:30', '2019-07-15 13:59:30'),
(139, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-07-15 14:14:17', '2019-07-15 14:14:17'),
(140, 1, '103.83.206.3', NULL, 'PC', 'Firefox', 1, '2019-07-15 14:27:04', '2019-07-15 14:27:04'),
(141, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-07-15 14:30:01', '2019-07-15 14:30:01'),
(142, 1, '103.83.206.3', NULL, 'PC', 'Firefox', 1, '2019-07-15 14:38:48', '2019-07-15 14:38:48'),
(143, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-07-15 15:00:54', '2019-07-15 15:00:54'),
(144, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-07-15 17:53:52', '2019-07-15 17:53:52'),
(145, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-07-15 18:06:17', '2019-07-15 18:06:17'),
(146, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-07-15 18:07:55', '2019-07-15 18:07:55'),
(147, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-07-15 18:13:02', '2019-07-15 18:13:02'),
(148, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-07-16 13:48:52', '2019-07-16 13:48:52'),
(149, 2, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-07-16 16:10:27', '2019-07-16 16:10:27'),
(150, 1, '103.83.206.3', NULL, 'PC', 'Firefox', 1, '2019-07-16 16:35:51', '2019-07-16 16:35:51'),
(151, 1, '103.83.206.3', NULL, 'PC', 'Firefox', 1, '2019-07-16 23:41:00', '2019-07-16 23:41:00'),
(152, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-17 00:42:27', '2019-07-17 00:42:27'),
(153, 1, '42.0.5.250', NULL, 'Mobile', 'Chrome', 1, '2019-07-17 01:12:34', '2019-07-17 01:12:34'),
(154, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-17 18:50:28', '2019-07-17 18:50:28'),
(155, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-07-17 19:01:03', '2019-07-17 19:01:03'),
(156, 1, '103.83.206.3', NULL, 'PC', 'Firefox', 1, '2019-07-17 19:10:08', '2019-07-17 19:10:08'),
(157, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-17 19:27:52', '2019-07-17 19:27:52'),
(158, 1, '103.83.206.3', NULL, 'PC', 'Chrome', 1, '2019-07-17 19:29:25', '2019-07-17 19:29:25'),
(159, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-18 16:37:04', '2019-07-18 16:37:04'),
(160, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-18 21:23:51', '2019-07-18 21:23:51'),
(161, 1, '42.0.4.226', NULL, 'PC', 'Chrome', 1, '2019-07-18 21:41:01', '2019-07-18 21:41:01'),
(162, 1, '103.107.123.230', NULL, 'PC', 'Chrome', 1, '2019-07-18 23:52:35', '2019-07-18 23:52:35'),
(163, 1, '103.83.206.3', NULL, 'PC', 'Firefox', 1, '2019-07-19 00:22:03', '2019-07-19 00:22:03'),
(164, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-19 15:37:41', '2019-07-19 15:37:41'),
(165, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-20 15:47:34', '2019-07-20 15:47:34'),
(166, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-21 15:53:10', '2019-07-21 15:53:10'),
(167, 1, '103.83.206.3', NULL, 'PC', 'Firefox', 1, '2019-07-22 14:21:18', '2019-07-22 14:21:18'),
(168, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-22 15:46:42', '2019-07-22 15:46:42'),
(169, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-23 17:08:01', '2019-07-23 17:08:01'),
(170, 1, '103.83.206.3', NULL, 'PC', 'Firefox', 1, '2019-07-23 20:29:24', '2019-07-23 20:29:24'),
(171, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-23 23:14:56', '2019-07-23 23:14:56'),
(172, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-24 16:22:20', '2019-07-24 16:22:20'),
(173, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-25 15:35:19', '2019-07-25 15:35:19'),
(174, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-25 17:53:16', '2019-07-25 17:53:16'),
(175, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-26 15:20:42', '2019-07-26 15:20:42'),
(176, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-26 19:24:31', '2019-07-26 19:24:31'),
(177, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-26 22:25:21', '2019-07-26 22:25:21'),
(178, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-27 15:56:22', '2019-07-27 15:56:22'),
(179, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-27 23:50:00', '2019-07-27 23:50:00'),
(180, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-28 17:21:43', '2019-07-28 17:21:43'),
(181, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-28 23:11:38', '2019-07-28 23:11:38'),
(182, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-29 01:57:22', '2019-07-29 01:57:22'),
(183, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-29 17:03:51', '2019-07-29 17:03:51'),
(184, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-29 23:38:58', '2019-07-29 23:38:58'),
(185, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-30 16:54:45', '2019-07-30 16:54:45'),
(186, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-30 19:21:10', '2019-07-30 19:21:10'),
(187, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-30 22:19:03', '2019-07-30 22:19:03'),
(188, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-31 15:43:33', '2019-07-31 15:43:33'),
(189, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-07-31 18:28:07', '2019-07-31 18:28:07'),
(190, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-08-01 01:47:33', '2019-08-01 01:47:33'),
(191, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-08-01 19:28:31', '2019-08-01 19:28:31'),
(192, 1, '103.52.135.60', NULL, 'Mobile', 'Chrome', 1, '2019-08-02 05:46:57', '2019-08-02 05:46:57'),
(193, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-08-02 18:17:19', '2019-08-02 18:17:19'),
(194, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-08-03 16:40:48', '2019-08-03 16:40:48'),
(195, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-08-03 22:28:23', '2019-08-03 22:28:23'),
(196, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-08-04 02:00:30', '2019-08-04 02:00:30'),
(197, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-08-04 18:21:23', '2019-08-04 18:21:23'),
(198, 1, '103.107.123.230', NULL, 'PC', 'Firefox', 1, '2019-08-05 00:09:32', '2019-08-05 00:09:32');

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
(16, 'Faluda', 'faluda', 'public/images/category/1561275590.jpg', 1, '2019-06-23 17:39:50', '2019-06-23 17:39:50'),
(17, 'Igloo ice', 'igloo-ice', 'public/images/category/1563534556.jpg', 1, '2019-07-19 21:09:16', '2019-07-19 21:09:16');

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
(1, 'General', 1, 'General', '2019-06-18', 1.00, 'cbc', '500', 'ddd', 0, '2019-06-18 21:49:00', '2019-07-11 11:58:20'),
(4, 'General', 5, 'General', '2019-06-23', 1.00, 'fridge vara', '100', 'jkjh', 0, '2019-06-23 21:13:11', '2019-07-11 13:53:13'),
(6, 'General', 2, 'General', '2019-06-19', 1.00, 'fgfg', '200', 'Sohel', 0, '2019-06-26 15:46:52', '2019-07-13 22:23:04'),
(7, 'General', 5, 'General', '2019-06-26', 1.00, 'তকত', '100', 'Sohel', 0, '2019-06-26 15:51:30', '2019-07-14 13:46:57'),
(8, 'General', 4, 'General', '2019-06-26', 1.00, 'িুিু', '200', 'Sohel', 0, '2019-06-26 16:02:20', '2019-07-23 18:10:51'),
(9, 'General', 2, 'General', '2019-06-26', 1.00, 'ুুুুু', '300', 'Sohel', 0, '2019-06-26 16:02:52', '2019-07-23 18:11:24'),
(10, 'General', 1, 'General', '2019-06-26', 1.00, 'রররর', '100', 'Sohel', 0, '2019-06-26 16:06:43', '2019-07-23 18:11:20'),
(11, 'General', 3, 'General', '2019-06-26', 1.00, 'রররর', '100', 'Sohel', 0, '2019-06-26 16:07:11', '2019-07-13 20:32:24'),
(13, 'General', 3, 'General', '2019-06-27', 1.00, 'asdfsa', '200', 'Sohel', 0, '2019-06-27 13:35:54', '2019-07-11 18:04:10'),
(14, 'General', 2, 'General', '2019-07-11', 1.00, 'kdsshghjg', '500', 'Saddam', 0, '2019-07-11 20:00:05', '2019-07-23 18:11:12'),
(15, 'General', 1, 'General', '2019-07-16', 1.00, 'y6', '200', 'tr', 0, '2019-07-17 01:38:40', '2019-07-23 18:11:16'),
(16, 'General', 2, 'General', '2019-07-18', 1.00, 'bv', '2500', 'vb', 0, '2019-07-19 00:16:02', '2019-07-23 18:11:09'),
(17, 'General', 6, 'General', '2019-07-18', 1.00, 'k', '1060', 'j', 0, '2019-07-19 00:17:37', '2019-07-23 18:11:01'),
(18, 'General', 7, 'General', '2019-07-18', 1.00, 'g', '1830', 'g', 0, '2019-07-19 00:18:18', '2019-07-23 18:11:05'),
(19, 'General', 6, 'General', '2019-07-18', 1.00, 'g', '1880', 'g', 0, '2019-07-19 00:18:35', '2019-07-23 18:10:57'),
(20, 'General', 2, 'General', '2019-07-23', 1.00, 'h', '4000', '4000', 0, '2019-07-23 17:56:19', '2019-07-23 18:10:10');

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
(5, 'Rikshaw vara', 1, '2019-06-23 21:10:39', '2019-06-23 21:10:39'),
(6, 'Bazar cost', 1, '2019-07-19 00:14:25', '2019-07-19 00:14:25'),
(7, 'Water Bottle', 0, '2019-07-19 00:17:59', '2019-07-23 19:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pre_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `per_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `mobile`, `pre_address`, `per_address`, `nid_no`, `designation`, `salary`, `photo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'employee', '5775', 'sdfsdf,sdf', 'dfgfd,sdf', '54881', 'dhgh', '2501', '1562841783.png', 0, NULL, '2019-07-13 19:28:19'),
(2, 'employee-1', '5775', 'sdfsdf,sdf', 'dfgfd,sdf', '54881', 'dhgh', '2501', 'public/images/employee/1563010127.jpg', 1, NULL, '2019-07-14 13:47:44'),
(3, 'Callum Savage', '01937476716', 'Ut ut expedita id q', 'Sit qui eaque dolor', '5554545', 'Dolor do qui laboris', '2000', 'public/images/employee/1563020364.png', 0, NULL, '2019-07-13 22:20:33');

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
(33, 'Product', 'পণ্য', NULL, 0, 'fa fa-archive', NULL, NULL, 140, 1, '2019-03-29 21:43:47', '2019-03-29 22:43:46'),
(34, 'Product List', 'পণ্য তালিকা', 33, 0, 'fa fa-list-ul', '/admin/product', 'admin.product.index', 2, 1, '2019-03-29 21:45:03', '2019-04-21 00:07:45'),
(35, 'Add New', 'নতুন যোগ করুন', 33, 0, 'fa fa-plus', '/admin/product/add', 'admin.product.create', 1, 1, '2019-03-29 21:47:44', '2019-04-21 00:07:42'),
(36, 'Edit', 'এডিট', 34, 1, 'fa fa-pencil', NULL, 'admin.product.edit', 2, 1, '2019-03-29 21:48:20', '2019-04-05 23:27:38'),
(37, 'Delete', 'ডিলিট', 34, 1, 'fa fa-trash', NULL, 'admin.product.delete', 3, 1, '2019-03-29 21:49:55', '2019-04-05 23:27:26'),
(38, 'Category', 'ক্যাটাগরি', NULL, 0, 'fa fa-pie-chart', NULL, NULL, 141, 1, '2019-03-29 21:51:15', '2019-03-30 00:11:55'),
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
(94, 'Cost', 'খরচ', NULL, 0, 'fa fa-contao', NULL, NULL, 4, 1, '2019-04-17 00:05:39', '2019-04-20 22:26:08'),
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
(109, 'Balance Sheet', 'ব্যালেন্স শীট', NULL, 0, 'fa fa-money', '/admin/balance_sheet', 'admin.balance_sheet.index', 5, 1, '2019-04-23 01:03:14', '2019-04-23 01:03:14'),
(111, 'Purchase', 'পার্চেস', NULL, 0, 'fa fa-sitemap', NULL, NULL, 3, 1, '2019-06-18 05:22:06', '2019-06-18 08:30:39'),
(112, 'Add Item', 'আইটেম যোগ করুন', 111, 0, 'fa fa-plus', 'admin/purchase/purchase_item/add', 'admin.purchase_item.add', 3, 1, '2019-06-18 05:22:06', '2019-06-18 08:29:40'),
(113, 'Item List', 'আইটেম তালিকা', 111, 0, 'fa fa-list-ul', 'admin/purchase/purchase_item', 'admin.purchase_item.index', 4, 1, '2019-06-18 05:22:06', '2019-06-18 08:29:36'),
(114, 'Edit', 'এডিট', 113, 1, 'fa fa-pencil', '', 'admin.purchase_item.edit', 1, 1, '2019-06-18 05:22:06', '2019-06-18 05:22:06'),
(115, 'Delete', 'ডিলিট', 113, 1, 'fa fa-trash', '', 'admin.purchase_item.delete', 2, 1, '2019-06-18 05:22:06', '2019-06-18 05:22:06'),
(116, 'Add Purchase', 'পার্চেস যোগ করুন', 111, 0, 'fa fa-dollar', '/admin/purchase/add', 'admin.purchase.add', 1, 1, '2019-06-18 05:33:36', '2019-06-18 08:31:04'),
(117, 'Purchase History', 'পার্চেস হিস্টরি', 111, 0, 'fa fa-history', '/admin/purchase', 'admin.purchase.index', 2, 1, '2019-06-18 08:27:34', '2019-06-18 08:27:34'),
(118, 'Edit', 'এডিট', 117, 1, 'fa fa-pencil', '/admin/purchase/edit', 'admin.purchase.edit', 1, 1, '2019-06-18 09:13:12', '2019-06-18 09:13:12'),
(119, 'Delete', 'ডিলিট', 117, 1, 'fa fa-trash', '/admin/purchase/delete', 'admin.purchase.delete', 2, 1, '2019-06-18 09:13:45', '2019-06-18 09:13:45'),
(120, 'SMS', 'এসএমএস', NULL, 0, 'fa fa-envelope', NULL, NULL, 200, 1, NULL, NULL),
(121, 'Send', 'প্রেরন', 120, 0, 'fa fa-comment-o', 'admin/sms/send', 'admin.sms.send', 1, 1, NULL, NULL),
(122, 'Custom', 'কাস্টম', 120, 0, 'fa fa-indent', 'admin/sms/custom', 'admin.sms.custom', 2, 1, NULL, NULL),
(123, 'Report', 'প্রতিবেদন', 120, 0, 'fa fa-upload', 'admin/sms/report', 'admin.sms.report', 3, 1, NULL, NULL),
(124, 'Restore', 'রিস্টোর', 101, 1, 'fa fa-upload', '/admin/backup/restore', 'admin.backup.restore', 2, 1, '2019-07-02 20:28:12', '2019-07-02 20:28:12'),
(125, 'Employee', 'কর্মচারী', NULL, 0, 'fa fa-male', NULL, NULL, 201, 1, '2019-07-11 18:49:02', '2019-07-11 18:49:02'),
(126, 'Add New', 'নতুন যোগ করুন', 125, 0, 'fa fa-plus', 'admin/employee/add', 'admin.employee.add', 1, 1, '2019-07-11 18:49:02', '2019-07-11 18:49:02'),
(127, 'Employee List', 'কর্মচারী তালিকা', 125, 0, 'fa fa-list-ul', 'admin/employee', 'admin.employee.index', 2, 1, '2019-07-11 18:49:02', '2019-07-11 18:49:02'),
(128, 'View', 'দেখা', 127, 1, 'fa fa-eye', '', 'admin.employee.view', 1, 1, '2019-07-11 18:49:02', '2019-07-11 18:49:02'),
(129, 'Edit', 'এডিট', 127, 1, 'fa fa-pencil', '', 'admin.employee.edit', 2, 1, '2019-07-11 18:49:02', '2019-07-11 18:49:02'),
(130, 'Delete', 'ডিলিট', 127, 1, 'fa fa-trash', '', 'admin.employee.delete', 3, 1, '2019-07-11 18:49:02', '2019-07-11 18:49:02'),
(131, 'Report', 'প্রতিবেদন', NULL, 0, 'fa fa-credit-card', NULL, NULL, 202, 1, '2019-07-13 19:42:46', '2019-07-14 14:03:07'),
(132, 'Cost Report', 'মূল্য', 131, 0, 'fa fa-500px', '/admin/report/cost', 'admin.report.cost', 2, 1, '2019-07-14 13:56:11', '2019-07-14 15:23:53'),
(133, 'Sales Report', 'বিক্রয়', 131, 0, 'fa fa-archive', '/admin/report/sales', 'admin.report.sales', 3, 1, '2019-07-14 13:57:30', '2019-07-14 15:23:43'),
(134, 'Purchase Report', 'ক্রয়', 131, 0, 'fa fa-puzzle-piece', '/admin/report/purchase', 'admin.report.purchase', 4, 1, '2019-07-14 13:58:36', '2019-07-14 15:23:32');

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
  `id` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`) VALUES
(1, 'mrskuet08@gmail.com', 'eyJpdiI6IkZ5OUpRcGNpZitkeVhXQWFmb0U5ZFE9PSIsInZhbHVlIjoiSzNFdFc1SzRKdkZWUlQyc3MxVzlmZz09IiwibWFjIjoiNmJkNTAwMzU2NmY4NzU4NzcxN2E1MzYwNTMzMzhkMDY0NzQ4MzEwZTJlOWU3MTBlN2YzMmQyNjAyOTAyNzU0OSJ9', '2019-07-16 14:38:04'),
(2, 'afzalbd1@gmail.com', 'eyJpdiI6Imc4dmZheHE4b3VkTjJtektpMm53SGc9PSIsInZhbHVlIjoiaHRrbkduczZzaHJVTDAxWGdIZGNPUT09IiwibWFjIjoiZmQ0ZGE2YzY2NjhlMjkzMWJlN2JhNTc5N2ZiODk0MzA2MzFiODdhNjllOTgzYjA0NDdlMGI4NmY3ODBiYmE0NyJ9', '2019-07-16 15:26:52'),
(3, 'afzalbd1@gmail.com', 'eyJpdiI6ImZvRlVRM3dHcmF6M1JnMTh6aXlWcUE9PSIsInZhbHVlIjoiNTdFMU1yNkV5NEM1SWxyUkhHbFBYQT09IiwibWFjIjoiOWE1MzhhMjRkM2ViNGIyZjM4Yjg1YWEzMThhOWVjYzBkYzAwOGY3ZDg1M2Y4NDAxZTkwZTc3NTJhNzRkNjhjNCJ9', '2019-07-16 15:27:29'),
(4, 'afzalbd1@gmail.com', 'eyJpdiI6IjB2RTNOKzlrUUh3TlE0YjZuWkgzYlE9PSIsInZhbHVlIjoiNGszcVdJa1N4dmpZcUtuVzBtVmFQUT09IiwibWFjIjoiYWZkZmQ2MDhiNzdhOWEwOTM5Y2NhODdmZDcxOTlmZDMxOGE3ZTI1NzRiMzJhZWZhZjAzNzY3YmM2Y2Y1MDkwYSJ9', '2019-07-16 15:27:49'),
(5, 'afzalbd1@gmail.com', 'eyJpdiI6IjRuc1Z2cXgra0QxUVBEVWQ1T1NwU0E9PSIsInZhbHVlIjoiRWNVQ2NOOUFFaUd1UEhzWWJkVmdidz09IiwibWFjIjoiZmYzM2EzNWYxOWE2M2JkZmEwZjY4MGI5NWNmZWVlZmZmYzY5YWMxZGQ4NWNmOTU2NmU5MjZiMDFhMTMzNWQ0YyJ9', '2019-07-16 15:28:16'),
(6, 'afzalbd1@gmail.com', 'eyJpdiI6IkNoY3RjUmZ1clZiYk5pZnp2ZStuQVE9PSIsInZhbHVlIjoiWFIyMDZrOTUrMDNVSFo0UXFVK3VIdz09IiwibWFjIjoiOGQ3MWNlOTllZWE2YjQ2NDI1NzI2OGE0MjYxZGU5NWRlNGYyOTJmMzhlMzZhMzYyMGFhNzQ3MjE3Mjc1Y2Y0ZSJ9', '2019-07-16 15:29:50'),
(7, 'afzalbd1@gmail.com', 'eyJpdiI6ImdqRFRmNTNwNnVuS3NmQUhBQUhmemc9PSIsInZhbHVlIjoieUN1UTNPZFIxQlNlcnlSeDhlMTlaUT09IiwibWFjIjoiYzZjZjhmZTNiM2RmMDA4MDdiMGIyM2IyMjlkYTBmY2NkYThhNTI4OGE0Njc1NjA0NDUxMGMyOTY1OWYyYmI3NSJ9', '2019-07-16 15:30:57'),
(8, 'afzalbd1@gmail.com', 'eyJpdiI6IjdubWl3VnNuRXZrT1lWUUdmOFBJT0E9PSIsInZhbHVlIjoiOG5weGx3R0xMMit5TzNmNVVKMURjdz09IiwibWFjIjoiN2Q1NjZmNGI4YmY2OGNlMDkwODU0MDJjYTQ0ZmU1MWNjMDViNzlmY2M0NjliYTAyY2I2ZmMwODIxNTlkZmExZSJ9', '2019-07-16 15:33:23'),
(9, 'afzalbd1@gmail.com', 'eyJpdiI6InVwdkV0VXdyKzdEeUE1UGJGV2F2WVE9PSIsInZhbHVlIjoiR2g2Q0JUbk5seDFMbWxaZ1Z0WHd1dz09IiwibWFjIjoiZGYzYjQ4M2NmNmYyNjYyODhlMzRkY2Y4NWQ2YmU1MGZmNWVkYTcxZTEwYzIxMjE5NzZmYjliYzcwNjA3YWVkYiJ9', '2019-07-16 15:44:38'),
(10, 'afzalbd1@gmail.com', 'eyJpdiI6InIxZk8zZ3VBZDFGQWtoeGNKaXFvaGc9PSIsInZhbHVlIjoicjRsamhBeTBRc2NaUWNkd2tkcFwvMmc9PSIsIm1hYyI6IjYzNzU0N2Q5MTI3YzRmZThhOGQxOWY0Y2MwMGQyNWRiMGJkZTJjY2ZhYjU3NzhiMjU0Y2IxMDQ3ZmI5NmNjNTYifQ==', '2019-07-16 15:45:19'),
(11, 'afzalbd1@gmail.com', 'eyJpdiI6IkRRcGMyM0MrMlFDVDNLM09RdWl6eFE9PSIsInZhbHVlIjoid0x6RTJwVXk3Z0VKcVo3MExaanNOQT09IiwibWFjIjoiMWU2ZjFiYzI1OWI2YjMwMmU2ZjUwYzdkMTNiZjc1NTgyNzM4OTRhYWZlYThjZDZjYWUwYTJlODdiZDc4YjU0ZSJ9', '2019-07-16 15:46:36'),
(12, 'afzalbd1@gmail.com', 'eyJpdiI6Im1wSW9ZTUgrUytkeFI2TGdPMnJyZFE9PSIsInZhbHVlIjoidHl4SXdIREJTS3pLYTNrK092eHJoQT09IiwibWFjIjoiYzEyNjJlMWMzZTE3ODY3ZTYwODc2YjZkNWEwZjNkMjc5MWIwYTlmYWI5OTczMjY0ZmI4ZTYzYTJlYzMzNTQ1OCJ9', '2019-07-16 16:12:35'),
(13, 'afzalbd1@gmail.com', 'eyJpdiI6InBvVUVPUXdVT0gxV2VSbm4rdjhVcUE9PSIsInZhbHVlIjoiT3hmOWZHV3lWWkRuTEJzUkxEdnE5Zz09IiwibWFjIjoiMWYyMjdjZjFmNDU3OGQwMmYzMWFmNTAzZGFjZWRmODBhNjJmYTI3MzIyZWMwNDg4ZmZkMGY0OGIzYTMzOTkzZSJ9', '2019-07-16 16:13:30'),
(14, 'mrskuet08@gmail.com', 'eyJpdiI6InV5Vlp3dDFEOVFOeEkyeVM5OUVDOVE9PSIsInZhbHVlIjoiSXJwODhvOTJJMUxoaEVBZ2lFRWtudz09IiwibWFjIjoiOGRkNzgyOTIzNmJhMzRlMTg0ZTExY2YxYTJkNmE0ZjBjYjFmMDRhYjYxNzRlOTQwZTUyNjE2ZGM4NDc5NzA5ZCJ9', '2019-07-16 16:34:16'),
(15, 'mrskuet08@gmail.com', 'eyJpdiI6IkIyYUZWVXBMTUZMTDJ5cmdzT21KbHc9PSIsInZhbHVlIjoieCtsYWlBK1wvekc5K0ZPTVQ5MUFOMkE9PSIsIm1hYyI6ImE5NWRiZjYxYmUzYTRiZDA0MTM2YWJmZWM5ODFmNzgyYTJjZTVlYzMzNWRmYTBkNjY4NWY5MDhlODdkY2UwMDIifQ==', '2019-07-16 23:39:06');

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
(2, 'Chicken B.B.Q', 'chicken-b.b.q-1', 2, 'B.B.Q', 'public/images/products/1560863903.jpg', '200', '200', '0', 0, 1, '2019-06-18 21:06:14', '2019-07-20 22:40:31'),
(3, 'Tandury B.B.Q', 'tandury-b.b.q-1', 2, 'h', 'public/images/products/1560857610.jpg', '60', '120', '0', 0, 0, '2019-06-18 21:33:30', '2019-06-18 23:14:02'),
(4, 'Hydrabadi Mutton Dom Biriyani Full', 'hydrabadi-mutton-dom-biriyani-full', 3, 'Hydrabadi Mutton Dom Biriyani Full', 'public/images/products/1560861237.jpg', '280', '320', '0', 0, 1, '2019-06-18 22:33:57', '2019-06-18 22:33:57'),
(5, 'Hydrabadi Mutton Dom Biriyani Half', 'hydrabadi-mutton-dom-biriyani-half', 3, 'Hydrabadi Mutton Dom Biriyani Full', 'public/images/products/1560861297.jpg', '140', '170', '0', 0, 1, '2019-06-18 22:34:58', '2019-06-18 22:34:58'),
(6, 'Hydrabadi Chicken Dom Biriyani Full', 'hydrabadi-chicken-dom-biriyani-full', 3, 'Hydrabadi Chicken Dom Biriyani Full', 'public/images/products/1560861539.jpg', '210', '250', '0', 0, 1, '2019-06-18 22:38:59', '2019-06-18 22:38:59'),
(7, 'Hydrabadi Chicken Dom Biriyani Half', 'hydrabadi-chicken-dom-biriyani-half', 3, 'Hydrabadi Chicken Dom Biriyani Half', 'public/images/products/1560861591.jpg', '110', '140', '0', 0, 1, '2019-06-18 22:39:51', '2019-06-18 22:39:51'),
(8, 'Fride Rice', 'fride-rice', 4, 'Fride Rice', 'public/images/products/1560862060.jpg', '300', '350', '0', 0, 1, '2019-06-18 22:47:40', '2019-06-18 22:47:40'),
(9, 'Chicken Masala / Jhal Fray Full', 'chicken-masala-jhal-fray-full', 4, 'Chicken Masala / Jhal Fray Full', 'public/images/products/1560862787.jpg', '220', '280', '0', 0, 1, '2019-06-18 22:59:47', '2019-06-18 22:59:47'),
(10, 'Mutton Masala / Jhal Fray Full', 'mutton-masala-jhal-fray-full', 4, 'Mutton Masala / Jhal Fray Full', 'public/images/products/1560862992.jpg', '280', '350', '0', 0, 1, '2019-06-18 23:03:12', '2019-06-18 23:03:12'),
(11, 'Rupkatha Special Salad', 'rupkatha-special-salad', 4, 'Rupkatha Special Salad', 'public/images/products/1560863105.jpg', '100', '150', '0', 0, 1, '2019-06-18 23:05:05', '2019-06-18 23:05:05'),
(12, 'Fish Kabab (Rupkatha Special)', 'fish-kabab-(rupkatha-special)', 5, 'Fish Kabab (Rupkatha Special) k', 'public/images/products/1560863273.jpg', '500', '500', '0', 0, 1, '2019-06-18 23:07:53', '2019-08-03 01:58:52'),
(13, 'Chicken Kabab', 'chicken-kabab-1', 5, 'Chicken Kabab', 'public/images/products/1560863369.jpg', '150', '150', '0', 0, 1, '2019-06-18 23:09:29', '2019-07-31 00:05:12'),
(14, 'Mutton Kabab', 'mutton-kabab', 5, 'Mutton Kabab', 'public/images/products/1560863500.jpg', '180', '250', '0', 0, 1, '2019-06-18 23:11:41', '2019-06-18 23:11:41'),
(15, 'Tandury Chicken', 'tandury-chicken', 2, 'Tandury Chicken', 'public/images/products/1560863847.jpg', '80', '120', '0', 0, 1, '2019-06-18 23:17:27', '2019-06-18 23:17:27'),
(16, 'Chicken Burger', 'chicken-burger-1', 1, 'Chicken Burger', 'public/images/products/1560864074.jpg', '120', '150', '0', 0, 1, '2019-06-18 23:21:14', '2019-07-20 18:23:47'),
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
(47, 'Dew', 'dew-1', 13, 'Dew', 'public/images/products/1561274157.jpg', '0', '40', '0', 0, 1, '2019-06-23 17:15:57', '2019-07-23 18:14:59'),
(48, 'Seven Up', 'seven-up', 13, 'Seven Up', 'public/images/products/1561274213.jpg', '0', '16', '0', 0, 1, '2019-06-23 17:16:53', '2019-06-23 20:56:38'),
(49, 'Marinda', 'marinda-1', 13, 'Marinda', 'public/images/products/1561274277.jpg', '0', '30', '0', 0, 1, '2019-06-23 17:17:57', '2019-06-23 20:37:01'),
(50, 'Mineral Water- 500ml', 'mineral-water-500ml', 13, 'Mineral Water', 'public/images/products/1561274369.jpg', '0', '15', '0', 0, 1, '2019-06-23 17:19:29', '2019-06-23 20:05:14'),
(51, 'Chicken Corn Soup', 'chicken-corn-soup', 14, 'Chicken Corn Soup', 'public/images/products/1561274754.jpg', '60', '110', '0', 0, 1, '2019-06-23 17:25:54', '2019-06-23 17:25:54'),
(52, 'Thai Soup', 'thai-soup', 14, 'Thai Soup', 'public/images/products/1561274824.jpg', '60', '120', '0', 0, 1, '2019-06-23 17:27:04', '2019-06-23 17:27:04'),
(53, 'Vegetable Soup (Clear)', 'vegetable-soup-(clear)', 14, 'Vegetable Soup (Clear)', 'public/images/products/1561274937.jpg', '50', '95', '0', 0, 1, '2019-06-23 17:28:57', '2019-06-23 17:28:57'),
(54, 'Regular Coffee', 'regular-coffee-1', 15, 'Regular Coffee', 'public/images/products/1561275104.jpg', '30', '50', '0', 0, 1, '2019-06-23 17:31:44', '2019-07-20 18:19:29'),
(55, 'Black Coffee', 'black-coffee-1', 15, 'Black Coffee', 'public/images/products/1561275170.jpg', '40', '40', '0', 0, 1, '2019-06-23 17:32:50', '2019-07-20 18:31:55'),
(56, 'Cappuccino Coffee', 'cappuccino-coffee', 15, 'Cappuccino Coffee', 'public/images/products/1561275281.jpg', '80', '80', '0', 0, 1, '2019-06-23 17:34:41', '2019-07-20 18:29:56'),
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
(71, 'Test Product 1', 'test-product-1', 16, 'Test Product 1 Description', 'public/images/products/1561359284.png', '156.156', '204.204', '0', 0, 1, '2019-06-24 16:54:44', '2019-06-24 16:54:44'),
(72, 'Chicken Fry', 'chicken-fry-1', 8, 'u', 'public/images/products/1563458658.jpg', '80', '80', '0', 0, 1, '2019-07-19 00:04:18', '2019-07-25 01:03:42'),
(73, 'vanela cup', 'vanela-cup', 17, 'g', 'public/images/products/1563534669.jpg', '20', '20', '0', 0, 1, '2019-07-19 21:11:09', '2019-07-19 21:11:09'),
(74, 'strauberry cup ice', 'strauberry-cup-ice', 17, 'h', 'public/images/products/1563534935.png', '20', '20', '0', 0, 1, '2019-07-19 21:15:35', '2019-07-19 21:15:35'),
(75, 'macho chocbar', 'macho-chocbar', 17, 'h', 'public/images/products/1563535077.png', '40', '40', '0', 0, 1, '2019-07-19 21:17:57', '2019-07-19 21:17:57'),
(76, 'Chocbar', 'chocbar', 17, 'j', 'public/images/products/1563535222.png', '25', '25', '0', 0, 1, '2019-07-19 21:20:23', '2019-07-19 21:20:23'),
(77, 'cornnelli cone', 'cornnelli-cone', 17, 'j', 'public/images/products/1563535374.jpg', '50', '50', '0', 0, 1, '2019-07-19 21:22:54', '2019-07-19 21:22:54'),
(78, 'cornnelli cone mini', 'cornnelli-cone-mini', 17, 'g', 'public/images/products/1563535435.jpg', '30', '30', '0', 0, 1, '2019-07-19 21:23:55', '2019-07-19 21:23:55'),
(79, 'Mega ice', 'mega-ice', 17, 'f', 'public/images/products/1563535530.png', '40', '40', '0', 0, 1, '2019-07-19 21:25:30', '2019-07-19 21:25:30'),
(80, 'doi ice', 'doi-ice', 17, 'u', 'public/images/products/1563535654.png', '45', '45', '0', 0, 1, '2019-07-19 21:27:34', '2019-07-19 21:27:34'),
(81, 'Blackforest', 'blackforest', 17, 'h', 'public/images/products/1563535722.png', '45', '45', '0', 0, 1, '2019-07-19 21:28:42', '2019-07-19 21:28:42'),
(82, 'EGO ice', 'ego-ice', 17, 'k', 'public/images/products/1563535816.png', '50', '50', '0', 0, 1, '2019-07-19 21:30:16', '2019-07-19 21:30:16'),
(83, 'exotic ice', 'exotic-ice', 17, 'k', 'public/images/products/1563535930.png', '60', '60', '0', 0, 1, '2019-07-19 21:32:10', '2019-07-19 21:32:10'),
(84, 'S,V,C,M --1 letter', 's,v,c,m-1-letter', 17, 'j', 'public/images/products/1563536198.jpg', '215', '215', '0', 0, 1, '2019-07-19 21:36:38', '2019-07-19 21:36:38'),
(85, 'S,V,C,M --500 ML', 's,v,c,m-500-ml', 17, 'T', 'public/images/products/1563536315.jpg', '110', '110', '0', 0, 1, '2019-07-19 21:38:35', '2019-07-19 21:38:35'),
(86, 'doi ice 1 letter', 'doi-ice-1-letter', 17, 'f', 'public/images/products/1563536500.png', '295', '295', '0', 0, 1, '2019-07-19 21:41:41', '2019-07-19 21:41:41'),
(87, 'rashmalai', 'rashmalai', 17, 'f', 'public/images/products/1563536575.jpg', '350', '350', '0', 0, 1, '2019-07-19 21:42:55', '2019-07-19 21:42:55'),
(88, 'chocolate cheers', 'chocolate-cheers', 17, 'h', 'public/images/products/1563536700.png', '275', '275', '0', 0, 1, '2019-07-19 21:45:01', '2019-07-19 21:45:01'),
(89, 'kulfi ice ,,, 500ml', 'kulfi-ice-,,,-500ml', 17, 'h', 'public/images/products/1563536882.jpg', '125', '125', '0', 0, 1, '2019-07-19 21:48:03', '2019-07-19 21:48:03'),
(90, 'Full rice', 'full-rice', 3, 'p', 'public/images/products/1563551923.jpg', '140', '140', '0', 0, 1, '2019-07-20 01:58:43', '2019-07-20 01:58:43'),
(91, 'Haff rice', 'haff-rice', 3, 'k', 'public/images/products/1563551990.jpg', '70', '70', '0', 0, 1, '2019-07-20 01:59:50', '2019-07-20 01:59:50'),
(92, 'sprite', 'sprite', 13, ';', 'public/images/products/1563610615.jpg', '18', '18', '0', 0, 1, '2019-07-20 18:16:55', '2019-07-20 18:16:55'),
(93, 'agg per pis', 'agg-per-pis', 3, 'h', 'public/images/products/1563707148.jpg', '10', '10', '0', 0, 1, '2019-07-21 21:05:48', '2019-07-21 21:23:27'),
(94, 'mutton meat 1 piss', 'mutton-meat-1-piss', 3, 'j', 'public/images/products/1563707205.jpg', '80', '80', '0', 0, 1, '2019-07-21 21:06:45', '2019-07-21 21:06:45'),
(95, 'poreta 1 piss', 'poreta-1-piss', 8, 'd', 'public/images/products/1564069377.jpg', '10', '10', '0', 0, 1, '2019-07-26 01:42:57', '2019-07-26 01:42:57'),
(96, 'warps swawarma', 'warps-swawarma', 7, 'h', 'public/images/products/1564154229.jpg', '190', '190', '0', 0, 1, '2019-07-27 01:17:09', '2019-07-27 01:17:09'),
(97, 'borhani 500ml', 'borhani-500ml', 3, 'd', 'public/images/products/1564552586.jpg', '50', '50', '0', 0, 1, '2019-07-31 15:56:26', '2019-07-31 15:56:26');

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
(1, '0', 1, '45', '1', NULL, '2019-06-18', NULL, 9, '2019-06-18 21:54:17', '2019-07-11 12:02:55'),
(2, '0', 2, '950', '2', NULL, '2019-06-18', NULL, 9, '2019-06-18 21:54:17', '2019-07-15 14:30:37'),
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
(26, '0', 78, '20', '1', NULL, '2019-06-26', NULL, 9, '2019-06-26 19:45:08', '2019-07-15 14:28:43'),
(27, '0', 77, '30', '1', NULL, '2019-06-26', NULL, 9, '2019-06-26 19:45:08', '2019-07-15 14:28:31'),
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
(41, '0', 78, '12', '12', NULL, '2019-06-26', NULL, 1, '2019-06-26 20:41:29', '2019-06-26 20:41:29'),
(42, '1561558017232', 31, '196', '1.7', NULL, '2019-06-26', NULL, 1, '2019-06-27 00:06:57', '2019-06-27 00:06:57'),
(43, '1561558017232', 54, '45', '19', NULL, '2019-06-26', NULL, 1, '2019-06-27 00:06:57', '2019-06-27 00:06:57'),
(44, '1562840001850', 75, '10', '10', NULL, '2019-07-11', NULL, 9, '2019-07-11 20:13:21', '2019-07-15 14:28:20');

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
(31, 'কাজু বাদাম', '0400', 'কাজু বাদাম4', 1, '2019-06-22 02:36:03', '2019-07-29 18:53:00'),
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
(77, 'টেস্টিং লবন', '0', 'টেস্টিং লবন', 9, '2019-06-23 16:14:20', '2019-07-29 18:50:04'),
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
(1, '[\"6\",\"88\",\"111\",\"94\",\"109\",\"33\",\"38\",\"120\",\"125\",\"131\",\"82\",\"3\",\"4\",\"100\"]', '[\"104\",\"101\",\"116\",\"108\",\"126\",\"121\",\"113\",\"112\",\"132\",\"117\",\"133\",\"95\",\"123\",\"34\",\"96\",\"90\",\"35\",\"89\",\"40\",\"39\",\"122\",\"134\",\"127\"]', '[\"93\",\"102\",\"124\",\"92\",\"128\",\"91\",\"129\",\"118\",\"42\",\"114\",\"36\",\"106\",\"98\",\"103\",\"37\",\"115\",\"97\",\"41\",\"5\",\"130\",\"119\",\"99\",\"107\"]', 1, 1, 1, '2019-04-15 03:12:29', '2019-07-14 14:03:21'),
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
  `is_order` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `pickdate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `admin_id`, `customer_name`, `customer_mobile`, `total_price`, `discount`, `discount_2`, `vat`, `total_price_after_discount`, `total_product`, `given_money`, `is_order`, `status`, `pickdate`, `created_at`, `updated_at`) VALUES
(1, 1, 'Rimat', '01710511241', '200.00', 0.00, 0.00, 0.00, 200.00, 1.00, 200.00, 0, 0, NULL, '2019-06-18 21:12:12', '2019-06-18 21:12:12'),
(2, 1, 'S.M.Sujan', '01402005516', '300.00', 100.00, 0.00, 0.00, 0.00, 5.00, 100.00, 0, 0, NULL, '2019-06-18 21:13:01', '2019-06-18 21:13:01'),
(3, 1, NULL, NULL, '380.00', 0.00, 0.00, 0.00, 380.00, 3.00, 500.00, 0, 0, NULL, '2019-06-18 21:42:40', '2019-06-18 21:42:40'),
(4, 1, NULL, NULL, '380.00', 0.00, 0.00, 0.00, 380.00, 3.00, 500.00, 0, 1, NULL, '2019-06-18 21:43:56', '2019-06-18 21:43:56'),
(5, 1, 'Sabbir', '01234567890', '200.00', 15.00, 0.00, 15.00, 200.00, 1.00, 500.00, 0, 1, NULL, '2019-06-19 22:32:30', '2019-06-19 22:32:30'),
(6, 1, 'fdhfghfg', '123456798', '200.00', 0.00, 0.00, 15.00, 230.00, 1.00, 300.00, 0, 1, NULL, '2019-06-19 23:29:55', '2019-06-19 23:29:55'),
(7, 1, 'Sabbir', '4564651451', '200.00', 0.00, 0.00, 15.00, 230.00, 1.00, 300.00, 0, 1, NULL, '2019-06-19 23:36:05', '2019-06-19 23:36:05'),
(8, 1, 'AfzalSabbir', '184792936382', '890.00', 15.00, 0.00, 15.00, 890.00, 4.00, 1000.00, 0, 1, NULL, '2019-06-20 00:15:44', '2019-06-20 00:15:44'),
(9, 1, 'fgdfg', '132456', '500.00', 0.00, 0.00, 15.00, 575.00, 1.00, 600.00, 0, 0, NULL, '2019-06-20 15:09:51', '2019-06-20 15:09:51'),
(10, 1, 'sabbir', '454564545', '750.00', 0.00, 0.00, 15.00, 862.50, 3.00, 1200.00, 0, 1, NULL, '2019-06-20 18:25:25', '2019-06-20 18:25:25'),
(11, 1, NULL, NULL, '320.00', 20.00, 0.00, 0.00, 300.00, 1.00, 500.00, 0, 1, NULL, '2019-06-22 14:06:03', '2019-06-22 14:06:03'),
(12, 1, NULL, NULL, '520.00', 0.00, 0.00, 15.00, 598.00, 2.00, 1000.00, 0, 1, NULL, '2019-06-22 16:23:23', '2019-06-22 16:23:23'),
(13, 1, 'Sabbir', '4646465456', '740.00', 0.00, 0.00, 15.00, 851.00, 3.00, 900.00, 0, 1, NULL, '2019-06-22 16:28:48', '2019-06-22 16:28:48'),
(14, 1, 'asdsad', '5146546', '350.00', 0.00, 0.00, 15.00, 402.50, 2.00, 500.00, 0, 1, NULL, '2019-06-22 16:32:55', '2019-06-22 16:32:55'),
(15, 1, NULL, NULL, '770.00', 70.00, 0.00, 15.00, 815.50, 3.00, 820.00, 0, 1, NULL, '2019-06-22 16:34:04', '2019-06-22 16:34:04'),
(16, 1, NULL, NULL, '630.00', 0.00, 0.00, 15.00, 724.50, 4.00, 800.00, 0, 1, NULL, '2019-06-23 16:44:20', '2019-06-23 16:44:20'),
(17, 1, NULL, NULL, '690.00', 0.00, 0.00, 15.00, 793.50, 3.00, 1000.00, 0, 1, NULL, '2019-06-23 16:45:13', '2019-06-23 16:45:13'),
(18, 1, NULL, NULL, '180.00', 10.00, 0.00, 15.00, 197.00, 2.00, 200.00, 0, 1, NULL, '2019-06-23 20:02:24', '2019-06-23 20:02:24'),
(19, 1, NULL, NULL, '391.00', 0.00, 0.00, 15.00, 449.65, 9.00, 500.00, 0, 1, NULL, '2019-06-23 20:58:55', '2019-06-23 20:58:55'),
(20, 1, NULL, NULL, '170.00', 53.00, 10.00, 100.00, 270.00, 1.00, 300.00, 0, 1, NULL, '2019-06-24 16:20:36', '2019-06-24 16:20:36'),
(21, 1, 'Sabbir', '123456789', '224.62', 0.00, 0.00, 0.00, 224.62, 1.10, 300.00, 0, 1, NULL, '2019-06-24 16:56:58', '2019-06-24 16:56:58'),
(22, 1, NULL, NULL, '940.00', 10.00, 0.00, 0.00, 930.00, 4.00, 1200.00, 0, 1, NULL, '2019-06-25 00:57:58', '2019-06-25 00:57:58'),
(23, 1, NULL, NULL, '3,040.00', 0.00, 0.00, 0.00, 3040.00, 9.50, 4000.00, 0, 1, NULL, '2019-06-25 14:40:42', '2019-06-25 14:40:42'),
(24, 1, NULL, NULL, '2,664.00', 2000.00, 20.00, 0.00, 131.20, 19.00, 10000.00, 0, 1, NULL, '2019-06-25 21:39:49', '2019-06-25 21:39:49'),
(25, 1, NULL, NULL, '670.00', 0.00, 10.00, 0.00, 603.00, 3.00, 2000.00, 0, 1, NULL, '2019-06-26 02:27:31', '2019-06-26 02:27:31'),
(26, 1, NULL, NULL, '1,600.00', 100.00, 0.00, 0.00, 1500.00, 10.00, 1500.00, 0, 1, NULL, '2019-06-26 15:33:06', '2019-06-26 15:33:06'),
(27, 1, NULL, NULL, '2,430.00', 0.00, 0.00, 0.00, 2430.00, 11.00, 2500.00, 0, 1, NULL, '2019-06-26 20:49:42', '2019-06-26 20:49:42'),
(28, 1, NULL, NULL, '1,270.00', 0.00, 0.00, 0.00, 1270.00, 7.00, 2000.00, 0, 0, NULL, '2019-06-26 21:04:16', '2019-06-26 21:04:16'),
(29, 1, 'Fatema', '01711236589', '600.00', 150.00, 0.00, 3.00, 468.00, 4.00, 500.00, 0, 1, NULL, '2019-07-13 19:06:34', '2019-07-13 19:06:34'),
(30, 1, 'erwer', '456456456', '170.00', 0.00, 0.00, 0.00, 170.00, 1.00, 170.00, 0, 1, NULL, '2019-07-15 00:39:23', '2019-07-15 00:39:23'),
(31, 1, 'Jubayer', '3435', '320.00', 0.00, 0.00, 0.00, 320.00, 1.00, 320.00, 0, 1, '2019-07-14', '2019-07-15 00:47:32', '2019-07-15 00:47:32'),
(32, 1, 'shamim', '097438734', '280.00', 0.00, 0.00, 0.00, 280.00, 1.00, 280.00, 0, 1, '2019-07-14', '2019-07-15 00:51:13', '2019-07-15 00:51:13'),
(33, 1, NULL, NULL, '1,070.00', 63.00, 10.00, 10.00, 1007.00, 4.00, 1100.00, 0, 1, '2019-07-15', '2019-07-15 15:59:15', '2019-07-15 15:59:15'),
(34, 1, NULL, NULL, '250.00', 0.00, 0.00, 0.00, 250.00, 1.00, 300.00, 0, 1, '2019-07-15', '2019-07-15 17:54:05', '2019-07-15 17:54:05'),
(35, 1, NULL, NULL, '250.00', 0.00, 0.00, 0.00, 250.00, 1.00, 250.00, 0, 1, '2019-07-15', '2019-07-15 17:56:57', '2019-07-15 17:56:57'),
(36, 1, NULL, NULL, '250.00', 0.00, 0.00, 0.00, 250.00, 1.00, 300.00, 0, 1, '2019-07-15', '2019-07-15 18:02:43', '2019-07-15 18:02:43'),
(37, 1, NULL, NULL, '420.00', 0.00, 0.00, 0.00, 420.00, 2.00, 500.00, 0, 1, '2019-07-15', '2019-07-15 18:02:59', '2019-07-15 18:02:59'),
(38, 1, NULL, NULL, '570.00', 0.00, 0.00, 0.00, 570.00, 2.00, 1000.00, 0, 1, '2019-07-15', '2019-07-15 18:05:42', '2019-07-15 18:05:42'),
(39, 1, 'fgdg', '54', '250.00', 0.00, 0.00, 0.00, 250.00, 1.00, 250.00, 0, 1, '2019-07-15', '2019-07-15 20:19:44', '2019-07-15 20:19:44'),
(40, 1, 'dfg', '675', '280.00', 0.00, 0.00, 0.00, 280.00, 2.00, 280.00, 0, 1, '2019-07-15', '2019-07-15 20:22:46', '2019-07-15 20:22:46'),
(41, 1, 'dfg', '5464', '490.00', 0.00, 0.00, 0.00, 490.00, 2.00, 490.00, 1, 1, '2019-07-15', '2019-07-15 20:35:35', '2019-07-15 20:35:35'),
(42, 1, NULL, NULL, '170.00', 0.00, 0.00, 0.00, 170.00, 1.00, 170.00, 1, 1, '2019-07-16', '2019-07-16 16:37:36', '2019-07-16 16:37:36'),
(43, 1, NULL, NULL, '512.00', 12.00, 0.00, 0.00, 500.00, 7.00, 500.00, 0, 1, '2019-07-16', '2019-07-17 00:45:40', '2019-07-17 00:45:40'),
(44, 1, NULL, NULL, '708.00', 8.00, 0.00, 10.00, 770.80, 12.00, 1000.00, 0, 0, '2019-07-16', '2019-07-17 01:31:28', '2019-07-17 01:31:28'),
(45, 1, NULL, NULL, '1,420.00', 0.00, 0.00, 0.00, 1420.00, 6.00, 1420.00, 0, 1, '2019-07-16', '2019-07-17 01:50:10', '2019-07-17 01:50:10'),
(46, 1, NULL, NULL, '570.00', 0.00, 0.00, 0.00, 570.00, 2.00, 570.00, 0, 1, '2019-07-17', '2019-07-17 19:03:35', '2019-07-17 19:03:35'),
(47, 1, NULL, NULL, '630.00', 0.00, 0.00, 0.00, 630.00, 2.00, 630.00, 0, 1, '2019-07-17', '2019-07-17 19:04:23', '2019-07-17 19:04:23'),
(48, 1, NULL, NULL, '419.00', 0.00, 0.00, 0.00, 419.00, 6.00, 419.00, 0, 1, '2019-07-17', '2019-07-17 19:42:31', '2019-07-17 19:42:31'),
(49, 1, NULL, NULL, '589.00', 0.00, 0.00, 0.00, 589.00, 7.00, 1000.00, 0, 1, '2019-07-17', '2019-07-17 19:44:29', '2019-07-17 19:44:29'),
(50, 1, NULL, NULL, '614.00', 25.00, 0.00, 0.00, 589.00, 8.00, 1000.00, 0, 1, '2019-07-17', '2019-07-17 19:46:04', '2019-07-17 19:46:04'),
(51, 1, NULL, NULL, '1,930.00', 10.00, 0.00, 0.00, 1920.00, 9.00, 2000.00, 0, 0, '2019-07-17', '2019-07-17 19:50:26', '2019-07-17 19:50:26'),
(52, 1, NULL, NULL, '650.00', 0.00, 0.00, 0.00, 650.00, 3.00, 6510.00, 0, 1, '2019-07-17', '2019-07-17 20:20:30', '2019-07-17 20:20:30'),
(53, 1, NULL, NULL, '390.00', 0.00, 0.00, 0.00, 390.00, 3.00, 390.00, 0, 1, '2019-07-17', '2019-07-17 20:54:05', '2019-07-17 20:54:05'),
(54, 1, NULL, NULL, '180.00', 0.00, 0.00, 0.00, 180.00, 3.00, 180.00, 0, 1, '2019-07-17', '2019-07-17 21:17:12', '2019-07-17 21:17:12'),
(55, 1, NULL, NULL, '210.00', 0.00, 0.00, 0.00, 210.00, 5.00, 210.00, 0, 1, '2019-07-17', '2019-07-17 21:20:24', '2019-07-17 21:20:24'),
(56, 1, NULL, NULL, '30.00', 0.00, 0.00, 0.00, 30.00, 1.00, 30.00, 0, 1, '2019-07-17', '2019-07-17 21:24:02', '2019-07-17 21:24:02'),
(57, 1, NULL, NULL, '180.00', 0.00, 0.00, 0.00, 180.00, 3.00, 180.00, 0, 1, '2019-07-17', '2019-07-17 21:57:42', '2019-07-17 21:57:42'),
(58, 1, NULL, NULL, '345.00', 0.00, 0.00, 0.00, 345.00, 2.00, 345.00, 0, 1, '2019-07-17', '2019-07-17 22:17:32', '2019-07-17 22:17:32'),
(59, 1, NULL, NULL, '1,100.00', 0.00, 0.00, 0.00, 1100.00, 2.00, 1100.00, 0, 1, '2019-07-17', '2019-07-17 22:59:40', '2019-07-17 22:59:40'),
(60, 1, NULL, NULL, '150.00', 0.00, 10.00, 15.00, 157.50, 1.00, 500.00, 0, 1, '2019-07-17', '2019-07-17 23:04:03', '2019-07-17 23:04:03'),
(61, 1, NULL, NULL, '320.00', 0.00, 5.00, 0.00, 304.00, 1.00, 500.00, 0, 1, '2019-07-17', '2019-07-17 23:08:24', '2019-07-17 23:08:24'),
(62, 1, 'dfgscv m', '01752313954', '350.00', 0.00, 0.00, 0.00, 350.00, 1.00, 500.00, 0, 1, '2019-07-17', '2019-07-17 23:13:32', '2019-07-17 23:13:32'),
(63, 1, NULL, NULL, '1,237.00', 0.00, 0.00, 0.00, 1237.00, 13.00, 1237.00, 0, 1, '2019-07-17', '2019-07-18 01:30:31', '2019-07-18 01:30:31'),
(64, 1, NULL, NULL, '350.00', 0.00, 0.00, 0.00, 350.00, 4.00, 350.00, 0, 1, '2019-07-17', '2019-07-18 01:49:44', '2019-07-18 01:49:44'),
(65, 1, NULL, NULL, '305.00', 0.00, 0.00, 0.00, 305.00, 3.00, 305.00, 0, 1, '2019-07-17', '2019-07-18 02:05:21', '2019-07-18 02:05:21'),
(66, 1, NULL, NULL, '380.00', 0.00, 0.00, 0.00, 380.00, 2.00, 380.00, 0, 1, '2019-07-17', '2019-07-18 02:38:00', '2019-07-18 02:38:00'),
(67, 1, NULL, NULL, '280.00', 0.00, 0.00, 0.00, 280.00, 3.00, 280.00, 0, 1, '2019-07-17', '2019-07-18 02:40:09', '2019-07-18 02:40:09'),
(68, 1, NULL, NULL, '1,146.00', 0.00, 0.00, 0.00, 1146.00, 10.00, 1146.00, 0, 1, '2019-07-17', '2019-07-18 02:59:38', '2019-07-18 02:59:38'),
(69, 1, NULL, NULL, '1,086.00', 0.00, 0.00, 0.00, 1086.00, 9.00, 1086.00, 0, 1, '2019-07-17', '2019-07-18 03:04:51', '2019-07-18 03:04:51'),
(70, 1, NULL, NULL, '510.00', 0.00, 0.00, 0.00, 510.00, 3.00, 510.00, 0, 1, '2019-07-17', '2019-07-18 03:08:33', '2019-07-18 03:08:33'),
(71, 1, NULL, NULL, '250.00', 0.00, 0.00, 0.00, 250.00, 1.00, 250.00, 0, 1, '2019-07-17', '2019-07-18 03:55:25', '2019-07-18 03:55:25'),
(72, 1, NULL, NULL, '250.00', 0.00, 0.00, 0.00, 250.00, 1.00, 250.00, 0, 1, '2019-07-17', '2019-07-18 03:59:36', '2019-07-18 03:59:36'),
(73, 1, NULL, NULL, '160.00', 0.00, 0.00, 0.00, 160.00, 1.00, 160.00, 0, 0, '2019-07-18', '2019-07-18 16:38:09', '2019-07-18 16:38:09'),
(74, 1, NULL, NULL, '160.00', 0.00, 0.00, 0.00, 160.00, 2.00, 160.00, 0, 1, '2019-07-18', '2019-07-18 17:01:03', '2019-07-18 17:01:03'),
(75, 1, NULL, NULL, '365.00', 0.00, 0.00, 0.00, 365.00, 5.00, 365.00, 0, 1, '2019-07-18', '2019-07-18 17:08:07', '2019-07-18 17:08:07'),
(76, 1, NULL, NULL, '327.00', 0.00, 0.00, 0.00, 327.00, 5.00, 327.00, 0, 1, '2019-07-18', '2019-07-18 17:30:21', '2019-07-18 17:30:21'),
(77, 1, NULL, NULL, '170.00', 0.00, 0.00, 0.00, 170.00, 1.00, 170.00, 0, 1, '2019-07-18', '2019-07-18 18:31:14', '2019-07-18 18:31:14'),
(78, 1, NULL, NULL, '535.00', 0.00, 0.00, 0.00, 535.00, 4.00, 535.00, 0, 1, '2019-07-18', '2019-07-18 18:37:37', '2019-07-18 18:37:37'),
(79, 1, NULL, NULL, '595.00', 0.00, 0.00, 0.00, 595.00, 5.00, 595.00, 0, 1, '2019-07-18', '2019-07-18 18:51:14', '2019-07-18 18:51:14'),
(80, 1, NULL, NULL, '186.00', 1.00, 0.00, 0.00, 185.00, 2.00, 185.00, 0, 0, '2019-07-18', '2019-07-18 19:04:52', '2019-07-18 19:04:52'),
(81, 1, NULL, NULL, '156.00', 1.00, 0.00, 0.00, 155.00, 2.00, 155.00, 0, 1, '2019-07-18', '2019-07-18 19:08:57', '2019-07-18 19:08:57'),
(82, 1, NULL, NULL, '170.00', 0.00, 0.00, 0.00, 170.00, 1.00, 170.00, 0, 1, '2019-07-18', '2019-07-18 19:19:52', '2019-07-18 19:19:52'),
(83, 1, NULL, NULL, '185.00', 0.00, 0.00, 0.00, 185.00, 2.00, 185.00, 0, 0, '2019-07-18', '2019-07-18 21:24:51', '2019-07-18 21:24:51'),
(84, 1, NULL, NULL, '450.00', 0.00, 0.00, 0.00, 450.00, 2.00, 450.00, 0, 0, '2019-07-18', '2019-07-18 21:32:04', '2019-07-18 21:32:04'),
(85, 1, NULL, NULL, '240.00', 0.00, 0.00, 0.00, 240.00, 3.00, 240.00, 0, 1, '2019-07-18', '2019-07-18 21:51:44', '2019-07-18 21:51:44'),
(86, 1, NULL, NULL, '535.00', 0.00, 0.00, 0.00, 535.00, 4.00, 535.00, 0, 1, '2019-07-18', '2019-07-18 21:55:10', '2019-07-18 21:55:10'),
(87, 1, NULL, NULL, '195.00', 0.00, 0.00, 0.00, 195.00, 2.00, 195.00, 0, 1, '2019-07-18', '2019-07-18 21:56:12', '2019-07-18 21:56:12'),
(88, 1, NULL, NULL, '305.00', 0.00, 0.00, 0.00, 305.00, 3.00, 305.00, 0, 1, '2019-07-18', '2019-07-18 22:33:44', '2019-07-18 22:33:44'),
(89, 1, NULL, NULL, '100.00', 0.00, 0.00, 0.00, 100.00, 1.00, 100.00, 0, 1, '2019-07-18', '2019-07-18 22:44:42', '2019-07-18 22:44:42'),
(90, 1, NULL, NULL, '535.00', 0.00, 0.00, 0.00, 535.00, 4.00, 535.00, 0, 1, '2019-07-18', '2019-07-18 23:22:55', '2019-07-18 23:22:55'),
(91, 1, NULL, NULL, '250.00', 0.00, 0.00, 0.00, 250.00, 1.00, 250.00, 0, 1, '2019-07-18', '2019-07-18 23:32:30', '2019-07-18 23:32:30'),
(92, 1, NULL, NULL, '295.00', 0.00, 0.00, 0.00, 295.00, 3.00, 295.00, 0, 1, '2019-07-18', '2019-07-18 23:57:46', '2019-07-18 23:57:46'),
(93, 1, NULL, NULL, '605.00', 0.00, 0.00, 0.00, 605.00, 9.00, 605.00, 0, 1, '2019-07-18', '2019-07-19 00:01:09', '2019-07-19 00:01:09'),
(94, 1, NULL, NULL, '270.00', 0.00, 0.00, 0.00, 270.00, 3.00, 270.00, 0, 1, '2019-07-18', '2019-07-19 00:16:36', '2019-07-19 00:16:36'),
(95, 1, NULL, NULL, '780.00', 0.00, 0.00, 0.00, 780.00, 5.00, 780.00, 0, 1, '2019-07-18', '2019-07-19 00:49:58', '2019-07-19 00:49:58'),
(96, 1, NULL, NULL, '280.00', 0.00, 0.00, 0.00, 280.00, 2.00, 280.00, 0, 1, '2019-07-18', '2019-07-19 00:58:03', '2019-07-19 00:58:03'),
(97, 1, NULL, NULL, '140.00', 0.00, 0.00, 0.00, 140.00, 1.00, 140.00, 0, 1, '2019-07-18', '2019-07-19 02:04:33', '2019-07-19 02:04:33'),
(98, 1, NULL, NULL, '460.00', 0.00, 0.00, 0.00, 460.00, 4.00, 460.00, 0, 0, '2019-07-18', '2019-07-19 02:08:06', '2019-07-19 02:08:06'),
(99, 1, NULL, NULL, '460.00', 50.00, 0.00, 0.00, 410.00, 4.00, 410.00, 0, 1, '2019-07-18', '2019-07-19 02:12:07', '2019-07-19 02:12:07'),
(100, 1, NULL, NULL, '195.00', 30.00, 0.00, 0.00, 165.00, 4.00, 165.00, 0, 0, '2019-07-18', '2019-07-19 02:28:24', '2019-07-19 02:28:24'),
(101, 1, NULL, NULL, '723.00', 8.00, 0.00, 0.00, 715.00, 6.00, 715.00, 0, 1, '2019-07-18', '2019-07-19 02:38:05', '2019-07-19 02:38:05'),
(102, 1, NULL, NULL, '890.00', 30.00, 0.00, 0.00, 860.00, 9.00, 860.00, 0, 0, '2019-07-18', '2019-07-19 02:55:06', '2019-07-19 02:55:06'),
(103, 1, NULL, NULL, '810.00', 30.00, 0.00, 0.00, 780.00, 7.00, 780.00, 0, 0, '2019-07-18', '2019-07-19 02:59:32', '2019-07-19 02:59:32'),
(104, 1, NULL, NULL, '870.00', 30.00, 0.00, 0.00, 840.00, 8.00, 840.00, 0, 1, '2019-07-18', '2019-07-19 03:02:06', '2019-07-19 03:02:06'),
(105, 1, NULL, NULL, '340.00', 0.00, 0.00, 0.00, 340.00, 2.00, 340.00, 0, 1, '2019-07-18', '2019-07-19 03:03:25', '2019-07-19 03:03:25'),
(106, 1, NULL, NULL, '330.00', 0.00, 0.00, 0.00, 330.00, 4.00, 330.00, 0, 1, '2019-07-19', '2019-07-19 15:58:42', '2019-07-19 15:58:42'),
(107, 1, NULL, NULL, '560.00', 0.00, 0.00, 0.00, 560.00, 4.00, 560.00, 0, 1, '2019-07-19', '2019-07-19 16:46:27', '2019-07-19 16:46:27'),
(108, 1, NULL, NULL, '170.00', 0.00, 0.00, 0.00, 170.00, 1.00, 170.00, 0, 1, '2019-07-19', '2019-07-19 17:00:08', '2019-07-19 17:00:08'),
(109, 1, NULL, NULL, '560.00', 0.00, 0.00, 0.00, 560.00, 4.00, 560.00, 0, 1, '2019-07-19', '2019-07-19 17:04:58', '2019-07-19 17:04:58'),
(110, 1, NULL, NULL, '140.00', 0.00, 0.00, 0.00, 140.00, 1.00, 140.00, 0, 1, '2019-07-19', '2019-07-19 17:34:35', '2019-07-19 17:34:35'),
(111, 1, NULL, NULL, '376.00', 1.00, 0.00, 0.00, 375.00, 4.00, 375.00, 0, 1, '2019-07-19', '2019-07-19 17:48:54', '2019-07-19 17:48:54'),
(112, 1, NULL, NULL, '340.00', 0.00, 0.00, 0.00, 340.00, 2.00, 340.00, 0, 1, '2019-07-19', '2019-07-19 19:43:54', '2019-07-19 19:43:54'),
(113, 1, NULL, NULL, '331.00', 1.00, 0.00, 0.00, 330.00, 6.00, 330.00, 0, 1, '2019-07-19', '2019-07-19 22:43:08', '2019-07-19 22:43:08'),
(114, 1, NULL, NULL, '315.00', 20.00, 0.00, 0.00, 295.00, 3.00, 295.00, 0, 0, '2019-07-19', '2019-07-19 23:05:11', '2019-07-19 23:05:11'),
(115, 1, NULL, NULL, '960.00', 0.00, 0.00, 0.00, 960.00, 13.00, 960.00, 0, 1, '2019-07-19', '2019-07-19 23:18:04', '2019-07-19 23:18:04'),
(116, 1, NULL, NULL, '435.00', 25.00, 0.00, 0.00, 410.00, 4.00, 410.00, 0, 1, '2019-07-19', '2019-07-19 23:23:57', '2019-07-19 23:23:57'),
(117, 1, NULL, NULL, '240.00', 0.00, 0.00, 0.00, 240.00, 4.00, 240.00, 0, 1, '2019-07-19', '2019-07-19 23:46:19', '2019-07-19 23:46:19'),
(118, 1, NULL, NULL, '170.00', 0.00, 0.00, 0.00, 170.00, 1.00, 170.00, 0, 1, '2019-07-19', '2019-07-20 00:03:37', '2019-07-20 00:03:37'),
(119, 1, NULL, NULL, '510.00', 0.00, 0.00, 0.00, 510.00, 3.00, 510.00, 0, 1, '2019-07-19', '2019-07-20 00:36:02', '2019-07-20 00:36:02'),
(120, 1, NULL, NULL, '420.00', 0.00, 0.00, 0.00, 420.00, 3.00, 420.00, 0, 1, '2019-07-19', '2019-07-20 00:41:57', '2019-07-20 00:41:57'),
(121, 1, NULL, NULL, '340.00', 0.00, 0.00, 0.00, 340.00, 2.00, 340.00, 0, 1, '2019-07-19', '2019-07-20 01:08:10', '2019-07-20 01:08:10'),
(122, 1, NULL, NULL, '365.00', 0.00, 0.00, 0.00, 365.00, 3.00, 365.00, 0, 1, '2019-07-19', '2019-07-20 01:20:43', '2019-07-20 01:20:43'),
(123, 1, NULL, NULL, '430.00', 0.00, 0.00, 0.00, 430.00, 5.00, 430.00, 0, 1, '2019-07-19', '2019-07-20 01:28:44', '2019-07-20 01:28:44'),
(124, 1, NULL, NULL, '381.00', 1.00, 0.00, 0.00, 380.00, 4.00, 380.00, 0, 1, '2019-07-19', '2019-07-20 02:02:36', '2019-07-20 02:02:36'),
(125, 1, NULL, NULL, '405.00', 0.00, 0.00, 0.00, 405.00, 4.00, 405.00, 0, 1, '2019-07-19', '2019-07-20 02:09:05', '2019-07-20 02:09:05'),
(126, 1, NULL, NULL, '30.00', 0.00, 0.00, 0.00, 30.00, 1.00, 30.00, 0, 1, '2019-07-20', '2019-07-20 15:48:44', '2019-07-20 15:48:44'),
(127, 1, NULL, NULL, '320.00', 0.00, 0.00, 0.00, 320.00, 6.00, 320.00, 0, 1, '2019-07-20', '2019-07-20 16:48:33', '2019-07-20 16:48:33'),
(128, 1, NULL, NULL, '510.00', 0.00, 0.00, 0.00, 510.00, 3.00, 510.00, 0, 1, '2019-07-20', '2019-07-20 17:47:23', '2019-07-20 17:47:23'),
(129, 1, NULL, NULL, '175.00', 0.00, 0.00, 0.00, 175.00, 3.00, 175.00, 0, 1, '2019-07-20', '2019-07-20 18:06:45', '2019-07-20 18:06:45'),
(130, 1, NULL, NULL, '1,018.00', 0.00, 0.00, 0.00, 1018.00, 5.00, 1018.00, 0, 1, '2019-07-20', '2019-07-20 18:20:13', '2019-07-20 18:20:13'),
(131, 1, NULL, NULL, '540.00', 0.00, 0.00, 0.00, 540.00, 6.00, 540.00, 0, 1, '2019-07-20', '2019-07-20 18:55:46', '2019-07-20 18:55:46'),
(132, 1, NULL, NULL, '300.00', 0.00, 0.00, 0.00, 300.00, 2.00, 300.00, 0, 1, '2019-07-20', '2019-07-20 19:03:18', '2019-07-20 19:03:18'),
(133, 1, NULL, NULL, '595.00', 0.00, 0.00, 0.00, 595.00, 5.00, 595.00, 0, 1, '2019-07-20', '2019-07-20 20:19:23', '2019-07-20 20:19:23'),
(134, 1, NULL, NULL, '140.00', 0.00, 0.00, 0.00, 140.00, 1.00, 140.00, 0, 1, '2019-07-20', '2019-07-20 20:20:36', '2019-07-20 20:20:36'),
(135, 1, NULL, NULL, '318.00', 0.00, 0.00, 0.00, 318.00, 4.00, 318.00, 0, 1, '2019-07-20', '2019-07-20 22:16:39', '2019-07-20 22:16:39'),
(136, 1, NULL, NULL, '345.00', 0.00, 0.00, 0.00, 345.00, 2.00, 345.00, 0, 1, '2019-07-20', '2019-07-20 22:53:23', '2019-07-20 22:53:23'),
(137, 1, NULL, NULL, '135.00', 0.00, 0.00, 0.00, 135.00, 3.00, 135.00, 0, 1, '2019-07-20', '2019-07-20 23:21:20', '2019-07-20 23:21:20'),
(138, 1, NULL, NULL, '150.00', 0.00, 0.00, 0.00, 150.00, 3.00, 150.00, 0, 1, '2019-07-21', '2019-07-21 15:53:46', '2019-07-21 15:53:46'),
(139, 1, NULL, NULL, '185.00', 0.00, 0.00, 0.00, 185.00, 2.00, 185.00, 0, 1, '2019-07-21', '2019-07-21 17:51:26', '2019-07-21 17:51:26'),
(140, 1, NULL, NULL, '185.00', 0.00, 0.00, 0.00, 185.00, 2.00, 185.00, 0, 1, '2019-07-21', '2019-07-21 18:28:07', '2019-07-21 18:28:07'),
(141, 1, NULL, NULL, '170.00', 0.00, 0.00, 0.00, 170.00, 1.00, 170.00, 0, 1, '2019-07-21', '2019-07-21 18:45:21', '2019-07-21 18:45:21'),
(142, 1, NULL, NULL, '371.00', 29.00, 0.00, 0.00, 342.00, 4.00, 342.00, 0, 0, '2019-07-21', '2019-07-21 18:54:27', '2019-07-21 18:54:27'),
(143, 1, NULL, NULL, '371.00', 31.00, 0.00, 0.00, 340.00, 4.00, 340.00, 0, 1, '2019-07-21', '2019-07-21 18:57:21', '2019-07-21 18:57:21'),
(144, 1, NULL, NULL, '475.00', 0.00, 0.00, 0.00, 475.00, 4.00, 475.00, 0, 1, '2019-07-21', '2019-07-21 19:27:27', '2019-07-21 19:27:27'),
(145, 1, NULL, NULL, '320.00', 0.00, 0.00, 0.00, 320.00, 1.00, 320.00, 0, 1, '2019-07-21', '2019-07-21 19:40:10', '2019-07-21 19:40:10'),
(146, 1, NULL, NULL, '185.00', 0.00, 0.00, 0.00, 185.00, 2.00, 185.00, 0, 1, '2019-07-21', '2019-07-21 19:45:07', '2019-07-21 19:45:07'),
(147, 1, NULL, NULL, '893.00', 3.00, 0.00, 0.00, 890.00, 12.00, 892.00, 0, 1, '2019-07-21', '2019-07-21 21:09:05', '2019-07-21 21:09:05'),
(148, 1, NULL, NULL, '365.00', 0.00, 0.00, 0.00, 365.00, 3.00, 365.00, 0, 1, '2019-07-21', '2019-07-21 22:25:35', '2019-07-21 22:25:35'),
(149, 1, NULL, NULL, '170.00', 0.00, 0.00, 0.00, 170.00, 1.00, 170.00, 0, 0, '2019-07-21', '2019-07-21 23:57:27', '2019-07-21 23:57:27'),
(150, 1, NULL, NULL, '535.00', 0.00, 0.00, 0.00, 535.00, 4.00, 535.00, 0, 1, '2019-07-21', '2019-07-22 00:16:54', '2019-07-22 00:16:54'),
(151, 1, NULL, NULL, '150.00', 0.00, 0.00, 0.00, 150.00, 1.00, 150.00, 0, 1, '2019-07-21', '2019-07-22 01:00:58', '2019-07-22 01:00:58'),
(152, 1, NULL, NULL, '300.00', 0.00, 0.00, 0.00, 300.00, 3.00, 300.00, 0, 1, '2019-07-21', '2019-07-22 01:31:28', '2019-07-22 01:31:28'),
(153, 1, NULL, NULL, '830.00', 0.00, 0.00, 0.00, 830.00, 11.00, 830.00, 0, 1, '2019-07-21', '2019-07-22 01:42:53', '2019-07-22 01:42:53'),
(154, 1, NULL, NULL, '643.00', 0.00, 0.00, 0.00, 643.00, 7.00, 643.00, 0, 1, '2019-07-21', '2019-07-22 02:53:00', '2019-07-22 02:53:00'),
(155, 1, NULL, NULL, '305.00', 0.00, 0.00, 0.00, 305.00, 5.00, 305.00, 0, 1, '2019-07-21', '2019-07-22 02:55:18', '2019-07-22 02:55:18'),
(156, 1, NULL, NULL, '270.00', 0.00, 0.00, 0.00, 270.00, 4.00, 270.00, 0, 1, '2019-07-22', '2019-07-22 15:58:32', '2019-07-22 15:58:32'),
(157, 1, NULL, NULL, '45.00', 0.00, 0.00, 0.00, 45.00, 3.00, 45.00, 0, 1, '2019-07-22', '2019-07-22 16:07:21', '2019-07-22 16:07:21'),
(158, 1, NULL, NULL, '355.00', 35.00, 0.00, 0.00, 320.00, 3.00, 320.00, 0, 1, '2019-07-22', '2019-07-22 16:33:40', '2019-07-22 16:33:40'),
(159, 1, NULL, NULL, '590.00', 0.00, 0.00, 0.00, 590.00, 5.00, 590.00, 0, 1, '2019-07-22', '2019-07-22 16:54:43', '2019-07-22 16:54:43'),
(160, 1, NULL, NULL, '185.00', 0.00, 0.00, 0.00, 185.00, 2.00, 185.00, 0, 1, '2019-07-22', '2019-07-22 18:43:28', '2019-07-22 18:43:28'),
(161, 1, NULL, NULL, '55.00', 0.00, 0.00, 0.00, 55.00, 2.00, 55.00, 0, 1, '2019-07-22', '2019-07-22 19:05:33', '2019-07-22 19:05:33'),
(162, 1, NULL, NULL, '1,102.00', 2.00, 0.00, 0.00, 1100.00, 12.00, 1100.00, 0, 1, '2019-07-22', '2019-07-22 19:08:40', '2019-07-22 19:08:40'),
(163, 1, NULL, NULL, '170.00', 0.00, 0.00, 0.00, 170.00, 1.00, 170.00, 0, 1, '2019-07-22', '2019-07-22 19:27:37', '2019-07-22 19:27:37'),
(164, 1, NULL, NULL, '171.00', 1.00, 0.00, 0.00, 170.00, 3.00, 170.00, 0, 1, '2019-07-22', '2019-07-22 19:30:45', '2019-07-22 19:30:45'),
(165, 1, NULL, NULL, '170.00', 20.00, 0.00, 0.00, 150.00, 1.00, 150.00, 0, 1, '2019-07-22', '2019-07-22 19:50:57', '2019-07-22 19:50:57'),
(166, 1, NULL, NULL, '435.00', 0.00, 0.00, 0.00, 435.00, 4.00, 435.00, 0, 1, '2019-07-22', '2019-07-22 19:54:21', '2019-07-22 19:54:21'),
(167, 1, NULL, NULL, '365.00', 0.00, 0.00, 0.00, 365.00, 3.00, 365.00, 0, 1, '2019-07-22', '2019-07-22 20:04:15', '2019-07-22 20:04:15'),
(168, 1, NULL, NULL, '535.00', 0.00, 0.00, 0.00, 535.00, 4.00, 535.00, 0, 1, '2019-07-22', '2019-07-22 20:11:39', '2019-07-22 20:11:39'),
(169, 1, NULL, NULL, '315.00', 0.00, 0.00, 0.00, 315.00, 3.00, 315.00, 0, 1, '2019-07-22', '2019-07-22 20:39:25', '2019-07-22 20:39:25'),
(170, 1, NULL, NULL, '640.00', 100.00, 0.00, 0.00, 540.00, 5.00, 540.00, 0, 1, '2019-07-22', '2019-07-22 21:21:41', '2019-07-22 21:21:41'),
(171, 1, NULL, NULL, '635.00', 0.00, 0.00, 0.00, 635.00, 6.00, 635.00, 0, 1, '2019-07-22', '2019-07-22 21:46:51', '2019-07-22 21:46:51'),
(172, 1, NULL, NULL, '510.00', 0.00, 0.00, 0.00, 510.00, 3.00, 510.00, 0, 1, '2019-07-22', '2019-07-22 22:06:37', '2019-07-22 22:06:37'),
(173, 1, NULL, NULL, '526.00', 1.00, 0.00, 0.00, 525.00, 4.00, 525.00, 0, 1, '2019-07-22', '2019-07-22 22:12:39', '2019-07-22 22:12:39'),
(174, 1, NULL, NULL, '50.00', 0.00, 0.00, 0.00, 50.00, 1.00, 50.00, 0, 0, '2019-07-22', '2019-07-22 22:35:02', '2019-07-22 22:35:02'),
(175, 1, NULL, NULL, '150.00', 15.00, 0.00, 0.00, 135.00, 1.00, 135.00, 0, 1, '2019-07-22', '2019-07-22 22:43:33', '2019-07-22 22:43:33'),
(176, 1, NULL, NULL, '100.00', 0.00, 0.00, 0.00, 100.00, 1.00, 100.00, 0, 1, '2019-07-22', '2019-07-23 00:32:48', '2019-07-23 00:32:48'),
(177, 1, NULL, NULL, '2,110.00', 205.00, 0.00, 0.00, 1905.00, 16.00, 1905.00, 0, 1, '2019-07-22', '2019-07-23 02:27:22', '2019-07-23 02:27:22'),
(178, 1, NULL, NULL, '560.00', 0.00, 0.00, 0.00, 560.00, 4.00, 560.00, 0, 1, '2019-07-23', '2019-07-23 18:01:10', '2019-07-23 18:01:10'),
(179, 1, NULL, NULL, '280.00', 0.00, 0.00, 0.00, 280.00, 2.00, 280.00, 0, 1, '2019-07-23', '2019-07-23 18:31:15', '2019-07-23 18:31:15'),
(180, 1, NULL, NULL, '401.00', 1.00, 0.00, 0.00, 400.00, 5.00, 400.00, 0, 1, '2019-07-23', '2019-07-23 18:48:34', '2019-07-23 18:48:34'),
(181, 1, NULL, NULL, '385.00', 0.00, 0.00, 0.00, 385.00, 4.00, 385.00, 0, 1, '2019-07-23', '2019-07-23 19:28:40', '2019-07-23 19:28:40'),
(182, 1, NULL, NULL, '835.00', 40.00, 0.00, 0.00, 795.00, 4.00, 795.00, 0, 1, '2019-07-23', '2019-07-23 19:51:54', '2019-07-23 19:51:54'),
(183, 1, NULL, NULL, '281.00', 1.00, 0.00, 0.00, 280.00, 5.00, 280.00, 0, 1, '2019-07-23', '2019-07-23 23:17:17', '2019-07-23 23:17:17'),
(184, 1, NULL, NULL, '515.00', 0.00, 0.00, 0.00, 515.00, 5.00, 515.00, 0, 1, '2019-07-23', '2019-07-23 23:46:08', '2019-07-23 23:46:08'),
(185, 1, NULL, NULL, '315.00', 0.00, 0.00, 0.00, 315.00, 3.00, 315.00, 0, 1, '2019-07-23', '2019-07-23 23:47:00', '2019-07-23 23:47:00'),
(186, 1, NULL, NULL, '160.00', 0.00, 0.00, 0.00, 160.00, 3.00, 160.00, 0, 1, '2019-07-23', '2019-07-24 00:28:12', '2019-07-24 00:28:12'),
(187, 1, NULL, NULL, '155.00', 0.00, 0.00, 0.00, 155.00, 2.00, 155.00, 0, 1, '2019-07-23', '2019-07-24 01:28:59', '2019-07-24 01:28:59'),
(188, 1, NULL, NULL, '140.00', 0.00, 0.00, 0.00, 140.00, 1.00, 140.00, 0, 1, '2019-07-23', '2019-07-24 01:43:30', '2019-07-24 01:43:30'),
(189, 1, NULL, NULL, '240.00', 20.00, 0.00, 0.00, 220.00, 2.00, 220.00, 0, 1, '2019-07-23', '2019-07-24 01:47:18', '2019-07-24 01:47:18'),
(190, 1, NULL, NULL, '365.00', 30.00, 0.00, 0.00, 335.00, 3.00, 335.00, 0, 1, '2019-07-23', '2019-07-24 02:29:30', '2019-07-24 02:29:30'),
(191, 1, NULL, NULL, '440.00', 0.00, 0.00, 0.00, 440.00, 3.00, 440.00, 0, 1, '2019-07-24', '2019-07-24 16:32:20', '2019-07-24 16:32:20'),
(192, 1, NULL, NULL, '280.00', 0.00, 0.00, 0.00, 280.00, 2.00, 280.00, 0, 1, '2019-07-24', '2019-07-24 17:24:17', '2019-07-24 17:24:17'),
(193, 1, NULL, NULL, '66.00', 1.00, 0.00, 0.00, 65.00, 3.00, 65.00, 0, 1, '2019-07-24', '2019-07-24 17:28:51', '2019-07-24 17:28:51'),
(194, 1, NULL, NULL, '35.00', 0.00, 0.00, 0.00, 35.00, 1.00, 35.00, 0, 1, '2019-07-24', '2019-07-24 18:49:38', '2019-07-24 18:49:38'),
(195, 1, NULL, NULL, '155.00', 0.00, 0.00, 0.00, 155.00, 2.00, 155.00, 0, 1, '2019-07-24', '2019-07-24 18:50:59', '2019-07-24 18:50:59'),
(196, 1, NULL, NULL, '365.00', 0.00, 0.00, 0.00, 365.00, 3.00, 365.00, 0, 1, '2019-07-24', '2019-07-24 19:27:03', '2019-07-24 19:27:03'),
(197, 1, NULL, NULL, '45.00', 0.00, 0.00, 0.00, 45.00, 1.00, 45.00, 0, 1, '2019-07-24', '2019-07-24 19:35:27', '2019-07-24 19:35:27'),
(198, 1, NULL, NULL, '525.00', 0.00, 0.00, 0.00, 525.00, 4.00, 525.00, 0, 1, '2019-07-24', '2019-07-24 19:55:18', '2019-07-24 19:55:18'),
(199, 1, NULL, NULL, '776.00', 1.00, 0.00, 0.00, 775.00, 8.00, 775.00, 0, 1, '2019-07-24', '2019-07-24 20:43:58', '2019-07-24 20:43:58'),
(200, 1, NULL, NULL, '250.00', 0.00, 0.00, 0.00, 250.00, 1.00, 250.00, 0, 1, '2019-07-24', '2019-07-24 20:46:00', '2019-07-24 20:46:00'),
(201, 1, NULL, NULL, '383.00', 3.00, 0.00, 0.00, 380.00, 4.00, 380.00, 0, 1, '2019-07-24', '2019-07-24 22:28:34', '2019-07-24 22:28:34'),
(202, 1, NULL, NULL, '250.00', 0.00, 0.00, 0.00, 250.00, 1.00, 250.00, 0, 1, '2019-07-24', '2019-07-24 22:33:04', '2019-07-24 22:33:04'),
(203, 1, NULL, NULL, '170.00', 0.00, 0.00, 0.00, 170.00, 1.00, 170.00, 0, 1, '2019-07-24', '2019-07-24 23:03:50', '2019-07-24 23:03:50'),
(204, 1, NULL, NULL, '240.00', 0.00, 0.00, 0.00, 240.00, 3.00, 240.00, 0, 1, '2019-07-24', '2019-07-24 23:08:19', '2019-07-24 23:08:19'),
(205, 1, NULL, NULL, '550.00', 0.00, 0.00, 0.00, 550.00, 4.00, 550.00, 0, 1, '2019-07-24', '2019-07-24 23:20:07', '2019-07-24 23:20:07'),
(206, 1, NULL, NULL, '140.00', 0.00, 0.00, 0.00, 140.00, 1.00, 140.00, 0, 1, '2019-07-24', '2019-07-25 00:12:28', '2019-07-25 00:12:28'),
(207, 1, NULL, NULL, '575.00', 0.00, 0.00, 0.00, 575.00, 5.00, 575.00, 0, 0, '2019-07-24', '2019-07-25 00:16:18', '2019-07-25 00:16:18'),
(208, 1, NULL, NULL, '170.00', 0.00, 0.00, 0.00, 170.00, 1.00, 170.00, 0, 1, '2019-07-24', '2019-07-25 00:17:14', '2019-07-25 00:17:14'),
(209, 1, NULL, NULL, '580.00', 0.00, 0.00, 0.00, 580.00, 5.00, 580.00, 0, 1, '2019-07-24', '2019-07-25 00:20:34', '2019-07-25 00:20:34'),
(210, 1, NULL, NULL, '1,530.00', 0.00, 5.00, 0.00, 1453.50, 9.00, 1454.00, 0, 1, '2019-07-24', '2019-07-25 00:53:17', '2019-07-25 00:53:17'),
(211, 1, NULL, NULL, '320.00', 0.00, 0.00, 0.00, 320.00, 4.00, 320.00, 0, 1, '2019-07-24', '2019-07-25 01:12:57', '2019-07-25 01:12:57'),
(212, 1, NULL, NULL, '100.00', 0.00, 0.00, 0.00, 100.00, 1.00, 100.00, 0, 1, '2019-07-24', '2019-07-25 01:51:31', '2019-07-25 01:51:31'),
(213, 1, NULL, NULL, '340.00', 0.00, 0.00, 0.00, 340.00, 4.00, 340.00, 0, 1, '2019-07-24', '2019-07-25 01:52:55', '2019-07-25 01:52:55'),
(214, 1, NULL, NULL, '968.00', 8.00, 0.00, 0.00, 960.00, 11.00, 960.00, 0, 1, '2019-07-24', '2019-07-25 02:01:59', '2019-07-25 02:01:59'),
(215, 1, NULL, NULL, '72.00', 2.00, 0.00, 0.00, 70.00, 4.00, 70.00, 0, 1, '2019-07-24', '2019-07-25 02:41:12', '2019-07-25 02:41:12'),
(216, 1, NULL, NULL, '401.00', 1.00, 0.00, 0.00, 400.00, 5.00, 400.00, 0, 1, '2019-07-25', '2019-07-25 15:51:48', '2019-07-25 15:51:48'),
(217, 1, NULL, NULL, '320.00', 20.00, 0.00, 0.00, 300.00, 1.00, 300.00, 0, 1, '2019-07-25', '2019-07-25 17:54:14', '2019-07-25 17:54:14'),
(218, 1, NULL, NULL, '250.00', 0.00, 0.00, 0.00, 250.00, 1.00, 250.00, 0, 1, '2019-07-25', '2019-07-25 18:10:20', '2019-07-25 18:10:20'),
(219, 1, NULL, NULL, '365.00', 0.00, 0.00, 0.00, 365.00, 3.00, 365.00, 0, 1, '2019-07-25', '2019-07-25 18:12:48', '2019-07-25 18:12:48'),
(220, 1, NULL, NULL, '375.00', 0.00, 0.00, 0.00, 375.00, 4.00, 375.00, 0, 1, '2019-07-25', '2019-07-25 18:41:04', '2019-07-25 18:41:04'),
(221, 1, NULL, NULL, '295.00', 0.00, 0.00, 0.00, 295.00, 3.00, 295.00, 0, 1, '2019-07-25', '2019-07-25 19:02:20', '2019-07-25 19:02:20'),
(222, 1, NULL, NULL, '185.00', 0.00, 0.00, 0.00, 185.00, 2.00, 185.00, 0, 1, '2019-07-25', '2019-07-25 19:36:03', '2019-07-25 19:36:03'),
(223, 1, NULL, NULL, '165.00', 0.00, 0.00, 0.00, 165.00, 2.00, 165.00, 0, 1, '2019-07-25', '2019-07-25 21:41:14', '2019-07-25 21:41:14'),
(224, 1, NULL, NULL, '802.00', 2.00, 0.00, 0.00, 800.00, 11.00, 800.00, 0, 1, '2019-07-25', '2019-07-25 22:37:10', '2019-07-25 22:37:10'),
(225, 1, NULL, NULL, '250.00', 15.00, 0.00, 0.00, 235.00, 1.00, 235.00, 0, 1, '2019-07-25', '2019-07-25 23:20:03', '2019-07-25 23:20:03'),
(226, 1, NULL, NULL, '40.00', 0.00, 0.00, 0.00, 40.00, 2.00, 40.00, 0, 1, '2019-07-25', '2019-07-25 23:40:23', '2019-07-25 23:40:23'),
(227, 1, NULL, NULL, '170.00', 0.00, 0.00, 0.00, 170.00, 1.00, 170.00, 0, 1, '2019-07-25', '2019-07-25 23:43:19', '2019-07-25 23:43:19'),
(228, 1, NULL, NULL, '430.00', 0.00, 0.00, 0.00, 430.00, 4.00, 430.00, 0, 1, '2019-07-25', '2019-07-25 23:54:17', '2019-07-25 23:54:17'),
(229, 1, NULL, NULL, '250.00', 0.00, 0.00, 0.00, 250.00, 1.00, 250.00, 0, 1, '2019-07-25', '2019-07-26 00:15:30', '2019-07-26 00:15:30'),
(230, 1, NULL, NULL, '140.00', 0.00, 0.00, 0.00, 140.00, 1.00, 140.00, 0, 1, '2019-07-25', '2019-07-26 01:21:35', '2019-07-26 01:21:35'),
(231, 1, NULL, NULL, '365.00', 0.00, 0.00, 0.00, 365.00, 5.00, 365.00, 0, 1, '2019-07-25', '2019-07-26 01:23:56', '2019-07-26 01:23:56'),
(232, 1, NULL, NULL, '2,252.00', 2.00, 0.00, 0.00, 2250.00, 14.00, 2252.00, 0, 0, '2019-07-25', '2019-07-26 01:46:32', '2019-07-26 01:46:32'),
(233, 1, NULL, NULL, '2,247.00', 7.00, 0.00, 0.00, 2240.00, 14.00, 2240.00, 0, 1, '2019-07-25', '2019-07-26 01:52:22', '2019-07-26 01:52:22'),
(234, 1, NULL, NULL, '185.00', 0.00, 0.00, 0.00, 185.00, 4.00, 185.00, 0, 1, '2019-07-26', '2019-07-26 15:46:14', '2019-07-26 15:46:14'),
(235, 1, NULL, NULL, '200.00', 0.00, 0.00, 0.00, 200.00, 2.00, 200.00, 0, 1, '2019-07-26', '2019-07-26 16:14:16', '2019-07-26 16:14:16'),
(236, 1, NULL, NULL, '630.00', 0.00, 0.00, 0.00, 630.00, 7.00, 630.00, 0, 1, '2019-07-26', '2019-07-26 17:22:28', '2019-07-26 17:22:28'),
(237, 1, NULL, NULL, '120.00', 0.00, 0.00, 0.00, 120.00, 3.00, 120.00, 0, 1, '2019-07-26', '2019-07-26 19:25:00', '2019-07-26 19:25:00'),
(238, 1, NULL, NULL, '270.00', 0.00, 0.00, 0.00, 270.00, 2.00, 270.00, 0, 1, '2019-07-26', '2019-07-26 22:27:32', '2019-07-26 22:27:32'),
(239, 1, NULL, NULL, '360.00', 0.00, 0.00, 0.00, 360.00, 5.00, 360.00, 0, 1, '2019-07-26', '2019-07-26 22:46:30', '2019-07-26 22:46:30'),
(240, 1, NULL, NULL, '1,665.00', 0.00, 0.00, 0.00, 1665.00, 12.00, 1665.00, 0, 0, '2019-07-26', '2019-07-26 22:56:35', '2019-07-26 22:56:35'),
(241, 1, NULL, NULL, '1,665.00', 50.00, 0.00, 0.00, 1615.00, 12.00, 1615.00, 0, 1, '2019-07-26', '2019-07-26 23:07:18', '2019-07-26 23:07:18'),
(242, 1, NULL, NULL, '110.00', 0.00, 0.00, 0.00, 110.00, 6.00, 110.00, 0, 1, '2019-07-26', '2019-07-26 23:10:02', '2019-07-26 23:10:02'),
(243, 1, NULL, NULL, '380.00', 0.00, 0.00, 0.00, 380.00, 7.00, 380.00, 0, 1, '2019-07-26', '2019-07-26 23:39:28', '2019-07-26 23:39:28'),
(244, 1, NULL, NULL, '600.00', 0.00, 0.00, 0.00, 600.00, 4.00, 600.00, 0, 1, '2019-07-26', '2019-07-27 00:35:58', '2019-07-27 00:35:58'),
(245, 1, NULL, NULL, '860.00', 160.00, 0.00, 0.00, 700.00, 8.00, 700.00, 0, 1, '2019-07-26', '2019-07-27 00:41:05', '2019-07-27 00:41:05'),
(246, 1, NULL, NULL, '410.00', 0.00, 0.00, 0.00, 410.00, 5.00, 410.00, 0, 1, '2019-07-26', '2019-07-27 00:42:10', '2019-07-27 00:42:10'),
(247, 1, NULL, NULL, '200.00', 0.00, 0.00, 0.00, 200.00, 2.00, 200.00, 0, 1, '2019-07-26', '2019-07-27 00:52:11', '2019-07-27 00:52:11'),
(248, 1, NULL, NULL, '255.00', 0.00, 0.00, 0.00, 255.00, 3.00, 255.00, 0, 1, '2019-07-26', '2019-07-27 01:28:51', '2019-07-27 01:28:51'),
(249, 1, NULL, NULL, '1,580.00', 80.00, 0.00, 0.00, 1500.00, 14.00, 1500.00, 0, 1, '2019-07-26', '2019-07-27 01:31:44', '2019-07-27 01:31:44'),
(250, 1, NULL, NULL, '716.00', 1.00, 0.00, 0.00, 715.00, 7.00, 715.00, 0, 1, '2019-07-26', '2019-07-27 02:11:21', '2019-07-27 02:11:21'),
(251, 1, NULL, NULL, '140.00', 0.00, 0.00, 0.00, 140.00, 1.00, 140.00, 0, 1, '2019-07-27', '2019-07-27 15:57:25', '2019-07-27 15:57:25'),
(252, 1, NULL, NULL, '585.00', 0.00, 0.00, 0.00, 585.00, 4.00, 585.00, 0, 1, '2019-07-27', '2019-07-27 16:10:16', '2019-07-27 16:10:16'),
(253, 1, NULL, NULL, '490.00', 0.00, 0.00, 0.00, 490.00, 2.00, 490.00, 0, 1, '2019-07-27', '2019-07-27 17:31:00', '2019-07-27 17:31:00'),
(254, 1, NULL, NULL, '391.00', 1.00, 0.00, 0.00, 390.00, 5.00, 390.00, 0, 1, '2019-07-27', '2019-07-27 18:31:57', '2019-07-27 18:31:57'),
(255, 1, NULL, NULL, '420.00', 0.00, 0.00, 0.00, 420.00, 3.00, 420.00, 0, 1, '2019-07-27', '2019-07-27 19:07:50', '2019-07-27 19:07:50'),
(256, 1, NULL, NULL, '185.00', 0.00, 0.00, 0.00, 185.00, 2.00, 185.00, 0, 1, '2019-07-27', '2019-07-27 19:17:16', '2019-07-27 19:17:16'),
(257, 1, NULL, NULL, '310.00', 0.00, 0.00, 0.00, 310.00, 2.00, 310.00, 0, 1, '2019-07-27', '2019-07-27 19:32:05', '2019-07-27 19:32:05'),
(258, 1, NULL, NULL, '1,142.00', 52.00, 0.00, 0.00, 1090.00, 11.00, 1090.00, 0, 0, '2019-07-27', '2019-07-27 19:37:08', '2019-07-27 19:37:08'),
(259, 1, NULL, NULL, '305.00', 0.00, 0.00, 0.00, 305.00, 3.00, 305.00, 0, 1, '2019-07-27', '2019-07-27 19:39:56', '2019-07-27 19:39:56'),
(260, 1, NULL, NULL, '1,502.00', 72.00, 0.00, 0.00, 1430.00, 14.00, 1430.00, 0, 0, '2019-07-27', '2019-07-27 19:54:12', '2019-07-27 19:54:12'),
(261, 1, NULL, NULL, '1,537.00', 72.00, 0.00, 0.00, 1465.00, 15.00, 1465.00, 0, 0, '2019-07-27', '2019-07-27 19:59:31', '2019-07-27 19:59:31'),
(262, 1, NULL, NULL, '1,537.00', 87.00, 0.00, 0.00, 1450.00, 15.00, 1450.00, 0, 1, '2019-07-27', '2019-07-27 20:19:43', '2019-07-27 20:19:43'),
(263, 1, NULL, NULL, '1,537.00', 0.00, 0.00, 0.00, 1537.00, 15.00, 1537.00, 0, 0, '2019-07-27', '2019-07-27 20:21:39', '2019-07-27 20:21:39'),
(264, 1, NULL, NULL, '460.00', 0.00, 0.00, 0.00, 460.00, 7.00, 460.00, 0, 1, '2019-07-27', '2019-07-27 20:23:47', '2019-07-27 20:23:47'),
(265, 1, NULL, NULL, '250.00', 0.00, 0.00, 0.00, 250.00, 1.00, 250.00, 0, 1, '2019-07-27', '2019-07-27 20:58:23', '2019-07-27 20:58:23'),
(266, 1, NULL, NULL, '348.00', 0.00, 0.00, 0.00, 348.00, 4.00, 348.00, 0, 1, '2019-07-27', '2019-07-28 00:43:30', '2019-07-28 00:43:30'),
(267, 1, NULL, NULL, '396.00', 16.00, 0.00, 0.00, 380.00, 5.00, 380.00, 0, 1, '2019-07-27', '2019-07-28 00:56:29', '2019-07-28 00:56:29'),
(268, 1, NULL, NULL, '1,250.00', 0.00, 0.00, 0.00, 1250.00, 29.00, 1250.00, 0, 1, '2019-07-27', '2019-07-28 00:59:07', '2019-07-28 00:59:07'),
(269, 1, NULL, NULL, '480.00', 0.00, 0.00, 0.00, 480.00, 10.00, 480.00, 0, 1, '2019-07-28', '2019-07-28 17:23:03', '2019-07-28 17:23:03'),
(270, 1, NULL, NULL, '280.00', 0.00, 0.00, 0.00, 280.00, 2.00, 280.00, 0, 1, '2019-07-28', '2019-07-28 17:24:16', '2019-07-28 17:24:16'),
(271, 1, NULL, NULL, '330.00', 0.00, 0.00, 0.00, 330.00, 4.00, 330.00, 0, 1, '2019-07-28', '2019-07-28 17:40:18', '2019-07-28 17:40:18'),
(272, 1, NULL, NULL, '560.00', 0.00, 0.00, 0.00, 560.00, 5.00, 560.00, 0, 1, '2019-07-28', '2019-07-28 18:23:22', '2019-07-28 18:23:22'),
(273, 1, NULL, NULL, '140.00', 0.00, 0.00, 0.00, 140.00, 1.00, 140.00, 0, 1, '2019-07-28', '2019-07-28 23:12:06', '2019-07-28 23:12:06'),
(274, 1, NULL, NULL, '200.00', 0.00, 0.00, 0.00, 200.00, 2.00, 200.00, 0, 1, '2019-07-28', '2019-07-28 23:33:54', '2019-07-28 23:33:54'),
(275, 1, NULL, NULL, '210.00', 0.00, 0.00, 0.00, 210.00, 4.00, 210.00, 0, 1, '2019-07-28', '2019-07-29 02:01:28', '2019-07-29 02:01:28'),
(276, 1, NULL, NULL, '350.00', 0.00, 0.00, 0.00, 350.00, 6.00, 350.00, 0, 1, '2019-07-29', '2019-07-29 17:05:01', '2019-07-29 17:05:01'),
(277, 1, NULL, NULL, '340.00', 0.00, 0.00, 0.00, 340.00, 2.00, 340.00, 0, 1, '2019-07-29', '2019-07-29 17:06:16', '2019-07-29 17:06:16'),
(278, 1, NULL, NULL, '529.00', 0.00, 0.00, 0.00, 529.00, 7.00, 529.00, 0, 1, '2019-07-29', '2019-07-29 18:45:11', '2019-07-29 18:45:11'),
(279, 1, NULL, NULL, '305.00', 0.00, 0.00, 0.00, 305.00, 4.00, 305.00, 0, 1, '2019-07-29', '2019-07-29 19:14:18', '2019-07-29 19:14:18'),
(280, 1, NULL, NULL, '185.00', 0.00, 0.00, 0.00, 185.00, 2.00, 185.00, 0, 1, '2019-07-29', '2019-07-29 19:21:02', '2019-07-29 19:21:02'),
(281, 1, NULL, NULL, '466.00', 21.00, 0.00, 0.00, 445.00, 6.00, 445.00, 0, 1, '2019-07-29', '2019-07-29 20:24:47', '2019-07-29 20:24:47'),
(282, 1, NULL, NULL, '2,945.00', 145.00, 0.00, 0.00, 2800.00, 16.00, 2800.00, 0, 1, '2019-07-29', '2019-07-30 02:20:06', '2019-07-30 02:20:06'),
(283, 1, NULL, NULL, '320.00', 0.00, 0.00, 0.00, 320.00, 1.00, 320.00, 0, 1, '2019-07-30', '2019-07-30 16:55:14', '2019-07-30 16:55:14'),
(284, 1, NULL, NULL, '420.00', 0.00, 0.00, 0.00, 420.00, 5.00, 420.00, 0, 1, '2019-07-30', '2019-07-30 19:23:45', '2019-07-30 19:23:45'),
(285, 1, NULL, NULL, '600.00', 0.00, 0.00, 0.00, 600.00, 5.00, 600.00, 0, 1, '2019-07-30', '2019-07-30 22:20:12', '2019-07-30 22:20:12'),
(286, 1, NULL, NULL, '100.00', 0.00, 0.00, 0.00, 100.00, 2.00, 100.00, 0, 1, '2019-07-30', '2019-07-30 22:25:06', '2019-07-30 22:25:06'),
(287, 1, NULL, NULL, '550.00', 0.00, 0.00, 0.00, 550.00, 1.00, 550.00, 0, 1, '2019-07-30', '2019-07-30 22:44:41', '2019-07-30 22:44:41'),
(288, 1, NULL, NULL, '560.00', 0.00, 0.00, 0.00, 560.00, 6.00, 560.00, 0, 1, '2019-07-30', '2019-07-30 22:48:20', '2019-07-30 22:48:20'),
(289, 1, NULL, NULL, '250.00', 0.00, 0.00, 0.00, 250.00, 1.00, 250.00, 0, 1, '2019-07-30', '2019-07-30 23:02:47', '2019-07-30 23:02:47'),
(290, 1, NULL, NULL, '275.00', 0.00, 0.00, 0.00, 275.00, 1.00, 275.00, 0, 1, '2019-07-30', '2019-07-30 23:23:28', '2019-07-30 23:23:28'),
(291, 1, NULL, NULL, '450.00', 0.00, 0.00, 0.00, 450.00, 1.00, 450.00, 0, 1, '2019-07-30', '2019-07-30 23:35:25', '2019-07-30 23:35:25'),
(292, 1, NULL, NULL, '270.00', 50.00, 0.00, 0.00, 220.00, 4.00, 220.00, 0, 1, '2019-07-30', '2019-07-31 00:00:55', '2019-07-31 00:00:55'),
(293, 1, NULL, NULL, '310.00', 0.00, 0.00, 0.00, 310.00, 5.00, 310.00, 0, 1, '2019-07-30', '2019-07-31 00:46:43', '2019-07-31 00:46:43'),
(294, 1, NULL, NULL, '175.00', 0.00, 0.00, 0.00, 175.00, 3.00, 175.00, 0, 1, '2019-07-30', '2019-07-31 00:50:56', '2019-07-31 00:50:56'),
(295, 1, NULL, NULL, '800.00', 0.00, 0.00, 0.00, 800.00, 9.00, 800.00, 0, 1, '2019-07-30', '2019-07-31 01:52:54', '2019-07-31 01:52:54'),
(296, 1, NULL, NULL, '178.00', 0.00, 0.00, 0.00, 178.00, 4.00, 178.00, 0, 1, '2019-07-30', '2019-07-31 02:06:23', '2019-07-31 02:06:23'),
(297, 1, NULL, NULL, '1,500.00', 0.00, 0.00, 0.00, 1500.00, 12.00, 1500.00, 0, 0, '2019-07-31', '2019-07-31 15:44:25', '2019-07-31 15:44:25'),
(298, 1, NULL, NULL, '480.00', 0.00, 0.00, 0.00, 480.00, 6.00, 480.00, 0, 1, '2019-07-31', '2019-07-31 15:50:11', '2019-07-31 15:50:11'),
(299, 1, NULL, NULL, '1,550.00', 0.00, 0.00, 0.00, 1550.00, 13.00, 1550.00, 0, 1, '2019-07-31', '2019-07-31 15:58:18', '2019-07-31 15:58:18'),
(300, 1, NULL, NULL, '890.00', 0.00, 0.00, 0.00, 890.00, 4.00, 890.00, 0, 1, '2019-07-31', '2019-07-31 19:41:25', '2019-07-31 19:41:25'),
(301, 1, NULL, NULL, '620.00', 0.00, 0.00, 0.00, 620.00, 5.00, 620.00, 0, 1, '2019-07-31', '2019-07-31 21:58:01', '2019-07-31 21:58:01'),
(302, 1, NULL, NULL, '235.00', 0.00, 0.00, 0.00, 235.00, 3.00, 235.00, 0, 1, '2019-07-31', '2019-07-31 22:09:06', '2019-07-31 22:09:06'),
(303, 1, NULL, NULL, '995.00', 0.00, 0.00, 0.00, 995.00, 12.00, 995.00, 0, 1, '2019-07-31', '2019-07-31 22:42:24', '2019-07-31 22:42:24'),
(304, 1, NULL, NULL, '140.00', 0.00, 0.00, 0.00, 140.00, 1.00, 140.00, 0, 1, '2019-07-31', '2019-07-31 23:06:55', '2019-07-31 23:06:55'),
(305, 1, NULL, NULL, '531.00', 81.00, 0.00, 0.00, 450.00, 5.00, 450.00, 0, 1, '2019-07-31', '2019-07-31 23:34:57', '2019-07-31 23:34:57'),
(306, 1, NULL, NULL, '240.00', 0.00, 0.00, 0.00, 240.00, 4.00, 240.00, 0, 1, '2019-07-31', '2019-08-01 01:48:39', '2019-08-01 01:48:39'),
(307, 1, NULL, NULL, '260.00', 0.00, 0.00, 0.00, 260.00, 3.00, 260.00, 0, 1, '2019-07-31', '2019-08-01 02:26:45', '2019-08-01 02:26:45'),
(308, 1, NULL, NULL, '340.00', 0.00, 0.00, 0.00, 340.00, 2.00, 340.00, 0, 1, '2019-07-31', '2019-08-01 02:39:18', '2019-08-01 02:39:18'),
(309, 1, NULL, NULL, '520.00', 0.00, 0.00, 0.00, 520.00, 4.00, 520.00, 0, 1, '2019-07-31', '2019-08-01 02:42:22', '2019-08-01 02:42:22'),
(310, 1, NULL, NULL, '282.00', 2.00, 0.00, 0.00, 280.00, 6.00, 280.00, 0, 1, '2019-08-01', '2019-08-01 19:30:12', '2019-08-01 19:30:12'),
(311, 1, NULL, NULL, '446.00', 1.00, 0.00, 0.00, 445.00, 6.00, 445.00, 0, 1, '2019-08-01', '2019-08-01 21:03:36', '2019-08-01 21:03:36'),
(312, 1, NULL, NULL, '2,640.00', 240.00, 0.00, 0.00, 2400.00, 30.00, 2400.00, 0, 1, '2019-08-01', '2019-08-01 21:52:20', '2019-08-01 21:52:20'),
(313, 1, NULL, NULL, '320.00', 0.00, 0.00, 0.00, 320.00, 7.00, 320.00, 0, 1, '2019-08-01', '2019-08-01 22:43:58', '2019-08-01 22:43:58'),
(314, 1, NULL, NULL, '260.00', 0.00, 0.00, 0.00, 260.00, 3.00, 260.00, 0, 1, '2019-08-01', '2019-08-02 00:54:02', '2019-08-02 00:54:02'),
(315, 1, NULL, NULL, '586.00', 1.00, 0.00, 0.00, 585.00, 8.00, 585.00, 0, 1, '2019-08-01', '2019-08-02 01:03:16', '2019-08-02 01:03:16'),
(316, 1, NULL, NULL, '870.00', 0.00, 0.00, 0.00, 870.00, 7.00, 870.00, 0, 1, '2019-08-01', '2019-08-02 01:17:27', '2019-08-02 01:17:27'),
(317, 1, NULL, NULL, '610.00', 0.00, 0.00, 0.00, 610.00, 9.00, 610.00, 0, 1, '2019-08-01', '2019-08-02 01:25:46', '2019-08-02 01:25:46'),
(318, 1, NULL, NULL, '376.00', 1.00, 0.00, 0.00, 375.00, 4.00, 375.00, 0, 1, '2019-08-01', '2019-08-02 01:57:00', '2019-08-02 01:57:00'),
(319, 1, NULL, NULL, '320.00', 0.00, 0.00, 0.00, 320.00, 1.00, 320.00, 0, 1, '2019-08-01', '2019-08-02 02:57:46', '2019-08-02 02:57:46'),
(320, 1, NULL, NULL, '566.00', 1.00, 0.00, 0.00, 565.00, 7.00, 565.00, 0, 1, '2019-08-01', '2019-08-02 03:01:23', '2019-08-02 03:01:23'),
(321, 1, NULL, NULL, '376.00', 1.00, 0.00, 0.00, 375.00, 4.00, 375.00, 0, 1, '2019-08-01', '2019-08-02 03:08:36', '2019-08-02 03:08:36'),
(322, 1, NULL, NULL, '375.00', 0.00, 0.00, 0.00, 375.00, 3.00, 375.00, 0, 1, '2019-08-02', '2019-08-02 18:19:10', '2019-08-02 18:19:10'),
(323, 1, NULL, NULL, '300.00', 0.00, 0.00, 0.00, 300.00, 3.00, 300.00, 0, 1, '2019-08-02', '2019-08-02 18:20:16', '2019-08-02 18:20:16'),
(324, 1, NULL, NULL, '535.00', 0.00, 0.00, 0.00, 535.00, 4.00, 535.00, 0, 1, '2019-08-02', '2019-08-02 18:57:06', '2019-08-02 18:57:06'),
(325, 1, NULL, NULL, '328.00', 0.00, 0.00, 0.00, 328.00, 5.00, 328.00, 0, 1, '2019-08-02', '2019-08-02 19:13:41', '2019-08-02 19:13:41'),
(326, 1, NULL, NULL, '155.00', 0.00, 0.00, 0.00, 155.00, 2.00, 155.00, 0, 0, '2019-08-02', '2019-08-02 19:16:29', '2019-08-02 19:16:29'),
(327, 1, NULL, NULL, '360.00', 0.00, 0.00, 0.00, 360.00, 3.00, 360.00, 0, 1, '2019-08-02', '2019-08-02 20:11:05', '2019-08-02 20:11:05'),
(328, 1, NULL, NULL, '355.00', 0.00, 0.00, 0.00, 355.00, 3.00, 355.00, 0, 1, '2019-08-02', '2019-08-02 20:32:15', '2019-08-02 20:32:15'),
(329, 1, NULL, NULL, '406.00', 1.00, 0.00, 0.00, 405.00, 6.00, 405.00, 0, 1, '2019-08-02', '2019-08-02 21:07:37', '2019-08-02 21:07:37'),
(330, 1, NULL, NULL, '340.00', 0.00, 0.00, 0.00, 340.00, 2.00, 340.00, 0, 1, '2019-08-02', '2019-08-02 21:15:46', '2019-08-02 21:15:46'),
(331, 1, NULL, NULL, '140.00', 0.00, 0.00, 0.00, 140.00, 1.00, 140.00, 0, 1, '2019-08-02', '2019-08-02 21:35:59', '2019-08-02 21:35:59'),
(332, 1, NULL, NULL, '450.00', 0.00, 0.00, 0.00, 450.00, 5.00, 450.00, 0, 1, '2019-08-02', '2019-08-02 23:26:51', '2019-08-02 23:26:51'),
(333, 1, NULL, NULL, '420.00', 0.00, 0.00, 0.00, 420.00, 8.00, 420.00, 0, 1, '2019-08-02', '2019-08-02 23:37:41', '2019-08-02 23:37:41'),
(334, 1, NULL, NULL, '7,480.00', 880.00, 0.00, 0.00, 6600.00, 44.00, 6600.00, 0, 1, '2019-08-02', '2019-08-03 00:18:17', '2019-08-03 00:18:17'),
(335, 1, NULL, NULL, '300.00', 0.00, 0.00, 0.00, 300.00, 3.00, 300.00, 0, 1, '2019-08-02', '2019-08-03 00:59:19', '2019-08-03 00:59:19'),
(336, 1, NULL, NULL, '335.00', 0.00, 0.00, 0.00, 335.00, 5.00, 335.00, 0, 1, '2019-08-02', '2019-08-03 01:12:38', '2019-08-03 01:12:38'),
(337, 1, NULL, NULL, '475.00', 0.00, 0.00, 0.00, 475.00, 4.00, 475.00, 0, 1, '2019-08-03', '2019-08-03 17:04:58', '2019-08-03 17:04:58'),
(338, 1, NULL, NULL, '530.00', 0.00, 0.00, 0.00, 530.00, 4.00, 530.00, 0, 1, '2019-08-03', '2019-08-03 17:17:41', '2019-08-03 17:17:41'),
(339, 1, NULL, NULL, '370.00', 0.00, 0.00, 0.00, 370.00, 3.00, 370.00, 0, 1, '2019-08-03', '2019-08-03 17:23:45', '2019-08-03 17:23:45'),
(340, 1, NULL, NULL, '140.00', 0.00, 0.00, 0.00, 140.00, 1.00, 140.00, 0, 1, '2019-08-03', '2019-08-03 17:35:11', '2019-08-03 17:35:11'),
(341, 1, NULL, NULL, '140.00', 0.00, 0.00, 0.00, 140.00, 1.00, 140.00, 0, 1, '2019-08-03', '2019-08-03 18:01:26', '2019-08-03 18:01:26'),
(342, 1, NULL, NULL, '363.00', 0.00, 0.00, 0.00, 363.00, 4.00, 363.00, 0, 1, '2019-08-03', '2019-08-03 22:30:58', '2019-08-03 22:30:58'),
(343, 1, NULL, NULL, '100.00', 0.00, 0.00, 0.00, 100.00, 1.00, 100.00, 0, 1, '2019-08-03', '2019-08-03 23:52:39', '2019-08-03 23:52:39'),
(344, 1, NULL, NULL, '341.00', 1.00, 0.00, 0.00, 340.00, 7.00, 340.00, 0, 1, '2019-08-03', '2019-08-03 23:54:37', '2019-08-03 23:54:37'),
(345, 1, NULL, NULL, '820.00', 0.00, 0.00, 0.00, 820.00, 5.00, 820.00, 0, 1, '2019-08-03', '2019-08-04 02:01:15', '2019-08-04 02:01:15'),
(346, 1, NULL, NULL, '170.00', 0.00, 0.00, 0.00, 170.00, 1.00, 170.00, 0, 1, '2019-08-03', '2019-08-04 02:11:00', '2019-08-04 02:11:00'),
(347, 1, NULL, NULL, '502.00', 2.00, 0.00, 0.00, 500.00, 7.00, 500.00, 0, 1, '2019-08-03', '2019-08-04 03:10:05', '2019-08-04 03:10:05'),
(348, 1, NULL, NULL, '340.00', 0.00, 0.00, 0.00, 340.00, 4.00, 340.00, 0, 1, '2019-08-03', '2019-08-04 03:26:41', '2019-08-04 03:26:41'),
(349, 1, NULL, NULL, '320.00', 0.00, 0.00, 0.00, 320.00, 1.00, 320.00, 0, 1, '2019-08-04', '2019-08-04 18:23:15', '2019-08-04 18:23:15'),
(350, 1, NULL, NULL, '140.00', 0.00, 0.00, 0.00, 140.00, 1.00, 140.00, 0, 1, '2019-08-04', '2019-08-04 18:24:24', '2019-08-04 18:24:24'),
(351, 1, NULL, NULL, '60.00', 0.00, 0.00, 0.00, 60.00, 1.00, 60.00, 0, 1, '2019-08-04', '2019-08-04 18:25:59', '2019-08-04 18:25:59'),
(352, 1, NULL, NULL, '420.00', 40.00, 0.00, 0.00, 380.00, 3.00, 380.00, 0, 1, '2019-08-04', '2019-08-04 18:58:36', '2019-08-04 18:58:36'),
(353, 1, NULL, NULL, '185.00', 0.00, 0.00, 0.00, 185.00, 2.00, 185.00, 0, 1, '2019-08-04', '2019-08-04 18:59:34', '2019-08-04 18:59:34'),
(354, 1, NULL, NULL, '343.00', 0.00, 0.00, 0.00, 343.00, 4.00, 343.00, 0, 1, '2019-08-04', '2019-08-04 20:06:13', '2019-08-04 20:06:13'),
(355, 1, NULL, NULL, '600.00', 5.00, 0.00, 0.00, 595.00, 3.00, 595.00, 0, 1, '2019-08-04', '2019-08-04 20:34:53', '2019-08-04 20:34:53'),
(356, 1, NULL, NULL, '295.00', 0.00, 0.00, 0.00, 295.00, 3.00, 295.00, 0, 1, '2019-08-04', '2019-08-04 20:40:04', '2019-08-04 20:40:04'),
(357, 1, NULL, NULL, '380.00', 0.00, 0.00, 0.00, 380.00, 4.00, 380.00, 0, 1, '2019-08-04', '2019-08-05 00:10:44', '2019-08-05 00:10:44'),
(358, 1, NULL, NULL, '500.00', 0.00, 0.00, 0.00, 500.00, 5.00, 500.00, 0, 1, '2019-08-04', '2019-08-05 03:21:27', '2019-08-05 03:21:27'),
(359, 1, NULL, NULL, '550.00', 20.00, 0.00, 0.00, 530.00, 5.00, 530.00, 0, 1, '2019-08-04', '2019-08-05 03:35:46', '2019-08-05 03:35:46');

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
(80, 28, 22, 1.00, 450.00, 1, NULL, NULL),
(81, 29, 60, 1.00, 150.00, 1, NULL, NULL),
(82, 29, 17, 1.00, 160.00, 1, NULL, NULL),
(83, 29, 5, 1.00, 170.00, 1, NULL, NULL),
(84, 29, 15, 1.00, 120.00, 1, NULL, NULL),
(85, 30, 5, 1.00, 170.00, 1, NULL, NULL),
(86, 31, 4, 1.00, 320.00, 1, NULL, NULL),
(87, 32, 9, 1.00, 280.00, 1, NULL, NULL),
(88, 33, 6, 3.00, 250.00, 1, NULL, NULL),
(89, 33, 4, 1.00, 320.00, 1, NULL, NULL),
(90, 34, 6, 1.00, 250.00, 1, NULL, NULL),
(91, 35, 6, 1.00, 250.00, 1, NULL, NULL),
(92, 36, 6, 1.00, 250.00, 1, NULL, NULL),
(93, 37, 5, 1.00, 170.00, 1, NULL, NULL),
(94, 37, 6, 1.00, 250.00, 1, NULL, NULL),
(95, 38, 6, 1.00, 250.00, 1, NULL, NULL),
(96, 38, 4, 1.00, 320.00, 1, NULL, NULL),
(97, 39, 6, 1.00, 250.00, 1, NULL, NULL),
(98, 40, 9, 1.00, 280.00, 1, NULL, NULL),
(99, 40, 12, 1.00, 0.00, 1, NULL, NULL),
(100, 41, 4, 1.00, 320.00, 1, NULL, NULL),
(101, 41, 5, 1.00, 170.00, 1, NULL, NULL),
(102, 42, 5, 1.00, 170.00, 1, NULL, NULL),
(103, 43, 5, 2.00, 170.00, 1, NULL, NULL),
(104, 43, 54, 2.00, 60.00, 1, NULL, NULL),
(105, 43, 62, 1.00, 20.00, 1, NULL, NULL),
(106, 43, 48, 2.00, 16.00, 1, NULL, NULL),
(107, 44, 2, 2.00, 200.00, 1, NULL, NULL),
(108, 44, 62, 1.00, 20.00, 1, NULL, NULL),
(109, 44, 65, 2.00, 18.00, 1, NULL, NULL),
(110, 44, 48, 1.00, 16.00, 1, NULL, NULL),
(111, 44, 46, 2.00, 18.00, 1, NULL, NULL),
(112, 44, 55, 4.00, 50.00, 1, NULL, NULL),
(113, 45, 2, 2.00, 200.00, 1, NULL, NULL),
(114, 45, 8, 2.00, 350.00, 1, NULL, NULL),
(115, 45, 17, 2.00, 160.00, 1, NULL, NULL),
(116, 46, 4, 1.00, 320.00, 1, NULL, NULL),
(117, 46, 6, 1.00, 250.00, 1, NULL, NULL),
(118, 47, 8, 1.00, 350.00, 1, NULL, NULL),
(119, 47, 9, 1.00, 280.00, 1, NULL, NULL),
(120, 48, 5, 2.00, 170.00, 1, NULL, NULL),
(121, 48, 63, 1.00, 25.00, 1, NULL, NULL),
(122, 48, 46, 3.00, 18.00, 1, NULL, NULL),
(123, 49, 5, 3.00, 170.00, 1, NULL, NULL),
(124, 49, 63, 1.00, 25.00, 1, NULL, NULL),
(125, 49, 46, 3.00, 18.00, 1, NULL, NULL),
(126, 50, 5, 3.00, 170.00, 1, NULL, NULL),
(127, 50, 46, 3.00, 18.00, 1, NULL, NULL),
(128, 50, 63, 2.00, 25.00, 1, NULL, NULL),
(129, 51, 44, 1.00, 100.00, 1, NULL, NULL),
(130, 51, 35, 1.00, 280.00, 1, NULL, NULL),
(131, 51, 22, 1.00, 450.00, 1, NULL, NULL),
(132, 51, 24, 1.00, 600.00, 1, NULL, NULL),
(133, 51, 54, 1.00, 60.00, 1, NULL, NULL),
(134, 51, 56, 1.00, 80.00, 1, NULL, NULL),
(135, 51, 55, 1.00, 50.00, 1, NULL, NULL),
(136, 51, 60, 1.00, 150.00, 1, NULL, NULL),
(137, 51, 16, 1.00, 160.00, 1, NULL, NULL),
(138, 52, 13, 2.00, 200.00, 1, NULL, NULL),
(139, 52, 14, 1.00, 250.00, 1, NULL, NULL),
(140, 53, 59, 3.00, 130.00, 1, NULL, NULL),
(141, 54, 54, 3.00, 60.00, 1, NULL, NULL),
(142, 55, 54, 3.00, 60.00, 1, NULL, NULL),
(143, 55, 50, 2.00, 15.00, 1, NULL, NULL),
(144, 56, 64, 1.00, 30.00, 1, NULL, NULL),
(145, 57, 54, 3.00, 60.00, 1, NULL, NULL),
(146, 58, 4, 1.00, 320.00, 1, NULL, NULL),
(147, 58, 63, 1.00, 25.00, 1, NULL, NULL),
(148, 59, 23, 2.00, 550.00, 1, NULL, NULL),
(149, 60, 39, 1.00, 150.00, 1, NULL, NULL),
(150, 61, 4, 1.00, 320.00, 1, NULL, NULL),
(151, 62, 8, 1.00, 350.00, 1, NULL, NULL),
(152, 63, 5, 2.00, 170.00, 1, NULL, NULL),
(153, 63, 7, 2.00, 140.00, 1, NULL, NULL),
(154, 63, 63, 1.00, 25.00, 1, NULL, NULL),
(155, 63, 65, 4.00, 18.00, 1, NULL, NULL),
(156, 63, 59, 4.00, 130.00, 1, NULL, NULL),
(157, 64, 14, 1.00, 250.00, 1, NULL, NULL),
(158, 64, 33, 1.00, 25.00, 1, NULL, NULL),
(159, 64, 50, 1.00, 15.00, 1, NULL, NULL),
(160, 64, 54, 1.00, 60.00, 1, NULL, NULL),
(161, 65, 7, 2.00, 140.00, 1, NULL, NULL),
(162, 65, 63, 1.00, 25.00, 1, NULL, NULL),
(163, 66, 4, 1.00, 320.00, 1, NULL, NULL),
(164, 66, 54, 1.00, 60.00, 1, NULL, NULL),
(165, 67, 14, 1.00, 250.00, 1, NULL, NULL),
(166, 67, 50, 1.00, 15.00, 1, NULL, NULL),
(167, 67, 45, 1.00, 15.00, 1, NULL, NULL),
(168, 68, 5, 6.00, 170.00, 1, NULL, NULL),
(169, 68, 64, 1.00, 30.00, 1, NULL, NULL),
(170, 68, 67, 1.00, 60.00, 1, NULL, NULL),
(171, 68, 65, 2.00, 18.00, 1, NULL, NULL),
(172, 69, 5, 6.00, 170.00, 1, NULL, NULL),
(173, 69, 64, 1.00, 30.00, 1, NULL, NULL),
(174, 69, 65, 2.00, 18.00, 1, NULL, NULL),
(175, 70, 5, 3.00, 170.00, 1, NULL, NULL),
(176, 71, 6, 1.00, 250.00, 1, NULL, NULL),
(177, 72, 6, 1.00, 250.00, 1, NULL, NULL),
(178, 73, 16, 1.00, 160.00, 1, NULL, NULL),
(179, 74, 58, 2.00, 80.00, 1, NULL, NULL),
(180, 75, 16, 2.00, 160.00, 1, NULL, NULL),
(181, 75, 45, 2.00, 15.00, 1, NULL, NULL),
(182, 75, 50, 1.00, 15.00, 1, NULL, NULL),
(183, 76, 7, 2.00, 140.00, 1, NULL, NULL),
(184, 76, 48, 2.00, 16.00, 1, NULL, NULL),
(185, 76, 50, 1.00, 15.00, 1, NULL, NULL),
(186, 77, 5, 1.00, 170.00, 1, NULL, NULL),
(187, 78, 5, 3.00, 170.00, 1, NULL, NULL),
(188, 78, 63, 1.00, 25.00, 1, NULL, NULL),
(189, 79, 5, 3.00, 170.00, 1, NULL, NULL),
(190, 79, 63, 1.00, 25.00, 1, NULL, NULL),
(191, 79, 67, 1.00, 60.00, 1, NULL, NULL),
(192, 80, 5, 1.00, 170.00, 1, NULL, NULL),
(193, 80, 48, 1.00, 16.00, 1, NULL, NULL),
(194, 81, 7, 1.00, 140.00, 1, NULL, NULL),
(195, 81, 48, 1.00, 16.00, 1, NULL, NULL),
(196, 82, 5, 1.00, 170.00, 1, NULL, NULL),
(197, 83, 5, 1.00, 170.00, 1, NULL, NULL),
(198, 83, 50, 1.00, 15.00, 1, NULL, NULL),
(199, 84, 13, 1.00, 200.00, 1, NULL, NULL),
(200, 84, 14, 1.00, 250.00, 1, NULL, NULL),
(201, 85, 58, 3.00, 80.00, 1, NULL, NULL),
(202, 86, 5, 3.00, 170.00, 1, NULL, NULL),
(203, 86, 63, 1.00, 25.00, 1, NULL, NULL),
(204, 87, 5, 1.00, 170.00, 1, NULL, NULL),
(205, 87, 63, 1.00, 25.00, 1, NULL, NULL),
(206, 88, 7, 2.00, 140.00, 1, NULL, NULL),
(207, 88, 63, 1.00, 25.00, 1, NULL, NULL),
(208, 89, 32, 1.00, 100.00, 1, NULL, NULL),
(209, 90, 5, 3.00, 170.00, 1, NULL, NULL),
(210, 90, 63, 1.00, 25.00, 1, NULL, NULL),
(211, 91, 6, 1.00, 250.00, 1, NULL, NULL),
(212, 92, 7, 2.00, 140.00, 1, NULL, NULL),
(213, 92, 50, 1.00, 15.00, 1, NULL, NULL),
(214, 93, 15, 3.00, 120.00, 1, NULL, NULL),
(215, 93, 33, 2.00, 25.00, 1, NULL, NULL),
(216, 93, 54, 2.00, 60.00, 1, NULL, NULL),
(217, 93, 55, 1.00, 50.00, 1, NULL, NULL),
(218, 93, 63, 1.00, 25.00, 1, NULL, NULL),
(219, 94, 28, 2.00, 120.00, 1, NULL, NULL),
(220, 94, 64, 1.00, 30.00, 1, NULL, NULL),
(221, 95, 60, 2.00, 150.00, 1, NULL, NULL),
(222, 95, 16, 3.00, 160.00, 1, NULL, NULL),
(223, 96, 7, 2.00, 140.00, 1, NULL, NULL),
(224, 97, 7, 1.00, 140.00, 1, NULL, NULL),
(225, 98, 44, 3.00, 100.00, 1, NULL, NULL),
(226, 98, 16, 1.00, 160.00, 1, NULL, NULL),
(227, 99, 44, 3.00, 100.00, 1, NULL, NULL),
(228, 99, 16, 1.00, 160.00, 1, NULL, NULL),
(229, 100, 54, 3.00, 60.00, 1, NULL, NULL),
(230, 100, 50, 1.00, 15.00, 1, NULL, NULL),
(231, 101, 5, 4.00, 170.00, 1, NULL, NULL),
(232, 101, 63, 1.00, 25.00, 1, NULL, NULL),
(233, 101, 65, 1.00, 18.00, 1, NULL, NULL),
(234, 102, 5, 4.00, 170.00, 1, NULL, NULL),
(235, 102, 54, 3.00, 60.00, 1, NULL, NULL),
(236, 102, 50, 2.00, 15.00, 1, NULL, NULL),
(237, 103, 4, 1.00, 320.00, 1, NULL, NULL),
(238, 103, 5, 2.00, 170.00, 1, NULL, NULL),
(239, 103, 50, 2.00, 15.00, 1, NULL, NULL),
(240, 103, 54, 2.00, 60.00, 1, NULL, NULL),
(241, 104, 4, 1.00, 320.00, 1, NULL, NULL),
(242, 104, 5, 2.00, 170.00, 1, NULL, NULL),
(243, 104, 54, 3.00, 60.00, 1, NULL, NULL),
(244, 104, 50, 2.00, 15.00, 1, NULL, NULL),
(245, 105, 5, 2.00, 170.00, 1, NULL, NULL),
(246, 106, 60, 2.00, 150.00, 1, NULL, NULL),
(247, 106, 50, 2.00, 15.00, 1, NULL, NULL),
(248, 107, 7, 4.00, 140.00, 1, NULL, NULL),
(249, 108, 5, 1.00, 170.00, 1, NULL, NULL),
(250, 109, 7, 4.00, 140.00, 1, NULL, NULL),
(251, 110, 7, 1.00, 140.00, 1, NULL, NULL),
(252, 111, 5, 2.00, 170.00, 1, NULL, NULL),
(253, 111, 46, 2.00, 18.00, 1, NULL, NULL),
(254, 112, 5, 2.00, 170.00, 1, NULL, NULL),
(255, 113, 15, 2.00, 120.00, 1, NULL, NULL),
(256, 113, 33, 2.00, 25.00, 1, NULL, NULL),
(257, 113, 63, 1.00, 25.00, 1, NULL, NULL),
(258, 113, 69, 1.00, 16.00, 1, NULL, NULL),
(259, 114, 60, 2.00, 150.00, 1, NULL, NULL),
(260, 114, 50, 1.00, 15.00, 1, NULL, NULL),
(261, 115, 7, 2.00, 140.00, 1, NULL, NULL),
(262, 115, 15, 4.00, 120.00, 1, NULL, NULL),
(263, 115, 33, 4.00, 25.00, 1, NULL, NULL),
(264, 115, 64, 1.00, 30.00, 1, NULL, NULL),
(265, 115, 66, 2.00, 35.00, 1, NULL, NULL),
(266, 116, 60, 2.00, 150.00, 1, NULL, NULL),
(267, 116, 28, 1.00, 120.00, 1, NULL, NULL),
(268, 116, 50, 1.00, 15.00, 1, NULL, NULL),
(269, 117, 54, 4.00, 60.00, 1, NULL, NULL),
(270, 118, 5, 1.00, 170.00, 1, NULL, NULL),
(271, 119, 5, 3.00, 170.00, 1, NULL, NULL),
(272, 120, 7, 3.00, 140.00, 1, NULL, NULL),
(273, 121, 5, 2.00, 170.00, 1, NULL, NULL),
(274, 122, 5, 2.00, 170.00, 1, NULL, NULL),
(275, 122, 63, 1.00, 25.00, 1, NULL, NULL),
(276, 123, 28, 3.00, 120.00, 1, NULL, NULL),
(277, 123, 81, 1.00, 45.00, 1, NULL, NULL),
(278, 123, 63, 1.00, 25.00, 1, NULL, NULL),
(279, 124, 5, 2.00, 170.00, 1, NULL, NULL),
(280, 124, 63, 1.00, 25.00, 1, NULL, NULL),
(281, 124, 48, 1.00, 16.00, 1, NULL, NULL),
(282, 125, 5, 1.00, 170.00, 1, NULL, NULL),
(283, 125, 7, 1.00, 140.00, 1, NULL, NULL),
(284, 125, 91, 1.00, 70.00, 1, NULL, NULL),
(285, 125, 63, 1.00, 25.00, 1, NULL, NULL),
(286, 126, 64, 1.00, 30.00, 1, NULL, NULL),
(287, 127, 15, 2.00, 120.00, 1, NULL, NULL),
(288, 127, 33, 2.00, 25.00, 1, NULL, NULL),
(289, 127, 50, 2.00, 15.00, 1, NULL, NULL),
(290, 128, 5, 3.00, 170.00, 1, NULL, NULL),
(291, 129, 56, 2.00, 80.00, 1, NULL, NULL),
(292, 129, 50, 1.00, 15.00, 1, NULL, NULL),
(293, 130, 6, 4.00, 250.00, 1, NULL, NULL),
(294, 130, 92, 1.00, 18.00, 1, NULL, NULL),
(295, 131, 56, 4.00, 80.00, 1, NULL, NULL),
(296, 131, 43, 1.00, 120.00, 1, NULL, NULL),
(297, 131, 44, 1.00, 100.00, 1, NULL, NULL),
(298, 132, 60, 2.00, 150.00, 1, NULL, NULL),
(299, 133, 7, 2.00, 140.00, 1, NULL, NULL),
(300, 133, 60, 2.00, 150.00, 1, NULL, NULL),
(301, 133, 50, 1.00, 15.00, 1, NULL, NULL),
(302, 134, 7, 1.00, 140.00, 1, NULL, NULL),
(303, 135, 7, 1.00, 140.00, 1, NULL, NULL),
(304, 135, 58, 2.00, 80.00, 1, NULL, NULL),
(305, 135, 46, 1.00, 18.00, 1, NULL, NULL),
(306, 136, 4, 1.00, 320.00, 1, NULL, NULL),
(307, 136, 63, 1.00, 25.00, 1, NULL, NULL),
(308, 137, 80, 3.00, 45.00, 1, NULL, NULL),
(309, 138, 77, 3.00, 50.00, 1, NULL, NULL),
(310, 139, 5, 1.00, 170.00, 1, NULL, NULL),
(311, 139, 50, 1.00, 15.00, 1, NULL, NULL),
(312, 140, 5, 1.00, 170.00, 1, NULL, NULL),
(313, 140, 50, 1.00, 15.00, 1, NULL, NULL),
(314, 141, 5, 1.00, 170.00, 1, NULL, NULL),
(315, 142, 5, 2.00, 170.00, 1, NULL, NULL),
(316, 142, 50, 1.00, 15.00, 1, NULL, NULL),
(317, 142, 69, 1.00, 16.00, 1, NULL, NULL),
(318, 143, 5, 2.00, 170.00, 1, NULL, NULL),
(319, 143, 50, 1.00, 15.00, 1, NULL, NULL),
(320, 143, 69, 1.00, 16.00, 1, NULL, NULL),
(321, 144, 60, 3.00, 150.00, 1, NULL, NULL),
(322, 144, 63, 1.00, 25.00, 1, NULL, NULL),
(323, 145, 4, 1.00, 320.00, 1, NULL, NULL),
(324, 146, 5, 1.00, 170.00, 1, NULL, NULL),
(325, 146, 50, 1.00, 15.00, 1, NULL, NULL),
(326, 147, 94, 2.00, 80.00, 1, NULL, NULL),
(327, 147, 93, 1.00, 10.00, 1, NULL, NULL),
(328, 147, 5, 3.00, 170.00, 1, NULL, NULL),
(329, 147, 91, 2.00, 70.00, 1, NULL, NULL),
(330, 147, 48, 3.00, 16.00, 1, NULL, NULL),
(331, 147, 63, 1.00, 25.00, 1, NULL, NULL),
(332, 148, 5, 2.00, 170.00, 1, NULL, NULL),
(333, 148, 63, 1.00, 25.00, 1, NULL, NULL),
(334, 149, 5, 1.00, 170.00, 1, NULL, NULL),
(335, 150, 5, 3.00, 170.00, 1, NULL, NULL),
(336, 150, 63, 1.00, 25.00, 1, NULL, NULL),
(337, 151, 16, 1.00, 150.00, 1, NULL, NULL),
(338, 152, 32, 3.00, 100.00, 1, NULL, NULL),
(339, 153, 32, 2.00, 100.00, 1, NULL, NULL),
(340, 153, 16, 2.00, 150.00, 1, NULL, NULL),
(341, 153, 64, 1.00, 30.00, 1, NULL, NULL),
(342, 153, 54, 6.00, 50.00, 1, NULL, NULL),
(343, 154, 15, 2.00, 120.00, 1, NULL, NULL),
(344, 154, 33, 2.00, 25.00, 1, NULL, NULL),
(345, 154, 50, 1.00, 15.00, 1, NULL, NULL),
(346, 154, 46, 1.00, 18.00, 1, NULL, NULL),
(347, 154, 4, 1.00, 320.00, 1, NULL, NULL),
(348, 155, 15, 2.00, 120.00, 1, NULL, NULL),
(349, 155, 33, 2.00, 25.00, 1, NULL, NULL),
(350, 155, 50, 1.00, 15.00, 1, NULL, NULL),
(351, 156, 28, 2.00, 120.00, 1, NULL, NULL),
(352, 156, 50, 2.00, 15.00, 1, NULL, NULL),
(353, 157, 45, 3.00, 15.00, 1, NULL, NULL),
(354, 158, 5, 2.00, 170.00, 1, NULL, NULL),
(355, 158, 50, 1.00, 15.00, 1, NULL, NULL),
(356, 159, 7, 4.00, 140.00, 1, NULL, NULL),
(357, 159, 64, 1.00, 30.00, 1, NULL, NULL),
(358, 160, 5, 1.00, 170.00, 1, NULL, NULL),
(359, 160, 50, 1.00, 15.00, 1, NULL, NULL),
(360, 161, 73, 1.00, 20.00, 1, NULL, NULL),
(361, 161, 66, 1.00, 35.00, 1, NULL, NULL),
(362, 162, 5, 5.00, 170.00, 1, NULL, NULL),
(363, 162, 90, 1.00, 140.00, 1, NULL, NULL),
(364, 162, 93, 1.00, 10.00, 1, NULL, NULL),
(365, 162, 64, 1.00, 30.00, 1, NULL, NULL),
(366, 162, 65, 4.00, 18.00, 1, NULL, NULL),
(367, 163, 5, 1.00, 170.00, 1, NULL, NULL),
(368, 164, 7, 1.00, 140.00, 1, NULL, NULL),
(369, 164, 50, 1.00, 15.00, 1, NULL, NULL),
(370, 164, 48, 1.00, 16.00, 1, NULL, NULL),
(371, 165, 5, 1.00, 170.00, 1, NULL, NULL),
(372, 166, 7, 3.00, 140.00, 1, NULL, NULL),
(373, 166, 45, 1.00, 15.00, 1, NULL, NULL),
(374, 167, 5, 2.00, 170.00, 1, NULL, NULL),
(375, 167, 63, 1.00, 25.00, 1, NULL, NULL),
(376, 168, 5, 3.00, 170.00, 1, NULL, NULL),
(377, 168, 63, 1.00, 25.00, 1, NULL, NULL),
(378, 169, 60, 2.00, 150.00, 1, NULL, NULL),
(379, 169, 50, 1.00, 15.00, 1, NULL, NULL),
(380, 170, 4, 1.00, 320.00, 1, NULL, NULL),
(381, 170, 44, 3.00, 100.00, 1, NULL, NULL),
(382, 170, 73, 1.00, 20.00, 1, NULL, NULL),
(383, 171, 59, 4.00, 130.00, 1, NULL, NULL),
(384, 171, 44, 1.00, 100.00, 1, NULL, NULL),
(385, 171, 50, 1.00, 15.00, 1, NULL, NULL),
(386, 172, 5, 3.00, 170.00, 1, NULL, NULL),
(387, 173, 5, 3.00, 170.00, 1, NULL, NULL),
(388, 173, 48, 1.00, 16.00, 1, NULL, NULL),
(389, 174, 54, 1.00, 50.00, 1, NULL, NULL),
(390, 175, 16, 1.00, 150.00, 1, NULL, NULL),
(391, 176, 44, 1.00, 100.00, 1, NULL, NULL),
(392, 177, 32, 3.00, 100.00, 1, NULL, NULL),
(393, 177, 60, 10.00, 150.00, 1, NULL, NULL),
(394, 177, 64, 2.00, 30.00, 1, NULL, NULL),
(395, 177, 6, 1.00, 250.00, 1, NULL, NULL),
(396, 178, 7, 4.00, 140.00, 1, NULL, NULL),
(397, 179, 7, 2.00, 140.00, 1, NULL, NULL),
(398, 180, 5, 2.00, 170.00, 1, NULL, NULL),
(399, 180, 63, 1.00, 25.00, 1, NULL, NULL),
(400, 180, 65, 2.00, 18.00, 1, NULL, NULL),
(401, 181, 5, 1.00, 170.00, 1, NULL, NULL),
(402, 181, 7, 1.00, 140.00, 1, NULL, NULL),
(403, 181, 63, 1.00, 25.00, 1, NULL, NULL),
(404, 181, 54, 1.00, 50.00, 1, NULL, NULL),
(405, 182, 4, 1.00, 320.00, 1, NULL, NULL),
(406, 182, 6, 2.00, 250.00, 1, NULL, NULL),
(407, 182, 45, 1.00, 15.00, 1, NULL, NULL),
(408, 183, 16, 1.00, 150.00, 1, NULL, NULL),
(409, 183, 58, 1.00, 80.00, 1, NULL, NULL),
(410, 183, 50, 1.00, 15.00, 1, NULL, NULL),
(411, 183, 46, 2.00, 18.00, 1, NULL, NULL),
(412, 184, 59, 2.00, 130.00, 1, NULL, NULL),
(413, 184, 50, 1.00, 15.00, 1, NULL, NULL),
(414, 184, 43, 2.00, 120.00, 1, NULL, NULL),
(415, 185, 60, 2.00, 150.00, 1, NULL, NULL),
(416, 185, 50, 1.00, 15.00, 1, NULL, NULL),
(417, 186, 15, 1.00, 120.00, 1, NULL, NULL),
(418, 186, 33, 1.00, 25.00, 1, NULL, NULL),
(419, 186, 50, 1.00, 15.00, 1, NULL, NULL),
(420, 187, 7, 1.00, 140.00, 1, NULL, NULL),
(421, 187, 50, 1.00, 15.00, 1, NULL, NULL),
(422, 188, 7, 1.00, 140.00, 1, NULL, NULL),
(423, 189, 28, 2.00, 120.00, 1, NULL, NULL),
(424, 190, 5, 2.00, 170.00, 1, NULL, NULL),
(425, 190, 76, 1.00, 25.00, 1, NULL, NULL),
(426, 191, 5, 2.00, 170.00, 1, NULL, NULL),
(427, 191, 44, 1.00, 100.00, 1, NULL, NULL),
(428, 192, 7, 2.00, 140.00, 1, NULL, NULL),
(429, 193, 64, 1.00, 30.00, 1, NULL, NULL),
(430, 193, 65, 2.00, 18.00, 1, NULL, NULL),
(431, 194, 66, 1.00, 35.00, 1, NULL, NULL),
(432, 195, 7, 1.00, 140.00, 1, NULL, NULL),
(433, 195, 50, 1.00, 15.00, 1, NULL, NULL),
(434, 196, 5, 2.00, 170.00, 1, NULL, NULL),
(435, 196, 63, 1.00, 25.00, 1, NULL, NULL),
(436, 197, 81, 1.00, 45.00, 1, NULL, NULL),
(437, 198, 5, 3.00, 170.00, 1, NULL, NULL),
(438, 198, 50, 1.00, 15.00, 1, NULL, NULL),
(439, 199, 5, 4.00, 170.00, 1, NULL, NULL),
(440, 199, 64, 2.00, 30.00, 1, NULL, NULL),
(441, 199, 65, 2.00, 18.00, 1, NULL, NULL),
(442, 200, 6, 1.00, 250.00, 1, NULL, NULL),
(443, 201, 5, 2.00, 170.00, 1, NULL, NULL),
(444, 201, 63, 1.00, 25.00, 1, NULL, NULL),
(445, 201, 46, 1.00, 18.00, 1, NULL, NULL),
(446, 202, 6, 1.00, 250.00, 1, NULL, NULL),
(447, 203, 5, 1.00, 170.00, 1, NULL, NULL),
(448, 204, 58, 3.00, 80.00, 1, NULL, NULL),
(449, 205, 14, 2.00, 250.00, 1, NULL, NULL),
(450, 205, 33, 2.00, 25.00, 1, NULL, NULL),
(451, 206, 7, 1.00, 140.00, 1, NULL, NULL),
(452, 207, 14, 2.00, 250.00, 1, NULL, NULL),
(453, 207, 33, 2.00, 25.00, 1, NULL, NULL),
(454, 207, 63, 1.00, 25.00, 1, NULL, NULL),
(455, 208, 5, 1.00, 170.00, 1, NULL, NULL),
(456, 209, 14, 2.00, 250.00, 1, NULL, NULL),
(457, 209, 33, 2.00, 25.00, 1, NULL, NULL),
(458, 209, 64, 1.00, 30.00, 1, NULL, NULL),
(459, 210, 5, 9.00, 170.00, 1, NULL, NULL),
(460, 211, 72, 4.00, 80.00, 1, NULL, NULL),
(461, 212, 32, 1.00, 100.00, 1, NULL, NULL),
(462, 213, 14, 1.00, 250.00, 1, NULL, NULL),
(463, 213, 33, 1.00, 25.00, 1, NULL, NULL),
(464, 213, 50, 1.00, 15.00, 1, NULL, NULL),
(465, 213, 54, 1.00, 50.00, 1, NULL, NULL),
(466, 214, 5, 5.00, 170.00, 1, NULL, NULL),
(467, 214, 64, 1.00, 30.00, 1, NULL, NULL),
(468, 214, 92, 4.00, 18.00, 1, NULL, NULL),
(469, 214, 69, 1.00, 16.00, 1, NULL, NULL),
(470, 215, 46, 4.00, 18.00, 1, NULL, NULL),
(471, 216, 5, 2.00, 170.00, 1, NULL, NULL),
(472, 216, 63, 1.00, 25.00, 1, NULL, NULL),
(473, 216, 46, 2.00, 18.00, 1, NULL, NULL),
(474, 217, 4, 1.00, 320.00, 1, NULL, NULL),
(475, 218, 6, 1.00, 250.00, 1, NULL, NULL),
(476, 219, 5, 2.00, 170.00, 1, NULL, NULL),
(477, 219, 63, 1.00, 25.00, 1, NULL, NULL),
(478, 220, 91, 1.00, 70.00, 1, NULL, NULL),
(479, 220, 7, 2.00, 140.00, 1, NULL, NULL),
(480, 220, 63, 1.00, 25.00, 1, NULL, NULL),
(481, 221, 7, 2.00, 140.00, 1, NULL, NULL),
(482, 221, 50, 1.00, 15.00, 1, NULL, NULL),
(483, 222, 5, 1.00, 170.00, 1, NULL, NULL),
(484, 222, 50, 1.00, 15.00, 1, NULL, NULL),
(485, 223, 16, 1.00, 150.00, 1, NULL, NULL),
(486, 223, 50, 1.00, 15.00, 1, NULL, NULL),
(487, 224, 14, 1.00, 250.00, 1, NULL, NULL),
(488, 224, 33, 1.00, 25.00, 1, NULL, NULL),
(489, 224, 50, 1.00, 15.00, 1, NULL, NULL),
(490, 224, 54, 2.00, 50.00, 1, NULL, NULL),
(491, 224, 55, 2.00, 40.00, 1, NULL, NULL),
(492, 224, 60, 2.00, 150.00, 1, NULL, NULL),
(493, 224, 48, 2.00, 16.00, 1, NULL, NULL),
(494, 225, 6, 1.00, 250.00, 1, NULL, NULL),
(495, 226, 74, 2.00, 20.00, 1, NULL, NULL),
(496, 227, 5, 1.00, 170.00, 1, NULL, NULL),
(497, 228, 58, 2.00, 80.00, 1, NULL, NULL),
(498, 228, 60, 1.00, 150.00, 1, NULL, NULL),
(499, 228, 28, 1.00, 120.00, 1, NULL, NULL),
(500, 229, 6, 1.00, 250.00, 1, NULL, NULL),
(501, 230, 7, 1.00, 140.00, 1, NULL, NULL),
(502, 231, 5, 1.00, 170.00, 1, NULL, NULL),
(503, 231, 7, 1.00, 140.00, 1, NULL, NULL),
(504, 231, 63, 1.00, 25.00, 1, NULL, NULL),
(505, 231, 45, 2.00, 15.00, 1, NULL, NULL),
(506, 232, 12, 1.00, 1282.00, 1, NULL, NULL),
(507, 232, 33, 1.00, 25.00, 1, NULL, NULL),
(508, 232, 95, 6.00, 10.00, 1, NULL, NULL),
(509, 232, 14, 3.00, 250.00, 1, NULL, NULL),
(510, 232, 72, 1.00, 80.00, 1, NULL, NULL),
(511, 232, 64, 1.00, 30.00, 1, NULL, NULL),
(512, 232, 63, 1.00, 25.00, 1, NULL, NULL),
(513, 233, 12, 1.00, 1282.00, 1, NULL, NULL),
(514, 233, 95, 6.00, 10.00, 1, NULL, NULL),
(515, 233, 33, 1.00, 25.00, 1, NULL, NULL),
(516, 233, 14, 3.00, 250.00, 1, NULL, NULL),
(517, 233, 72, 1.00, 80.00, 1, NULL, NULL),
(518, 233, 62, 1.00, 20.00, 1, NULL, NULL),
(519, 233, 64, 1.00, 30.00, 1, NULL, NULL),
(520, 234, 15, 1.00, 120.00, 1, NULL, NULL),
(521, 234, 33, 2.00, 25.00, 1, NULL, NULL),
(522, 234, 50, 1.00, 15.00, 1, NULL, NULL),
(523, 235, 32, 2.00, 100.00, 1, NULL, NULL),
(524, 236, 5, 2.00, 170.00, 1, NULL, NULL),
(525, 236, 7, 1.00, 140.00, 1, NULL, NULL),
(526, 236, 47, 3.00, 40.00, 1, NULL, NULL),
(527, 236, 64, 1.00, 30.00, 1, NULL, NULL),
(528, 237, 55, 3.00, 40.00, 1, NULL, NULL),
(529, 238, 6, 1.00, 250.00, 1, NULL, NULL),
(530, 238, 62, 1.00, 20.00, 1, NULL, NULL),
(531, 239, 72, 3.00, 80.00, 1, NULL, NULL),
(532, 239, 32, 1.00, 100.00, 1, NULL, NULL),
(533, 239, 62, 1.00, 20.00, 1, NULL, NULL),
(534, 240, 5, 9.00, 170.00, 1, NULL, NULL),
(535, 240, 64, 1.00, 30.00, 1, NULL, NULL),
(536, 240, 63, 1.00, 25.00, 1, NULL, NULL),
(537, 240, 58, 1.00, 80.00, 1, NULL, NULL),
(538, 241, 5, 9.00, 170.00, 1, NULL, NULL),
(539, 241, 63, 1.00, 25.00, 1, NULL, NULL),
(540, 241, 64, 1.00, 30.00, 1, NULL, NULL),
(541, 241, 58, 1.00, 80.00, 1, NULL, NULL),
(542, 242, 46, 5.00, 18.00, 1, NULL, NULL),
(543, 242, 62, 1.00, 20.00, 1, NULL, NULL),
(544, 243, 72, 3.00, 80.00, 1, NULL, NULL),
(545, 243, 47, 3.00, 40.00, 1, NULL, NULL),
(546, 243, 62, 1.00, 20.00, 1, NULL, NULL),
(547, 244, 60, 4.00, 150.00, 1, NULL, NULL),
(548, 245, 16, 3.00, 150.00, 1, NULL, NULL),
(549, 245, 72, 2.00, 80.00, 1, NULL, NULL),
(550, 245, 64, 1.00, 30.00, 1, NULL, NULL),
(551, 245, 32, 1.00, 100.00, 1, NULL, NULL),
(552, 245, 40, 1.00, 120.00, 1, NULL, NULL),
(553, 246, 28, 3.00, 120.00, 1, NULL, NULL),
(554, 246, 62, 1.00, 20.00, 1, NULL, NULL),
(555, 246, 68, 1.00, 30.00, 1, NULL, NULL),
(556, 247, 32, 2.00, 100.00, 1, NULL, NULL),
(557, 248, 28, 2.00, 120.00, 1, NULL, NULL),
(558, 248, 50, 1.00, 15.00, 1, NULL, NULL),
(559, 249, 12, 1.00, 1178.00, 1, NULL, NULL),
(560, 249, 33, 4.00, 25.00, 1, NULL, NULL),
(561, 249, 54, 4.00, 50.00, 1, NULL, NULL),
(562, 249, 92, 4.00, 18.00, 1, NULL, NULL),
(563, 249, 64, 1.00, 30.00, 1, NULL, NULL),
(564, 250, 5, 3.00, 170.00, 1, NULL, NULL),
(565, 250, 16, 1.00, 150.00, 1, NULL, NULL),
(566, 250, 62, 1.00, 20.00, 1, NULL, NULL),
(567, 250, 46, 2.00, 18.00, 1, NULL, NULL),
(568, 251, 7, 1.00, 140.00, 1, NULL, NULL),
(569, 252, 4, 1.00, 320.00, 1, NULL, NULL),
(570, 252, 16, 1.00, 150.00, 1, NULL, NULL),
(571, 252, 44, 1.00, 100.00, 1, NULL, NULL),
(572, 252, 50, 1.00, 15.00, 1, NULL, NULL),
(573, 253, 4, 1.00, 320.00, 1, NULL, NULL),
(574, 253, 5, 1.00, 170.00, 1, NULL, NULL),
(575, 254, 5, 2.00, 170.00, 1, NULL, NULL),
(576, 254, 50, 1.00, 15.00, 1, NULL, NULL),
(577, 254, 46, 2.00, 18.00, 1, NULL, NULL),
(578, 255, 7, 3.00, 140.00, 1, NULL, NULL),
(579, 256, 5, 1.00, 170.00, 1, NULL, NULL),
(580, 256, 50, 1.00, 15.00, 1, NULL, NULL),
(581, 257, 5, 1.00, 170.00, 1, NULL, NULL),
(582, 257, 7, 1.00, 140.00, 1, NULL, NULL),
(583, 258, 5, 6.00, 170.00, 1, NULL, NULL),
(584, 258, 63, 1.00, 25.00, 1, NULL, NULL),
(585, 258, 64, 1.00, 30.00, 1, NULL, NULL),
(586, 258, 66, 1.00, 35.00, 1, NULL, NULL),
(587, 258, 69, 2.00, 16.00, 1, NULL, NULL),
(588, 259, 7, 2.00, 140.00, 1, NULL, NULL),
(589, 259, 63, 1.00, 25.00, 1, NULL, NULL),
(590, 260, 5, 8.00, 170.00, 1, NULL, NULL),
(591, 260, 62, 1.00, 20.00, 1, NULL, NULL),
(592, 260, 63, 1.00, 25.00, 1, NULL, NULL),
(593, 260, 64, 1.00, 30.00, 1, NULL, NULL),
(594, 260, 66, 1.00, 35.00, 1, NULL, NULL),
(595, 260, 69, 2.00, 16.00, 1, NULL, NULL),
(596, 261, 5, 8.00, 170.00, 1, NULL, NULL),
(597, 261, 62, 1.00, 20.00, 1, NULL, NULL),
(598, 261, 63, 1.00, 25.00, 1, NULL, NULL),
(599, 261, 64, 1.00, 30.00, 1, NULL, NULL),
(600, 261, 66, 2.00, 35.00, 1, NULL, NULL),
(601, 261, 69, 2.00, 16.00, 1, NULL, NULL),
(602, 262, 5, 8.00, 170.00, 1, NULL, NULL),
(603, 262, 62, 1.00, 20.00, 1, NULL, NULL),
(604, 262, 63, 1.00, 25.00, 1, NULL, NULL),
(605, 262, 64, 1.00, 30.00, 1, NULL, NULL),
(606, 262, 66, 2.00, 35.00, 1, NULL, NULL),
(607, 262, 69, 2.00, 16.00, 1, NULL, NULL),
(608, 263, 5, 8.00, 170.00, 1, NULL, NULL),
(609, 263, 62, 1.00, 20.00, 1, NULL, NULL),
(610, 263, 63, 1.00, 25.00, 1, NULL, NULL),
(611, 263, 64, 1.00, 30.00, 1, NULL, NULL),
(612, 263, 66, 2.00, 35.00, 1, NULL, NULL),
(613, 263, 69, 2.00, 16.00, 1, NULL, NULL),
(614, 264, 28, 3.00, 120.00, 1, NULL, NULL),
(615, 264, 33, 3.00, 25.00, 1, NULL, NULL),
(616, 264, 63, 1.00, 25.00, 1, NULL, NULL),
(617, 265, 6, 1.00, 250.00, 1, NULL, NULL),
(618, 266, 5, 1.00, 170.00, 1, NULL, NULL),
(619, 266, 7, 1.00, 140.00, 1, NULL, NULL),
(620, 266, 65, 1.00, 18.00, 1, NULL, NULL),
(621, 266, 62, 1.00, 20.00, 1, NULL, NULL),
(622, 267, 5, 2.00, 170.00, 1, NULL, NULL),
(623, 267, 62, 1.00, 20.00, 1, NULL, NULL),
(624, 267, 46, 2.00, 18.00, 1, NULL, NULL),
(625, 268, 54, 16.00, 50.00, 1, NULL, NULL),
(626, 268, 50, 10.00, 15.00, 1, NULL, NULL),
(627, 268, 32, 3.00, 100.00, 1, NULL, NULL),
(628, 269, 54, 6.00, 50.00, 1, NULL, NULL),
(629, 269, 77, 3.00, 50.00, 1, NULL, NULL),
(630, 269, 64, 1.00, 30.00, 1, NULL, NULL),
(631, 270, 7, 2.00, 140.00, 1, NULL, NULL),
(632, 271, 7, 2.00, 140.00, 1, NULL, NULL),
(633, 271, 50, 1.00, 15.00, 1, NULL, NULL),
(634, 271, 66, 1.00, 35.00, 1, NULL, NULL),
(635, 272, 5, 3.00, 170.00, 1, NULL, NULL),
(636, 272, 50, 1.00, 15.00, 1, NULL, NULL),
(637, 272, 66, 1.00, 35.00, 1, NULL, NULL),
(638, 273, 7, 1.00, 140.00, 1, NULL, NULL),
(639, 274, 32, 2.00, 100.00, 1, NULL, NULL),
(640, 275, 15, 1.00, 120.00, 1, NULL, NULL),
(641, 275, 33, 1.00, 25.00, 1, NULL, NULL),
(642, 275, 50, 1.00, 15.00, 1, NULL, NULL),
(643, 275, 54, 1.00, 50.00, 1, NULL, NULL),
(644, 276, 54, 5.00, 50.00, 1, NULL, NULL),
(645, 276, 32, 1.00, 100.00, 1, NULL, NULL),
(646, 277, 5, 2.00, 170.00, 1, NULL, NULL),
(647, 278, 5, 1.00, 170.00, 1, NULL, NULL),
(648, 278, 7, 2.00, 140.00, 1, NULL, NULL),
(649, 278, 63, 1.00, 25.00, 1, NULL, NULL),
(650, 278, 92, 3.00, 18.00, 1, NULL, NULL),
(651, 279, 7, 1.00, 140.00, 1, NULL, NULL),
(652, 279, 15, 1.00, 120.00, 1, NULL, NULL),
(653, 279, 33, 1.00, 25.00, 1, NULL, NULL),
(654, 279, 62, 1.00, 20.00, 1, NULL, NULL),
(655, 280, 5, 1.00, 170.00, 1, NULL, NULL),
(656, 280, 50, 1.00, 15.00, 1, NULL, NULL),
(657, 281, 6, 1.00, 250.00, 1, NULL, NULL),
(658, 281, 94, 2.00, 80.00, 1, NULL, NULL),
(659, 281, 62, 1.00, 20.00, 1, NULL, NULL),
(660, 281, 46, 2.00, 18.00, 1, NULL, NULL),
(661, 282, 12, 1.00, 2640.00, 1, NULL, NULL),
(662, 282, 95, 10.00, 10.00, 1, NULL, NULL),
(663, 282, 33, 1.00, 25.00, 1, NULL, NULL),
(664, 282, 64, 1.00, 30.00, 1, NULL, NULL),
(665, 282, 54, 3.00, 50.00, 1, NULL, NULL),
(666, 283, 4, 1.00, 320.00, 1, NULL, NULL),
(667, 284, 60, 2.00, 150.00, 1, NULL, NULL),
(668, 284, 54, 2.00, 50.00, 1, NULL, NULL),
(669, 284, 62, 1.00, 20.00, 1, NULL, NULL),
(670, 285, 5, 3.00, 170.00, 1, NULL, NULL),
(671, 285, 91, 1.00, 70.00, 1, NULL, NULL),
(672, 285, 62, 1.00, 20.00, 1, NULL, NULL),
(673, 286, 54, 2.00, 50.00, 1, NULL, NULL),
(674, 287, 23, 1.00, 550.00, 1, NULL, NULL),
(675, 288, 32, 1.00, 100.00, 1, NULL, NULL),
(676, 288, 72, 2.00, 80.00, 1, NULL, NULL),
(677, 288, 16, 1.00, 150.00, 1, NULL, NULL),
(678, 288, 28, 1.00, 120.00, 1, NULL, NULL),
(679, 288, 64, 1.00, 30.00, 1, NULL, NULL),
(680, 289, 6, 1.00, 250.00, 1, NULL, NULL),
(681, 290, 88, 1.00, 275.00, 1, NULL, NULL),
(682, 291, 22, 1.00, 450.00, 1, NULL, NULL),
(683, 292, 33, 2.00, 25.00, 1, NULL, NULL),
(684, 292, 13, 1.00, 200.00, 1, NULL, NULL),
(685, 292, 62, 1.00, 20.00, 1, NULL, NULL),
(686, 293, 15, 2.00, 120.00, 1, NULL, NULL),
(687, 293, 33, 2.00, 25.00, 1, NULL, NULL),
(688, 293, 62, 1.00, 20.00, 1, NULL, NULL),
(689, 294, 72, 2.00, 80.00, 1, NULL, NULL),
(690, 294, 50, 1.00, 15.00, 1, NULL, NULL),
(691, 295, 16, 3.00, 150.00, 1, NULL, NULL),
(692, 295, 32, 2.00, 100.00, 1, NULL, NULL),
(693, 295, 55, 3.00, 40.00, 1, NULL, NULL),
(694, 295, 68, 1.00, 30.00, 1, NULL, NULL),
(695, 296, 32, 1.00, 100.00, 1, NULL, NULL),
(696, 296, 78, 2.00, 30.00, 1, NULL, NULL),
(697, 296, 46, 1.00, 18.00, 1, NULL, NULL),
(698, 297, 5, 6.00, 170.00, 1, NULL, NULL),
(699, 297, 94, 6.00, 80.00, 1, NULL, NULL),
(700, 298, 7, 3.00, 140.00, 1, NULL, NULL),
(701, 298, 45, 1.00, 15.00, 1, NULL, NULL),
(702, 298, 63, 1.00, 25.00, 1, NULL, NULL),
(703, 298, 74, 1.00, 20.00, 1, NULL, NULL),
(704, 299, 5, 6.00, 170.00, 1, NULL, NULL),
(705, 299, 94, 6.00, 80.00, 1, NULL, NULL),
(706, 299, 97, 1.00, 50.00, 1, NULL, NULL),
(707, 300, 6, 3.00, 250.00, 1, NULL, NULL),
(708, 300, 7, 1.00, 140.00, 1, NULL, NULL),
(709, 301, 60, 4.00, 150.00, 1, NULL, NULL),
(710, 301, 62, 1.00, 20.00, 1, NULL, NULL),
(711, 302, 5, 1.00, 170.00, 1, NULL, NULL),
(712, 302, 54, 1.00, 50.00, 1, NULL, NULL),
(713, 302, 50, 1.00, 15.00, 1, NULL, NULL),
(714, 303, 5, 5.00, 170.00, 1, NULL, NULL),
(715, 303, 64, 1.00, 30.00, 1, NULL, NULL),
(716, 303, 92, 5.00, 18.00, 1, NULL, NULL),
(717, 303, 63, 1.00, 25.00, 1, NULL, NULL),
(718, 304, 7, 1.00, 140.00, 1, NULL, NULL),
(719, 305, 96, 2.00, 190.00, 1, NULL, NULL),
(720, 305, 28, 1.00, 120.00, 1, NULL, NULL),
(721, 305, 50, 1.00, 15.00, 1, NULL, NULL),
(722, 305, 48, 1.00, 16.00, 1, NULL, NULL),
(723, 306, 13, 1.00, 150.00, 1, NULL, NULL),
(724, 306, 33, 1.00, 25.00, 1, NULL, NULL),
(725, 306, 54, 1.00, 50.00, 1, NULL, NULL),
(726, 306, 50, 1.00, 15.00, 1, NULL, NULL),
(727, 307, 28, 2.00, 120.00, 1, NULL, NULL),
(728, 307, 62, 1.00, 20.00, 1, NULL, NULL),
(729, 308, 5, 2.00, 170.00, 1, NULL, NULL),
(730, 309, 5, 2.00, 170.00, 1, NULL, NULL),
(731, 309, 16, 1.00, 150.00, 1, NULL, NULL),
(732, 309, 64, 1.00, 30.00, 1, NULL, NULL),
(733, 310, 91, 1.00, 70.00, 1, NULL, NULL),
(734, 310, 7, 1.00, 140.00, 1, NULL, NULL),
(735, 310, 46, 4.00, 18.00, 1, NULL, NULL),
(736, 311, 5, 2.00, 170.00, 1, NULL, NULL),
(737, 311, 62, 1.00, 20.00, 1, NULL, NULL),
(738, 311, 92, 2.00, 18.00, 1, NULL, NULL),
(739, 311, 54, 1.00, 50.00, 1, NULL, NULL),
(740, 312, 5, 11.00, 170.00, 1, NULL, NULL),
(741, 312, 46, 10.00, 18.00, 1, NULL, NULL),
(742, 312, 91, 3.00, 70.00, 1, NULL, NULL),
(743, 312, 94, 4.00, 80.00, 1, NULL, NULL),
(744, 312, 64, 2.00, 30.00, 1, NULL, NULL),
(745, 313, 54, 6.00, 50.00, 1, NULL, NULL),
(746, 313, 62, 1.00, 20.00, 1, NULL, NULL),
(747, 314, 28, 2.00, 120.00, 1, NULL, NULL),
(748, 314, 62, 1.00, 20.00, 1, NULL, NULL),
(749, 315, 16, 2.00, 150.00, 1, NULL, NULL),
(750, 315, 32, 2.00, 100.00, 1, NULL, NULL),
(751, 315, 62, 1.00, 20.00, 1, NULL, NULL),
(752, 315, 64, 1.00, 30.00, 1, NULL, NULL),
(753, 315, 46, 2.00, 18.00, 1, NULL, NULL),
(754, 316, 7, 6.00, 140.00, 1, NULL, NULL),
(755, 316, 64, 1.00, 30.00, 1, NULL, NULL),
(756, 317, 15, 4.00, 120.00, 1, NULL, NULL),
(757, 317, 33, 4.00, 25.00, 1, NULL, NULL),
(758, 317, 64, 1.00, 30.00, 1, NULL, NULL),
(759, 318, 5, 2.00, 170.00, 1, NULL, NULL),
(760, 318, 46, 2.00, 18.00, 1, NULL, NULL),
(761, 319, 4, 1.00, 320.00, 1, NULL, NULL),
(762, 320, 5, 2.00, 170.00, 1, NULL, NULL),
(763, 320, 13, 1.00, 150.00, 1, NULL, NULL),
(764, 320, 62, 2.00, 20.00, 1, NULL, NULL),
(765, 320, 92, 2.00, 18.00, 1, NULL, NULL),
(766, 321, 5, 2.00, 170.00, 1, NULL, NULL),
(767, 321, 46, 2.00, 18.00, 1, NULL, NULL),
(768, 322, 5, 2.00, 170.00, 1, NULL, NULL),
(769, 322, 66, 1.00, 35.00, 1, NULL, NULL),
(770, 323, 7, 2.00, 140.00, 1, NULL, NULL),
(771, 323, 62, 1.00, 20.00, 1, NULL, NULL),
(772, 324, 5, 3.00, 170.00, 1, NULL, NULL),
(773, 324, 63, 1.00, 25.00, 1, NULL, NULL),
(774, 325, 7, 2.00, 140.00, 1, NULL, NULL),
(775, 325, 50, 2.00, 15.00, 1, NULL, NULL),
(776, 325, 46, 1.00, 18.00, 1, NULL, NULL),
(777, 326, 7, 1.00, 140.00, 1, NULL, NULL),
(778, 326, 50, 1.00, 15.00, 1, NULL, NULL),
(779, 327, 5, 2.00, 170.00, 1, NULL, NULL),
(780, 327, 62, 1.00, 20.00, 1, NULL, NULL),
(781, 328, 5, 2.00, 170.00, 1, NULL, NULL),
(782, 328, 50, 1.00, 15.00, 1, NULL, NULL),
(783, 329, 29, 2.00, 170.00, 1, NULL, NULL),
(784, 329, 50, 2.00, 15.00, 1, NULL, NULL),
(785, 329, 46, 2.00, 18.00, 1, NULL, NULL),
(786, 330, 5, 2.00, 170.00, 1, NULL, NULL),
(787, 331, 7, 1.00, 140.00, 1, NULL, NULL),
(788, 332, 58, 4.00, 80.00, 1, NULL, NULL),
(789, 332, 59, 1.00, 130.00, 1, NULL, NULL),
(790, 333, 15, 2.00, 120.00, 1, NULL, NULL),
(791, 333, 33, 2.00, 25.00, 1, NULL, NULL),
(792, 333, 54, 2.00, 50.00, 1, NULL, NULL),
(793, 333, 50, 1.00, 15.00, 1, NULL, NULL),
(794, 333, 45, 1.00, 15.00, 1, NULL, NULL),
(795, 334, 5, 44.00, 170.00, 1, NULL, NULL),
(796, 335, 44, 3.00, 100.00, 1, NULL, NULL),
(797, 336, 7, 2.00, 140.00, 1, NULL, NULL),
(798, 336, 45, 2.00, 15.00, 1, NULL, NULL),
(799, 336, 63, 1.00, 25.00, 1, NULL, NULL),
(800, 337, 16, 3.00, 150.00, 1, NULL, NULL),
(801, 337, 63, 1.00, 25.00, 1, NULL, NULL),
(802, 338, 5, 3.00, 170.00, 1, NULL, NULL),
(803, 338, 62, 1.00, 20.00, 1, NULL, NULL),
(804, 339, 5, 2.00, 170.00, 1, NULL, NULL),
(805, 339, 64, 1.00, 30.00, 1, NULL, NULL),
(806, 340, 7, 1.00, 140.00, 1, NULL, NULL),
(807, 341, 7, 1.00, 140.00, 1, NULL, NULL),
(808, 342, 7, 1.00, 140.00, 1, NULL, NULL),
(809, 342, 19, 1.00, 190.00, 1, NULL, NULL),
(810, 342, 50, 1.00, 15.00, 1, NULL, NULL),
(811, 342, 92, 1.00, 18.00, 1, NULL, NULL),
(812, 343, 32, 1.00, 100.00, 1, NULL, NULL),
(813, 344, 15, 2.00, 120.00, 1, NULL, NULL),
(814, 344, 33, 2.00, 25.00, 1, NULL, NULL),
(815, 344, 46, 2.00, 18.00, 1, NULL, NULL),
(816, 344, 50, 1.00, 15.00, 1, NULL, NULL),
(817, 345, 5, 4.00, 170.00, 1, NULL, NULL),
(818, 345, 7, 1.00, 140.00, 1, NULL, NULL),
(819, 346, 5, 1.00, 170.00, 1, NULL, NULL),
(820, 347, 7, 3.00, 140.00, 1, NULL, NULL),
(821, 347, 64, 1.00, 30.00, 1, NULL, NULL),
(822, 347, 69, 1.00, 16.00, 1, NULL, NULL),
(823, 347, 46, 2.00, 18.00, 1, NULL, NULL),
(824, 348, 13, 2.00, 150.00, 1, NULL, NULL),
(825, 348, 33, 1.00, 25.00, 1, NULL, NULL),
(826, 348, 50, 1.00, 15.00, 1, NULL, NULL),
(827, 349, 4, 1.00, 320.00, 1, NULL, NULL),
(828, 350, 7, 1.00, 140.00, 1, NULL, NULL),
(829, 351, 83, 1.00, 60.00, 1, NULL, NULL),
(830, 352, 7, 3.00, 140.00, 1, NULL, NULL),
(831, 353, 5, 1.00, 170.00, 1, NULL, NULL),
(832, 353, 50, 1.00, 15.00, 1, NULL, NULL),
(833, 354, 5, 1.00, 170.00, 1, NULL, NULL),
(834, 354, 7, 1.00, 140.00, 1, NULL, NULL),
(835, 354, 50, 1.00, 15.00, 1, NULL, NULL),
(836, 354, 46, 1.00, 18.00, 1, NULL, NULL),
(837, 355, 4, 1.00, 320.00, 1, NULL, NULL),
(838, 355, 7, 2.00, 140.00, 1, NULL, NULL),
(839, 356, 7, 2.00, 140.00, 1, NULL, NULL),
(840, 356, 50, 1.00, 15.00, 1, NULL, NULL),
(841, 357, 28, 3.00, 120.00, 1, NULL, NULL),
(842, 357, 62, 1.00, 20.00, 1, NULL, NULL),
(843, 358, 7, 2.00, 140.00, 1, NULL, NULL),
(844, 358, 43, 1.00, 120.00, 1, NULL, NULL),
(845, 358, 62, 1.00, 20.00, 1, NULL, NULL),
(846, 358, 58, 1.00, 80.00, 1, NULL, NULL),
(847, 359, 4, 1.00, 320.00, 1, NULL, NULL),
(848, 359, 47, 1.00, 40.00, 1, NULL, NULL),
(849, 359, 64, 1.00, 30.00, 1, NULL, NULL),
(850, 359, 94, 2.00, 80.00, 1, NULL, NULL);

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
-- Table structure for table `sms_records`
--

CREATE TABLE `sms_records` (
  `id` int(11) UNSIGNED NOT NULL,
  `mobile` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `sms` longtext COLLATE utf8_unicode_ci,
  `sending_date` date DEFAULT NULL,
  `sms_count` tinyint(3) DEFAULT '1',
  `send_by` int(11) DEFAULT NULL,
  `is_send` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `sms_records`
--

INSERT INTO `sms_records` (`id`, `mobile`, `sms`, `sending_date`, `sms_count`, `send_by`, `is_send`, `created_at`, `updated_at`) VALUES
(1, '01721571954', 'sf', '2019-07-11', 1, 1, 1, NULL, NULL),
(2, '01770989591', ';klf \'edgl [oieeng m', '2019-07-11', 1, 1, 1, NULL, NULL),
(3, '01785869686', 'Hi. How are you?', '2019-07-11', 1, 1, 1, NULL, NULL),
(4, '01839973100', 'Hello its a test message from rupkatha.', '2019-07-13', 1, 1, 1, NULL, NULL);

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
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
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
-- Indexes for table `sms_records`
--
ALTER TABLE `sms_records`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `costs`
--
ALTER TABLE `costs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cost_fields`
--
ALTER TABLE `cost_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `purchase_histories`
--
ALTER TABLE `purchase_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT for table `sale_products`
--
ALTER TABLE `sale_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=851;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sms_records`
--
ALTER TABLE `sms_records`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
