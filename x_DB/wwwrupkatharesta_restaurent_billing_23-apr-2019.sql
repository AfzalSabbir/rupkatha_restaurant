-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2019 at 01:46 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.15

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
(1, 'Super Admin', 'super@gmail.com', 'superadmin', 1, NULL, '$2y$10$tQVwD5VequDrZsgg5NUaHexmp3fGf.XI7zylpDEqSxf9WJITYiRWO', 1, 'RK0Kn6V5A7UbkEF5gwDGOLf6Rlg0zJkL6CMUlsQekxccAh2oIiJuLEp0xGfW', '2019-03-24 12:00:00', '2019-03-24 12:00:00'),
(2, 'Admin', 'admin@gmail.com', 'admin', 2, NULL, '$2y$10$tQVwD5VequDrZsgg5NUaHexmp3fGf.XI7zylpDEqSxf9WJITYiRWO', 1, 'gV02AWVRulaSdFKJqqwcgB8964FxjAKuVn6uP0s9QbuHG0K1hZWeNm2W6pdg', '2019-03-24 12:00:00', '2019-04-15 03:51:44');

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
(20, 1, '::1', NULL, 'PC', 'Firefox', 1, '2019-04-23 11:43:51', '2019-04-23 11:43:51');

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
(1, 'Fast Food', 'food', 'public/images/category/1555585027.jpg', 1, '2019-04-18 04:57:07', '2019-04-18 04:57:41'),
(2, 'Drinks', 'drinks', 'public/images/category/1555585098.jpg', 1, '2019-04-18 04:58:18', '2019-04-18 04:58:18'),
(3, 'Deshi Food', 'deshi-food', 'public/images/category/1555585138.jpg', 1, '2019-04-18 04:58:58', '2019-04-18 04:58:58'),
(4, 'Lunch', 'lunch', 'public/images/category/1555832429.jpg', 1, '2019-04-21 01:40:29', '2019-04-21 01:40:29'),
(5, 'sdfgsdg', 'sdfgsdg', 'public/images/category/1555833118.jpg', 1, '2019-04-21 01:51:58', '2019-04-21 01:51:58'),
(6, 'sdsd  ebrt', 'sdsd-ebrt', 'public/images/category/1555833127.jpg', 1, '2019-04-21 01:52:07', '2019-04-21 01:52:07'),
(7, 'gdfgdfgdfg', 'gdfgdfgdfg', 'public/images/category/1555833139.jpg', 1, '2019-04-21 01:52:19', '2019-04-21 01:52:19'),
(8, 'white', 'white', 'public/images/category/1555833151.jpg', 1, '2019-04-21 01:52:31', '2019-04-21 01:52:31');

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
(6, 'Test1', 2, 'purchase', '2019-04-23', 30.00, 'fgdfg', '1000', 'Test', 1, '2019-04-22 22:28:51', '2019-04-22 22:28:51'),
(7, 'Test2', 2, 'purchase', '2019-04-23', 36.00, 'dfggf', '1500', 'Test2', 1, '2019-04-22 22:29:11', '2019-04-22 22:29:11');

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
(1, 'ASDFG', 1, '2019-04-20 22:39:38', '2019-04-23 10:21:23'),
(2, 'Rickshaw Vara', 1, '2019-04-20 23:34:25', '2019-04-23 03:09:39');

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
(3, 'Menu Permission', 'মেনু পারমিশন', NULL, 0, 'fa fa-cogs', '/admin/role', 'admin.role.index', 499, 1, '2019-03-25 04:44:32', '2019-04-23 10:55:09'),
(4, 'Log Activity', 'লগ এক্টিভিটি', NULL, 0, 'fa fa-cog', '/admin/log', 'admin.log.index', 500, 1, '2019-03-25 04:46:37', '2019-04-23 10:54:35'),
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
(88, 'Sale', 'বিক্রয়', NULL, 0, 'fa fa-money', NULL, NULL, 49, 1, '2019-04-15 21:53:59', '2019-04-15 21:53:59'),
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
(99, 'view', 'দেখা', 34, 1, 'fa fa-eye', NULL, 'admin.product.view', 1, 1, '2019-04-18 04:15:38', '2019-04-18 04:15:38'),
(100, 'Backup', 'ব্যাকআপ', NULL, 0, 'fa fa-cog', '/admin/backup', 'admin.backup.index', 999, 1, '2019-04-19 03:49:55', '2019-04-19 03:55:47'),
(101, 'Action', 'কার্যক্রম', 100, 0, 'fa fa-home', '/admin/backup', 'admin.backup.index', 1, 1, '2019-04-19 03:51:23', '2019-04-19 03:54:34'),
(102, 'Download', 'ডাউনলোড', 101, 1, 'fa fa-download', NULL, 'admin.backup.index', 1, 1, '2019-04-19 03:52:24', '2019-04-19 03:52:24'),
(103, 'Delete', 'ডিলিট', 101, 1, 'fa fa-trash', NULL, 'admin.backup.index', 2, 1, '2019-04-19 03:52:58', '2019-04-19 03:52:58'),
(104, 'Cost Field', 'খরচ ক্ষেত্র', 94, 0, 'fa fa-contao', '/admin/cost_field', 'admin.cost_field.index', 0, 1, '2019-04-20 22:10:13', '2019-04-23 00:03:15'),
(106, 'Edit', 'এডিট', 104, 1, 'fa fa-pencil', NULL, 'admin.cost_field.edit', 1, 1, '2019-04-20 22:12:17', '2019-04-23 00:04:37'),
(107, 'Delete', 'ডিলিট', 104, 1, 'fa fa-trash', NULL, 'admin.cost_field.delete', 2, 1, '2019-04-20 22:13:04', '2019-04-23 00:04:46'),
(108, 'Action', 'একশন', 3, 0, 'fa fa-edit', '/admin/role', 'admin.role.index', 1, 1, '2019-04-23 00:09:44', '2019-04-23 00:11:56'),
(109, 'Balance Sheet', 'ব্যালেন্স শীট', NULL, 0, 'fa fa-money', '/admin/balance_sheet', 'admin.balance_sheet.index', 150, 1, '2019-04-23 01:03:14', '2019-04-23 01:03:14');

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
(16, '2019_04_21_043538_create_cost_fields_table', 2);

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
(1, 'Mango Juice', 'mango-juice', 2, 'Fresh Cold Mango Juice.', 'public/images/products/1555585321.jpg', '70', '120', '0', 0, 1, '2019-04-18 05:02:01', '2019-04-18 05:02:01'),
(2, 'Orange Juice', 'orange-juice', 2, 'Sweet Orange Juice.', 'public/images/products/1555585422.jpg', '59', '106', '5', 0, 1, '2019-04-18 05:03:42', '2019-04-18 05:03:42'),
(3, 'Coca-Cola', 'coca-cola', 2, 'Coca-Cola 250ml.', 'public/images/products/1555585509.jpg', '16', '25', '0', 0, 1, '2019-04-18 05:05:09', '2019-04-18 05:05:09'),
(4, 'Chicken Fry', 'chicken-fry', 3, 'Chicken Chilly Fry', 'public/images/products/1555585597.jpg', '70', '180', '0', 0, 1, '2019-04-18 05:06:37', '2019-04-18 05:06:37'),
(5, 'Ilish Rice', 'ilish-rice', 3, 'Ilish Panta Rice.', 'public/images/products/1555585678.jpg', '70', '310', '10', 0, 1, '2019-04-18 05:07:58', '2019-04-18 05:07:58'),
(6, 'Tomato Curry', 'tomato-curry', 3, 'Tomato Chilly Curry.', 'public/images/products/1555585771.jpg', '30', '127', '9', 0, 1, '2019-04-18 05:09:31', '2019-04-18 05:09:31'),
(7, 'Burger & French Fry', 'burger-&-french-fry', 1, 'Burger & French Fry', 'public/images/products/1555585894.jpg', '165', '390', '10', 0, 1, '2019-04-18 05:11:34', '2019-04-18 05:11:34'),
(8, 'Samucha', 'samucha-1', 1, 'Deshi Samucha.', 'public/images/products/1556017944.jpg', '3', '15', '0', 0, 1, '2019-04-18 05:12:44', '2019-04-23 11:12:24'),
(9, 'Pizza', 'pizza', 1, 'Chicken Pizza.', 'public/images/products/1555586118.png', '202', '459', '4', 0, 1, '2019-04-18 05:15:18', '2019-04-18 05:15:18');

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
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `menu`, `sub_menu`, `in_body`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, '[\"6\",\"88\",\"33\",\"38\",\"94\",\"109\",\"82\",\"3\",\"4\",\"100\"]', '[\"104\",\"101\",\"40\",\"108\",\"35\",\"96\",\"39\",\"34\",\"90\",\"95\",\"89\"]', '[\"93\",\"102\",\"103\",\"92\",\"97\",\"5\",\"37\",\"107\",\"91\",\"106\",\"36\",\"41\",\"42\",\"99\",\"98\"]', 1, 1, '2019-04-15 03:12:29', '2019-04-23 10:57:59');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` double(8,2) NOT NULL,
  `discount` float(10,2) DEFAULT '0.00',
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

INSERT INTO `sales` (`id`, `admin_id`, `customer_name`, `customer_mobile`, `total_price`, `discount`, `total_price_after_discount`, `total_product`, `given_money`, `status`, `created_at`, `updated_at`) VALUES
(6, 1, NULL, NULL, 220.70, 0.00, 220.70, 2.00, 250.00, 1, '2019-04-22 22:36:26', '2019-04-22 22:36:26');

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
(1, 1, 1, 3.00, 120.00, 1, NULL, NULL),
(2, 1, 2, 1.00, 100.70, 1, NULL, NULL),
(3, 2, 1, 3.00, 120.00, 1, NULL, NULL),
(4, 2, 2, 1.00, 100.70, 1, NULL, NULL),
(5, 3, 1, 1.00, 120.00, 1, NULL, NULL),
(6, 3, 2, 1.00, 100.70, 1, NULL, NULL),
(7, 3, 6, 1.00, 115.57, 1, NULL, NULL),
(8, 3, 5, 1.00, 279.00, 1, NULL, NULL),
(9, 4, 1, 1.00, 120.00, 1, NULL, NULL),
(10, 4, 2, 1.00, 100.70, 1, NULL, NULL),
(11, 5, 1, 1.00, 120.00, 1, NULL, NULL),
(12, 5, 2, 1.00, 100.70, 1, NULL, NULL);

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
(1, 'logo-1555583380.jpg', 'favicon-1555584605.jpg', 'Restaurent Bill', 'superadmin@Restaurent-Bill.com', '01234567890', 'https://fb.com/ecom', 'twitter', 'youtube', 'linkedin', 'City: Mymensingh\r\nCountry: Bangladesh\r\nState: Mymensingh Division\r\nZipcode: 2200', '1', '2019-04-10 12:00:00', '2019-04-18 04:50:06');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_access_infos`
--
ALTER TABLE `admin_access_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `costs`
--
ALTER TABLE `costs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cost_fields`
--
ALTER TABLE `cost_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sale_products`
--
ALTER TABLE `sale_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
