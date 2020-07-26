-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2019 at 12:01 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.17

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
(1, 'Super Admin', 'super@gmail.com', 'superadmin', 1, 'public/images/admins/1556106587.png', '$2y$10$tQVwD5VequDrZsgg5NUaHexmp3fGf.XI7zylpDEqSxf9WJITYiRWO', 1, 'bfMn72ezUuYzkdl951itCWto9u3RWDBaHwddlybSsdOTjpIgbHYaex4Iefrh', '2019-03-24 12:00:00', '2019-04-24 11:49:48'),
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
(20, 1, '::1', NULL, 'PC', 'Firefox', 1, '2019-04-23 11:43:51', '2019-04-23 11:43:51'),
(21, 1, '::1', NULL, 'PC', 'Chrome', 1, '2019-04-23 12:27:19', '2019-04-23 12:27:19'),
(22, 1, '::1', NULL, 'PC', 'Firefox', 1, '2019-04-24 04:02:21', '2019-04-24 04:02:21'),
(23, 1, '::1', NULL, 'PC', 'Firefox', 1, '2019-04-24 04:15:16', '2019-04-24 04:15:16'),
(24, 1, '::1', NULL, 'PC', 'Firefox', 1, '2019-04-24 05:11:48', '2019-04-24 05:11:48'),
(25, 1, '::1', NULL, 'PC', 'Firefox', 1, '2019-04-24 11:46:49', '2019-04-24 11:46:49'),
(26, 1, '::1', NULL, 'PC', 'Chrome', 1, '2019-06-18 04:32:03', '2019-06-18 04:32:03');

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
(99, 'view', 'দেখা', 34, 1, 'fa fa-eye', NULL, 'admin.product.view', 1, 1, '2019-04-18 04:15:38', '2019-04-18 04:15:38'),
(100, 'Backup', 'ব্যাকআপ', NULL, 0, 'fa fa-cog', '/admin/backup', 'admin.backup.index', 999, 1, '2019-04-19 03:49:55', '2019-04-19 03:55:47'),
(101, 'Action', 'কার্যক্রম', 100, 0, 'fa fa-home', '/admin/backup', 'admin.backup.index', 1, 1, '2019-04-19 03:51:23', '2019-04-19 03:54:34'),
(102, 'Download', 'ডাউনলোড', 101, 1, 'fa fa-download', NULL, 'admin.backup.index', 1, 1, '2019-04-19 03:52:24', '2019-04-19 03:52:24'),
(103, 'Delete', 'ডিলিট', 101, 1, 'fa fa-trash', NULL, 'admin.backup.index', 2, 1, '2019-04-19 03:52:58', '2019-04-19 03:52:58'),
(104, 'Cost Field', 'খরচ ক্ষেত্র', 94, 0, 'fa fa-contao', '/admin/cost_field', 'admin.cost_field.index', 0, 1, '2019-04-20 22:10:13', '2019-04-23 00:03:15'),
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

-- --------------------------------------------------------

--
-- Table structure for table `purchase_histories`
--

CREATE TABLE `purchase_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, '[\"6\",\"88\",\"33\",\"38\",\"94\",\"111\",\"109\",\"82\",\"3\",\"4\",\"100\"]', '[\"104\",\"101\",\"40\",\"108\",\"35\",\"116\",\"39\",\"34\",\"96\",\"95\",\"90\",\"89\",\"117\",\"113\",\"112\"]', '[\"93\",\"102\",\"103\",\"92\",\"114\",\"5\",\"37\",\"119\",\"91\",\"118\",\"36\",\"97\",\"42\",\"106\",\"107\",\"41\",\"98\",\"99\",\"115\"]', 1, 1, '2019-04-15 03:12:29', '2019-06-18 09:15:17');

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
(1, 'logo-1555583380.jpg', 'favicon-1555584605.jpg', 'Restaurent Bill', 'superadmin@Restaurent-Bill.com', '01234567890', 'facebook', 'twitter', 'youtube', 'linkedin', 'City: Mymensingh\r\nCountry: Bangladesh\r\nState: Mymensingh Division\r\nZipcode: 2200', '1', '2019-04-10 12:00:00', '2019-06-18 09:59:59');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_access_infos`
--
ALTER TABLE `admin_access_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `costs`
--
ALTER TABLE `costs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cost_fields`
--
ALTER TABLE `cost_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_histories`
--
ALTER TABLE `purchase_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_products`
--
ALTER TABLE `sale_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
