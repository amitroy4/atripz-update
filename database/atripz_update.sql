-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2025 at 10:04 AM
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
-- Database: `atripz_update`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutuses`
--

CREATE TABLE `aboutuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `about_desc` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aboutuses`
--

INSERT INTO `aboutuses` (`id`, `title`, `about_desc`, `created_at`, `updated_at`) VALUES
(1, 'One Stop Solution For Your Adventure', '<p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt\">At A Trip Z,\r\nwe believe adventure isn’t just something you do—it’s a way of life. Every\r\njourney, big or small, begins with a spark of curiosity and the right gear to\r\nturn that curiosity into an unforgettable experience. We\'re here to fuel your\r\nwanderlust and equip you with the tools to explore the world with confidence\r\nand style.</p><p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt\">&nbsp;</p><p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt\">“Begin The\r\nAdventure” isn’t just our motto—it’s a call to all explorers, dreamers, and\r\nthrill-seekers who are ready to leave the ordinary behind. We’ve curated a\r\ncollection of travel essentials that combine durability, innovation, and flair.\r\nWhether you\'re scaling a mountain peak, navigating city streets, or lounging on\r\na remote beach, A Trip Z has what you need to make your journey as seamless as\r\nit is extraordinary.</p><p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt\">&nbsp;</p><p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt\">Picture this:\r\nthe open road ahead, your backpack packed with gear designed to take you\r\nfurther, smarter, and more prepared. From rugged, adventure-ready backpacks to\r\nsleek travel accessories that help you stay organized, every item we offer is\r\nselected with one goal in mind—to enhance your travel experience. We’re not\r\njust selling products; we’re offering you a passport to discovery, a way to\r\nmake every trip more exhilarating, meaningful, and truly yours.</p><p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt\">&nbsp;</p><p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt\">But A Trip Z\r\nis more than a store. We’re a community of adventurers who share a passion for\r\nthe unexplored. When you join us, you’re joining a tribe of like-minded\r\nexplorers, all driven by the same hunger for discovery, personal growth, and\r\nthe thrill of the unknown.</p><p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt\">&nbsp;</p><p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt\">No matter\r\nwhere your journey takes you—whether it\'s hiking through the wilderness,\r\nexploring hidden city streets, or finding a tranquil hideaway—we’re here to\r\nhelp you begin your adventure. Because we know that the best stories aren’t\r\nfound in guidebooks—they’re written by travelers who dare to explore the\r\nextraordinary.</p><p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt\">&nbsp;</p><p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt\">So, what’s\r\nstopping you? Adventure awaits. It’s time to pack your bags, chase new\r\nhorizons, and let A Trip Z be your trusted partner as you explore the world,\r\none unforgettable journey at a time.</p><p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt\">&nbsp;</p><p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt\">---</p><p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt\">&nbsp;</p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt\">This version\r\nadds a stronger emotional connection, using storytelling and vivid imagery to\r\ninspire readers. It positions A Trip Z as not just a provider of products, but\r\na gateway to exciting and life-changing experiences.</p><p></p>', '2024-03-30 01:15:58', '2025-01-15 03:17:57');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `btntext` int(255) DEFAULT NULL,
  `shop_url` varchar(255) DEFAULT NULL,
  `is_featured` varchar(255) DEFAULT NULL,
  `is_feature_no` varchar(255) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `header`, `title`, `btntext`, `shop_url`, `is_featured`, `is_feature_no`, `image`, `status`, `created_at`, `updated_at`) VALUES
(9, 'WInter Sale', 'Winter Slae  ... . .', NULL, NULL, '1', '2', 'ads_banner/1736953081.jpg', 1, '2025-01-15 01:04:44', '2025-01-15 08:58:55'),
(11, 'WInter Sale', 'Winter Slae  ... . .', NULL, NULL, '1', '2', 'ads_banner/1736953093.jpg', 0, '2025-01-15 01:06:41', '2025-01-15 08:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `applied_coupones`
--

CREATE TABLE `applied_coupones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupone_id` bigint(20) UNSIGNED NOT NULL,
  `coupone_code` varchar(255) NOT NULL,
  `is_ordered` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_image` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_image`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Local', 'Local_1717176758.jpg', 'local', '0', '2024-05-31 05:32:38', '2024-05-31 05:32:38'),
(4, 'A trip Z', 'কহেন - KOHEN_1717504654.png', 'khen-kohen', '1', '2024-06-04 00:37:34', '2024-06-04 01:24:21'),
(5, 'Naturehike', 'Naturehike_1717507439.png', 'naturehike', '1', '2024-06-04 01:23:59', '2024-06-04 01:23:59');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `camp_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `camp_offer` varchar(255) DEFAULT '0',
  `slug` varchar(255) NOT NULL,
  `status` enum('Draft','Published') NOT NULL DEFAULT 'Draft',
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `camp_products`
--

CREATE TABLE `camp_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `camp_price` decimal(8,2) DEFAULT NULL,
  `camp_qty` decimal(8,2) DEFAULT NULL,
  `start_date` decimal(8,2) DEFAULT NULL,
  `end_date` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categories_id` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `parent_category` varchar(255) DEFAULT NULL,
  `category_icon` varchar(255) DEFAULT NULL,
  `category_image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories_id`, `category_name`, `parent_category`, `category_icon`, `category_image`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(21, 'z9ulk3V5GQ2m', 'Camping', NULL, NULL, NULL, 'camping', '1', '2024-06-04 01:26:01', '2024-06-04 01:26:01'),
(23, 'KZhQd1t0uw7U', 'Hiking', NULL, NULL, NULL, 'hiking', '1', '2024-07-02 22:39:35', '2024-07-02 22:39:35'),
(24, 'RX4yxMHoNfhU', 'Backpack', NULL, NULL, NULL, 'backpack', '1', '2024-07-18 01:49:04', '2024-07-18 01:49:04'),
(25, 'tT3kHLYAFsu6', 'Tent', NULL, NULL, NULL, 'camping-tent', '1', '2024-07-18 03:22:27', '2025-01-19 02:23:24'),
(26, 'iIrNV2zaHtPg', 'Clothing', NULL, NULL, NULL, 'clothing', '1', '2024-08-12 02:55:18', '2024-08-12 02:55:18');

-- --------------------------------------------------------

--
-- Table structure for table `category_size_headers`
--

CREATE TABLE `category_size_headers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `size_header_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_name` varchar(255) NOT NULL,
  `color_code` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color_name`, `color_code`, `status`, `created_at`, `updated_at`) VALUES
(27, 'Blue', 'rgba(18, 27, 199, 1)', 1, '2024-05-31 05:43:49', '2024-06-03 17:00:12'),
(28, 'Red', 'rgba(214, 40, 40, 1)', 1, '2024-05-31 05:44:04', '2024-06-03 17:00:01'),
(29, 'Silver', 'rgba(235, 241, 245, 0.68)', 1, '2024-05-31 05:44:26', '2024-06-03 17:00:54'),
(30, 'Black', 'rgba(31, 6, 6, 1)', 1, '2024-06-04 01:30:47', '2024-07-02 22:51:37'),
(31, 'green', 'rgba(0, 255, 0, 1)', 1, '2024-06-04 09:49:31', '2024-07-02 22:51:33'),
(32, 'Carbon', 'rgba(98, 98, 93, 1)', 1, '2024-07-02 22:49:09', '2024-07-02 22:51:47'),
(33, 'Navy Blue', 'rgba(0, 0, 128, 1)', 1, '2024-07-02 22:50:23', '2024-07-02 22:51:42'),
(34, 'Orange', 'rgba(255, 165, 0, 1)', 1, '2024-07-16 01:54:11', '2024-07-16 01:54:11'),
(35, 'Forest green', 'rgba(34, 139, 34, 1)', 0, '2024-08-01 10:18:58', '2024-08-01 10:18:58'),
(36, 'Gray', 'rgba(128, 128, 128, 1)', 0, '2024-08-04 00:35:37', '2024-08-04 00:35:37'),
(37, 'olive', 'rgba(186, 184, 108, 1)', 0, '2024-08-13 04:27:47', '2024-08-13 04:27:47');

-- --------------------------------------------------------

--
-- Table structure for table `contactinfos`
--

CREATE TABLE `contactinfos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) NOT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `officehour` varchar(255) DEFAULT NULL,
  `google_map` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contactinfos`
--

INSERT INTO `contactinfos` (`id`, `phone`, `whatsapp`, `email`, `address`, `officehour`, `google_map`, `created_at`, `updated_at`) VALUES
(1, '01616663949', '01616663949', 'support@atripzbd.com', 'Nijum Bari, House No: 64/A, 1st Floor, Purana Paltan Len, Kakrail, Near Islami Bank Hospital, Garage Goli, Dhaka, Bangladesh', '10:00 - 18:00, Mon - Sat', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3742.7810109635298!2d90.40770636607756!3d23.73791615090984!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b941fb0a10d9%3A0x590b614d3a84b23e!2sNijhum%20Nibash!5e1!3m2!1sen!2sbd!4v1736932993146!5m2!1sen!2sbd\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '2024-05-06 01:11:04', '2025-01-15 03:24:34');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupons_title` varchar(255) NOT NULL,
  `coupons_code` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL,
  `percent_value` int(11) DEFAULT NULL,
  `fixed` double DEFAULT NULL,
  `discounts_type` enum('percent','fixed') NOT NULL DEFAULT 'percent',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `division` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `loyalty_point` varchar(255) NOT NULL DEFAULT '0',
  `status` enum('registerd','not registerd') NOT NULL DEFAULT 'not registerd',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstName`, `lastName`, `phone`, `email`, `billing_address`, `division`, `district`, `area`, `loyalty_point`, `status`, `created_at`, `updated_at`) VALUES
(24, 'sanib', '', '01856744788', ' ', 'bismillah motors, bypass, ramu, cox\'s bazar', NULL, NULL, NULL, '0', 'not registerd', '2024-08-12 03:43:34', '2024-08-12 03:43:34'),
(26, 'tanvir mahmud abir', '', '01322208444', ' ', 'kabihut, noakhali', NULL, NULL, NULL, '0', 'not registerd', '2024-08-13 02:55:37', '2024-08-13 02:55:37'),
(27, 'tanvir tasin', '', '01932700210', ' ', 'dhaka malibagh', NULL, NULL, NULL, '0', 'not registerd', '2024-08-13 04:15:33', '2024-08-13 04:15:33'),
(28, 'ekramul hq', '', '01521258666', ' ', 'gopalganj', NULL, NULL, NULL, '0', 'not registerd', '2024-08-13 04:19:20', '2024-08-13 04:19:20'),
(29, 'md saidul', '', '01987760013', ' ', 'bashudhra city', NULL, NULL, NULL, '0', 'not registerd', '2024-08-13 04:33:18', '2024-08-13 04:33:18'),
(30, 'rajib', '', '01537662646', ' ', 'kaptai, rangamati', NULL, NULL, NULL, '0', 'not registerd', '2024-08-13 04:40:18', '2024-08-13 04:40:18'),
(31, 'four season bd (PARVEJ)', '', '01967163370', ' ', '2 No. Gate, 10 Tola Market, Eastern Banabithi Shopping Complex, Shop No. 31&63, South banashree, Dhaka 1217', NULL, NULL, NULL, '0', 'not registerd', '2024-08-14 00:18:41', '2024-08-14 00:18:41'),
(32, 'jubayer rahman', '', '01779453070', ' ', 'galachipa thana,patuakhali', NULL, NULL, NULL, '0', 'not registerd', '2024-08-14 00:25:00', '2024-08-14 00:25:00'),
(33, 'md sumon', '', '01682013772', ' ', 'hatirphool kacha bazar, dhaka', NULL, NULL, NULL, '0', 'not registerd', '2024-08-14 02:21:39', '2024-08-14 02:21:39'),
(34, 'Rn raja', '', '01903392963', ' ', 'Nilphamari, Saidpur', NULL, NULL, NULL, '0', 'not registerd', '2024-08-14 02:26:56', '2024-08-14 02:26:56'),
(35, 'Mohammad Rakib', '', '01919919972', ' ', 'Jamtola, cashara, narayanganj', NULL, NULL, NULL, '0', 'not registerd', '2024-08-14 23:19:17', '2024-08-14 23:19:17'),
(36, 'Md yeasin uddin', '', '01679803052', ' ', 'somitir hat bazar, fatikchhari,chittagong', NULL, NULL, NULL, '0', 'not registerd', '2024-08-14 23:21:18', '2024-08-14 23:21:18'),
(37, 'Tawzib ahmed Tomal', '', '01316483758', ' ', 'farakpur, bheramara, kushtia', NULL, NULL, NULL, '0', 'not registerd', '2024-08-14 23:23:45', '2024-08-14 23:23:45'),
(38, 'parvej (four season bd)', '', '01967163370', ' ', 'four seson bd ,banshree', NULL, NULL, NULL, '0', 'not registerd', '2024-08-15 03:08:58', '2024-08-15 03:08:58'),
(39, 'Md saidul', '', '01987760013', ' ', 'Bashundhara city Shoping Complex Basement 2 Shop32', NULL, NULL, NULL, '0', 'not registerd', '2024-08-15 03:13:11', '2024-08-15 03:13:11'),
(40, 'parvej khan', '', '01304525536', ' ', 'Bottola road, gasa thana, boardbazar gazipur', NULL, NULL, NULL, '0', 'not registerd', '2024-08-16 01:14:06', '2024-08-16 01:14:06'),
(41, 'anik', '', '01712939891', ' ', 'kurigram, vurungamari', NULL, NULL, NULL, '0', 'not registerd', '2024-08-16 01:15:54', '2024-08-16 01:15:54'),
(42, 'Rakib hasan', '', '01748311754', ' ', 'Ulon road, dhaka', NULL, NULL, NULL, '0', 'not registerd', '2024-08-17 10:36:52', '2024-08-17 10:36:52'),
(43, 'SANI', '', '01679559690', ' ', '73 AB GUHA ROAD, GANGINAPAR, MYMENSINGH SADAR', NULL, NULL, NULL, '0', 'not registerd', '2024-08-17 10:40:16', '2024-08-17 10:40:16'),
(44, 'md shoaib islam', '', '01640844369', ' ', 'guldigir par, ghunar para, cox\'s bazar municipality', NULL, NULL, NULL, '0', 'not registerd', '2024-08-17 10:42:06', '2024-08-17 10:42:06'),
(45, 'Four Season BD (PARVEJ)', '', '01967163370', ' ', '2 No. Gate, 10 Tola Market, Eastern Banabithi Shopping Complex, Shop No. 31&63, South banashree, Dhaka 1217', NULL, NULL, NULL, '0', 'not registerd', '2024-08-18 03:51:36', '2024-08-18 03:51:36'),
(46, 'Sultan Parvin', '', '01733159775', ' ', 'Birampur govt primary scholl. Birampur,Dinajpur', NULL, NULL, NULL, '0', 'not registerd', '2024-08-18 04:05:03', '2024-08-18 04:05:03'),
(48, 'morshed alam', '', '01833582548', ' ', 'navana hospital, jhawtola, cumilla', NULL, NULL, NULL, '0', 'not registerd', '2024-08-21 03:32:36', '2024-08-21 03:32:36'),
(49, 'anna khatun', '', '01788247920', ' ', 'lift 7 , s k tower, high shawa office , coxbazar', NULL, NULL, NULL, '0', 'not registerd', '2024-08-21 03:34:37', '2024-08-21 03:34:37'),
(50, 'vante', '', '01557683794', ' ', 'dhammachariya bihar, dighinala, khagrachari.', NULL, NULL, NULL, '0', 'not registerd', '2024-08-21 04:01:15', '2024-08-21 04:01:15'),
(51, 'zahirul islam', '', '01837780700', ' ', 'merul badda, DIT project , road 12, house 21', NULL, NULL, NULL, '0', 'not registerd', '2024-08-21 04:55:27', '2024-08-21 04:55:27'),
(52, 'Paul biswas', '', '01680291800', ' ', '11/1, Sonadanga East Lane, Newmarket, Khulna- 9000 (Rob shaheber bashar goli)', NULL, NULL, NULL, '0', 'not registerd', '2024-08-22 02:55:16', '2024-08-22 02:55:16'),
(54, 'tanvir', '', '01923958142', ' ', 'banashree', NULL, NULL, NULL, '0', 'not registerd', '2024-08-24 09:01:55', '2024-08-24 09:01:55'),
(55, 'Kazi MD. Mehedi Hasan', '', '01914644706', ' ', 'Adarshabag,Ali Mohammad Khan Road,Jatrabari,Dhaka', NULL, NULL, NULL, '0', 'not registerd', '2024-08-26 01:22:03', '2024-08-26 01:22:03'),
(56, 'Quinn', '', 'Fulton', 'tester.two@gmail.com', 'Kholna sonadanga', '4', '59', '907', '10', 'registerd', '2024-08-31 22:19:57', '2024-08-31 22:19:58'),
(61, 'al-amin ref', ' ', '01813104134', ' ', 'rampura', NULL, NULL, NULL, '0', 'not registerd', '2024-09-07 02:21:10', '2024-09-07 02:21:10'),
(62, 'Saad Ahmed', ' ', '01674019697', ' ', 'sahajanpur', NULL, NULL, NULL, '0', 'not registerd', '2024-09-08 00:03:27', '2024-09-08 00:03:27'),
(63, 'rajib paul', ' ', '01713445725', ' ', 'nakhalpara , dhaka', NULL, NULL, NULL, '0', 'not registerd', '2024-09-08 00:24:56', '2024-09-08 00:24:56'),
(64, 'ASIF UL HOQUE', ' ', '01756019132', ' ', 'MIRPUR 11', NULL, NULL, NULL, '0', 'not registerd', '2024-09-08 08:43:29', '2024-09-08 08:43:29'),
(66, 'atik', ' ', '01624506969', ' ', 'banashree', NULL, NULL, NULL, '0', 'not registerd', '2024-09-10 23:57:12', '2024-09-10 23:57:12'),
(67, 'pial', ' ', '01521333278', ' ', 'house 42, road 4, block -E, banasree, rampura dhaka', NULL, NULL, NULL, '0', 'not registerd', '2024-09-20 05:06:42', '2024-09-20 05:06:42'),
(68, 'Arif Hossen', '', '01601958560', 'arifhossen853@gmail.com', '522/B North Shajahanpur, DHaka', '3', '1', '469', '10', 'registerd', '2024-09-21 02:27:27', '2024-09-21 02:27:27'),
(69, 'faizul', ' ', '01673022000', ' ', 'mirpur 1 , dhaka', NULL, NULL, NULL, '0', 'not registerd', '2024-09-21 07:59:02', '2024-09-21 07:59:02'),
(70, 'adnan', ' ', '01790189185', ' ', '15/A eastern housing, apartment 102-104, old elephant road, boro mogbazar, dhaka', NULL, NULL, NULL, '0', 'not registerd', '2024-09-28 01:47:13', '2024-09-28 01:47:13'),
(71, 'Tanvir hasib', ' ', '01713323216', ' ', 'lecturer (political science), Chunarughat govt college, chunarughat, habiganj', NULL, NULL, NULL, '0', 'not registerd', '2024-10-01 06:56:14', '2024-10-01 06:56:14'),
(72, 'md shariful islam', ' ', '01813539109', ' ', 'TB gate , cha block , mohakhali', NULL, NULL, NULL, '0', 'not registerd', '2024-10-01 23:57:00', '2024-10-01 23:57:00'),
(73, 'md hasib khan', ' ', '01918593884', ' ', 'jilla scout vaban, kodomtola road, notun bazar ,chandpur sadar,', NULL, NULL, NULL, '0', 'not registerd', '2024-10-01 23:58:42', '2024-10-01 23:58:42'),
(74, 'abdur rahman', ' ', '01745100454', ' ', 'adorshobag, konapara', NULL, NULL, NULL, '0', 'not registerd', '2024-10-06 02:23:00', '2024-10-06 02:23:00'),
(75, 'munim siddique', ' ', '01715045985', ' ', 'siddiquibad, joigibil, kamalganj, moulvibazar', NULL, NULL, NULL, '0', 'not registerd', '2024-10-08 04:09:11', '2024-10-08 04:09:11'),
(76, 'seikh rabbi', ' ', '01879319698', ' ', 'chandpur sadar, paka masjid', NULL, NULL, NULL, '0', 'not registerd', '2024-10-09 01:49:04', '2024-10-09 01:49:04'),
(77, 'toha mridha', ' ', '01826630111', ' ', 'adorshobag, konapara', NULL, NULL, NULL, '0', 'not registerd', '2024-10-12 01:52:25', '2024-10-12 01:52:25'),
(78, 'Jahid', ' ', '01711993079', ' ', 'Moar, Level 5 Navana HR Tower-1, Plot No. 205, 1 Bir Uttam Mir Shawkat ALi Sarak (Gulshan Link Road, 1208', NULL, NULL, NULL, '0', 'not registerd', '2024-10-21 05:06:25', '2024-10-21 05:06:25'),
(79, 'Mahfuz', '', '01719249771', 'mmahfuzmhm@gmail.com', 'Sadar, Dinajpur', '6', '26', '1135', '10', 'registerd', '2024-10-26 21:27:02', '2024-10-26 21:27:02'),
(80, 'kazi Mehedi', '', '01914644706', 'kaziscout@gmail.com', NULL, NULL, NULL, NULL, '0', 'registerd', '2024-10-28 01:11:11', '2024-10-28 01:11:11'),
(81, 'sakib', ' ', '01621958387', ' ', 'razabazar', NULL, NULL, NULL, '0', 'not registerd', '2024-10-28 03:57:11', '2024-10-28 03:57:11'),
(82, 'Roton', ' ', '01715255383', ' ', '4th Floor House #63, Road #09, Aftabnagar, Dhaka', NULL, NULL, NULL, '0', 'not registerd', '2024-11-05 04:14:25', '2024-11-05 04:14:25'),
(83, 'Nasir Uddin', ' ', '01909584109', ' ', 'Taltola, Karim Patwary Bari, Chandpur', NULL, NULL, NULL, '0', 'not registerd', '2024-11-05 04:16:18', '2024-11-05 04:16:18'),
(84, 'Tanvir Alam', ' ', '01710758306', ' ', 'Word No: 02, Guabari, High School Rd, Pirgachha, Rangpur. P.O. 5450', NULL, NULL, NULL, '0', 'not registerd', '2024-11-05 04:36:32', '2024-11-05 04:36:32'),
(85, 'MD AL AMIN', ' ', '01682449694', ' ', '321 STAFF QUARTER, HAZINAGAR, SARULIA', NULL, NULL, NULL, '0', 'not registerd', '2024-11-07 07:15:35', '2024-11-07 07:15:35'),
(86, 'MD AL AMIN', ' ', '01927607899', ' ', '321 STAFF QUARTER, HAZINAGAR, SARULIA', NULL, NULL, NULL, '0', 'not registerd', '2024-11-23 08:34:08', '2024-11-23 08:34:08'),
(87, 'MD AL AMIN', ' ', '01682449694', ' ', '321 STAFF QUARTER, HAZINAGAR, SARULIA', NULL, NULL, NULL, '0', 'not registerd', '2024-11-26 03:36:37', '2024-11-26 03:36:37'),
(88, 'farukuzzaman', ' ', '01918987804', ' ', 'al-amin road konapara dhaka', NULL, NULL, NULL, '0', 'not registerd', '2024-11-26 03:40:09', '2024-11-26 03:40:09'),
(89, 'md hridoy', ' ', '01894417511', ' ', 'konapara', NULL, NULL, NULL, '0', 'not registerd', '2024-11-29 10:25:21', '2024-11-29 10:25:21'),
(90, 'rini', ' ', '01937379521', ' ', 'mohakhali', NULL, NULL, NULL, '0', 'not registerd', '2024-12-01 09:23:44', '2024-12-01 09:23:44'),
(91, 'Md pappu', ' ', '01643236608', ' ', 'dhanmondi', NULL, NULL, NULL, '0', 'not registerd', '2024-12-01 09:26:34', '2024-12-01 09:26:34'),
(92, 'shafkat', ' ', '01602041384', ' ', 'cox bazar', NULL, NULL, NULL, '0', 'not registerd', '2024-12-03 23:50:55', '2024-12-03 23:50:55'),
(93, 'rajib paul', ' ', '01713445725', ' ', 'A Trip Z', NULL, NULL, NULL, '0', 'not registerd', '2024-12-04 07:12:10', '2024-12-04 07:12:10'),
(94, 'Abdur Rahman', '', '01712625364', 'ars.kst12345@gmail.com', 'Court para Kushtia, college mor,', '4', '60', '940', '10', 'registerd', '2024-12-04 10:28:59', '2024-12-05 01:23:16'),
(95, 'siju ( scout)', ' ', '01766884477', ' ', 'mirpur 1', NULL, NULL, NULL, '0', 'not registerd', '2024-12-07 07:02:39', '2024-12-07 07:02:39'),
(96, 'parvess', '', '01720208362', 'parvess1980@gmail.com', 'Ta-131, Wakil Tower, 131 Gulshan Badda Link Rd, Dhaka 1212', '3', '1', '460', '10', 'registerd', '2024-12-08 08:25:16', '2024-12-08 08:25:16'),
(97, 'shashi islam', ' ', '01835405060', ' ', 'house 26, 2/1 west hazipara rampura. dhaka', NULL, NULL, NULL, '0', 'not registerd', '2024-12-10 01:00:32', '2024-12-10 01:00:32'),
(98, 'shorif', ' ', '01959200273', ' ', 'dinajpur', NULL, NULL, NULL, '0', 'not registerd', '2024-12-10 11:03:21', '2024-12-10 11:03:21'),
(99, 'saifur', ' ', '01647446316', ' ', 'andarkilla, kotwali, chittagong', NULL, NULL, NULL, '0', 'not registerd', '2024-12-11 00:17:29', '2024-12-11 00:17:29'),
(100, 'HRIDOY', ' ', '01894417511', ' ', 'KONAPARA', NULL, NULL, NULL, '0', 'not registerd', '2024-12-12 09:32:00', '2024-12-12 09:32:00'),
(101, 'HRIDOY', ' ', '01894417511', ' ', 'KONAPARA', NULL, NULL, NULL, '0', 'not registerd', '2024-12-12 09:38:27', '2024-12-12 09:38:27'),
(102, 'HRIDOY', ' ', '01894417511', ' ', 'konapara', NULL, NULL, NULL, '0', 'not registerd', '2024-12-13 09:52:33', '2024-12-13 09:52:33'),
(103, 'rifat islam shuvo', ' ', '01857142890', ' ', 'farmgate, dhaka', NULL, NULL, NULL, '0', 'not registerd', '2024-12-16 13:29:57', '2024-12-16 13:29:57'),
(104, 'faruk', ' ', '0161663949', ' ', 'konaopara', NULL, NULL, NULL, '0', 'not registerd', '2024-12-17 03:49:39', '2024-12-17 03:49:39'),
(105, 'MON AYER', ' ', '01830621921', ' ', 'MUGDA DHAKA', NULL, NULL, NULL, '0', 'not registerd', '2024-12-17 23:52:43', '2024-12-17 23:52:43'),
(106, 'SHAON', ' ', '01684623922', ' ', 'ADORSHABAG KONAPARA', NULL, NULL, NULL, '0', 'not registerd', '2024-12-18 00:03:14', '2024-12-18 00:03:14'),
(107, 'sheikh sadi', ' ', '01759730199', ' ', 'nilphamari', NULL, NULL, NULL, '0', 'not registerd', '2024-12-25 03:35:00', '2024-12-25 03:35:00'),
(108, 'Sumon', '', '01815628620', 'sumonchbd620@gmail.com', 'Chakarir thana rastar matha', '2', '45', '315', '10', 'registerd', '2024-12-30 02:56:07', '2024-12-30 02:56:07'),
(109, 'ratul', ' ', '01773838326', ' ', 'mirpur, kazipara', NULL, NULL, NULL, '0', 'not registerd', '2025-01-04 01:28:41', '2025-01-04 01:28:41'),
(110, 'bappu', ' ', '01640481441', ' ', 'konapara', NULL, NULL, NULL, '0', 'not registerd', '2025-01-04 08:09:47', '2025-01-04 08:09:47'),
(111, 'Fokran Uddin', ' ', '01613141245', ' ', 'Chayani Bazar, Begamganj, Noakhali', NULL, NULL, NULL, '0', 'not registerd', '2025-01-12 06:22:29', '2025-01-12 06:22:29'),
(278, 'Amit', 'Roy', '01521428527', 'amitroyrock@gmail.com', 'gopibagh', '3', '1', '457', '10', 'registerd', '2025-01-19 01:16:02', '2025-01-19 01:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_zones`
--

CREATE TABLE `delivery_zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `upazila` varchar(255) NOT NULL,
  `charge` decimal(8,2) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `bn_name` varchar(255) NOT NULL,
  `lat` varchar(255) NOT NULL,
  `long` varchar(255) NOT NULL,
  `zone_charge` decimal(10,0) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `bn_name`, `lat`, `long`, `zone_charge`, `created_at`, `updated_at`) VALUES
(1, 3, 'Dhaka', 'ঢাকা', '23.7115253', '90.4111451', 50, NULL, '2024-01-29 02:16:24'),
(2, 3, 'Faridpur', 'ফরিদপুর', '23.6070822', '89.8429406', 130, NULL, NULL),
(3, 3, 'Gazipur', 'গাজীপুর', '24.0022858', '90.4264283', 130, NULL, NULL),
(4, 3, 'Gopalganj', 'গোপালগঞ্জ', '23.0050857', '89.8266059', 130, NULL, NULL),
(5, 8, 'Jamalpur', 'জামালপুর', '24.937533', '89.937775', 130, NULL, NULL),
(6, 3, 'Kishoreganj', 'কিশোরগঞ্জ', '24.444937', '90.776575', 130, NULL, NULL),
(7, 3, 'Madaripur', 'মাদারীপুর', '23.164102', '90.1896805', 130, NULL, NULL),
(8, 3, 'Manikganj', 'মানিকগঞ্জ', '23.8644', '90.0047', 130, NULL, NULL),
(9, 3, 'Munshiganj', 'মুন্সিগঞ্জ', '23.5422', '90.5305', 130, NULL, NULL),
(10, 8, 'Mymensingh', 'ময়মনসিংহ', '24.7471', '90.4203', 130, NULL, NULL),
(11, 3, 'Narayanganj', 'নারায়াণগঞ্জ', '23.63366', '90.496482', 130, NULL, NULL),
(12, 3, 'Narsingdi', 'নরসিংদী', '23.932233', '90.71541', 130, NULL, NULL),
(13, 8, 'Netrokona', 'নেত্রকোণা', '24.870955', '90.727887', 130, NULL, NULL),
(14, 3, 'Rajbari', 'রাজবাড়ি', '23.7574305', '89.6444665', 130, NULL, NULL),
(15, 3, 'Shariatpur', 'শরীয়তপুর', '23.2423', '90.4348', 130, NULL, NULL),
(16, 8, 'Sherpur', 'শেরপুর', '25.0204933', '90.0152966', 130, NULL, NULL),
(17, 3, 'Tangail', 'টাঙ্গাইল', '24.2513', '89.9167', 130, NULL, NULL),
(18, 5, 'Bogura', 'বগুড়া', '24.8465228', '89.377755', 130, NULL, NULL),
(19, 5, 'Joypurhat', 'জয়পুরহাট', '25.0968', '89.0227', 130, NULL, NULL),
(20, 5, 'Naogaon', 'নওগাঁ', '24.7936', '88.9318', 130, NULL, NULL),
(21, 5, 'Natore', 'নাটোর', '24.420556', '89.000282', 130, NULL, NULL),
(22, 5, 'Nawabganj', 'নবাবগঞ্জ', '24.5965034', '88.2775122', 130, NULL, NULL),
(23, 5, 'Pabna', 'পাবনা', '23.998524', '89.233645', 130, NULL, NULL),
(24, 5, 'Rajshahi', 'রাজশাহী', '24.3745', '88.6042', 130, NULL, NULL),
(25, 5, 'Sirajgonj', 'সিরাজগঞ্জ', '24.4533978', '89.7006815', 130, NULL, NULL),
(26, 6, 'Dinajpur', 'দিনাজপুর', '25.6217061', '88.6354504', 130, NULL, NULL),
(27, 6, 'Gaibandha', 'গাইবান্ধা', '25.328751', '89.528088', 130, NULL, NULL),
(28, 6, 'Kurigram', 'কুড়িগ্রাম', '25.805445', '89.636174', 130, NULL, NULL),
(29, 6, 'Lalmonirhat', 'লালমনিরহাট', '25.9923', '89.2847', 130, NULL, NULL),
(30, 6, 'Nilphamari', 'নীলফামারী', '25.931794', '88.856006', 130, NULL, NULL),
(31, 6, 'Panchagarh', 'পঞ্চগড়', '26.3411', '88.5541606', 130, NULL, NULL),
(32, 6, 'Rangpur', 'রংপুর', '25.7558096', '89.244462', 130, NULL, NULL),
(33, 6, 'Thakurgaon', 'ঠাকুরগাঁও', '26.0336945', '88.4616834', 130, NULL, NULL),
(34, 1, 'Barguna', 'বরগুনা', '22.0953', '90.1121', 130, NULL, NULL),
(35, 1, 'Barishal', 'বরিশাল', '22.7010', '90.3535', 130, NULL, NULL),
(36, 1, 'Bhola', 'ভোলা', '22.685923', '90.648179', 130, NULL, NULL),
(37, 1, 'Jhalokati', 'ঝালকাঠি', '22.6406', '90.1987', 130, NULL, NULL),
(38, 1, 'Patuakhali', 'পটুয়াখালী', '22.3596316', '90.3298712', 130, NULL, NULL),
(39, 1, 'Pirojpur', 'পিরোজপুর', '22.5841', '89.9720', 130, NULL, NULL),
(40, 2, 'Bandarban', 'বান্দরবান', '22.1953275', '92.2183773', 130, NULL, NULL),
(41, 2, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', '23.9570904', '91.1119286', 130, NULL, NULL),
(42, 2, 'Chandpur', 'চাঁদপুর', '23.2332585', '90.6712912', 130, NULL, NULL),
(43, 2, 'Chattogram', 'চট্টগ্রাম', '22.335109', '91.834073', 130, NULL, NULL),
(44, 2, 'Cumilla', 'কুমিল্লা', '23.4682747', '91.1788135', 130, NULL, NULL),
(45, 2, 'Cox\'s Bazar', 'কক্স বাজার', '21.4272', '92.0058', 130, NULL, NULL),
(46, 2, 'Feni', 'ফেনী', '23.0159', '91.3976', 130, NULL, NULL),
(47, 2, 'Khagrachari', 'খাগড়াছড়ি', '23.119285', '91.984663', 130, NULL, NULL),
(48, 2, 'Lakshmipur', 'লক্ষ্মীপুর', '22.942477', '90.841184', 130, NULL, NULL),
(49, 2, 'Noakhali', 'নোয়াখালী', '22.869563', '91.099398', 130, NULL, NULL),
(50, 2, 'Rangamati', 'রাঙ্গামাটি', '22.7324', '92.2985', 130, NULL, NULL),
(51, 7, 'Habiganj', 'হবিগঞ্জ', '24.374945', '91.41553', 130, NULL, NULL),
(52, 7, 'Maulvibazar', 'মৌলভীবাজার', '24.482934', '91.777417', 130, NULL, NULL),
(53, 7, 'Sunamganj', 'সুনামগঞ্জ', '25.0658042', '91.3950115', 130, NULL, NULL),
(54, 7, 'Sylhet', 'সিলেট', '24.8897956', '91.8697894', 130, NULL, NULL),
(55, 4, 'Bagerhat', 'বাগেরহাট', '22.651568', '89.785938', 130, NULL, NULL),
(56, 4, 'Chuadanga', 'চুয়াডাঙ্গা', '23.6401961', '88.841841', 130, NULL, NULL),
(57, 4, 'Jashore', 'যশোর', '23.16643', '89.2081126', 130, NULL, NULL),
(58, 4, 'Jhenaidah', 'ঝিনাইদহ', '23.5448176', '89.1539213', 130, NULL, NULL),
(59, 4, 'Khulna', 'খুলনা', '22.815774', '89.568679', 130, NULL, NULL),
(60, 4, 'Kushtia', 'কুষ্টিয়া', '23.901258', '89.120482', 130, NULL, NULL),
(61, 4, 'Magura', 'মাগুরা', '23.487337', '89.419956', 130, NULL, NULL),
(62, 4, 'Meherpur', 'মেহেরপুর', '23.762213', '88.631821', 130, NULL, NULL),
(63, 4, 'Narail', 'নড়াইল', '23.172534', '89.512672', 130, NULL, NULL),
(64, 4, 'Satkhira', 'সাতক্ষীরা', '22.7185', '89.0705', 130, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `bn_name` varchar(255) NOT NULL,
  `lat` varchar(255) NOT NULL,
  `long` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `bn_name`, `lat`, `long`, `created_at`, `updated_at`) VALUES
(1, 'Barishal', 'বরিশাল', '22.701002', '90.353451', NULL, NULL),
(2, 'Chattogram', 'চট্টগ্রাম', '22.356851', '91.783182', NULL, NULL),
(3, 'Dhaka', 'ঢাকা', '23.810332', '90.412518', NULL, NULL),
(4, 'Khulna', 'খুলনা', '22.845641', '89.540328', NULL, NULL),
(5, 'Rajshahi', 'রাজশাহী', '24.363589', '88.624135', NULL, NULL),
(6, 'Rangpur', 'রংপুর', '25.743892', '89.275227', NULL, NULL),
(7, 'Sylhet', 'সিলেট', '24.894929', '91.868706', NULL, NULL),
(8, 'Mymensingh', 'ময়মনসিংহ', '24.747149', '90.420273', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feature_categories`
--

CREATE TABLE `feature_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feature_products`
--

CREATE TABLE `feature_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feature_products_title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feature_products`
--

INSERT INTO `feature_products` (`id`, `feature_products_title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Goose Glasses', 'feature/products/1714818150.png', 'Active', '2024-05-04 10:22:30', '2024-05-04 10:22:30');

-- --------------------------------------------------------

--
-- Table structure for table `feature_products_with_pivot`
--

CREATE TABLE `feature_products_with_pivot` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feature_products_id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_12_20_065626_create_subcategories_table', 1),
(7, '2023_12_20_065636_create_brands_table', 1),
(11, '2023_12_21_061717_create_varients_table', 1),
(14, '2023_12_26_112636_create_offers_table', 1),
(16, '2023_12_27_100009_create_media_table', 1),
(17, '2023_12_28_060721_create_products_colors_table', 1),
(18, '2023_12_28_060740_create_products_sizes_table', 1),
(19, '2023_12_30_063527_create_product_tags_table', 1),
(20, '2023_12_30_063545_create_product_overviews_table', 1),
(21, '2023_12_30_063847_create_product_additionalinfos_table', 1),
(22, '2023_12_30_063858_create_product_images_table', 1),
(23, '2023_12_30_063908_create_product_extras_table', 1),
(24, '2024_01_04_150814_create_product_prices_table', 1),
(25, '2024_01_08_070143_create_carts_table', 1),
(26, '2024_01_08_091312_create_shoppingcart_table', 1),
(27, '2024_01_14_041713_create_districts_table', 2),
(28, '2024_01_14_042136_create_upazillas_table', 3),
(29, '2024_01_13_044915_create_divisions_table', 4),
(33, '2024_01_14_044937_create_postcodes_table', 5),
(34, '2023_12_23_122959_create_customers_table', 6),
(36, '2023_12_24_054642_create_orders_table', 6),
(37, '2024_01_14_095315_create_order_items_table', 6),
(38, '2024_01_14_095428_create_shippings_table', 7),
(39, '2024_01_14_095446_create_transactions_table', 7),
(40, '2023_12_23_132528_create_register_customers_table', 8),
(42, '2024_01_22_054321_create_orderstatuses_table', 9),
(43, '2023_12_20_041449_create_suppliers_table', 10),
(46, '2024_01_29_055920_create_delivery_zones_table', 12),
(47, '2024_02_04_052438_create_feature_categories_table', 13),
(48, '2024_02_06_072336_create_product_thumbnails_table', 14),
(49, '2024_02_07_101403_create_sliders_table', 15),
(50, '2024_02_08_054458_create_ads_table', 16),
(51, '2024_02_12_115802_create_settings_table', 17),
(52, '2024_02_13_074304_create_campaigns_table', 18),
(53, '2024_02_13_074339_create_camp_products_table', 18),
(54, '2023_12_27_070522_create_coupons_table', 19),
(55, '2024_02_18_082822_create_password_resets_table', 20),
(56, '2023_12_20_065612_create_categories_table', 21),
(57, '2023_12_21_055317_create_products_table', 22),
(58, '2023_12_20_065711_create_colors_table', 23),
(59, '2023_12_20_065724_create_sizes_table', 23),
(60, '2024_03_03_103228_create_product_stocks_table', 24),
(61, '2024_03_04_061211_create_purchases_table', 24),
(62, '2024_02_28_102456_create_feature_products_table', 25),
(63, '2024_02_28_110813_create_feature_products_with_pivot_table', 25),
(64, '2024_03_03_044702_create_offer_types_table', 25),
(65, '2024_03_21_071133_create_permission_tables', 26),
(66, '2024_03_19_044311_create_applied_coupones_table', 27),
(67, '2024_04_02_062728_create_notifications_table', 28),
(68, '2024_04_17_090944_create_product_image_with_colors_table', 29),
(70, '2024_12_24_100425_create_product_color_images_table', 30);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 12),
(3, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 6),
(4, 'App\\Models\\User', 4),
(4, 'App\\Models\\User', 7),
(4, 'App\\Models\\User', 8),
(4, 'App\\Models\\User', 9),
(5, 'App\\Models\\User', 3),
(5, 'App\\Models\\User', 5),
(5, 'App\\Models\\User', 10);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('08a7f266-1d32-44bb-bac5-0215c923a186', 'App\\Notifications\\NewPendingOrderNotification', 'App\\Models\\Order', 313, '{\"message\":\"New Order!\",\"date\":\"2025-01-14T13:28:05.077219Z\",\"order_id\":313,\"order_details\":{\"customer_name\":\"Amit Roy\",\"total_amount\":\"3080\"}}', NULL, '2025-01-14 07:28:05', '2025-01-14 07:28:05'),
('22fc40e5-12e6-444e-89ff-72c8f48d4127', 'App\\Notifications\\NewPendingOrderNotification', 'App\\Models\\Order', 370, '{\"message\":\"New Order!\",\"date\":\"2025-01-15T13:00:23.437427Z\",\"order_id\":370,\"order_details\":{\"customer_name\":\"mizan rahman\",\"total_amount\":\"1580\"}}', NULL, '2025-01-15 07:00:23', '2025-01-15 07:00:23'),
('26afa858-e298-43ac-8574-c5521626355d', 'App\\Notifications\\NewPendingOrderNotification', 'App\\Models\\Order', 372, '{\"message\":\"New Order!\",\"date\":\"2025-01-15T13:08:16.477234Z\",\"order_id\":372,\"order_details\":{\"customer_name\":\"mizan rahman\",\"total_amount\":\"7630\"}}', NULL, '2025-01-15 07:08:16', '2025-01-15 07:08:16'),
('87ca9c55-f200-459f-befa-1f8d4fbb7267', 'App\\Notifications\\NewPendingOrderNotification', 'App\\Models\\Order', 373, '{\"message\":\"New Order!\",\"date\":\"2025-01-15T13:09:34.174008Z\",\"order_id\":373,\"order_details\":{\"customer_name\":\"mizan rahman\",\"total_amount\":\"7630\"}}', NULL, '2025-01-15 07:09:34', '2025-01-15 07:09:34'),
('92cb3e92-d3cc-45e2-be1e-b7d69c9544af', 'App\\Notifications\\NewPendingOrderNotification', 'App\\Models\\Order', 333, '{\"message\":\"New Order!\",\"date\":\"2025-01-15T10:57:20.772031Z\",\"order_id\":333,\"order_details\":{\"customer_name\":\"tfhfgh fghfh\",\"total_amount\":\"1630\"}}', NULL, '2025-01-15 04:57:20', '2025-01-15 04:57:20'),
('a5b1ff6f-020f-40c5-a129-feb6a1d6030a', 'App\\Notifications\\NewPendingOrderNotification', 'App\\Models\\Order', 375, '{\"message\":\"New Order!\",\"date\":\"2025-01-15T13:18:59.567566Z\",\"order_id\":375,\"order_details\":{\"customer_name\":\"mizanurrahman rahman\",\"total_amount\":\"1580\"}}', NULL, '2025-01-15 07:18:59', '2025-01-15 07:18:59'),
('a5d1423b-0696-42c0-b5fd-9f4c6e8ae3d3', 'App\\Notifications\\NewPendingOrderNotification', 'App\\Models\\Order', 369, '{\"message\":\"New Order!\",\"date\":\"2025-01-15T12:41:26.009210Z\",\"order_id\":369,\"order_details\":{\"customer_name\":\"Amit Roy\",\"total_amount\":\"7580\"}}', NULL, '2025-01-15 06:41:26', '2025-01-15 06:41:26'),
('aa7e85f4-bf73-439f-a130-bc8bb8875218', 'App\\Notifications\\NewPendingOrderNotification', 'App\\Models\\Order', 371, '{\"message\":\"New Order!\",\"date\":\"2025-01-15T13:05:18.617103Z\",\"order_id\":371,\"order_details\":{\"customer_name\":\"mizan rahman\",\"total_amount\":\"7630\"}}', NULL, '2025-01-15 07:05:18', '2025-01-15 07:05:18'),
('ad292519-bd20-4b15-b8a6-805c1e9c4c2b', 'App\\Notifications\\NewPendingOrderNotification', 'App\\Models\\Order', 349, '{\"message\":\"New Order!\",\"date\":\"2025-01-15T11:32:00.602967Z\",\"order_id\":349,\"order_details\":{\"customer_name\":\"Amit Roy\",\"total_amount\":\"22580\"}}', NULL, '2025-01-15 05:32:00', '2025-01-15 05:32:00'),
('d63de8f2-1956-47ee-ba2f-77cf2ec691f3', 'App\\Notifications\\NewPendingOrderNotification', 'App\\Models\\Order', 376, '{\"message\":\"New Order!\",\"date\":\"2025-01-19T07:16:03.152442Z\",\"order_id\":376,\"order_details\":{\"customer_name\":\"Amit Roy\",\"total_amount\":\"1452\"}}', NULL, '2025-01-19 01:16:03', '2025-01-19 01:16:03'),
('e8fc3b5b-968e-4bea-bd9b-1549b3941380', 'App\\Notifications\\NewPendingOrderNotification', 'App\\Models\\Order', 347, '{\"message\":\"New Order!\",\"date\":\"2025-01-15T11:20:27.091820Z\",\"order_id\":347,\"order_details\":{\"customer_name\":\"afrin dgvd\",\"total_amount\":\"7630\"}}', NULL, '2025-01-15 05:20:27', '2025-01-15 05:20:27'),
('f73cd2ff-ec24-49b6-950e-3be5a30c9d0b', 'App\\Notifications\\NewPendingOrderNotification', 'App\\Models\\Order', 374, '{\"message\":\"New Order!\",\"date\":\"2025-01-15T13:13:58.916980Z\",\"order_id\":374,\"order_details\":{\"customer_name\":\"mizan rahman\",\"total_amount\":\"7630\"}}', NULL, '2025-01-15 07:13:58', '2025-01-15 07:13:58');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offer_types`
--

CREATE TABLE `offer_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `offer_type_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offer_types`
--

INSERT INTO `offer_types` (`id`, `offer_type_name`, `created_at`, `updated_at`) VALUES
(1, 'Eid offer', '2024-03-28 00:22:45', '2024-03-28 00:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `order_track_id` varchar(255) DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) DEFAULT NULL,
  `total` decimal(8,2) NOT NULL,
  `total_paid` decimal(8,2) DEFAULT 0.00,
  `total_due` decimal(8,2) DEFAULT 0.00,
  `delivery_charge` decimal(8,2) DEFAULT 0.00,
  `status` enum('pending','confirmed','delivered','completed','returned','cancelled','shipped') NOT NULL DEFAULT 'pending',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `order_from` varchar(255) DEFAULT NULL,
  `canceled_date` date DEFAULT NULL,
  `return_confirm` tinyint(1) DEFAULT 0,
  `comment` longtext DEFAULT NULL,
  `is_pos` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_no`, `order_track_id`, `customer_id`, `subtotal`, `discount`, `tax`, `total`, `total_paid`, `total_due`, `delivery_charge`, `status`, `is_shipping_different`, `order_from`, `canceled_date`, `return_confirm`, `comment`, `is_pos`, `created_at`, `updated_at`) VALUES
(26, '082421', NULL, 24, 550.00, 0.00, NULL, 650.00, 650.00, 0.00, 100.00, 'completed', 0, NULL, NULL, 0, 'Pos order', 1, '2024-08-12 03:43:34', '2024-08-13 04:10:25'),
(29, '082438', NULL, 26, 550.00, 50.00, NULL, 600.00, 0.00, 600.00, 100.00, 'returned', 0, 'Facebook', NULL, 1, 'Pos order', 1, '2024-08-13 02:55:37', '2024-08-17 10:34:21'),
(30, '082454', NULL, 27, 399.00, 62.00, NULL, 337.00, 337.00, 0.00, 0.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-08-13 04:15:33', '2024-08-13 04:15:33'),
(31, '082434', NULL, 28, 550.00, 125.50, NULL, 424.50, 424.50, 0.00, 0.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-08-13 04:19:20', '2024-08-13 04:19:20'),
(32, '082474', NULL, 29, 1398.00, 100.00, NULL, 1358.00, 1358.00, 0.00, 60.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-08-13 04:33:18', '2024-08-14 02:17:45'),
(33, '082458', NULL, 30, 799.00, 0.00, NULL, 899.00, 899.00, 0.00, 100.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-08-13 04:40:18', '2024-08-14 00:41:26'),
(34, '082494', NULL, 31, 14985.00, 8235.00, NULL, 6750.00, 6750.00, 0.00, 0.00, 'completed', 0, 'WalkInCustomer', NULL, 0, 'Pos order', 1, '2024-08-14 00:18:41', '2024-08-23 00:40:43'),
(35, '082496', NULL, 32, 399.00, 50.00, NULL, 449.00, 449.00, 0.00, 100.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-08-14 00:25:00', '2024-08-15 10:12:10'),
(36, '082469', NULL, 33, 550.00, 0.00, NULL, 610.00, 610.00, 0.00, 60.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-08-14 02:21:39', '2024-08-14 23:12:54'),
(37, '082441', NULL, 34, 1998.00, 40.00, NULL, 2058.00, 2058.00, 0.00, 100.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-08-14 02:26:56', '2024-08-16 02:03:17'),
(38, '082449', NULL, 35, 550.00, 25.00, NULL, 610.00, 610.00, 0.00, 85.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-08-14 23:19:17', '2024-08-17 04:30:57'),
(39, '082409', NULL, 36, 550.00, 0.00, NULL, 650.00, 650.00, 0.00, 100.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-08-14 23:21:18', '2024-08-17 04:30:47'),
(40, '082412', NULL, 37, 550.00, 50.00, NULL, 600.00, 600.00, 0.00, 100.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-08-14 23:23:45', '2024-08-17 04:30:38'),
(41, '082423', NULL, 38, 17985.00, 7935.00, NULL, 10050.00, 10050.00, 0.00, 0.00, 'completed', 0, 'WalkInCustomer', NULL, 0, 'Pos order', 1, '2024-08-15 03:08:58', '2024-08-15 10:12:33'),
(42, '082456', NULL, 39, 600.00, 60.00, NULL, 600.00, 0.00, 600.00, 60.00, 'returned', 0, 'Facebook', NULL, 1, 'Pos order', 1, '2024-08-15 03:13:11', '2024-08-16 01:06:33'),
(43, '082405', NULL, 40, 999.00, 30.00, NULL, 1059.00, 1059.00, 0.00, 90.00, 'completed', 0, NULL, NULL, 0, 'Pos order', 1, '2024-08-16 01:14:06', '2024-08-17 04:30:28'),
(44, '082414', NULL, 41, 999.00, 0.00, NULL, 1099.00, 1099.00, 0.00, 100.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-08-16 01:15:54', '2024-08-18 01:09:36'),
(45, '082493', NULL, 42, 350.00, 0.00, NULL, 410.00, 410.00, 0.00, 60.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-08-17 10:36:52', '2024-08-18 01:09:26'),
(46, '082463', NULL, 43, 1100.00, 50.00, NULL, 1150.00, 1150.00, 0.00, 100.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-08-17 10:40:16', '2024-08-18 10:03:53'),
(47, '082452', NULL, 44, 550.00, 50.00, NULL, 600.00, 600.00, 0.00, 100.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-08-17 10:42:06', '2024-08-19 09:50:49'),
(48, '082495', NULL, 45, 2995.00, 995.00, NULL, 2000.00, 2000.00, 0.00, 0.00, 'completed', 0, 'WalkInCustomer', NULL, 0, 'Pos order', 1, '2024-08-18 03:51:36', '2024-08-26 12:05:33'),
(49, '082444', NULL, 46, 2397.00, 0.00, NULL, 2497.00, 2497.00, 0.00, 100.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-08-18 04:05:03', '2024-08-20 01:55:43'),
(51, '082439', NULL, 48, 550.00, 0.00, NULL, 650.00, 650.00, 0.00, 100.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-08-21 03:32:36', '2024-08-22 04:08:43'),
(52, '082468', NULL, 49, 999.00, 200.00, NULL, 899.00, 899.00, 0.00, 100.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-08-21 03:34:37', '2024-08-26 12:05:16'),
(53, '082455', NULL, 50, 999.00, 100.00, NULL, 999.00, 999.00, 0.00, 100.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-08-21 04:01:15', '2024-08-31 02:24:50'),
(54, '082442', NULL, 51, 550.00, 0.00, NULL, 610.00, 610.00, 0.00, 60.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-08-21 04:55:27', '2024-08-22 01:22:00'),
(55, '082481', NULL, 52, 3700.00, 50.00, NULL, 3750.00, 3750.00, 0.00, 100.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-08-22 02:55:16', '2024-08-23 10:46:17'),
(57, '082407', NULL, 54, 9600.00, 3600.00, NULL, 6000.00, 6000.00, 0.00, 0.00, 'completed', 0, NULL, NULL, 0, 'Pos order', 1, '2024-08-24 09:01:55', '2024-09-07 02:24:17'),
(58, '082401', NULL, 55, 999.00, 400.00, NULL, 599.00, 0.00, 599.00, 0.00, 'completed', 0, 'WalkInCustomer', NULL, 0, 'Pos order', 1, '2024-08-26 01:22:03', '2024-08-26 01:22:03'),
(59, '092476', 'K24-7432', 56, 799.00, 0.00, NULL, 929.00, 0.00, 0.00, 130.00, 'returned', 0, NULL, NULL, 0, 'Ut vel voluptatum vo', 0, '2024-08-31 22:19:58', '2024-09-07 02:23:38'),
(64, '092459', NULL, 61, 999.00, 200.00, NULL, 799.00, 600.00, 499.00, 0.00, 'completed', 0, 'WalkInCustomer', NULL, 0, 'Pos order', 1, '2024-09-07 02:21:10', '2024-09-07 02:22:24'),
(65, '092443', NULL, 62, 1598.00, 198.00, NULL, 1400.00, 0.00, 1400.00, 0.00, 'completed', 0, 'WalkInCustomer', NULL, 0, 'Pos order', 1, '2024-09-08 00:03:27', '2024-09-08 00:03:27'),
(66, '092481', NULL, 63, 1050.00, 450.00, NULL, 600.00, 600.00, 0.00, 0.00, 'completed', 0, 'WalkInCustomer', NULL, 0, 'Pos order', 1, '2024-09-08 00:24:56', '2024-09-08 08:02:12'),
(67, '092491', NULL, 64, 5598.00, 1598.00, NULL, 4000.00, 4000.00, 0.00, 0.00, 'completed', 0, NULL, NULL, 0, 'Pos order', 1, '2024-09-08 08:43:29', '2024-09-08 08:43:29'),
(69, '092449', NULL, 66, 700.00, 300.00, NULL, 400.00, 400.00, 0.00, 0.00, 'completed', 0, 'WalkInCustomer', NULL, 0, 'Pos order', 1, '2024-09-10 23:57:12', '2024-09-10 23:57:12'),
(70, '092478', NULL, 67, 550.00, 0.00, NULL, 610.00, 610.00, 0.00, 60.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-09-20 05:06:42', '2024-09-20 05:06:42'),
(71, '092457', 'K24-5236', 68, 350.00, 0.00, NULL, 430.00, 0.00, 0.00, 80.00, 'pending', 0, NULL, NULL, 0, NULL, 0, '2024-09-21 02:27:27', '2024-09-21 02:27:27'),
(72, '092473', NULL, 69, 3200.00, 200.00, NULL, 3000.00, 3000.00, 0.00, 0.00, 'completed', 0, 'WalkInCustomer', NULL, 0, 'Pos order', 1, '2024-09-21 07:59:02', '2024-09-21 07:59:02'),
(73, '092426', NULL, 70, 750.00, 50.00, NULL, 760.00, 760.00, 0.00, 60.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-09-28 01:47:13', '2024-10-02 05:46:40'),
(74, '102474', NULL, 71, 11200.00, 1200.00, NULL, 10000.00, 10000.00, 0.00, 0.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-10-01 06:56:14', '2024-10-07 02:17:02'),
(75, '102478', NULL, 72, 4000.00, 0.00, NULL, 4060.00, 4060.00, 0.00, 60.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-10-01 23:57:00', '2024-10-06 03:44:09'),
(76, '102491', NULL, 73, 3200.00, 0.00, NULL, 3300.00, 3300.00, 0.00, 100.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-10-01 23:58:42', '2024-10-02 05:46:09'),
(77, '102461', NULL, 74, 700.00, 300.00, NULL, 400.00, 0.00, 400.00, 0.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-10-06 02:23:00', '2024-10-06 02:23:00'),
(78, '102480', NULL, 75, 4850.00, 0.00, NULL, 4850.00, 0.00, 4850.00, 0.00, 'returned', 0, 'Online', NULL, 1, 'Pos order', 1, '2024-10-08 04:09:11', '2024-10-21 04:53:01'),
(79, '102413', NULL, 76, 999.00, 0.00, NULL, 1099.00, 1099.00, 0.00, 100.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-10-09 01:49:04', '2024-10-21 04:51:10'),
(80, '102401', NULL, 77, 2397.00, 897.00, NULL, 1500.00, 1500.00, 0.00, 0.00, 'completed', 0, NULL, NULL, 0, 'Pos order', 1, '2024-10-12 01:52:25', '2024-10-21 04:50:23'),
(81, '102428', NULL, 78, 1400.00, 450.00, NULL, 950.00, 950.00, 0.00, 0.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-10-21 05:06:25', '2024-10-30 08:39:53'),
(82, '102476', 'K24-5066', 79, 4000.00, 0.00, NULL, 4130.00, 0.00, 0.00, 130.00, 'completed', 0, NULL, NULL, 0, NULL, 0, '2024-10-26 21:27:02', '2024-10-30 08:42:18'),
(83, '102430', 'K24-4410', 79, 4000.00, 0.00, NULL, 4130.00, 0.00, 0.00, 130.00, 'returned', 0, NULL, NULL, 0, NULL, 0, '2024-10-26 21:31:20', '2024-10-28 01:32:43'),
(84, '102450', NULL, 81, 700.00, 0.00, NULL, 700.00, 700.00, 0.00, 0.00, 'completed', 0, NULL, NULL, 0, 'Pos order', 1, '2024-10-28 03:57:11', '2024-10-30 08:38:54'),
(85, '112428', NULL, 82, 999.00, 200.00, NULL, 859.00, 859.00, 0.00, 60.00, 'completed', 0, 'Online', NULL, 0, 'Pos order', 1, '2024-11-05 04:14:25', '2024-11-09 00:24:34'),
(86, '112481', NULL, 83, 1300.00, 0.00, NULL, 1400.00, 1400.00, 0.00, 100.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-11-05 04:16:18', '2024-11-09 00:23:52'),
(87, '112408', NULL, 84, 1598.00, 0.00, NULL, 1598.00, 1598.00, 0.00, 0.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-11-05 04:36:32', '2024-11-09 00:23:40'),
(88, '112485', NULL, 85, 19980.00, 7980.00, NULL, 12000.00, 0.00, 12000.00, 0.00, 'completed', 0, 'WalkInCustomer', NULL, 0, 'Pos order', 1, '2024-11-07 07:15:35', '2024-11-07 07:15:35'),
(89, '112492', NULL, 86, 4999.00, 500.00, NULL, 4499.00, 0.00, 4499.00, 0.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-11-23 08:34:08', '2024-11-23 08:34:08'),
(90, '112403', NULL, 87, 16983.00, 6783.00, NULL, 10200.00, 10000.00, 200.00, 0.00, 'pending', 0, 'WalkInCustomer', NULL, 0, 'Pos order', 1, '2024-11-26 03:36:37', '2024-12-17 05:45:53'),
(91, '112452', NULL, 88, 4995.00, 1745.00, NULL, 3250.00, 0.00, 3250.00, 0.00, 'completed', 0, 'WalkInCustomer', NULL, 0, 'Pos order', 1, '2024-11-26 03:40:09', '2024-11-26 03:40:09'),
(92, '112414', NULL, 89, 3996.00, 1196.00, NULL, 2800.00, 2800.00, 0.00, 0.00, 'completed', 0, NULL, NULL, 0, 'Pos order', 1, '2024-11-29 10:25:21', '2024-11-29 10:25:21'),
(93, '122469', NULL, 90, 999.00, 199.00, NULL, 800.00, 800.00, 0.00, 0.00, 'completed', 0, 'WalkInCustomer', NULL, 0, 'Pos order', 1, '2024-12-01 09:23:44', '2024-12-01 09:23:44'),
(94, '122494', NULL, 91, 2598.00, 498.00, NULL, 2100.00, 0.00, 2100.00, 0.00, 'completed', 0, 'WalkInCustomer', NULL, 0, 'Pos order', 1, '2024-12-01 09:26:34', '2024-12-01 09:26:34'),
(95, '122463', NULL, 92, 16146.00, 1346.00, NULL, 14800.00, 14800.00, 0.00, 0.00, 'completed', 0, 'WalkInCustomer', NULL, 0, 'Pos order', 1, '2024-12-03 23:50:55', '2024-12-04 06:46:12'),
(96, '122465', NULL, 93, 999.00, 199.00, NULL, 800.00, 0.00, 800.00, 0.00, 'completed', 0, 'WalkInCustomer', NULL, 0, 'Pos order', 1, '2024-12-04 07:12:10', '2024-12-04 07:12:10'),
(97, '122414', 'K24-2215', 94, 1499.00, 0.00, NULL, 1629.00, 0.00, 0.00, 130.00, 'confirmed', 0, NULL, NULL, 0, 'College mor Kushtia', 0, '2024-12-04 10:28:59', '2024-12-10 00:41:31'),
(98, '122435', NULL, 95, 14379.00, 819.00, NULL, 13560.00, 13560.00, 0.00, 0.00, 'completed', 0, 'WalkInCustomer', NULL, 0, 'Pos order', 1, '2024-12-07 07:02:39', '2024-12-07 07:02:39'),
(99, '122458', 'K24-1700', 96, 4199.00, 0.00, NULL, 4279.00, 0.00, 0.00, 80.00, 'completed', 0, NULL, NULL, 0, 'Please add discount and mat as we discussed over phone. Thank you', 0, '2024-12-08 08:25:16', '2024-12-10 00:43:17'),
(100, '122483', NULL, 97, 1499.00, 0.00, NULL, 1499.00, 1499.00, 0.00, 0.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-12-10 01:00:32', '2024-12-11 03:05:02'),
(101, '122434', NULL, 98, 5994.00, 994.00, NULL, 5130.00, 5130.00, 0.00, 130.00, 'pending', 0, 'Online', NULL, 0, 'Pos order', 1, '2024-12-10 11:03:21', '2024-12-16 12:18:53'),
(102, '122425', NULL, 99, 9990.00, 2990.00, NULL, 7000.00, 7000.00, 0.00, 0.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-12-11 00:17:29', '2024-12-11 00:17:29'),
(103, '122444', NULL, 100, 999.00, 300.00, NULL, 699.00, 699.00, 0.00, 0.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-12-12 09:32:00', '2024-12-13 09:45:05'),
(104, '122437', NULL, 101, 2799.00, 799.00, NULL, 2000.00, 2000.00, 0.00, 0.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-12-12 09:38:27', '2024-12-12 09:40:26'),
(105, '122480', NULL, 102, 5996.00, 1596.00, NULL, 4400.00, 2200.00, 2200.00, 0.00, 'completed', 0, 'WalkInCustomer', NULL, 0, 'Pos order', 1, '2024-12-13 09:52:33', '2024-12-17 01:19:16'),
(106, '122408', NULL, 103, 999.00, 100.00, NULL, 959.00, 959.00, 0.00, 60.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-12-16 13:29:57', '2024-12-17 05:46:51'),
(107, '122418', NULL, 104, 3200.00, 0.00, NULL, 3200.00, 0.00, 3200.00, 0.00, 'completed', 0, 'WalkInCustomer', NULL, 0, 'Pos order', 1, '2024-12-17 03:49:39', '2024-12-17 03:49:39'),
(108, '122492', NULL, 85, 6993.00, 2443.00, NULL, 4550.00, 0.00, 4550.00, 0.00, 'completed', 0, 'WalkInCustomer', NULL, 0, 'Pos order', 1, '2024-12-17 03:54:22', '2024-12-17 03:54:22'),
(109, '122474', NULL, 85, 4395.00, 995.00, NULL, 3400.00, 0.00, 3400.00, 0.00, 'completed', 0, 'WalkInCustomer', NULL, 0, 'Pos order', 1, '2024-12-17 03:58:31', '2024-12-17 03:58:31'),
(110, '122431', NULL, 85, 2799.00, 299.00, NULL, 2500.00, 2500.00, 0.00, 0.00, 'completed', 0, 'WalkInCustomer', NULL, 0, 'Pos order', 1, '2024-12-17 04:00:13', '2024-12-17 05:45:19'),
(111, '122487', NULL, 88, 1998.00, 598.00, NULL, 1400.00, 1400.00, 0.00, 0.00, 'completed', 0, 'WalkInCustomer', NULL, 0, 'Pos order', 1, '2024-12-17 05:40:02', '2024-12-17 05:51:45'),
(112, '122421', NULL, 105, 999.00, 0.00, NULL, 999.00, 999.00, 0.00, 0.00, 'completed', 0, NULL, NULL, 0, 'Pos order', 1, '2024-12-17 23:52:43', '2024-12-17 23:52:43'),
(113, '122404', NULL, 106, 1499.00, 499.00, NULL, 1000.00, 0.00, 1000.00, 0.00, 'completed', 0, 'WalkInCustomer', NULL, 0, 'Pos order', 1, '2024-12-18 00:03:14', '2024-12-18 00:03:14'),
(114, '122471', NULL, 107, 750.00, 50.00, NULL, 800.00, 0.00, 800.00, 100.00, 'completed', 0, 'Facebook', NULL, 0, 'Pos order', 1, '2024-12-25 03:35:00', '2024-12-25 03:35:00'),
(115, '122473', 'K24-2399', 108, 3200.00, 0.00, NULL, 3330.00, 0.00, 0.00, 130.00, 'pending', 0, NULL, NULL, 0, 'only one set.', 0, '2024-12-30 02:56:07', '2025-01-07 03:30:03'),
(116, '012527', NULL, 109, 13995.00, 1995.00, NULL, 12000.00, 12000.00, 0.00, 0.00, 'completed', 0, 'WalkInCustomer', NULL, 0, 'Pos order', 1, '2025-01-04 01:28:41', '2025-01-04 08:10:24'),
(117, '012586', NULL, 110, 550.00, 50.00, NULL, 500.00, 0.00, 500.00, 0.00, 'completed', 0, 'WalkInCustomer', NULL, 0, 'Pos order', 1, '2025-01-04 08:09:47', '2025-01-04 08:09:47'),
(118, '012542', NULL, 111, 550.00, 0.00, NULL, 650.00, 0.00, 650.00, 100.00, 'completed', 0, 'Online', NULL, 0, 'Pos order', 1, '2025-01-12 06:22:29', '2025-01-12 06:22:29'),
(376, '012551', 'GG25-9180', 278, 1372.00, 0.00, NULL, 1452.00, 0.00, 1452.00, 80.00, 'pending', 0, NULL, NULL, 0, 'no', 0, '2025-01-19 01:16:03', '2025-01-19 01:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `orderstatuses`
--

CREATE TABLE `orderstatuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','confirmed','shipped','delivered','completed','returned','cancelled') NOT NULL DEFAULT 'pending',
  `confirmed_date_time` datetime DEFAULT NULL,
  `shipped_date_time` datetime DEFAULT NULL,
  `delivered_date_time` datetime DEFAULT NULL,
  `completed_date_time` datetime DEFAULT NULL,
  `returned_date_time` datetime DEFAULT NULL,
  `cancelled_date_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderstatuses`
--

INSERT INTO `orderstatuses` (`id`, `order_id`, `status`, `confirmed_date_time`, `shipped_date_time`, `delivered_date_time`, `completed_date_time`, `returned_date_time`, `cancelled_date_time`, `created_at`, `updated_at`) VALUES
(257, 313, 'completed', NULL, NULL, NULL, '2025-01-15 11:25:00', NULL, NULL, '2025-01-14 07:28:05', '2025-01-15 05:25:00'),
(276, 333, 'completed', NULL, NULL, NULL, '2025-01-15 11:24:51', NULL, NULL, '2025-01-15 04:57:20', '2025-01-15 05:24:51'),
(290, 347, 'completed', NULL, NULL, NULL, '2025-01-15 11:24:20', NULL, NULL, '2025-01-15 05:20:27', '2025-01-15 05:24:20'),
(292, 349, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-15 05:32:00', '2025-01-15 05:32:00'),
(312, 369, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-15 06:41:25', '2025-01-15 06:41:25'),
(313, 370, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-15 07:00:23', '2025-01-15 07:00:23'),
(314, 371, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-15 07:05:18', '2025-01-15 07:05:18'),
(315, 372, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-15 07:08:16', '2025-01-15 07:08:16'),
(316, 373, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-15 07:09:34', '2025-01-15 07:09:34'),
(317, 374, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-15 07:13:58', '2025-01-15 07:13:58'),
(318, 375, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-15 07:18:59', '2025-01-15 07:18:59'),
(319, 376, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-19 01:16:03', '2025-01-19 01:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `size_id` bigint(20) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `eyeweartype` varchar(255) DEFAULT NULL,
  `lens_type` varchar(255) DEFAULT NULL,
  `prescription_note` varchar(255) DEFAULT NULL,
  `prescription_image` varchar(255) DEFAULT NULL,
  `lens_price` decimal(8,2) DEFAULT 0.00,
  `item_price_withlens` decimal(8,2) DEFAULT 0.00,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `color_id`, `size_id`, `price`, `quantity`, `eyeweartype`, `lens_type`, `prescription_note`, `prescription_image`, `lens_price`, `item_price_withlens`, `rstatus`, `created_at`, `updated_at`) VALUES
(26, 98, 26, NULL, NULL, 550.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-12 03:43:34', '2024-08-12 03:43:34'),
(30, 98, 29, NULL, NULL, 550.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-13 02:55:37', '2024-08-13 02:55:37'),
(31, 80, 30, NULL, NULL, 399.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-13 04:15:33', '2024-08-13 04:15:33'),
(32, 98, 31, NULL, NULL, 550.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-13 04:19:20', '2024-08-13 04:19:20'),
(33, 106, 32, 28, NULL, 999.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-13 04:33:18', '2024-08-13 04:33:18'),
(34, 80, 32, NULL, NULL, 399.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-13 04:33:18', '2024-08-13 04:33:18'),
(35, 100, 33, NULL, 38, 799.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-13 04:40:18', '2024-08-13 04:40:18'),
(36, 97, 34, 30, NULL, 999.00, 15, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-14 00:18:41', '2024-08-14 00:18:41'),
(37, 80, 35, NULL, NULL, 399.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-14 00:25:00', '2024-08-14 00:25:00'),
(38, 98, 36, NULL, NULL, 550.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-14 02:21:39', '2024-08-14 02:21:39'),
(39, 99, 37, NULL, NULL, 999.00, 2, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-14 02:26:56', '2024-08-14 02:26:56'),
(40, 98, 38, NULL, NULL, 550.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-14 23:19:17', '2024-08-14 23:19:17'),
(41, 98, 39, NULL, NULL, 550.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-14 23:21:18', '2024-08-14 23:21:18'),
(42, 98, 40, NULL, NULL, 550.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-14 23:23:45', '2024-08-14 23:23:45'),
(43, 74, 41, 28, NULL, 1199.00, 6, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-15 03:08:58', '2024-08-15 03:08:58'),
(44, 74, 41, 31, NULL, 1199.00, 4, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-15 03:08:58', '2024-08-15 03:08:58'),
(45, 74, 41, 30, NULL, 1199.00, 5, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-15 03:08:58', '2024-08-15 03:08:58'),
(46, 73, 42, 30, 35, 600.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-15 03:13:11', '2024-08-15 03:13:11'),
(47, 106, 43, 28, NULL, 999.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-16 01:14:06', '2024-08-16 01:14:06'),
(48, 99, 44, NULL, NULL, 999.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-16 01:15:54', '2024-08-16 01:15:54'),
(49, 81, 45, NULL, NULL, 350.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-17 10:36:52', '2024-08-17 10:36:52'),
(50, 98, 46, NULL, NULL, 550.00, 2, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-17 10:40:16', '2024-08-17 10:40:16'),
(51, 98, 47, NULL, NULL, 550.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-17 10:42:06', '2024-08-17 10:42:06'),
(52, 77, 48, 27, 38, 599.00, 3, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-18 03:51:36', '2024-08-18 03:51:36'),
(53, 77, 48, 33, NULL, 599.00, 2, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-18 03:51:36', '2024-08-18 03:51:36'),
(54, 101, 49, 33, 41, 799.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-18 04:05:03', '2024-08-18 04:05:03'),
(55, 101, 49, 32, 41, 799.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-18 04:05:04', '2024-08-18 04:05:04'),
(56, 101, 49, 33, 38, 799.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-18 04:05:04', '2024-08-18 04:05:04'),
(58, 98, 51, NULL, NULL, 550.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-21 03:32:36', '2024-08-21 03:32:36'),
(59, 99, 52, NULL, NULL, 999.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-21 03:34:37', '2024-08-21 03:34:37'),
(60, 99, 53, NULL, NULL, 999.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-21 04:01:15', '2024-08-21 04:01:15'),
(61, 98, 54, NULL, NULL, 550.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-21 04:55:27', '2024-08-21 04:55:27'),
(62, 109, 55, NULL, NULL, 2500.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-22 02:55:16', '2024-08-22 02:55:16'),
(63, 73, 55, 29, 35, 600.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-22 02:55:16', '2024-08-22 02:55:16'),
(64, 108, 55, NULL, NULL, 200.00, 3, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-22 02:55:16', '2024-08-22 02:55:16'),
(66, 96, 57, NULL, NULL, 3200.00, 3, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-24 09:01:55', '2024-08-24 09:01:55'),
(67, 99, 58, NULL, NULL, 999.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-26 01:22:03', '2024-08-26 01:22:03'),
(68, 79, 59, 30, 39, 799.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-31 22:19:58', '2024-08-31 22:19:58'),
(73, 106, 64, 37, NULL, 999.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-09-07 02:21:10', '2024-09-07 02:21:10'),
(74, 79, 65, 32, 40, 799.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-09-08 00:03:27', '2024-09-08 00:03:27'),
(75, 101, 65, 33, 40, 799.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-09-08 00:03:27', '2024-09-08 00:03:27'),
(76, 91, 66, 30, 38, 350.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-09-08 00:24:56', '2024-09-08 00:24:56'),
(77, 91, 66, 32, 38, 350.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-09-08 00:24:56', '2024-09-08 00:24:56'),
(78, 91, 66, 33, 38, 350.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-09-08 00:24:56', '2024-09-08 00:24:56'),
(79, 94, 67, NULL, NULL, 2799.00, 2, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-09-08 08:43:29', '2024-09-08 08:43:29'),
(82, 91, 69, 33, 41, 350.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-09-10 23:57:12', '2024-09-10 23:57:12'),
(83, 91, 69, 30, 38, 350.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-09-10 23:57:12', '2024-09-10 23:57:12'),
(84, 98, 70, NULL, NULL, 550.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-09-20 05:06:42', '2024-09-20 05:06:42'),
(85, 91, 71, 30, 41, 350.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-09-21 02:27:27', '2024-09-21 02:27:27'),
(86, 96, 72, NULL, NULL, 3200.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-09-21 07:59:02', '2024-09-21 07:59:02'),
(87, 104, 73, NULL, NULL, 750.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-09-28 01:47:13', '2024-09-28 01:47:13'),
(88, 96, 74, NULL, NULL, 3200.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-10-01 06:56:14', '2024-10-01 06:56:14'),
(89, 111, 74, NULL, NULL, 8000.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-10-01 06:56:14', '2024-10-01 06:56:14'),
(90, 92, 75, NULL, NULL, 4000.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-10-01 23:57:00', '2024-10-01 23:57:00'),
(91, 96, 76, NULL, NULL, 3200.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-10-01 23:58:42', '2024-10-01 23:58:42'),
(92, 91, 77, 30, 37, 350.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-10-06 02:23:00', '2024-10-06 02:23:00'),
(93, 91, 77, 33, 37, 350.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-10-06 02:23:00', '2024-10-06 02:23:00'),
(94, 96, 78, NULL, NULL, 3200.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-10-08 04:09:11', '2024-10-08 04:09:11'),
(95, 98, 78, NULL, NULL, 550.00, 3, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-10-08 04:09:11', '2024-10-08 04:09:11'),
(96, 106, 79, 28, NULL, 999.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-10-09 01:49:04', '2024-10-09 01:49:04'),
(97, 79, 80, 30, 40, 799.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-10-12 01:52:25', '2024-10-12 01:52:25'),
(98, 100, 80, 30, 40, 799.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-10-12 01:52:25', '2024-10-12 01:52:25'),
(99, 101, 80, 30, 40, 799.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-10-12 01:52:25', '2024-10-12 01:52:25'),
(100, 91, 81, 32, 38, 350.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-10-21 05:06:25', '2024-10-21 05:06:25'),
(101, 91, 81, 30, 38, 350.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-10-21 05:06:25', '2024-10-21 05:06:25'),
(102, 91, 81, 33, 38, 350.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-10-21 05:06:25', '2024-10-21 05:06:25'),
(103, 91, 81, 33, 37, 350.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-10-21 05:06:25', '2024-10-21 05:06:25'),
(104, 92, 82, NULL, NULL, 4000.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-10-26 21:27:02', '2024-10-26 21:27:02'),
(105, 92, 83, NULL, NULL, 4000.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-10-26 21:31:20', '2024-10-26 21:31:20'),
(106, 91, 84, 30, 38, 350.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-10-28 03:57:11', '2024-10-28 03:57:11'),
(107, 82, 84, NULL, NULL, 350.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-10-28 03:57:11', '2024-10-28 03:57:11'),
(108, 106, 85, 28, NULL, 999.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-11-05 04:14:25', '2024-11-05 04:14:25'),
(109, 104, 86, NULL, NULL, 750.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-11-05 04:16:18', '2024-11-05 04:16:18'),
(110, 98, 86, NULL, NULL, 550.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-11-05 04:16:18', '2024-11-05 04:16:18'),
(111, 112, 87, NULL, NULL, 999.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-11-05 04:36:32', '2024-11-05 04:36:32'),
(112, 77, 87, 33, 38, 599.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-11-05 04:36:32', '2024-11-05 04:36:32'),
(113, 112, 88, NULL, NULL, 999.00, 20, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-11-07 07:15:35', '2024-11-07 07:15:35'),
(114, 89, 89, 27, NULL, 4999.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-11-23 08:34:08', '2024-11-23 08:34:08'),
(115, 112, 90, NULL, NULL, 999.00, 17, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-11-26 03:36:37', '2024-11-26 03:36:37'),
(116, 112, 91, NULL, NULL, 999.00, 5, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-11-26 03:40:09', '2024-11-26 03:40:09'),
(117, 78, 92, 28, NULL, 999.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-11-29 10:25:21', '2024-11-29 10:25:21'),
(118, 78, 92, 27, NULL, 999.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-11-29 10:25:21', '2024-11-29 10:25:21'),
(119, 99, 92, NULL, NULL, 999.00, 2, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-11-29 10:25:21', '2024-11-29 10:25:21'),
(120, 112, 93, NULL, NULL, 999.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-01 09:23:44', '2024-12-01 09:23:44'),
(121, 112, 94, NULL, NULL, 999.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-01 09:26:34', '2024-12-01 09:26:34'),
(122, 93, 94, NULL, NULL, 1599.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-01 09:26:34', '2024-12-01 09:26:34'),
(123, 87, 95, 35, NULL, 8999.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-03 23:50:55', '2024-12-03 23:50:55'),
(124, 94, 95, NULL, NULL, 2799.00, 2, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-03 23:50:55', '2024-12-03 23:50:55'),
(125, 98, 95, NULL, NULL, 550.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-03 23:50:55', '2024-12-03 23:50:55'),
(126, 112, 95, NULL, NULL, 999.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-03 23:50:55', '2024-12-03 23:50:55'),
(127, 106, 96, 28, NULL, 999.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-04 07:12:10', '2024-12-04 07:12:10'),
(128, 85, 97, 30, NULL, 1499.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-04 10:28:59', '2024-12-04 10:28:59'),
(129, 77, 98, 27, 38, 599.00, 4, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-07 07:02:39', '2024-12-07 07:02:39'),
(130, 77, 98, 33, NULL, 599.00, 5, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-07 07:02:39', '2024-12-07 07:02:39'),
(131, 80, 98, NULL, NULL, 399.00, 5, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-07 07:02:39', '2024-12-07 07:02:39'),
(132, 112, 98, NULL, NULL, 999.00, 7, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-07 07:02:39', '2024-12-07 07:02:39'),
(133, 96, 99, 28, NULL, 3200.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-08 08:25:16', '2024-12-08 08:25:16'),
(134, 106, 99, 28, NULL, 999.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-08 08:25:16', '2024-12-08 08:25:16'),
(135, 85, 100, 30, NULL, 1499.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-10 01:00:32', '2024-12-10 01:00:32'),
(136, 112, 101, NULL, NULL, 999.00, 6, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-10 11:03:21', '2024-12-10 11:03:21'),
(137, 112, 102, NULL, NULL, 999.00, 10, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-11 00:17:29', '2024-12-11 00:17:29'),
(138, 99, 103, NULL, NULL, 999.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-12 09:32:00', '2024-12-12 09:32:00'),
(139, 94, 104, NULL, NULL, 2799.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-12 09:38:27', '2024-12-12 09:38:27'),
(140, 112, 105, NULL, NULL, 999.00, 2, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-13 09:52:33', '2024-12-13 09:52:33'),
(141, 113, 105, NULL, NULL, 1999.00, 2, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-13 09:52:33', '2024-12-13 09:52:33'),
(142, 112, 106, NULL, NULL, 999.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-16 13:29:57', '2024-12-16 13:29:57'),
(143, 96, 107, NULL, NULL, 3200.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-17 03:49:39', '2024-12-17 03:49:39'),
(144, 112, 108, NULL, NULL, 999.00, 7, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-17 03:54:22', '2024-12-17 03:54:22'),
(145, 79, 109, 30, 40, 799.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-17 03:58:31', '2024-12-17 03:58:31'),
(146, 79, 109, 32, 40, 799.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-17 03:58:31', '2024-12-17 03:58:31'),
(147, 79, 109, 33, 40, 799.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-17 03:58:31', '2024-12-17 03:58:31'),
(148, 106, 109, 28, NULL, 999.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-17 03:58:31', '2024-12-17 03:58:31'),
(149, 99, 109, NULL, NULL, 999.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-17 03:58:31', '2024-12-17 03:58:31'),
(150, 94, 110, NULL, NULL, 2799.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-17 04:00:13', '2024-12-17 04:00:13'),
(151, 114, 111, NULL, 38, 999.00, 2, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-17 05:40:02', '2024-12-17 05:40:02'),
(152, 112, 112, NULL, NULL, 999.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-17 23:52:43', '2024-12-17 23:52:43'),
(153, 85, 113, 30, NULL, 1499.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-18 00:03:14', '2024-12-18 00:03:14'),
(154, 104, 114, NULL, NULL, 750.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-25 03:35:00', '2024-12-25 03:35:00'),
(155, 96, 115, NULL, NULL, 3200.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-12-30 02:56:07', '2024-12-30 02:56:07'),
(156, 94, 116, NULL, NULL, 2799.00, 5, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2025-01-04 01:28:41', '2025-01-04 01:28:41'),
(157, 98, 117, NULL, NULL, 550.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2025-01-04 08:09:47', '2025-01-04 08:09:47'),
(158, 98, 118, NULL, NULL, 550.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2025-01-12 06:22:29', '2025-01-12 06:22:29');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(84, 'view brand', 'web', '2024-08-13 22:42:44', '2024-08-13 22:42:44'),
(85, 'create brand', 'web', '2024-08-13 22:42:56', '2024-08-13 22:42:56'),
(86, 'update brand', 'web', '2024-08-13 22:43:08', '2024-08-13 22:43:08'),
(87, 'delete brand', 'web', '2024-08-13 22:43:18', '2024-08-13 22:43:18'),
(88, 'view category', 'web', '2024-08-13 22:44:57', '2024-08-13 22:44:57'),
(89, 'create category', 'web', '2024-08-13 22:45:09', '2024-08-13 22:45:09'),
(90, 'update category', 'web', '2024-08-13 22:45:17', '2024-08-13 22:45:17'),
(91, 'delete category', 'web', '2024-08-13 22:45:22', '2024-08-13 22:45:22'),
(92, 'view variant', 'web', '2024-08-13 22:47:43', '2024-08-13 22:47:43'),
(93, 'create variant', 'web', '2024-08-13 22:47:48', '2024-08-13 22:47:48'),
(94, 'update variant', 'web', '2024-08-13 22:47:53', '2024-08-13 22:47:53'),
(95, 'delete variant', 'web', '2024-08-13 22:47:59', '2024-08-13 22:47:59'),
(96, 'view product', 'web', '2024-08-13 22:48:07', '2024-08-13 22:48:07'),
(97, 'create product', 'web', '2024-08-13 22:48:11', '2024-08-13 22:48:11'),
(98, 'update product', 'web', '2024-08-13 22:48:16', '2024-08-13 22:48:16'),
(99, 'delete product', 'web', '2024-08-13 22:48:20', '2024-08-13 22:48:20'),
(100, 'view order', 'web', '2024-08-13 22:48:48', '2024-08-13 22:48:48'),
(101, 'update order', 'web', '2024-08-13 22:48:57', '2024-08-13 22:48:57'),
(102, 'view invoice', 'web', '2024-08-13 22:49:19', '2024-08-13 22:49:19'),
(103, 'view courier', 'web', '2024-08-13 22:50:29', '2024-08-13 22:50:29'),
(104, 'create courier', 'web', '2024-08-13 22:50:37', '2024-08-13 22:50:37'),
(105, 'view customer', 'web', '2024-08-13 22:51:01', '2024-08-13 22:51:01'),
(106, 'create customer', 'web', '2024-08-13 22:51:08', '2024-08-13 22:51:08'),
(107, 'update customer', 'web', '2024-08-13 22:51:17', '2024-08-13 22:51:17'),
(108, 'delete customer', 'web', '2024-08-13 22:51:23', '2024-08-13 22:51:23'),
(109, 'view offer', 'web', '2024-08-13 22:51:50', '2024-08-13 22:51:50'),
(110, 'create offer', 'web', '2024-08-13 22:51:56', '2024-08-13 22:51:56'),
(111, 'update offer', 'web', '2024-08-13 22:52:02', '2024-08-13 22:52:02'),
(112, 'delete offer', 'web', '2024-08-13 22:52:07', '2024-08-13 22:52:07'),
(113, 'view coupon', 'web', '2024-08-13 22:52:36', '2024-08-13 22:52:36'),
(114, 'create coupon', 'web', '2024-08-13 22:52:42', '2024-08-13 22:52:42'),
(115, 'update coupon', 'web', '2024-08-13 22:52:48', '2024-08-13 22:52:48'),
(116, 'delete coupon', 'web', '2024-08-13 22:52:52', '2024-08-13 22:52:52'),
(117, 'view supplier', 'web', '2024-08-13 22:53:29', '2024-08-13 22:53:29'),
(118, 'create supplier', 'web', '2024-08-13 22:53:35', '2024-08-13 22:53:35'),
(119, 'update supplier', 'web', '2024-08-13 22:53:41', '2024-08-13 22:53:41'),
(120, 'delete supplier', 'web', '2024-08-13 22:53:46', '2024-08-13 22:53:46'),
(121, 'view featurecategory', 'web', '2024-08-13 22:54:05', '2024-08-13 22:54:05'),
(122, 'create featurecategory', 'web', '2024-08-13 22:54:10', '2024-08-13 22:54:10'),
(123, 'update featurecategory', 'web', '2024-08-13 22:54:16', '2024-08-13 22:54:16'),
(124, 'delete featurecategory', 'web', '2024-08-13 22:54:20', '2024-08-13 22:54:20'),
(125, 'view featureproduct', 'web', '2024-08-13 22:54:32', '2024-08-13 22:54:32'),
(126, 'create featureproduct', 'web', '2024-08-13 22:54:37', '2024-08-13 22:54:37'),
(127, 'update featureproduct', 'web', '2024-08-13 22:54:41', '2024-08-13 22:54:41'),
(128, 'delete featureproduct', 'web', '2024-08-13 22:54:45', '2024-08-13 22:54:45'),
(129, 'view transaction', 'web', '2024-08-13 22:55:11', '2024-08-13 22:55:11'),
(130, 'update transaction', 'web', '2024-08-13 22:55:15', '2024-08-13 22:55:15'),
(131, 'view slider', 'web', '2024-08-13 22:55:30', '2024-08-13 22:55:30'),
(132, 'create slider', 'web', '2024-08-13 22:55:34', '2024-08-13 22:55:34'),
(133, 'update slider', 'web', '2024-08-13 22:55:37', '2024-08-13 22:55:37'),
(134, 'delete slider', 'web', '2024-08-13 22:55:40', '2024-08-13 22:55:40'),
(135, 'view advertisement', 'web', '2024-08-13 22:56:12', '2024-08-13 22:56:12'),
(136, 'create advertisement', 'web', '2024-08-13 22:56:24', '2024-08-13 22:56:24'),
(137, 'update advertisement', 'web', '2024-08-13 22:56:28', '2024-08-13 22:56:28'),
(138, 'delete advertisement', 'web', '2024-08-13 22:56:31', '2024-08-13 22:56:31'),
(139, 'view campaign', 'web', '2024-08-13 22:56:41', '2024-08-13 22:56:41'),
(140, 'create campaign', 'web', '2024-08-13 22:56:44', '2024-08-13 22:56:44'),
(141, 'update campaign', 'web', '2024-08-13 22:56:47', '2024-08-13 22:56:47'),
(142, 'delete campaign', 'web', '2024-08-13 22:56:58', '2024-08-13 22:56:58'),
(143, 'view inventory', 'web', '2024-08-13 22:57:57', '2024-08-13 22:57:57'),
(144, 'create inventory', 'web', '2024-08-13 22:58:00', '2024-08-13 22:58:00'),
(145, 'view pos', 'web', '2024-08-13 22:58:32', '2024-08-13 22:58:32'),
(146, 'create pos', 'web', '2024-08-13 22:58:36', '2024-08-13 22:58:36'),
(147, 'view report', 'web', '2024-08-13 22:58:47', '2024-08-13 22:58:47'),
(148, 'view user', 'web', '2024-08-13 22:58:56', '2024-08-13 22:58:56'),
(149, 'create user', 'web', '2024-08-13 22:59:00', '2024-08-13 22:59:00'),
(150, 'update user', 'web', '2024-08-13 22:59:03', '2024-08-13 22:59:03'),
(151, 'delete user', 'web', '2024-08-13 22:59:06', '2024-08-13 22:59:06'),
(152, 'view websetting', 'web', '2024-08-13 22:59:35', '2024-08-13 22:59:35'),
(153, 'create websetting', 'web', '2024-08-13 22:59:38', '2024-08-13 22:59:38'),
(154, 'update websetting', 'web', '2024-08-13 22:59:42', '2024-08-13 22:59:42'),
(155, 'delete websetting', 'web', '2024-08-13 22:59:44', '2024-08-13 22:59:44'),
(156, 'view role', 'web', '2024-08-13 23:00:26', '2024-08-13 23:00:26'),
(157, 'view permission', 'web', '2024-08-13 23:00:33', '2024-08-13 23:00:33');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `postcodes`
--

CREATE TABLE `postcodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `upazila` varchar(255) NOT NULL,
  `zone_charge` decimal(10,0) DEFAULT 0,
  `postOffice` varchar(255) NOT NULL,
  `postCode` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `postcodes`
--

INSERT INTO `postcodes` (`id`, `division_id`, `district_id`, `upazila`, `zone_charge`, `postOffice`, `postCode`, `created_at`, `updated_at`) VALUES
(1, 1, 34, 'Amtali', 130, 'Amtali', '8710', NULL, NULL),
(2, 1, 34, 'Bamna', 130, 'Bamna', '8730', NULL, NULL),
(3, 1, 34, 'Barguna Sadar', 130, 'Barguna Sadar', '8700', NULL, NULL),
(4, 1, 34, 'Barguna Sadar', 130, 'Nali Bandar', '8701', NULL, NULL),
(5, 1, 34, 'Betagi', 130, 'Betagi', '8740', NULL, NULL),
(6, 1, 34, 'Betagi', 130, 'Darul Ulam', '8741', NULL, NULL),
(7, 1, 34, 'Patharghata', 130, 'Kakchira', '8721', NULL, NULL),
(8, 1, 34, 'Patharghata', 130, 'Patharghata', '8720', NULL, NULL),
(9, 1, 35, 'Agailzhara', 130, 'Agailzhara', '8240', NULL, NULL),
(10, 1, 35, 'Agailzhara', 130, 'Gaila', '8241', NULL, NULL),
(11, 1, 35, 'Agailzhara', 130, 'Paisarhat', '8242', NULL, NULL),
(12, 1, 35, 'Babuganj', 130, 'Babuganj', '8210', NULL, NULL),
(13, 1, 35, 'Babuganj', 130, 'Barisal Cadet', '8216', NULL, NULL),
(14, 1, 35, 'Babuganj', 130, 'Chandpasha', '8212', NULL, NULL),
(15, 1, 35, 'Babuganj', 130, 'Madhabpasha', '8213', NULL, NULL),
(16, 1, 35, 'Babuganj', 130, 'Nizamuddin College', '8215', NULL, NULL),
(17, 1, 35, 'Babuganj', 130, 'Rahamatpur', '8211', NULL, NULL),
(18, 1, 35, 'Babuganj', 130, 'Thakur Mallik', '8214', NULL, NULL),
(19, 1, 35, 'Barajalia', 130, 'Barajalia', '8260', NULL, NULL),
(20, 1, 35, 'Barajalia', 130, 'Osman Manjil', '8261', NULL, NULL),
(21, 1, 35, 'Barisal Sadar', 130, 'Barisal Sadar', '8200', NULL, NULL),
(22, 1, 35, 'Barisal Sadar', 130, 'Bukhainagar', '8201', NULL, NULL),
(23, 1, 35, 'Barisal Sadar', 130, 'Jaguarhat', '8206', NULL, NULL),
(24, 1, 35, 'Barisal Sadar', 130, 'Kashipur', '8205', NULL, NULL),
(25, 1, 35, 'Barisal Sadar', 130, 'Patang', '8204', NULL, NULL),
(26, 1, 35, 'Barisal Sadar', 130, 'Saheberhat', '8202', NULL, NULL),
(27, 1, 35, 'Barisal Sadar', 130, 'Sugandia', '8203', NULL, NULL),
(28, 1, 35, 'Gouranadi', 130, 'Batajor', '8233', NULL, NULL),
(29, 1, 35, 'Gouranadi', 130, 'Gouranadi', '8230', NULL, NULL),
(30, 1, 35, 'Gouranadi', 130, 'Kashemabad', '8232', NULL, NULL),
(31, 1, 35, 'Gouranadi', 130, 'Tarki Bandar', '8231', NULL, NULL),
(32, 1, 35, 'Mahendiganj', 130, 'Langutia', '8274', NULL, NULL),
(33, 1, 35, 'Mahendiganj', 130, 'Laskarpur', '8271', NULL, NULL),
(34, 1, 35, 'Mahendiganj', 130, 'Mahendiganj', '8270', NULL, NULL),
(35, 1, 35, 'Mahendiganj', 130, 'Nalgora', '8273', NULL, NULL),
(36, 1, 35, 'Mahendiganj', 130, 'Ulania', '8272', NULL, NULL),
(37, 1, 35, 'Muladi', 130, 'Charkalekhan', '8252', NULL, NULL),
(38, 1, 35, 'Muladi', 130, 'Kazirchar', '8251', NULL, NULL),
(39, 1, 35, 'Muladi', 130, 'Muladi', '8250', NULL, NULL),
(40, 1, 35, 'Sahebganj', 130, 'Charamandi', '8281', NULL, NULL),
(41, 1, 35, 'Sahebganj', 130, 'kalaskati', '8284', NULL, NULL),
(42, 1, 35, 'Sahebganj', 130, 'Padri Shibpur', '8282', NULL, NULL),
(43, 1, 35, 'Sahebganj', 130, 'Sahebganj', '8280', NULL, NULL),
(44, 1, 35, 'Sahebganj', 130, 'Shialguni', '8283', NULL, NULL),
(45, 1, 35, 'Uzirpur', 130, 'Dakuarhat', '8223', NULL, NULL),
(46, 1, 35, 'Uzirpur', 130, 'Dhamura', '8221', NULL, NULL),
(47, 1, 35, 'Uzirpur', 130, 'Jugirkanda', '8222', NULL, NULL),
(48, 1, 35, 'Uzirpur', 130, 'Shikarpur', '8224', NULL, NULL),
(49, 1, 35, 'Uzirpur', 130, 'Uzirpur', '8220', NULL, NULL),
(50, 1, 36, 'Bhola Sadar', 130, 'Bhola Sadar', '8300', NULL, NULL),
(51, 1, 36, 'Bhola Sadar', 130, 'Joynagar', '8301', NULL, NULL),
(52, 1, 36, 'Borhanuddin UPO', 130, 'Borhanuddin UPO', '8320', NULL, NULL),
(53, 1, 36, 'Borhanuddin UPO', 130, 'Mirzakalu', '8321', NULL, NULL),
(54, 1, 36, 'Charfashion', 130, 'Charfashion', '8340', NULL, NULL),
(55, 1, 36, 'Charfashion', 130, 'Dularhat', '8341', NULL, NULL),
(56, 1, 36, 'Charfashion', 130, 'Keramatganj', '8342', NULL, NULL),
(57, 1, 36, 'Doulatkhan', 130, 'Doulatkhan', '8310', NULL, NULL),
(58, 1, 36, 'Doulatkhan', 130, 'Hajipur', '8311', NULL, NULL),
(59, 1, 36, 'Hajirhat', 130, 'Hajirhat', '8360', NULL, NULL),
(60, 1, 36, 'Hatshoshiganj', 130, 'Hatshoshiganj', '8350', NULL, NULL),
(61, 1, 36, 'Lalmohan UPO', 130, 'Daurihat', '8331', NULL, NULL),
(62, 1, 36, 'Lalmohan UPO', 130, 'Gazaria', '8332', NULL, NULL),
(63, 1, 36, 'Lalmohan UPO', 130, 'Lalmohan UPO', '8330', NULL, NULL),
(64, 1, 37, 'Jhalokathi Sadar', 130, 'Baukathi', '8402', NULL, NULL),
(65, 1, 37, 'Jhalokathi Sadar', 130, 'Gabha', '8403', NULL, NULL),
(66, 1, 37, 'Jhalokathi Sadar', 130, 'Jhalokathi Sadar', '8400', NULL, NULL),
(67, 1, 37, 'Jhalokathi Sadar', 130, 'Nabagram', '8401', NULL, NULL),
(68, 1, 37, 'Jhalokathi Sadar', 130, 'Shekherhat', '8404', NULL, NULL),
(69, 1, 37, 'Kathalia', 130, 'Amua', '8431', NULL, NULL),
(70, 1, 37, 'Kathalia', 130, 'Kathalia', '8430', NULL, NULL),
(71, 1, 37, 'Kathalia', 130, 'Niamatee', '8432', NULL, NULL),
(72, 1, 37, 'Kathalia', 130, 'Shoulajalia', '8433', NULL, NULL),
(73, 1, 37, 'Nalchhiti', 130, 'Beerkathi', '8421', NULL, NULL),
(74, 1, 37, 'Nalchhiti', 130, 'Nalchhiti', '8420', NULL, NULL),
(75, 1, 37, 'Rajapur', 130, 'Rajapur', '8410', NULL, NULL),
(76, 1, 38, 'Bauphal', 130, 'Bagabandar', '8621', NULL, NULL),
(77, 1, 38, 'Bauphal', 130, 'Bauphal', '8620', NULL, NULL),
(78, 1, 38, 'Bauphal', 130, 'Birpasha', '8622', NULL, NULL),
(79, 1, 38, 'Bauphal', 130, 'Kalaia', '8624', NULL, NULL),
(80, 1, 38, 'Bauphal', 130, 'Kalishari', '8623', NULL, NULL),
(81, 1, 38, 'Dashmina', 130, 'Dashmina', '8630', NULL, NULL),
(82, 1, 38, 'Galachipa', 130, 'Galachipa', '8640', NULL, NULL),
(83, 1, 38, 'Galachipa', 130, 'Gazipur Bandar', '8641', NULL, NULL),
(84, 1, 38, 'Khepupara', 130, 'Khepupara', '8650', NULL, NULL),
(85, 1, 38, 'Khepupara', 130, 'Mahipur', '8651', NULL, NULL),
(86, 1, 38, 'Patuakhali Sadar', 130, 'Dumkee', '8602', NULL, NULL),
(87, 1, 38, 'Patuakhali Sadar', 130, 'Moukaran', '8601', NULL, NULL),
(88, 1, 38, 'Patuakhali Sadar', 130, 'Patuakhali Sadar', '8600', NULL, NULL),
(89, 1, 38, 'Patuakhali Sadar', 130, 'Rahimabad', '8603', NULL, NULL),
(90, 1, 38, 'Subidkhali', 130, 'Subidkhali', '8610', NULL, NULL),
(91, 1, 39, 'Banaripara', 130, 'Banaripara', '8530', NULL, NULL),
(92, 1, 39, 'Banaripara', 130, 'Chakhar', '8531', NULL, NULL),
(93, 1, 39, 'Bhandaria', 130, 'Bhandaria', '8550', NULL, NULL),
(94, 1, 39, 'Bhandaria', 130, 'Dhaoa', '8552', NULL, NULL),
(95, 1, 39, 'Bhandaria', 130, 'Kanudashkathi', '8551', NULL, NULL),
(96, 1, 39, 'kaukhali', 130, 'Jolagati', '8513', NULL, NULL),
(97, 1, 39, 'kaukhali', 130, 'Joykul', '8512', NULL, NULL),
(98, 1, 39, 'kaukhali', 130, 'Kaukhali', '8510', NULL, NULL),
(99, 1, 39, 'kaukhali', 130, 'Keundia', '8511', NULL, NULL),
(100, 1, 39, 'Mathbaria', 130, 'Betmor Natun Hat', '8565', NULL, NULL),
(101, 1, 39, 'Mathbaria', 130, 'Gulishakhali', '8563', NULL, NULL),
(102, 1, 39, 'Mathbaria', 130, 'Halta', '8562', NULL, NULL),
(103, 1, 39, 'Mathbaria', 130, 'Mathbaria', '8560', NULL, NULL),
(104, 1, 39, 'Mathbaria', 130, 'Shilarganj', '8566', NULL, NULL),
(105, 1, 39, 'Mathbaria', 130, 'Tiarkhali', '8564', NULL, NULL),
(106, 1, 39, 'Mathbaria', 130, 'Tushkhali', '8561', NULL, NULL),
(107, 1, 39, 'Nazirpur', 130, 'Nazirpur', '8540', NULL, NULL),
(108, 1, 39, 'Nazirpur', 130, 'Sriramkathi', '8541', NULL, NULL),
(109, 1, 39, 'Pirojpur Sadar', 130, 'Hularhat', '8501', NULL, NULL),
(110, 1, 39, 'Pirojpur Sadar', 130, 'Parerhat', '8502', NULL, NULL),
(111, 1, 39, 'Pirojpur Sadar', 130, 'Pirojpur Sadar', '8500', NULL, NULL),
(112, 1, 39, 'Swarupkathi', 130, 'Darus Sunnat', '8521', NULL, NULL),
(113, 1, 39, 'Swarupkathi', 130, 'Jalabari', '8523', NULL, NULL),
(114, 1, 39, 'Swarupkathi', 130, 'Kaurikhara', '8522', NULL, NULL),
(115, 1, 39, 'Swarupkathi', 130, 'Swarupkathi', '8520', NULL, NULL),
(116, 2, 40, 'Alikadam', 130, 'Alikadam', '4650', NULL, NULL),
(117, 2, 40, 'Bandarban Sadar', 130, 'Bandarban Sadar', '4600', NULL, NULL),
(118, 2, 40, 'Naikhong', 130, 'Naikhong', '4660', NULL, NULL),
(119, 2, 40, 'Roanchhari', 130, 'Roanchhari', '4610', NULL, NULL),
(120, 2, 40, 'Ruma', 130, 'Ruma', '4620', NULL, NULL),
(121, 2, 40, 'Thanchi', 130, 'Lama', '4641', NULL, NULL),
(122, 2, 40, 'Thanchi', 130, 'Thanchi', '4630', NULL, NULL),
(123, 2, 41, 'Akhaura', 130, 'Akhaura', '3450', NULL, NULL),
(124, 2, 41, 'Akhaura', 130, 'Azampur', '3451', NULL, NULL),
(125, 2, 41, 'Akhaura', 130, 'Gangasagar', '3452', NULL, NULL),
(126, 2, 41, 'Banchharampur', 130, 'Banchharampur', '3420', NULL, NULL),
(127, 2, 41, 'Brahamanbaria Sadar', 130, 'Ashuganj', '3402', NULL, NULL),
(128, 2, 41, 'Brahamanbaria Sadar', 130, 'Ashuganj Share', '3403', NULL, NULL),
(129, 2, 41, 'Brahamanbaria Sadar', 130, 'Brahamanbaria Sadar', '3400', NULL, NULL),
(130, 2, 41, 'Brahamanbaria Sadar', 130, 'Poun', '3404', NULL, NULL),
(131, 2, 41, 'Brahamanbaria Sadar', 130, 'Talshahar', '3401', NULL, NULL),
(132, 2, 41, 'Kasba', 130, 'Chandidar', '3462', NULL, NULL),
(133, 2, 41, 'Kasba', 130, 'Chargachh', '3463', NULL, NULL),
(134, 2, 41, 'Kasba', 130, 'Gopinathpur', '3464', NULL, NULL),
(135, 2, 41, 'Kasba', 130, 'Kasba', '3460', NULL, NULL),
(136, 2, 41, 'Kasba', 130, 'Kuti', '3461', NULL, NULL),
(137, 2, 41, 'Nabinagar', 130, 'Jibanganj', '3419', NULL, NULL),
(138, 2, 41, 'Nabinagar', 130, 'Kaitala', '3417', NULL, NULL),
(139, 2, 41, 'Nabinagar', 130, 'Laubfatehpur', '3411', NULL, NULL),
(140, 2, 41, 'Nabinagar', 130, 'Nabinagar', '3410', NULL, NULL),
(141, 2, 41, 'Nabinagar', 130, 'Rasullabad', '3412', NULL, NULL),
(142, 2, 41, 'Nabinagar', 130, 'Ratanpur', '3414', NULL, NULL),
(143, 2, 41, 'Nabinagar', 130, 'Salimganj', '3418', NULL, NULL),
(144, 2, 41, 'Nabinagar', 130, 'Shahapur', '3415', NULL, NULL),
(145, 2, 41, 'Nabinagar', 130, 'Shamgram', '3413', NULL, NULL),
(146, 2, 41, 'Nasirnagar', 130, 'Fandauk', '3441', NULL, NULL),
(147, 2, 41, 'Nasirnagar', 130, 'Nasirnagar', '3440', NULL, NULL),
(148, 2, 41, 'Sarail', 130, 'Chandura', '3432', NULL, NULL),
(149, 2, 41, 'Sarail', 130, 'Sarial', '3430', NULL, NULL),
(150, 2, 41, 'Sarail', 130, 'Shahbajpur', '3431', NULL, NULL),
(151, 2, 42, 'Chandpur Sadar', 130, 'Baburhat', '3602', NULL, NULL),
(152, 2, 42, 'Chandpur Sadar', 130, 'Chandpur Sadar', '3600', NULL, NULL),
(153, 2, 42, 'Chandpur Sadar', 130, 'Puranbazar', '3601', NULL, NULL),
(154, 2, 42, 'Chandpur Sadar', 130, 'Sahatali', '3603', NULL, NULL),
(155, 2, 42, 'Faridganj', 130, 'Chandra', '3651', NULL, NULL),
(156, 2, 42, 'Faridganj', 130, 'Faridganj', '3650', NULL, NULL),
(157, 2, 42, 'Faridganj', 130, 'Gridkaliandia', '3653', NULL, NULL),
(158, 2, 42, 'Faridganj', 130, 'Islampur Shah Isain', '3655', NULL, NULL),
(159, 2, 42, 'Faridganj', 130, 'Rampurbazar', '3654', NULL, NULL),
(160, 2, 42, 'Faridganj', 130, 'Rupsha', '3652', NULL, NULL),
(161, 2, 42, 'Hajiganj', 130, 'Bolakhal', '3611', NULL, NULL),
(162, 2, 42, 'Hajiganj', 130, 'Hajiganj', '3610', NULL, NULL),
(163, 2, 42, 'Hayemchar', 130, 'Gandamara', '3661', NULL, NULL),
(164, 2, 42, 'Hayemchar', 130, 'Hayemchar', '3660', NULL, NULL),
(165, 2, 42, 'Kachua', 130, 'Kachua', '3630', NULL, NULL),
(166, 2, 42, 'Kachua', 130, 'Pak Shrirampur', '3631', NULL, NULL),
(167, 2, 42, 'Kachua', 130, 'Rahima Nagar', '3632', NULL, NULL),
(168, 2, 42, 'Kachua', 130, 'Shachar', '3633', NULL, NULL),
(169, 2, 42, 'Matlobganj', 130, 'Kalipur', '3642', NULL, NULL),
(170, 2, 42, 'Matlobganj', 130, 'Matlobganj', '3640', NULL, NULL),
(171, 2, 42, 'Matlobganj', 130, 'Mohanpur', '3641', NULL, NULL),
(172, 2, 42, 'Shahrasti', 130, 'Chotoshi', '3623', NULL, NULL),
(173, 2, 42, 'Shahrasti', 130, 'Islamia Madrasha', '3624', NULL, NULL),
(174, 2, 42, 'Shahrasti', 130, 'Khilabazar', '3621', NULL, NULL),
(175, 2, 42, 'Shahrasti', 130, 'Pashchim Kherihar Al', '3622', NULL, NULL),
(176, 2, 42, 'Shahrasti', 130, 'Shahrasti', '3620', NULL, NULL),
(177, 2, 43, 'Anawara', 130, 'Anowara', '4376', NULL, NULL),
(178, 2, 43, 'Anawara', 130, 'Battali', '4378', NULL, NULL),
(179, 2, 43, 'Anawara', 130, 'Paroikora', '4377', NULL, NULL),
(180, 2, 43, 'Boalkhali', 130, 'Boalkhali', '4366', NULL, NULL),
(181, 2, 43, 'Boalkhali', 130, 'Charandwip', '4369', NULL, NULL),
(182, 2, 43, 'Boalkhali', 130, 'Iqbal Park', '4365', NULL, NULL),
(183, 2, 43, 'Boalkhali', 130, 'Kadurkhal', '4368', NULL, NULL),
(184, 2, 43, 'Boalkhali', 130, 'Kanungopara', '4363', NULL, NULL),
(185, 2, 43, 'Boalkhali', 130, 'Sakpura', '4367', NULL, NULL),
(186, 2, 43, 'Boalkhali', 130, 'Saroatoli', '4364', NULL, NULL),
(187, 2, 43, 'Chittagong Sadar', 130, 'Al- Amin Baria Madra', '4221', NULL, NULL),
(188, 2, 43, 'Chittagong Sadar', 130, 'Amin Jute Mills', '4211', NULL, NULL),
(189, 2, 43, 'Chittagong Sadar', 130, 'Anandabazar', '4215', NULL, NULL),
(190, 2, 43, 'Chittagong Sadar', 130, 'Bayezid Bostami', '4210', NULL, NULL),
(191, 2, 43, 'Chittagong Sadar', 130, 'Chandgaon', '4212', NULL, NULL),
(192, 2, 43, 'Chittagong Sadar', 130, 'Chawkbazar', '4203', NULL, NULL),
(193, 2, 43, 'Chittagong Sadar', 130, 'Chitt. Cantonment', '4220', NULL, NULL),
(194, 2, 43, 'Chittagong Sadar', 130, 'Chitt. Customs Acca', '4219', NULL, NULL),
(195, 2, 43, 'Chittagong Sadar', 130, 'Chitt. Politechnic In', '4209', NULL, NULL),
(196, 2, 43, 'Chittagong Sadar', 130, 'Chitt. Sailers Colon', '4218', NULL, NULL),
(197, 2, 43, 'Chittagong Sadar', 130, 'Chittagong Airport', '4205', NULL, NULL),
(198, 2, 43, 'Chittagong Sadar', 130, 'Chittagong Bandar', '4100', NULL, NULL),
(199, 2, 43, 'Chittagong Sadar', 130, 'Chittagong GPO', '4000', NULL, NULL),
(200, 2, 43, 'Chittagong Sadar', 130, 'Export Processing', '4223', NULL, NULL),
(201, 2, 43, 'Chittagong Sadar', 130, 'Firozshah', '4207', NULL, NULL),
(202, 2, 43, 'Chittagong Sadar', 130, 'Halishahar', '4216', NULL, NULL),
(203, 2, 43, 'Chittagong Sadar', 130, 'Halishshar', '4225', NULL, NULL),
(204, 2, 43, 'Chittagong Sadar', 130, 'Jalalabad', '4214', NULL, NULL),
(205, 2, 43, 'Chittagong Sadar', 130, 'Jaldia Merine Accade', '4206', NULL, NULL),
(206, 2, 43, 'Chittagong Sadar', 130, 'Middle Patenga', '4222', NULL, NULL),
(207, 2, 43, 'Chittagong Sadar', 130, 'Mohard', '4208', NULL, NULL),
(208, 2, 43, 'Chittagong Sadar', 130, 'North Halishahar', '4226', NULL, NULL),
(209, 2, 43, 'Chittagong Sadar', 130, 'North Katuli', '4217', NULL, NULL),
(210, 2, 43, 'Chittagong Sadar', 130, 'Pahartoli', '4202', NULL, NULL),
(211, 2, 43, 'Chittagong Sadar', 130, 'Patenga', '4204', NULL, NULL),
(212, 2, 43, 'Chittagong Sadar', 130, 'Rampura TSO', '4224', NULL, NULL),
(213, 2, 43, 'Chittagong Sadar', 130, 'Wazedia', '4213', NULL, NULL),
(214, 2, 43, 'East Joara', 130, 'Barma', '4383', NULL, NULL),
(215, 2, 43, 'East Joara', 130, 'Dohazari', '4382', NULL, NULL),
(216, 2, 43, 'East Joara', 130, 'East Joara', '4380', NULL, NULL),
(217, 2, 43, 'East Joara', 130, 'Gachbaria', '4381', NULL, NULL),
(218, 2, 43, 'Fatikchhari', 130, 'Bhandar Sharif', '4352', NULL, NULL),
(219, 2, 43, 'Fatikchhari', 130, 'Fatikchhari', '4350', NULL, NULL),
(220, 2, 43, 'Fatikchhari', 130, 'Harualchhari', '4354', NULL, NULL),
(221, 2, 43, 'Fatikchhari', 130, 'Najirhat', '4353', NULL, NULL),
(222, 2, 43, 'Fatikchhari', 130, 'Nanupur', '4351', NULL, NULL),
(223, 2, 43, 'Fatikchhari', 130, 'Narayanhat', '4355', NULL, NULL),
(224, 2, 43, 'Hathazari', 130, 'Chitt.University', '4331', NULL, NULL),
(225, 2, 43, 'Hathazari', 130, 'Fatahabad', '4335', NULL, NULL),
(226, 2, 43, 'Hathazari', 130, 'Gorduara', '4332', NULL, NULL),
(227, 2, 43, 'Hathazari', 130, 'Hathazari', '4330', NULL, NULL),
(228, 2, 43, 'Hathazari', 130, 'Katirhat', '4333', NULL, NULL),
(229, 2, 43, 'Hathazari', 130, 'Madrasa', '4339', NULL, NULL),
(230, 2, 43, 'Hathazari', 130, 'Mirzapur', '4334', NULL, NULL),
(231, 2, 43, 'Hathazari', 130, 'Nuralibari', '4337', NULL, NULL),
(232, 2, 43, 'Hathazari', 130, 'Yunus Nagar', '4338', NULL, NULL),
(233, 2, 43, 'Jaldi', 130, 'Banigram', '4393', NULL, NULL),
(234, 2, 43, 'Jaldi', 130, 'Gunagari', '4392', NULL, NULL),
(235, 2, 43, 'Jaldi', 130, 'Jaldi', '4390', NULL, NULL),
(236, 2, 43, 'Jaldi', 130, 'Khan Bahadur', '4391', NULL, NULL),
(237, 2, 43, 'Lohagara', 130, 'Chunti', '4398', NULL, NULL),
(238, 2, 43, 'Lohagara', 130, 'Lohagara', '4396', NULL, NULL),
(239, 2, 43, 'Lohagara', 130, 'Padua', '4397', NULL, NULL),
(240, 2, 43, 'Mirsharai', 130, 'Abutorab', '4321', NULL, NULL),
(241, 2, 43, 'Mirsharai', 130, 'Azampur', '4325', NULL, NULL),
(242, 2, 43, 'Mirsharai', 130, 'Bharawazhat', '4323', NULL, NULL),
(243, 2, 43, 'Mirsharai', 130, 'Darrogahat', '4322', NULL, NULL),
(244, 2, 43, 'Mirsharai', 130, 'Joarganj', '4324', NULL, NULL),
(245, 2, 43, 'Mirsharai', 130, 'Korerhat', '4327', NULL, NULL),
(246, 2, 43, 'Mirsharai', 130, 'Mirsharai', '4320', NULL, NULL),
(247, 2, 43, 'Mirsharai', 130, 'Mohazanhat', '4328', NULL, NULL),
(248, 2, 43, 'Patiya', 130, 'Budhpara', '4371', NULL, NULL),
(249, 2, 43, 'Patiya', 130, 'Patiya Head Office', '4370', NULL, NULL),
(250, 2, 43, 'Rangunia', 130, 'Dhamair', '4361', NULL, NULL),
(251, 2, 43, 'Rangunia', 130, 'Rangunia', '4360', NULL, NULL),
(252, 2, 43, 'Rouzan', 130, 'B.I.T Post Office', '4349', NULL, NULL),
(253, 2, 43, 'Rouzan', 130, 'Beenajuri', '4341', NULL, NULL),
(254, 2, 43, 'Rouzan', 130, 'Dewanpur', '4347', NULL, NULL),
(255, 2, 43, 'Rouzan', 130, 'Fatepur', '4345', NULL, NULL),
(256, 2, 43, 'Rouzan', 130, 'Gahira', '4343', NULL, NULL),
(257, 2, 43, 'Rouzan', 130, 'Guzra Noapara', '4346', NULL, NULL),
(258, 2, 43, 'Rouzan', 130, 'jagannath Hat', '4344', NULL, NULL),
(259, 2, 43, 'Rouzan', 130, 'Kundeshwari', '4342', NULL, NULL),
(260, 2, 43, 'Rouzan', 130, 'Mohamuni', '4348', NULL, NULL),
(261, 2, 43, 'Rouzan', 130, 'Rouzan', '4340', NULL, NULL),
(262, 2, 43, 'Sandwip', 130, 'Sandwip', '4300', NULL, NULL),
(263, 2, 43, 'Sandwip', 130, 'Shiberhat', '4301', NULL, NULL),
(264, 2, 43, 'Sandwip', 130, 'Urirchar', '4302', NULL, NULL),
(265, 2, 43, 'Satkania', 130, 'Baitul Ijjat', '4387', NULL, NULL),
(266, 2, 43, 'Satkania', 130, 'Bazalia', '4388', NULL, NULL),
(267, 2, 43, 'Satkania', 130, 'Satkania', '4386', NULL, NULL),
(268, 2, 43, 'Sitakunda', 130, 'Barabkunda', '4312', NULL, NULL),
(269, 2, 43, 'Sitakunda', 130, 'Baroidhala', '4311', NULL, NULL),
(270, 2, 43, 'Sitakunda', 130, 'Bawashbaria', '4313', NULL, NULL),
(271, 2, 43, 'Sitakunda', 130, 'Bhatiari', '4315', NULL, NULL),
(272, 2, 43, 'Sitakunda', 130, 'Fouzdarhat', '4316', NULL, NULL),
(273, 2, 43, 'Sitakunda', 130, 'Jafrabad', '4317', NULL, NULL),
(274, 2, 43, 'Sitakunda', 130, 'Kumira', '4314', NULL, NULL),
(275, 2, 43, 'Sitakunda', 130, 'Sitakunda', '4310', NULL, NULL),
(276, 2, 44, 'Barura', 130, 'Barura', '3560', NULL, NULL),
(277, 2, 44, 'Barura', 130, 'Murdafarganj', '3562', NULL, NULL),
(278, 2, 44, 'Barura', 130, 'Poyalgachha', '3561', NULL, NULL),
(279, 2, 44, 'Brahmanpara', 130, 'Brahmanpara', '3526', NULL, NULL),
(280, 2, 44, 'Burichang', 130, 'Burichang', '3520', NULL, NULL),
(281, 2, 44, 'Burichang', 130, 'Maynamoti bazar', '3521', NULL, NULL),
(282, 2, 44, 'Chandina', 130, 'Chandia', '3510', NULL, NULL),
(283, 2, 44, 'Chandina', 130, 'Madhaiabazar', '3511', NULL, NULL),
(284, 2, 44, 'Chouddagram', 130, 'Batisa', '3551', NULL, NULL),
(285, 2, 44, 'Chouddagram', 130, 'Chiora', '3552', NULL, NULL),
(286, 2, 44, 'Chouddagram', 130, 'Chouddagram', '3550', NULL, NULL),
(287, 2, 44, 'Comilla Sadar', 130, 'Comilla Contoment', '3501', NULL, NULL),
(288, 2, 44, 'Comilla Sadar', 130, 'Comilla Sadar', '3500', NULL, NULL),
(289, 2, 44, 'Comilla Sadar', 130, 'Courtbari', '3503', NULL, NULL),
(290, 2, 44, 'Comilla Sadar', 130, 'Halimanagar', '3502', NULL, NULL),
(291, 2, 44, 'Comilla Sadar', 130, 'Suaganj', '3504', NULL, NULL),
(292, 2, 44, 'Daudkandi', 130, 'Dashpara', '3518', NULL, NULL),
(293, 2, 44, 'Daudkandi', 130, 'Daudkandi', '3516', NULL, NULL),
(294, 2, 44, 'Daudkandi', 130, 'Eliotganj', '3519', NULL, NULL),
(295, 2, 44, 'Daudkandi', 130, 'Gouripur', '3517', NULL, NULL),
(296, 2, 44, 'Davidhar', 130, 'Barashalghar', '3532', NULL, NULL),
(297, 2, 44, 'Davidhar', 130, 'Davidhar', '3530', NULL, NULL),
(298, 2, 44, 'Davidhar', 130, 'Dhamtee', '3533', NULL, NULL),
(299, 2, 44, 'Davidhar', 130, 'Gangamandal', '3531', NULL, NULL),
(300, 2, 44, 'Homna', 130, 'Homna', '3546', NULL, NULL),
(301, 2, 44, 'Laksam', 130, 'Bipulasar', '3572', NULL, NULL),
(302, 2, 44, 'Laksam', 130, 'Laksam', '3570', NULL, NULL),
(303, 2, 44, 'Laksam', 130, 'Lakshamanpur', '3571', NULL, NULL),
(304, 2, 44, 'Langalkot', 130, 'Chhariabazar', '3582', NULL, NULL),
(305, 2, 44, 'Langalkot', 130, 'Dhalua', '3581', NULL, NULL),
(306, 2, 44, 'Langalkot', 130, 'Gunabati', '3583', NULL, NULL),
(307, 2, 44, 'Langalkot', 130, 'Langalkot', '3580', NULL, NULL),
(308, 2, 44, 'Muradnagar', 130, 'Bangra', '3543', NULL, NULL),
(309, 2, 44, 'Muradnagar', 130, 'Companyganj', '3542', NULL, NULL),
(310, 2, 44, 'Muradnagar', 130, 'Muradnagar', '3540', NULL, NULL),
(311, 2, 44, 'Muradnagar', 130, 'Pantibazar', '3545', NULL, NULL),
(312, 2, 44, 'Muradnagar', 130, 'Ramchandarpur', '3541', NULL, NULL),
(313, 2, 44, 'Muradnagar', 130, 'Sonakanda', '3544', NULL, NULL),
(314, 2, 45, 'Chiringga', 130, 'Badarkali', '4742', NULL, NULL),
(315, 2, 45, 'Chiringga', 130, 'Chiringga', '4740', NULL, NULL),
(316, 2, 45, 'Chiringga', 130, 'Chiringga S.O', '4741', NULL, NULL),
(317, 2, 45, 'Chiringga', 130, 'Malumghat', '4743', NULL, NULL),
(318, 2, 45, 'Coxs Bazar Sadar', 130, 'Coxs Bazar Sadar', '4700', NULL, NULL),
(319, 2, 45, 'Coxs Bazar Sadar', 130, 'Eidga', '4702', NULL, NULL),
(320, 2, 45, 'Coxs Bazar Sadar', 130, 'Zhilanja', '4701', NULL, NULL),
(321, 2, 45, 'Gorakghat', 130, 'Gorakghat', '4710', NULL, NULL),
(322, 2, 45, 'Kutubdia', 130, 'Kutubdia', '4720', NULL, NULL),
(323, 2, 45, 'Ramu', 130, 'Ramu', '4730', NULL, NULL),
(324, 2, 45, 'Teknaf', 130, 'Hnila', '4761', NULL, NULL),
(325, 2, 45, 'Teknaf', 130, 'St.Martin', '4762', NULL, NULL),
(326, 2, 45, 'Teknaf', 130, 'Teknaf', '4760', NULL, NULL),
(327, 2, 45, 'Ukhia', 130, 'Ukhia', '4750', NULL, NULL),
(328, 2, 46, 'Chhagalnaia', 130, 'Chhagalnaia', '3910', NULL, NULL),
(329, 2, 46, 'Chhagalnaia', 130, 'Daraga Hat', '3912', NULL, NULL),
(330, 2, 46, 'Chhagalnaia', 130, 'Maharajganj', '3911', NULL, NULL),
(331, 2, 46, 'Chhagalnaia', 130, 'Puabashimulia', '3913', NULL, NULL),
(332, 2, 46, 'Dagonbhuia', 130, 'Chhilonia', '3922', NULL, NULL),
(333, 2, 46, 'Dagonbhuia', 130, 'Dagondhuia', '3920', NULL, NULL),
(334, 2, 46, 'Dagonbhuia', 130, 'Dudmukha', '3921', NULL, NULL),
(335, 2, 46, 'Dagonbhuia', 130, 'Rajapur', '3923', NULL, NULL),
(336, 2, 46, 'Feni Sadar', 130, 'Fazilpur', '3901', NULL, NULL),
(337, 2, 46, 'Feni Sadar', 130, 'Feni Sadar', '3900', NULL, NULL),
(338, 2, 46, 'Feni Sadar', 130, 'Laskarhat', '3903', NULL, NULL),
(339, 2, 46, 'Feni Sadar', 130, 'Sharshadie', '3902', NULL, NULL),
(340, 2, 46, 'Pashurampur', 130, 'Fulgazi', '3942', NULL, NULL),
(341, 2, 46, 'Pashurampur', 130, 'Munshirhat', '3943', NULL, NULL),
(342, 2, 46, 'Pashurampur', 130, 'Pashurampur', '3940', NULL, NULL),
(343, 2, 46, 'Pashurampur', 130, 'Shuarbazar', '3941', NULL, NULL),
(344, 2, 46, 'Sonagazi', 130, 'Ahmadpur', '3932', NULL, NULL),
(345, 2, 46, 'Sonagazi', 130, 'Kazirhat', '3933', NULL, NULL),
(346, 2, 46, 'Sonagazi', 130, 'Motiganj', '3931', NULL, NULL),
(347, 2, 46, 'Sonagazi', 130, 'Sonagazi', '3930', NULL, NULL),
(348, 2, 47, 'Diginala', 130, 'Diginala', '4420', NULL, NULL),
(349, 2, 47, 'Khagrachari Sadar', 130, 'Khagrachari Sadar', '4400', NULL, NULL),
(350, 2, 47, 'Laxmichhari', 130, 'Laxmichhari', '4470', NULL, NULL),
(351, 2, 47, 'Mahalchhari', 130, 'Mahalchhari', '4430', NULL, NULL),
(352, 2, 47, 'Manikchhari', 130, 'Manikchhari', '4460', NULL, NULL),
(353, 2, 47, 'Matiranga', 130, 'Matiranga', '4450', NULL, NULL),
(354, 2, 47, 'Panchhari', 130, 'Panchhari', '4410', NULL, NULL),
(355, 2, 47, 'Ramghar Head Office', 130, 'Ramghar Head Office', '4440', NULL, NULL),
(356, 2, 48, 'Char Alexgander', 130, 'Char Alexgander', '3730', NULL, NULL),
(357, 2, 48, 'Char Alexgander', 130, 'Hajirghat', '3731', NULL, NULL),
(358, 2, 48, 'Char Alexgander', 130, 'Ramgatirhat', '3732', NULL, NULL),
(359, 2, 48, 'Lakshimpur Sadar', 130, 'Amani Lakshimpur', '3709', NULL, NULL),
(360, 2, 48, 'Lakshimpur Sadar', 130, 'Bhabaniganj', '3702', NULL, NULL),
(361, 2, 48, 'Lakshimpur Sadar', 130, 'Chandraganj', '3708', NULL, NULL),
(362, 2, 48, 'Lakshimpur Sadar', 130, 'Choupalli', '3707', NULL, NULL),
(363, 2, 48, 'Lakshimpur Sadar', 130, 'Dalal Bazar', '3701', NULL, NULL),
(364, 2, 48, 'Lakshimpur Sadar', 130, 'Duttapara', '3706', NULL, NULL),
(365, 2, 48, 'Lakshimpur Sadar', 130, 'Keramatganj', '3704', NULL, NULL),
(366, 2, 48, 'Lakshimpur Sadar', 130, 'Lakshimpur Sadar', '3700', NULL, NULL),
(367, 2, 48, 'Lakshimpur Sadar', 130, 'Mandari', '3703', NULL, NULL),
(368, 2, 48, 'Lakshimpur Sadar', 130, 'Rupchara', '3705', NULL, NULL),
(369, 2, 48, 'Ramganj', 130, 'Alipur', '3721', NULL, NULL),
(370, 2, 48, 'Ramganj', 130, 'Dolta', '3725', NULL, NULL),
(371, 2, 48, 'Ramganj', 130, 'Kanchanpur', '3723', NULL, NULL),
(372, 2, 48, 'Ramganj', 130, 'Naagmud', '3724', NULL, NULL),
(373, 2, 48, 'Ramganj', 130, 'Panpara', '3722', NULL, NULL),
(374, 2, 48, 'Ramganj', 130, 'Ramganj', '3720', NULL, NULL),
(375, 2, 48, 'Raypur', 130, 'Bhuabari', '3714', NULL, NULL),
(376, 2, 48, 'Raypur', 130, 'Haydarganj', '3713', NULL, NULL),
(377, 2, 48, 'Raypur', 130, 'Nagerdighirpar', '3712', NULL, NULL),
(378, 2, 48, 'Raypur', 130, 'Rakhallia', '3711', NULL, NULL),
(379, 2, 48, 'Raypur', 130, 'Raypur', '3710', NULL, NULL),
(380, 2, 49, 'Basurhat', 130, 'Basur Hat', '3850', NULL, NULL),
(381, 2, 49, 'Basurhat', 130, 'Charhajari', '3851', NULL, NULL),
(382, 2, 49, 'Begumganj', 130, 'Alaiarpur', '3831', NULL, NULL),
(383, 2, 49, 'Begumganj', 130, 'Amisha Para', '3847', NULL, NULL),
(384, 2, 49, 'Begumganj', 130, 'Banglabazar', '3822', NULL, NULL),
(385, 2, 49, 'Begumganj', 130, 'Bazra', '3824', NULL, NULL),
(386, 2, 49, 'Begumganj', 130, 'Begumganj', '3820', NULL, NULL),
(387, 2, 49, 'Begumganj', 130, 'Bhabani Jibanpur', '3837', NULL, NULL),
(388, 2, 49, 'Begumganj', 130, 'Choumohani', '3821', NULL, NULL),
(389, 2, 49, 'Begumganj', 130, 'Dauti', '3843', NULL, NULL),
(390, 2, 49, 'Begumganj', 130, 'Durgapur', '3848', NULL, NULL),
(391, 2, 49, 'Begumganj', 130, 'Gopalpur', '3828', NULL, NULL),
(392, 2, 49, 'Begumganj', 130, 'Jamidar Hat', '3825', NULL, NULL),
(393, 2, 49, 'Begumganj', 130, 'Joyag', '3844', NULL, NULL),
(394, 2, 49, 'Begumganj', 130, 'Joynarayanpur', '3829', NULL, NULL),
(395, 2, 49, 'Begumganj', 130, 'Khalafat Bazar', '3833', NULL, NULL),
(396, 2, 49, 'Begumganj', 130, 'Khalishpur', '3842', NULL, NULL),
(397, 2, 49, 'Begumganj', 130, 'Maheshganj', '3838', NULL, NULL),
(398, 2, 49, 'Begumganj', 130, 'Mir Owarishpur', '3823', NULL, NULL),
(399, 2, 49, 'Begumganj', 130, 'Nadona', '3839', NULL, NULL),
(400, 2, 49, 'Begumganj', 130, 'Nandiapara', '3841', NULL, NULL),
(401, 2, 49, 'Begumganj', 130, 'Oachhekpur', '3835', NULL, NULL),
(402, 2, 49, 'Begumganj', 130, 'Rajganj', '3834', NULL, NULL),
(403, 2, 49, 'Begumganj', 130, 'Sonaimuri', '3827', NULL, NULL),
(404, 2, 49, 'Begumganj', 130, 'Tangirpar', '3832', NULL, NULL),
(405, 2, 49, 'Begumganj', 130, 'Thanar Hat', '3845', NULL, NULL),
(406, 2, 49, 'Chatkhil', 130, 'Bansa Bazar', '3879', NULL, NULL),
(407, 2, 49, 'Chatkhil', 130, 'Bodalcourt', '3873', NULL, NULL),
(408, 2, 49, 'Chatkhil', 130, 'Chatkhil', '3870', NULL, NULL),
(409, 2, 49, 'Chatkhil', 130, 'Dosh Gharia', '3878', NULL, NULL),
(410, 2, 49, 'Chatkhil', 130, 'Karihati', '3877', NULL, NULL),
(411, 2, 49, 'Chatkhil', 130, 'Khilpara', '3872', NULL, NULL),
(412, 2, 49, 'Chatkhil', 130, 'Palla', '3871', NULL, NULL),
(413, 2, 49, 'Chatkhil', 130, 'Rezzakpur', '3874', NULL, NULL),
(414, 2, 49, 'Chatkhil', 130, 'Sahapur', '3881', NULL, NULL),
(415, 2, 49, 'Chatkhil', 130, 'Sampara', '3882', NULL, NULL),
(416, 2, 49, 'Chatkhil', 130, 'Shingbahura', '3883', NULL, NULL),
(417, 2, 49, 'Chatkhil', 130, 'Solla', '3875', NULL, NULL),
(418, 2, 49, 'Hatiya', 130, 'Afazia', '3891', NULL, NULL),
(419, 2, 49, 'Hatiya', 130, 'Hatiya', '3890', NULL, NULL),
(420, 2, 49, 'Hatiya', 130, 'Tamoraddi', '3892', NULL, NULL),
(421, 2, 49, 'Noakhali Sadar', 130, 'Chaprashir Hat', '3811', NULL, NULL),
(422, 2, 49, 'Noakhali Sadar', 130, 'Char Jabbar', '3812', NULL, NULL),
(423, 2, 49, 'Noakhali Sadar', 130, 'Charam Tua', '3809', NULL, NULL),
(424, 2, 49, 'Noakhali Sadar', 130, 'Din Monir Hat', '3803', NULL, NULL),
(425, 2, 49, 'Noakhali Sadar', 130, 'Kabirhat', '3807', NULL, NULL),
(426, 2, 49, 'Noakhali Sadar', 130, 'Khalifar Hat', '3808', NULL, NULL),
(427, 2, 49, 'Noakhali Sadar', 130, 'Mriddarhat', '3806', NULL, NULL),
(428, 2, 49, 'Noakhali Sadar', 130, 'Noakhali College', '3801', NULL, NULL),
(429, 2, 49, 'Noakhali Sadar', 130, 'Noakhali Sadar', '3800', NULL, NULL),
(430, 2, 49, 'Noakhali Sadar', 130, 'Pak Kishoreganj', '3804', NULL, NULL),
(431, 2, 49, 'Noakhali Sadar', 130, 'Sonapur', '3802', NULL, NULL),
(432, 2, 49, 'Senbag', 130, 'Beezbag', '3862', NULL, NULL),
(433, 2, 49, 'Senbag', 130, 'Chatarpaia', '3864', NULL, NULL),
(434, 2, 49, 'Senbag', 130, 'Kallyandi', '3861', NULL, NULL),
(435, 2, 49, 'Senbag', 130, 'Kankirhat', '3863', NULL, NULL),
(436, 2, 49, 'Senbag', 130, 'Senbag', '3860', NULL, NULL),
(437, 2, 49, 'Senbag', 130, 'T.P. Lamua', '3865', NULL, NULL),
(438, 2, 50, 'Barakal', 130, 'Barakal', '4570', NULL, NULL),
(439, 2, 50, 'Bilaichhari', 130, 'Bilaichhari', '4550', NULL, NULL),
(440, 2, 50, 'Jarachhari', 130, 'Jarachhari', '4560', NULL, NULL),
(441, 2, 50, 'Kalampati', 130, 'Betbunia', '4511', NULL, NULL),
(442, 2, 50, 'Kalampati', 130, 'Kalampati', '4510', NULL, NULL),
(443, 2, 50, 'kaptai', 130, 'Chandraghona', '4531', NULL, NULL),
(444, 2, 50, 'kaptai', 130, 'Kaptai', '4530', NULL, NULL),
(445, 2, 50, 'kaptai', 130, 'Kaptai Nuton Bazar', '4533', NULL, NULL),
(446, 2, 50, 'kaptai', 130, 'Kaptai Project', '4532', NULL, NULL),
(447, 2, 50, 'Longachh', 130, 'Longachh', '4580', NULL, NULL),
(448, 2, 50, 'Marishya', 130, 'Marishya', '4590', NULL, NULL),
(449, 2, 50, 'Naniachhar', 130, 'Nanichhar', '4520', NULL, NULL),
(450, 2, 50, 'Rajsthali', 130, 'Rajsthali', '4540', NULL, NULL),
(451, 2, 50, 'Rangamati Sadar', 130, 'Rangamati Sadar', '4500', NULL, NULL),
(452, 3, 1, 'Demra', 80, 'Demra', '1360', NULL, '2024-01-29 05:15:04'),
(453, 3, 1, 'Demra', 80, 'Matuail', '1362', NULL, '2024-01-29 05:15:04'),
(454, 3, 1, 'Demra', 80, 'Sarulia', '1361', NULL, '2024-01-29 05:15:04'),
(455, 3, 1, 'Dhaka Cantt.', 80, 'Dhaka CantonmentTSO', '1206', NULL, '2024-01-29 05:14:48'),
(456, 3, 1, 'Dhamrai', 80, 'Dhamrai', '1350', NULL, NULL),
(457, 3, 1, 'Dhamrai', 80, 'Kamalpur', '1351', NULL, NULL),
(458, 3, 1, 'Dhanmondi', 80, 'Jigatala TSO', '1209', NULL, NULL),
(459, 3, 1, 'Gulshan', 80, 'Banani TSO', '1213', NULL, NULL),
(460, 3, 1, 'Gulshan', 80, 'Gulshan Model Town', '1212', NULL, NULL),
(461, 3, 1, 'Jatrabari', 80, 'Dhania TSO', '1232', NULL, NULL),
(462, 3, 1, 'Joypara', 80, 'Joypara', '1330', NULL, NULL),
(463, 3, 1, 'Joypara', 80, 'Narisha', '1332', NULL, NULL),
(464, 3, 1, 'Joypara', 80, 'Palamganj', '1331', NULL, NULL),
(465, 3, 1, 'Keraniganj', 80, 'Ati', '1312', NULL, NULL),
(466, 3, 1, 'Keraniganj', 80, 'Dhaka Jute Mills', '1311', NULL, NULL),
(467, 3, 1, 'Keraniganj', 80, 'Kalatia', '1313', NULL, NULL),
(468, 3, 1, 'Keraniganj', 80, 'Keraniganj', '1310', NULL, NULL),
(469, 3, 1, 'Khilgaon', 80, 'KhilgaonTSO', '1219', NULL, '2024-01-30 01:24:24'),
(470, 3, 1, 'Khilkhet', 80, 'KhilkhetTSO', '1229', NULL, NULL),
(471, 3, 1, 'Lalbag', 80, 'Posta TSO', '1211', NULL, NULL),
(472, 3, 1, 'Mirpur', 80, 'Mirpur TSO', '1216', NULL, NULL),
(473, 3, 1, 'Mohammadpur', 80, 'Mohammadpur Housing', '1207', NULL, NULL),
(474, 3, 1, 'Mohammadpur', 80, 'Sangsad BhabanTSO', '1225', NULL, NULL),
(475, 3, 1, 'Motijheel', 80, 'BangabhabanTSO', '1222', NULL, NULL),
(476, 3, 1, 'Motijheel', 80, 'DilkushaTSO', '1223', NULL, NULL),
(477, 3, 1, 'Nawabganj', 80, 'Agla', '1323', NULL, NULL),
(478, 3, 1, 'Nawabganj', 80, 'Churain', '1325', NULL, NULL),
(479, 3, 1, 'Nawabganj', 80, 'Daudpur', '1322', NULL, NULL),
(480, 3, 1, 'Nawabganj', 80, 'Hasnabad', '1321', NULL, NULL),
(481, 3, 1, 'Nawabganj', 80, 'Khalpar', '1324', NULL, NULL),
(482, 3, 1, 'Nawabganj', 80, 'Nawabganj', '1320', NULL, NULL),
(483, 3, 1, 'New market', 80, 'New Market TSO', '1205', NULL, NULL),
(484, 3, 1, 'Palton', 80, 'Dhaka GPO', '1000', NULL, NULL),
(485, 3, 1, 'Ramna', 80, 'Shantinagr TSO', '1217', NULL, NULL),
(486, 3, 1, 'Sabujbag', 80, 'Basabo TSO', '1214', NULL, NULL),
(487, 3, 1, 'Savar', 80, 'Amin Bazar', '1348', NULL, NULL),
(488, 3, 1, 'Savar', 80, 'Dairy Farm', '1341', NULL, NULL),
(489, 3, 1, 'Savar', 80, 'EPZ', '1349', NULL, NULL),
(490, 3, 1, 'Savar', 80, 'Jahangirnagar Univer', '1342', NULL, NULL),
(491, 3, 1, 'Savar', 80, 'Kashem Cotton Mills', '1346', NULL, NULL),
(492, 3, 1, 'Savar', 80, 'Rajphulbaria', '1347', NULL, NULL),
(493, 3, 1, 'Savar', 80, 'Savar', '1340', NULL, NULL),
(494, 3, 1, 'Savar', 80, 'Savar Canttonment', '1344', NULL, NULL),
(495, 3, 1, 'Savar', 80, 'Saver P.A.T.C', '1343', NULL, NULL),
(496, 3, 1, 'Savar', 80, 'Shimulia', '1345', NULL, NULL),
(497, 3, 1, 'Sutrapur', 80, 'Dhaka Sadar HO', '1100', NULL, NULL),
(498, 3, 1, 'Sutrapur', 80, 'Gendaria TSO', '1204', NULL, NULL),
(499, 3, 1, 'Sutrapur', 80, 'Wari TSO', '1203', NULL, NULL),
(500, 3, 1, 'Tejgaon', 80, 'Tejgaon TSO', '1215', NULL, NULL),
(501, 3, 1, 'Tejgaon Industrial Area', 80, 'Dhaka Politechnic', '1208', NULL, NULL),
(502, 3, 1, 'Uttara', 80, 'Uttara Model TwonTSO', '1230', NULL, NULL),
(503, 3, 2, 'Alfadanga', 20, 'Alfadanga', '7870', NULL, '2024-01-30 00:09:24'),
(504, 3, 2, 'Bhanga', 130, 'Bhanga', '7830', NULL, NULL),
(505, 3, 2, 'Boalmari', 130, 'Boalmari', '7860', NULL, NULL),
(506, 3, 2, 'Boalmari', 130, 'Rupatpat', '7861', NULL, NULL),
(507, 3, 2, 'Charbhadrasan', 130, 'Charbadrashan', '7810', NULL, NULL),
(508, 3, 2, 'Faridpur Sadar', 130, 'Ambikapur', '7802', NULL, NULL),
(509, 3, 2, 'Faridpur Sadar', 130, 'Baitulaman Politecni', '7803', NULL, NULL),
(510, 3, 2, 'Faridpur Sadar', 130, 'Faridpursadar', '7800', NULL, NULL),
(511, 3, 2, 'Faridpur Sadar', 130, 'Kanaipur', '7801', NULL, NULL),
(512, 3, 2, 'Madukhali', 130, 'Kamarkali', '7851', NULL, NULL),
(513, 3, 2, 'Madukhali', 130, 'Madukhali', '7850', NULL, NULL),
(514, 3, 2, 'Nagarkanda', 130, 'Nagarkanda', '7840', NULL, NULL),
(515, 3, 2, 'Nagarkanda', 130, 'Talma', '7841', NULL, NULL),
(516, 3, 2, 'Sadarpur', 130, 'Bishwa jaker Manjil', '7822', NULL, NULL),
(517, 3, 2, 'Sadarpur', 130, 'Hat Krishapur', '7821', NULL, NULL),
(518, 3, 2, 'Sadarpur', 130, 'Sadarpur', '7820', NULL, NULL),
(519, 3, 2, 'Shriangan', 130, 'Shriangan', '7804', NULL, NULL),
(520, 3, 3, 'Gazipur Sadar', 130, 'B.O.F', '1703', NULL, NULL),
(521, 3, 3, 'Gazipur Sadar', 130, 'B.R.R', '1701', NULL, NULL),
(522, 3, 3, 'Gazipur Sadar', 130, 'Chandna', '1702', NULL, NULL),
(523, 3, 3, 'Gazipur Sadar', 130, 'Gazipur Sadar', '1700', NULL, NULL),
(524, 3, 3, 'Gazipur Sadar', 130, 'National University', '1704', NULL, NULL),
(525, 3, 3, 'Kaliakaar', 60, 'Kaliakaar', '1750', NULL, '2024-01-30 01:40:13'),
(526, 3, 3, 'Kaliakaar', 60, 'Safipur', '1751', NULL, '2024-01-30 01:40:13'),
(527, 3, 3, 'Kaliganj', 130, 'Kaliganj', '1720', NULL, NULL),
(528, 3, 3, 'Kaliganj', 130, 'Pubail', '1721', NULL, NULL),
(529, 3, 3, 'Kaliganj', 130, 'Santanpara', '1722', NULL, NULL),
(530, 3, 3, 'Kaliganj', 130, 'Vaoal Jamalpur', '1723', NULL, NULL),
(531, 3, 3, 'Kapashia', 130, 'kapashia', '1730', NULL, NULL),
(532, 3, 3, 'Monnunagar', 130, 'Ershad Nagar', '1712', NULL, NULL),
(533, 3, 3, 'Monnunagar', 130, 'Monnunagar', '1710', NULL, NULL),
(534, 3, 3, 'Monnunagar', 130, 'Nishat Nagar', '1711', NULL, NULL),
(535, 3, 3, 'Sreepur', 130, 'Barmi', '1743', NULL, NULL),
(536, 3, 3, 'Sreepur', 130, 'Bashamur', '1747', NULL, NULL),
(537, 3, 3, 'Sreepur', 130, 'Boubi', '1748', NULL, NULL),
(538, 3, 3, 'Sreepur', 130, 'Kawraid', '1745', NULL, NULL),
(539, 3, 3, 'Sreepur', 130, 'Satkhamair', '1744', NULL, NULL),
(540, 3, 3, 'Sreepur', 130, 'Sreepur', '1740', NULL, NULL),
(541, 3, 3, 'Sripur', 130, 'Rajendrapur', '1741', NULL, NULL),
(542, 3, 3, 'Sripur', 130, 'Rajendrapur Canttome', '1742', NULL, NULL),
(543, 3, 4, 'Gopalganj Sadar', 130, 'Barfa', '8102', NULL, NULL),
(544, 3, 4, 'Gopalganj Sadar', 130, 'Chandradighalia', '8013', NULL, NULL),
(545, 3, 4, 'Gopalganj Sadar', 130, 'Gopalganj Sadar', '8100', NULL, NULL),
(546, 3, 4, 'Gopalganj Sadar', 130, 'Ulpur', '8101', NULL, NULL),
(547, 3, 4, 'Kashiani', 130, 'Jonapur', '8133', NULL, NULL),
(548, 3, 4, 'Kashiani', 130, 'Kashiani', '8130', NULL, NULL),
(549, 3, 4, 'Kashiani', 130, 'Ramdia College', '8131', NULL, NULL),
(550, 3, 4, 'Kashiani', 130, 'Ratoil', '8132', NULL, NULL),
(551, 3, 4, 'Kotalipara', 130, 'Kotalipara', '8110', NULL, NULL),
(552, 3, 4, 'Maksudpur', 130, 'Batkiamari', '8141', NULL, NULL),
(553, 3, 4, 'Maksudpur', 130, 'Khandarpara', '8142', NULL, NULL),
(554, 3, 4, 'Maksudpur', 130, 'Maksudpur', '8140', NULL, NULL),
(555, 3, 4, 'Tungipara', 130, 'Patgati', '8121', NULL, NULL),
(556, 3, 4, 'Tungipara', 130, 'Tungipara', '8120', NULL, NULL),
(557, 3, 5, 'Dewangonj', 130, 'Dewangonj', '2030', NULL, NULL),
(558, 3, 5, 'Dewangonj', 130, 'Dewangonj S. Mills', '2031', NULL, NULL),
(559, 3, 5, 'Islampur', 130, 'Durmoot', '2021', NULL, NULL),
(560, 3, 5, 'Islampur', 130, 'Gilabari', '2022', NULL, NULL),
(561, 3, 5, 'Islampur', 130, 'Islampur', '2020', NULL, NULL),
(562, 3, 5, 'Jamalpur', 130, 'Jamalpur', '2000', NULL, NULL),
(563, 3, 5, 'Jamalpur', 130, 'Nandina', '2001', NULL, NULL),
(564, 3, 5, 'Jamalpur', 130, 'Narundi', '2002', NULL, NULL),
(565, 3, 5, 'Malandah', 130, 'Jamalpur', '2011', NULL, NULL),
(566, 3, 5, 'Malandah', 130, 'Mahmoodpur', '2013', NULL, NULL),
(567, 3, 5, 'Malandah', 130, 'Malancha', '2012', NULL, NULL),
(568, 3, 5, 'Malandah', 130, 'Malandah', '2010', NULL, NULL),
(569, 3, 5, 'Mathargonj', 130, 'Balijhuri', '2041', NULL, NULL),
(570, 3, 5, 'Mathargonj', 130, 'Mathargonj', '2040', NULL, NULL),
(571, 3, 5, 'Shorishabari', 130, 'Bausee', '2052', NULL, NULL),
(572, 3, 5, 'Shorishabari', 130, 'Gunerbari', '2051', NULL, NULL),
(573, 3, 5, 'Shorishabari', 130, 'Jagannath Ghat', '2053', NULL, NULL),
(574, 3, 5, 'Shorishabari', 130, 'Jamuna Sar Karkhana', '2055', NULL, NULL),
(575, 3, 5, 'Shorishabari', 130, 'Pingna', '2054', NULL, NULL),
(576, 3, 5, 'Shorishabari', 130, 'Shorishabari', '2050', NULL, NULL),
(577, 3, 6, 'Bajitpur', 130, 'Bajitpur', '2336', NULL, NULL),
(578, 3, 6, 'Bajitpur', 130, 'Laksmipur', '2338', NULL, NULL),
(579, 3, 6, 'Bajitpur', 130, 'Sararchar', '2337', NULL, NULL),
(580, 3, 6, 'Bhairob', 130, 'Bhairab', '2350', NULL, NULL),
(581, 3, 6, 'Hossenpur', 130, 'Hossenpur', '2320', NULL, NULL),
(582, 3, 6, 'Itna', 130, 'Itna', '2390', NULL, NULL),
(583, 3, 6, 'Karimganj', 130, 'Karimganj', '2310', NULL, NULL),
(584, 3, 6, 'Katiadi', 130, 'Gochhihata', '2331', NULL, NULL),
(585, 3, 6, 'Katiadi', 130, 'Katiadi', '2330', NULL, NULL),
(586, 3, 6, 'Kishoreganj Sadar', 130, 'Kishoreganj S.Mills', '2301', NULL, NULL),
(587, 3, 6, 'Kishoreganj Sadar', 130, 'Kishoreganj Sadar', '2300', NULL, NULL),
(588, 3, 6, 'Kishoreganj Sadar', 130, 'Maizhati', '2302', NULL, NULL),
(589, 3, 6, 'Kishoreganj Sadar', 130, 'Nilganj', '2303', NULL, NULL),
(590, 3, 6, 'Kuliarchar', 130, 'Chhoysuti', '2341', NULL, NULL),
(591, 3, 6, 'Kuliarchar', 130, 'Kuliarchar', '2340', NULL, NULL),
(592, 3, 6, 'Mithamoin', 130, 'Abdullahpur', '2371', NULL, NULL),
(593, 3, 6, 'Mithamoin', 130, 'MIthamoin', '2370', NULL, NULL),
(594, 3, 6, 'Nikli', 130, 'Nikli', '2360', NULL, NULL),
(595, 3, 6, 'Ostagram', 130, 'Ostagram', '2380', NULL, NULL),
(596, 3, 6, 'Pakundia', 130, 'Pakundia', '2326', NULL, NULL),
(597, 3, 6, 'Tarial', 130, 'Tarial', '2316', NULL, NULL),
(598, 3, 7, 'Barhamganj', 130, 'Bahadurpur', '7932', NULL, NULL),
(599, 3, 7, 'Barhamganj', 130, 'Barhamganj', '7930', NULL, NULL),
(600, 3, 7, 'Barhamganj', 130, 'Nilaksmibandar', '7931', NULL, NULL),
(601, 3, 7, 'Barhamganj', 130, 'Umedpur', '7933', NULL, NULL),
(602, 3, 7, 'kalkini', 130, 'Kalkini', '7920', NULL, NULL),
(603, 3, 7, 'kalkini', 130, 'Sahabrampur', '7921', NULL, NULL),
(604, 3, 7, 'Madaripur Sadar', 130, 'Charmugria', '7901', NULL, NULL),
(605, 3, 7, 'Madaripur Sadar', 130, 'Habiganj', '7903', NULL, NULL),
(606, 3, 7, 'Madaripur Sadar', 130, 'Kulpaddi', '7902', NULL, NULL),
(607, 3, 7, 'Madaripur Sadar', 130, 'Madaripur Sadar', '7900', NULL, NULL),
(608, 3, 7, 'Madaripur Sadar', 130, 'Mustafapur', '7904', NULL, NULL),
(609, 3, 7, 'Rajoir', 130, 'Khalia', '7911', NULL, NULL),
(610, 3, 7, 'Rajoir', 130, 'Rajoir', '7910', NULL, NULL),
(611, 3, 8, 'Doulatpur', 130, 'Doulatpur', '1860', NULL, NULL),
(612, 3, 8, 'Gheor', 130, 'Gheor', '1840', NULL, NULL),
(613, 3, 8, 'Lechhraganj', 130, 'Jhitka', '1831', NULL, NULL),
(614, 3, 8, 'Lechhraganj', 130, 'Lechhraganj', '1830', NULL, NULL),
(615, 3, 8, 'Manikganj Sadar', 130, 'Barangail', '1804', NULL, NULL),
(616, 3, 8, 'Manikganj Sadar', 130, 'Gorpara', '1802', NULL, NULL),
(617, 3, 8, 'Manikganj Sadar', 130, 'Mahadebpur', '1803', NULL, NULL),
(618, 3, 8, 'Manikganj Sadar', 130, 'Manikganj Bazar', '1801', NULL, NULL),
(619, 3, 8, 'Manikganj Sadar', 130, 'Manikganj Sadar', '1800', NULL, NULL),
(620, 3, 8, 'Saturia', 130, 'Baliati', '1811', NULL, NULL),
(621, 3, 8, 'Saturia', 130, 'Saturia', '1810', NULL, NULL),
(622, 3, 8, 'Shibloya', 130, 'Aricha', '1851', NULL, NULL),
(623, 3, 8, 'Shibloya', 130, 'Shibaloy', '1850', NULL, NULL),
(624, 3, 8, 'Shibloya', 130, 'Tewta', '1852', NULL, NULL),
(625, 3, 8, 'Shibloya', 130, 'Uthli', '1853', NULL, NULL),
(626, 3, 8, 'Singari', 130, 'Baira', '1821', NULL, NULL),
(627, 3, 8, 'Singari', 130, 'joymantop', '1822', NULL, NULL),
(628, 3, 8, 'Singari', 130, 'Singair', '1820', NULL, NULL),
(629, 3, 9, 'Gajaria', 130, 'Gajaria', '1510', NULL, NULL),
(630, 3, 9, 'Gajaria', 130, 'Hossendi', '1511', NULL, NULL),
(631, 3, 9, 'Gajaria', 130, 'Rasulpur', '1512', NULL, NULL),
(632, 3, 9, 'Lohajong', 130, 'Gouragonj', '1334', NULL, NULL),
(633, 3, 9, 'Lohajong', 130, 'Gouragonj', '1534', NULL, NULL),
(634, 3, 9, 'Lohajong', 130, 'Haldia SO', '1532', NULL, NULL),
(635, 3, 9, 'Lohajong', 130, 'Haridia', '1333', NULL, NULL),
(636, 3, 9, 'Lohajong', 130, 'Haridia DESO', '1533', NULL, NULL),
(637, 3, 9, 'Lohajong', 130, 'Korhati', '1531', NULL, NULL),
(638, 3, 9, 'Lohajong', 130, 'Lohajang', '1530', NULL, NULL),
(639, 3, 9, 'Lohajong', 130, 'Madini Mandal', '1335', NULL, NULL),
(640, 3, 9, 'Lohajong', 130, 'Medini Mandal EDSO', '1535', NULL, NULL),
(641, 3, 9, 'Munshiganj Sadar', 130, 'Kathakhali', '1503', NULL, NULL),
(642, 3, 9, 'Munshiganj Sadar', 130, 'Mirkadim', '1502', NULL, NULL),
(643, 3, 9, 'Munshiganj Sadar', 130, 'Munshiganj Sadar', '1500', NULL, NULL),
(644, 3, 9, 'Munshiganj Sadar', 130, 'Rikabibazar', '1501', NULL, NULL),
(645, 3, 9, 'Sirajdikhan', 130, 'Ichapur', '1542', NULL, NULL),
(646, 3, 9, 'Sirajdikhan', 130, 'Kola', '1541', NULL, NULL),
(647, 3, 9, 'Sirajdikhan', 130, 'Malkha Nagar', '1543', NULL, NULL),
(648, 3, 9, 'Sirajdikhan', 130, 'Shekher Nagar', '1544', NULL, NULL),
(649, 3, 9, 'Sirajdikhan', 130, 'Sirajdikhan', '1540', NULL, NULL),
(650, 3, 9, 'Srinagar', 130, 'Baghra', '1557', NULL, NULL),
(651, 3, 9, 'Srinagar', 130, 'Barikhal', '1551', NULL, NULL),
(652, 3, 9, 'Srinagar', 130, 'Bhaggyakul', '1558', NULL, NULL),
(653, 3, 9, 'Srinagar', 130, 'Hashara', '1553', NULL, NULL),
(654, 3, 9, 'Srinagar', 130, 'Kolapara', '1554', NULL, NULL),
(655, 3, 9, 'Srinagar', 130, 'Kumarbhog', '1555', NULL, NULL),
(656, 3, 9, 'Srinagar', 130, 'Mazpara', '1552', NULL, NULL),
(657, 3, 9, 'Srinagar', 130, 'Srinagar', '1550', NULL, NULL),
(658, 3, 9, 'Srinagar', 130, 'Vaggyakul SO', '1556', NULL, NULL),
(659, 3, 9, 'Tangibari', 130, 'Bajrajugini', '1523', NULL, NULL),
(660, 3, 9, 'Tangibari', 130, 'Baligao', '1522', NULL, NULL),
(661, 3, 9, 'Tangibari', 130, 'Betkahat', '1521', NULL, NULL),
(662, 3, 9, 'Tangibari', 130, 'Dighirpar', '1525', NULL, NULL),
(663, 3, 9, 'Tangibari', 130, 'Hasail', '1524', NULL, NULL),
(664, 3, 9, 'Tangibari', 130, 'Pura', '1527', NULL, NULL),
(665, 3, 9, 'Tangibari', 130, 'Pura EDSO', '1526', NULL, NULL),
(666, 3, 9, 'Tangibari', 130, 'Tangibari', '1520', NULL, NULL),
(667, 3, 10, 'Bhaluka', 130, 'Bhaluka', '2240', NULL, NULL),
(668, 3, 10, 'Fulbaria', 130, 'Fulbaria', '2216', NULL, NULL),
(669, 3, 10, 'Gaforgaon', 130, 'Duttarbazar', '2234', NULL, NULL),
(670, 3, 10, 'Gaforgaon', 130, 'Gaforgaon', '2230', NULL, NULL),
(671, 3, 10, 'Gaforgaon', 130, 'Kandipara', '2233', NULL, NULL),
(672, 3, 10, 'Gaforgaon', 130, 'Shibganj', '2231', NULL, NULL),
(673, 3, 10, 'Gaforgaon', 130, 'Usti', '2232', NULL, NULL),
(674, 3, 10, 'Gouripur', 130, 'Gouripur', '2270', NULL, NULL),
(675, 3, 10, 'Gouripur', 130, 'Ramgopalpur', '2271', NULL, NULL),
(676, 3, 10, 'Haluaghat', 130, 'Dhara', '2261', NULL, NULL),
(677, 3, 10, 'Haluaghat', 130, 'Haluaghat', '2260', NULL, NULL),
(678, 3, 10, 'Haluaghat', 130, 'Munshirhat', '2262', NULL, NULL),
(679, 3, 10, 'Isshwargonj', 130, 'Atharabari', '2282', NULL, NULL),
(680, 3, 10, 'Isshwargonj', 130, 'Isshwargonj', '2280', NULL, NULL),
(681, 3, 10, 'Isshwargonj', 130, 'Sohagi', '2281', NULL, NULL),
(682, 3, 10, 'Muktagachha', 130, 'Muktagachha', '2210', NULL, NULL),
(683, 3, 10, 'Mymensingh Sadar', 130, 'Agriculture Universi', '2202', NULL, NULL),
(684, 3, 10, 'Mymensingh Sadar', 130, 'Biddyaganj', '2204', NULL, NULL),
(685, 3, 10, 'Mymensingh Sadar', 130, 'Kawatkhali', '2201', NULL, NULL),
(686, 3, 10, 'Mymensingh Sadar', 130, 'Mymensingh Sadar', '2200', NULL, NULL),
(687, 3, 10, 'Mymensingh Sadar', 130, 'Pearpur', '2205', NULL, NULL),
(688, 3, 10, 'Mymensingh Sadar', 130, 'Shombhuganj', '2203', NULL, NULL),
(689, 3, 10, 'Nandail', 130, 'Gangail', '2291', NULL, NULL),
(690, 3, 10, 'Nandail', 130, 'Nandail', '2290', NULL, NULL),
(691, 3, 10, 'Phulpur', 130, 'Beltia', '2251', NULL, NULL),
(692, 3, 10, 'Phulpur', 130, 'Phulpur', '2250', NULL, NULL),
(693, 3, 10, 'Phulpur', 130, 'Tarakanda', '2252', NULL, NULL),
(694, 3, 10, 'Trishal', 130, 'Ahmadbad', '2221', NULL, NULL),
(695, 3, 10, 'Trishal', 130, 'Dhala', '2223', NULL, NULL),
(696, 3, 10, 'Trishal', 130, 'Ram Amritaganj', '2222', NULL, NULL),
(697, 3, 10, 'Trishal', 130, 'Trishal', '2220', NULL, NULL),
(698, 3, 11, 'Araihazar', 130, 'Araihazar', '1450', NULL, NULL),
(699, 3, 11, 'Araihazar', 130, 'Gopaldi', '1451', NULL, NULL),
(700, 3, 11, 'Baidder Bazar', 130, 'Baidder Bazar', '1440', NULL, NULL),
(701, 3, 11, 'Baidder Bazar', 130, 'Bara Nagar', '1441', NULL, NULL),
(702, 3, 11, 'Baidder Bazar', 130, 'Barodi', '1442', NULL, NULL),
(703, 3, 11, 'Bandar', 130, 'Bandar', '1410', NULL, NULL),
(704, 3, 11, 'Bandar', 130, 'BIDS', '1413', NULL, NULL),
(705, 3, 11, 'Bandar', 130, 'D.C Mills', '1411', NULL, NULL),
(706, 3, 11, 'Bandar', 130, 'Madanganj', '1414', NULL, NULL),
(707, 3, 11, 'Bandar', 130, 'Nabiganj', '1412', NULL, NULL),
(708, 3, 11, 'Fatullah', 130, 'Fatulla Bazar', '1421', NULL, NULL),
(709, 3, 11, 'Fatullah', 130, 'Fatullah', '1420', NULL, NULL),
(710, 3, 11, 'Narayanganj Sadar', 130, 'Narayanganj Sadar', '1400', NULL, NULL),
(711, 3, 11, 'Rupganj', 130, 'Bhulta', '1462', NULL, NULL),
(712, 3, 11, 'Rupganj', 130, 'Kanchan', '1461', NULL, NULL),
(713, 3, 11, 'Rupganj', 130, 'Murapara', '1464', NULL, NULL),
(714, 3, 11, 'Rupganj', 130, 'Nagri', '1463', NULL, NULL),
(715, 3, 11, 'Rupganj', 130, 'Rupganj', '1460', NULL, NULL),
(716, 3, 11, 'Siddirganj', 130, 'Adamjeenagar', '1431', NULL, NULL),
(717, 3, 11, 'Siddirganj', 130, 'LN Mills', '1432', NULL, NULL),
(718, 3, 11, 'Siddirganj', 130, 'Siddirganj', '1430', NULL, NULL),
(719, 3, 12, 'Belabo', 130, 'Belabo', '1640', NULL, NULL),
(720, 3, 12, 'Monohordi', 130, 'Hatirdia', '1651', NULL, NULL),
(721, 3, 12, 'Monohordi', 130, 'Katabaria', '1652', NULL, NULL),
(722, 3, 12, 'Monohordi', 130, 'Monohordi', '1650', NULL, NULL),
(723, 3, 12, 'Narshingdi Sadar', 130, 'Karimpur', '1605', NULL, NULL),
(724, 3, 12, 'Narshingdi Sadar', 130, 'Madhabdi', '1604', NULL, NULL),
(725, 3, 12, 'Narshingdi Sadar', 130, 'Narshingdi College', '1602', NULL, NULL),
(726, 3, 12, 'Narshingdi Sadar', 130, 'Narshingdi Sadar', '1600', NULL, NULL),
(727, 3, 12, 'Narshingdi Sadar', 130, 'Panchdona', '1603', NULL, NULL),
(728, 3, 12, 'Narshingdi Sadar', 130, 'UMC Jute Mills', '1601', NULL, NULL),
(729, 3, 12, 'Palash', 130, 'Char Sindhur', '1612', NULL, NULL),
(730, 3, 12, 'Palash', 130, 'Ghorashal', '1613', NULL, NULL),
(731, 3, 12, 'Palash', 130, 'Ghorashal Urea Facto', '1611', NULL, NULL),
(732, 3, 12, 'Palash', 130, 'Palash', '1610', NULL, NULL),
(733, 3, 12, 'Raypura', 130, 'Bazar Hasnabad', '1631', NULL, NULL),
(734, 3, 12, 'Raypura', 130, 'Radhaganj bazar', '1632', NULL, NULL),
(735, 3, 12, 'Raypura', 130, 'Raypura', '1630', NULL, NULL),
(736, 3, 12, 'Shibpur', 130, 'Shibpur', '1620', NULL, NULL),
(737, 3, 13, 'Susung Durgapur', 130, 'Susnng Durgapur', '2420', NULL, NULL),
(738, 3, 13, 'Atpara', 130, 'Atpara', '2470', NULL, NULL),
(739, 3, 13, 'Barhatta', 130, 'Barhatta', '2440', NULL, NULL),
(740, 3, 13, 'Dharmapasha', 130, 'Dharampasha', '2450', NULL, NULL),
(741, 3, 13, 'Dhobaura', 130, 'Dhobaura', '2416', NULL, NULL),
(742, 3, 13, 'Dhobaura', 130, 'Sakoai', '2417', NULL, NULL),
(743, 3, 13, 'Kalmakanda', 130, 'Kalmakanda', '2430', NULL, NULL),
(744, 3, 13, 'Kendua', 130, 'Kendua', '2480', NULL, NULL),
(745, 3, 13, 'Khaliajuri', 130, 'Khaliajhri', '2460', NULL, NULL),
(746, 3, 13, 'Khaliajuri', 130, 'Shaldigha', '2462', NULL, NULL),
(747, 3, 13, 'Madan', 130, 'Madan', '2490', NULL, NULL),
(748, 3, 13, 'Moddhynagar', 130, 'Moddoynagar', '2456', NULL, NULL),
(749, 3, 13, 'Mohanganj', 130, 'Mohanganj', '2446', NULL, NULL),
(750, 3, 13, 'Netrakona Sadar', 130, 'Baikherhati', '2401', NULL, NULL),
(751, 3, 13, 'Netrakona Sadar', 130, 'Netrakona Sadar', '2400', NULL, NULL),
(752, 3, 13, 'Purbadhola', 130, 'Jaria Jhanjhail', '2412', NULL, NULL),
(753, 3, 13, 'Purbadhola', 130, 'Purbadhola', '2410', NULL, NULL),
(754, 3, 13, 'Purbadhola', 130, 'Shamgonj', '2411', NULL, NULL),
(755, 3, 14, 'Baliakandi', 130, 'Baliakandi', '7730', NULL, NULL),
(756, 3, 14, 'Baliakandi', 130, 'Nalia', '7731', NULL, NULL),
(757, 3, 14, 'Pangsha', 130, 'Mrigibazar', '7723', NULL, NULL),
(758, 3, 14, 'Pangsha', 130, 'Pangsha', '7720', NULL, NULL),
(759, 3, 14, 'Pangsha', 130, 'Ramkol', '7721', NULL, NULL),
(760, 3, 14, 'Pangsha', 130, 'Ratandia', '7722', NULL, NULL),
(761, 3, 14, 'Rajbari Sadar', 130, 'Goalanda', '7710', NULL, NULL),
(762, 3, 14, 'Rajbari Sadar', 130, 'Khankhanapur', '7711', NULL, NULL),
(763, 3, 14, 'Rajbari Sadar', 130, 'Rajbari Sadar', '7700', NULL, NULL),
(764, 3, 15, 'Bhedorganj', 130, 'Bhedorganj', '8030', NULL, NULL),
(765, 3, 15, 'Damudhya', 130, 'Damudhya', '8040', NULL, NULL),
(766, 3, 15, 'Gosairhat', 130, 'Gosairhat', '8050', NULL, NULL),
(767, 3, 15, 'Jajira', 130, 'Jajira', '8010', NULL, NULL),
(768, 3, 15, 'Naria', 130, 'Bhozeshwar', '8021', NULL, NULL),
(769, 3, 15, 'Naria', 130, 'Gharisar', '8022', NULL, NULL),
(770, 3, 15, 'Naria', 130, 'Kartikpur', '8024', NULL, NULL),
(771, 3, 15, 'Naria', 130, 'Naria', '8020', NULL, NULL),
(772, 3, 15, 'Naria', 130, 'Upshi', '8023', NULL, NULL),
(773, 3, 15, 'Shariatpur Sadar', 130, 'Angaria', '8001', NULL, NULL),
(774, 3, 15, 'Shariatpur Sadar', 130, 'Chikandi', '8002', NULL, NULL),
(775, 3, 15, 'Shariatpur Sadar', 130, 'Shariatpur Sadar', '8000', NULL, NULL),
(776, 3, 16, 'Bakshigonj', 130, 'Bakshigonj', '2140', NULL, NULL),
(777, 3, 16, 'Jhinaigati', 130, 'Jhinaigati', '2120', NULL, NULL),
(778, 3, 16, 'Nakla', 130, 'Gonopaddi', '2151', NULL, NULL),
(779, 3, 16, 'Nakla', 130, 'Nakla', '2150', NULL, NULL),
(780, 3, 16, 'Nalitabari', 130, 'Hatibandha', '2111', NULL, NULL);
INSERT INTO `postcodes` (`id`, `division_id`, `district_id`, `upazila`, `zone_charge`, `postOffice`, `postCode`, `created_at`, `updated_at`) VALUES
(781, 3, 16, 'Nalitabari', 130, 'Nalitabari', '2110', NULL, NULL),
(782, 3, 16, 'Sherpur Shadar', 130, 'Sherpur Shadar', '2100', NULL, NULL),
(783, 3, 16, 'Shribardi', 130, 'Shribardi', '2130', NULL, NULL),
(784, 3, 17, 'Basail', 130, 'Basail', '1920', NULL, NULL),
(785, 3, 17, 'Bhuapur', 130, 'Bhuapur', '1960', NULL, NULL),
(786, 3, 17, 'Delduar', 130, 'Delduar', '1910', NULL, NULL),
(787, 3, 17, 'Delduar', 130, 'Elasin', '1913', NULL, NULL),
(788, 3, 17, 'Delduar', 130, 'Hinga Nagar', '1914', NULL, NULL),
(789, 3, 17, 'Delduar', 130, 'Jangalia', '1911', NULL, NULL),
(790, 3, 17, 'Delduar', 130, 'Lowhati', '1915', NULL, NULL),
(791, 3, 17, 'Delduar', 130, 'Patharail', '1912', NULL, NULL),
(792, 3, 17, 'Ghatail', 130, 'D. Pakutia', '1982', NULL, NULL),
(793, 3, 17, 'Ghatail', 130, 'Dhalapara', '1983', NULL, NULL),
(794, 3, 17, 'Ghatail', 130, 'Ghatial', '1980', NULL, NULL),
(795, 3, 17, 'Ghatail', 130, 'Lohani', '1984', NULL, NULL),
(796, 3, 17, 'Ghatail', 130, 'Zahidganj', '1981', NULL, NULL),
(797, 3, 17, 'Gopalpur', 130, 'Gopalpur', '1990', NULL, NULL),
(798, 3, 17, 'Gopalpur', 130, 'Hemnagar', '1992', NULL, NULL),
(799, 3, 17, 'Gopalpur', 130, 'Jhowail', '1991', NULL, NULL),
(800, 3, 17, 'Kalihati', 130, 'Ballabazar', '1973', NULL, NULL),
(801, 3, 17, 'Kalihati', 130, 'Elinga', '1974', NULL, NULL),
(802, 3, 17, 'Kalihati', 130, 'Kalihati', '1970', NULL, NULL),
(803, 3, 17, 'Kalihati', 130, 'Nagarbari', '1977', NULL, NULL),
(804, 3, 17, 'Kalihati', 130, 'Nagarbari SO', '1976', NULL, NULL),
(805, 3, 17, 'Kalihati', 130, 'Nagbari', '1972', NULL, NULL),
(806, 3, 17, 'Kalihati', 130, 'Palisha', '1975', NULL, NULL),
(807, 3, 17, 'Kalihati', 130, 'Rajafair', '1971', NULL, NULL),
(808, 3, 17, 'Kashkaolia', 130, 'Kashkawlia', '1930', NULL, NULL),
(809, 3, 17, 'Madhupur', 130, 'Dhobari', '1997', NULL, NULL),
(810, 3, 17, 'Madhupur', 130, 'Madhupur', '1996', NULL, NULL),
(811, 3, 17, 'Mirzapur', 130, 'Gorai', '1941', NULL, NULL),
(812, 3, 17, 'Mirzapur', 130, 'Jarmuki', '1944', NULL, NULL),
(813, 3, 17, 'Mirzapur', 130, 'M.C. College', '1942', NULL, NULL),
(814, 3, 17, 'Mirzapur', 130, 'Mirzapur', '1940', NULL, NULL),
(815, 3, 17, 'Mirzapur', 130, 'Mohera', '1945', NULL, NULL),
(816, 3, 17, 'Mirzapur', 130, 'Warri paikpara', '1943', NULL, NULL),
(817, 3, 17, 'Nagarpur', 130, 'Dhuburia', '1937', NULL, NULL),
(818, 3, 17, 'Nagarpur', 130, 'Nagarpur', '1936', NULL, NULL),
(819, 3, 17, 'Nagarpur', 130, 'Salimabad', '1938', NULL, NULL),
(820, 3, 17, 'Sakhipur', 130, 'Kochua', '1951', NULL, NULL),
(821, 3, 17, 'Sakhipur', 130, 'Sakhipur', '1950', NULL, NULL),
(822, 3, 17, 'Tangail Sadar', 130, 'Kagmari', '1901', NULL, NULL),
(823, 3, 17, 'Tangail Sadar', 130, 'Korotia', '1903', NULL, NULL),
(824, 3, 17, 'Tangail Sadar', 130, 'Purabari', '1904', NULL, NULL),
(825, 3, 17, 'Tangail Sadar', 130, 'Santosh', '1902', NULL, NULL),
(826, 3, 17, 'Tangail Sadar', 130, 'Tangail Sadar', '1900', NULL, NULL),
(827, 4, 55, 'Bagerhat Sadar', 130, 'Bagerhat Sadar', '9300', NULL, NULL),
(828, 4, 55, 'Bagerhat Sadar', 130, 'P.C College', '9301', NULL, NULL),
(829, 4, 55, 'Bagerhat Sadar', 130, 'Rangdia', '9302', NULL, NULL),
(830, 4, 55, 'Chalna Ankorage', 130, 'Chalna Ankorage', '9350', NULL, NULL),
(831, 4, 55, 'Chalna Ankorage', 130, 'Mongla Port', '9351', NULL, NULL),
(832, 4, 55, 'Chitalmari', 130, 'Barabaria', '9361', NULL, NULL),
(833, 4, 55, 'Chitalmari', 130, 'Chitalmari', '9360', NULL, NULL),
(834, 4, 55, 'Fakirhat', 130, 'Bhanganpar Bazar', '9372', NULL, NULL),
(835, 4, 55, 'Fakirhat', 130, 'Fakirhat', '9370', NULL, NULL),
(836, 4, 55, 'Fakirhat', 130, 'Mansa', '9371', NULL, NULL),
(837, 4, 55, 'Kachua UPO', 130, 'Kachua', '9310', NULL, NULL),
(838, 4, 55, 'Kachua UPO', 130, 'Sonarkola', '9311', NULL, NULL),
(839, 4, 55, 'Mollahat', 130, 'Charkulia', '9383', NULL, NULL),
(840, 4, 55, 'Mollahat', 130, 'Dariala', '9382', NULL, NULL),
(841, 4, 55, 'Mollahat', 130, 'Kahalpur', '9381', NULL, NULL),
(842, 4, 55, 'Mollahat', 130, 'Mollahat', '9380', NULL, NULL),
(843, 4, 55, 'Mollahat', 130, 'Nagarkandi', '9384', NULL, NULL),
(844, 4, 55, 'Mollahat', 130, 'Pak Gangni', '9385', NULL, NULL),
(845, 4, 55, 'Morelganj', 130, 'Morelganj', '9320', NULL, NULL),
(846, 4, 55, 'Morelganj', 130, 'Sannasi Bazar', '9321', NULL, NULL),
(847, 4, 55, 'Morelganj', 130, 'Telisatee', '9322', NULL, NULL),
(848, 4, 55, 'Rampal', 130, 'Foylahat', '9341', NULL, NULL),
(849, 4, 55, 'Rampal', 130, 'Gourambha', '9343', NULL, NULL),
(850, 4, 55, 'Rampal', 130, 'Rampal', '9340', NULL, NULL),
(851, 4, 55, 'Rampal', 130, 'Sonatunia', '9342', NULL, NULL),
(852, 4, 55, 'Rayenda', 130, 'Rayenda', '9330', NULL, NULL),
(853, 4, 56, 'Alamdanga', 130, 'Alamdanga', '7210', NULL, NULL),
(854, 4, 56, 'Alamdanga', 130, 'Hardi', '7211', NULL, NULL),
(855, 4, 56, 'Chuadanga Sadar', 130, 'Chuadanga Sadar', '7200', NULL, NULL),
(856, 4, 56, 'Chuadanga Sadar', 130, 'Munshiganj', '7201', NULL, NULL),
(857, 4, 56, 'Damurhuda', 130, 'Andulbaria', '7222', NULL, NULL),
(858, 4, 56, 'Damurhuda', 130, 'Damurhuda', '7220', NULL, NULL),
(859, 4, 56, 'Damurhuda', 130, 'Darshana', '7221', NULL, NULL),
(860, 4, 56, 'Doulatganj', 130, 'Doulatganj', '7230', NULL, NULL),
(861, 4, 57, 'Bagharpara', 130, 'Bagharpara', '7470', NULL, NULL),
(862, 4, 57, 'Bagharpara', 130, 'Gouranagar', '7471', NULL, NULL),
(863, 4, 57, 'Chaugachha', 130, 'Chougachha', '7410', NULL, NULL),
(864, 4, 57, 'Jessore Sadar', 130, 'Basundia', '7406', NULL, NULL),
(865, 4, 57, 'Jessore Sadar', 130, 'Chanchra', '7402', NULL, NULL),
(866, 4, 57, 'Jessore Sadar', 130, 'Churamankathi', '7407', NULL, NULL),
(867, 4, 57, 'Jessore Sadar', 130, 'Jessore Airbach', '7404', NULL, NULL),
(868, 4, 57, 'Jessore Sadar', 130, 'Jessore canttonment', '7403', NULL, NULL),
(869, 4, 57, 'Jessore Sadar', 130, 'Jessore Sadar', '7400', NULL, NULL),
(870, 4, 57, 'Jessore Sadar', 130, 'Jessore Upa-Shahar', '7401', NULL, NULL),
(871, 4, 57, 'Jessore Sadar', 130, 'Rupdia', '7405', NULL, NULL),
(872, 4, 57, 'Jhikargachha', 130, 'Jhikargachha', '7420', NULL, NULL),
(873, 4, 57, 'Keshabpur', 130, 'Keshobpur', '7450', NULL, NULL),
(874, 4, 57, 'Monirampur', 130, 'Monirampur', '7440', NULL, NULL),
(875, 4, 57, 'Noapara', 130, 'Bhugilhat', '7462', NULL, NULL),
(876, 4, 57, 'Noapara', 130, 'Noapara', '7460', NULL, NULL),
(877, 4, 57, 'Noapara', 130, 'Rajghat', '7461', NULL, NULL),
(878, 4, 57, 'Sarsa', 130, 'Bag Achra', '7433', NULL, NULL),
(879, 4, 57, 'Sarsa', 130, 'Benapole', '7431', NULL, NULL),
(880, 4, 57, 'Sarsa', 130, 'Jadabpur', '7432', NULL, NULL),
(881, 4, 57, 'Sarsa', 130, 'Sarsa', '7430', NULL, NULL),
(882, 4, 58, 'Harinakundu', 130, 'Harinakundu', '7310', NULL, NULL),
(883, 4, 58, 'Jinaidaha Sadar', 130, 'Jinaidaha Cadet College', '7301', NULL, NULL),
(884, 4, 58, 'Jinaidaha Sadar', 130, 'Jinaidaha Sadar', '7300', NULL, NULL),
(885, 4, 58, 'Kotchandpur', 130, 'Kotchandpur', '7330', NULL, NULL),
(886, 4, 58, 'Maheshpur', 130, 'Maheshpur', '7340', NULL, NULL),
(887, 4, 58, 'Naldanga', 130, 'Hatbar Bazar', '7351', NULL, NULL),
(888, 4, 58, 'Naldanga', 130, 'Naldanga', '7350', NULL, NULL),
(889, 4, 58, 'Shailakupa', 130, 'Kumiradaha', '7321', NULL, NULL),
(890, 4, 58, 'Shailakupa', 130, 'Shailakupa', '7320', NULL, NULL),
(891, 4, 59, 'Alaipur', 130, 'Alaipur', '9240', NULL, NULL),
(892, 4, 59, 'Alaipur', 130, 'Belphulia', '9242', NULL, NULL),
(893, 4, 59, 'Alaipur', 130, 'Rupsha', '9241', NULL, NULL),
(894, 4, 59, 'Batiaghat', 130, 'Batiaghat', '9260', NULL, NULL),
(895, 4, 59, 'Batiaghat', 130, 'Surkalee', '9261', NULL, NULL),
(896, 4, 59, 'Chalna Bazar', 130, 'Bajua', '9272', NULL, NULL),
(897, 4, 59, 'Chalna Bazar', 130, 'Chalna Bazar', '9270', NULL, NULL),
(898, 4, 59, 'Chalna Bazar', 130, 'Dakup', '9271', NULL, NULL),
(899, 4, 59, 'Chalna Bazar', 130, 'Nalian', '9273', NULL, NULL),
(900, 4, 59, 'Digalia', 130, 'Chandni Mahal', '9221', NULL, NULL),
(901, 4, 59, 'Digalia', 130, 'Digalia', '9220', NULL, NULL),
(902, 4, 59, 'Digalia', 130, 'Gazirhat', '9224', NULL, NULL),
(903, 4, 59, 'Digalia', 130, 'Ghoshghati', '9223', NULL, NULL),
(904, 4, 59, 'Digalia', 130, 'Senhati', '9222', NULL, NULL),
(905, 4, 59, 'Khulna Sadar', 130, 'Atra Shilpa Area', '9207', NULL, NULL),
(906, 4, 59, 'Khulna Sadar', 130, 'BIT Khulna', '9203', NULL, NULL),
(907, 4, 59, 'Khulna Sadar', 130, 'Doulatpur', '9202', NULL, NULL),
(908, 4, 59, 'Khulna Sadar', 130, 'Jahanabad Canttonmen', '9205', NULL, NULL),
(909, 4, 59, 'Khulna Sadar', 130, 'Khula Sadar', '9100', NULL, NULL),
(910, 4, 59, 'Khulna Sadar', 130, 'Khulna G.P.O', '9000', NULL, NULL),
(911, 4, 59, 'Khulna Sadar', 130, 'Khulna Shipyard', '9201', NULL, NULL),
(912, 4, 59, 'Khulna Sadar', 130, 'Khulna University', '9208', NULL, NULL),
(913, 4, 59, 'Khulna Sadar', 130, 'Siramani', '9204', NULL, NULL),
(914, 4, 59, 'Khulna Sadar', 130, 'Sonali Jute Mills', '9206', NULL, NULL),
(915, 4, 59, 'Madinabad', 130, 'Amadee', '9291', NULL, NULL),
(916, 4, 59, 'Madinabad', 130, 'Madinabad', '9290', NULL, NULL),
(917, 4, 59, 'Paikgachha', 130, 'Chandkhali', '9284', NULL, NULL),
(918, 4, 59, 'Paikgachha', 130, 'Garaikhali', '9285', NULL, NULL),
(919, 4, 59, 'Paikgachha', 130, 'Godaipur', '9281', NULL, NULL),
(920, 4, 59, 'Paikgachha', 130, 'Kapilmoni', '9282', NULL, NULL),
(921, 4, 59, 'Paikgachha', 130, 'Katipara', '9283', NULL, NULL),
(922, 4, 59, 'Paikgachha', 130, 'Paikgachha', '9280', NULL, NULL),
(923, 4, 59, 'Phultala', 130, 'Phultala', '9210', NULL, NULL),
(924, 4, 59, 'Sajiara', 130, 'Chuknagar', '9252', NULL, NULL),
(925, 4, 59, 'Sajiara', 130, 'Ghonabanda', '9251', NULL, NULL),
(926, 4, 59, 'Sajiara', 130, 'Sajiara', '9250', NULL, NULL),
(927, 4, 59, 'Sajiara', 130, 'Shahapur', '9253', NULL, NULL),
(928, 4, 59, 'Terakhada', 130, 'Pak Barasat', '9231', NULL, NULL),
(929, 4, 59, 'Terakhada', 130, 'Terakhada', '9230', NULL, NULL),
(930, 4, 60, 'Bheramara', 130, 'Allardarga', '7042', NULL, NULL),
(931, 4, 60, 'Bheramara', 130, 'Bheramara', '7040', NULL, NULL),
(932, 4, 60, 'Bheramara', 130, 'Ganges Bheramara', '7041', NULL, NULL),
(933, 4, 60, 'Janipur', 130, 'Janipur', '7020', NULL, NULL),
(934, 4, 60, 'Janipur', 130, 'Khoksa', '7021', NULL, NULL),
(935, 4, 60, 'Kumarkhali', 130, 'Kumarkhali', '7010', NULL, NULL),
(936, 4, 60, 'Kumarkhali', 130, 'Panti', '7011', NULL, NULL),
(937, 4, 60, 'Kustia Sadar', 130, 'Islami University', '7003', NULL, NULL),
(938, 4, 60, 'Kustia Sadar', 130, 'Jagati', '7002', NULL, NULL),
(939, 4, 60, 'Kustia Sadar', 130, 'Kushtia Mohini', '7001', NULL, NULL),
(940, 4, 60, 'Kustia Sadar', 130, 'Kustia Sadar', '7000', NULL, NULL),
(941, 4, 60, 'Mirpur', 130, 'Amla Sadarpur', '7032', NULL, NULL),
(942, 4, 60, 'Mirpur', 130, 'Mirpur', '7030', NULL, NULL),
(943, 4, 60, 'Mirpur', 130, 'Poradaha', '7031', NULL, NULL),
(944, 4, 60, 'Rafayetpur', 130, 'Khasmathurapur', '7052', NULL, NULL),
(945, 4, 60, 'Rafayetpur', 130, 'Rafayetpur', '7050', NULL, NULL),
(946, 4, 60, 'Rafayetpur', 130, 'Taragunia', '7051', NULL, NULL),
(947, 4, 61, 'Arpara', 130, 'Arpara', '7620', NULL, NULL),
(948, 4, 61, 'Magura Sadar', 130, 'Magura Sadar', '7600', NULL, NULL),
(949, 4, 61, 'Mohammadpur', 130, 'Binodpur', '7631', NULL, NULL),
(950, 4, 61, 'Mohammadpur', 130, 'Mohammadpur', '7630', NULL, NULL),
(951, 4, 61, 'Mohammadpur', 130, 'Nahata', '7632', NULL, NULL),
(952, 4, 61, 'Shripur', 130, 'Langalbadh', '7611', NULL, NULL),
(953, 4, 61, 'Shripur', 130, 'Nachol', '7612', NULL, NULL),
(954, 4, 61, 'Shripur', 130, 'Shripur', '7610', NULL, NULL),
(955, 4, 62, 'Gangni', 130, 'Gangni', '7110', NULL, NULL),
(956, 4, 62, 'Meherpur Sadar', 130, 'Amjhupi', '7101', NULL, NULL),
(957, 4, 62, 'Meherpur Sadar', 130, 'Amjhupi', '7152', NULL, NULL),
(958, 4, 62, 'Meherpur Sadar', 130, 'Meherpur Sadar', '7100', NULL, NULL),
(959, 4, 62, 'Meherpur Sadar', 130, 'Mujib Nagar Complex', '7102', NULL, NULL),
(960, 4, 63, 'Kalia', 130, 'Kalia', '7520', NULL, NULL),
(961, 4, 63, 'Laxmipasha', 130, 'Baradia', '7514', NULL, NULL),
(962, 4, 63, 'Laxmipasha', 130, 'Itna', '7512', NULL, NULL),
(963, 4, 63, 'Laxmipasha', 130, 'Laxmipasha', '7510', NULL, NULL),
(964, 4, 63, 'Laxmipasha', 130, 'Lohagora', '7511', NULL, NULL),
(965, 4, 63, 'Laxmipasha', 130, 'Naldi', '7513', NULL, NULL),
(966, 4, 63, 'Mohajan', 130, 'Mohajan', '7521', NULL, NULL),
(967, 4, 63, 'Narail Sadar', 130, 'Narail Sadar', '7500', NULL, NULL),
(968, 4, 63, 'Narail Sadar', 130, 'Ratanganj', '7501', NULL, NULL),
(969, 4, 64, 'Ashashuni', 130, 'Ashashuni', '9460', NULL, NULL),
(970, 4, 64, 'Ashashuni', 130, 'Baradal', '9461', NULL, NULL),
(971, 4, 64, 'Debbhata', 130, 'Debbhata', '9430', NULL, NULL),
(972, 4, 64, 'Debbhata', 130, 'Gurugram', '9431', NULL, NULL),
(973, 4, 64, 'kalaroa', 130, 'Chandanpur', '9415', NULL, NULL),
(974, 4, 64, 'kalaroa', 130, 'Hamidpur', '9413', NULL, NULL),
(975, 4, 64, 'kalaroa', 130, 'Jhaudanga', '9412', NULL, NULL),
(976, 4, 64, 'kalaroa', 130, 'kalaroa', '9410', NULL, NULL),
(977, 4, 64, 'kalaroa', 130, 'Khordo', '9414', NULL, NULL),
(978, 4, 64, 'kalaroa', 130, 'Murarikati', '9411', NULL, NULL),
(979, 4, 64, 'Kaliganj UPO', 130, 'Kaliganj UPO', '9440', NULL, NULL),
(980, 4, 64, 'Kaliganj UPO', 130, 'Nalta Mubaroknagar', '9441', NULL, NULL),
(981, 4, 64, 'Kaliganj UPO', 130, 'Ratanpur', '9442', NULL, NULL),
(982, 4, 64, 'Nakipur', 130, 'Buri Goalini', '9453', NULL, NULL),
(983, 4, 64, 'Nakipur', 130, 'Gabura', '9454', NULL, NULL),
(984, 4, 64, 'Nakipur', 130, 'Habinagar', '9455', NULL, NULL),
(985, 4, 64, 'Nakipur', 130, 'Nakipur', '9450', NULL, NULL),
(986, 4, 64, 'Nakipur', 130, 'Naobeki', '9452', NULL, NULL),
(987, 4, 64, 'Nakipur', 130, 'Noornagar', '9451', NULL, NULL),
(988, 4, 64, 'Satkhira Sadar', 130, 'Budhhat', '9403', NULL, NULL),
(989, 4, 64, 'Satkhira Sadar', 130, 'Gunakar kati', '9402', NULL, NULL),
(990, 4, 64, 'Satkhira Sadar', 130, 'Satkhira Islamia Acc', '9401', NULL, NULL),
(991, 4, 64, 'Satkhira Sadar', 130, 'Satkhira Sadar', '9400', NULL, NULL),
(992, 4, 64, 'Taala', 130, 'Patkelghata', '9421', NULL, NULL),
(993, 4, 64, 'Taala', 130, 'Taala', '9420', NULL, NULL),
(994, 5, 18, 'Alamdighi', 130, 'Adamdighi', '5890', NULL, NULL),
(995, 5, 18, 'Alamdighi', 130, 'Nasharatpur', '5892', NULL, NULL),
(996, 5, 18, 'Alamdighi', 130, 'Santahar', '5891', NULL, NULL),
(997, 5, 18, 'Bogra Sadar', 130, 'Bogra Canttonment', '5801', NULL, NULL),
(998, 5, 18, 'Bogra Sadar', 130, 'Bogra Sadar', '5800', NULL, NULL),
(999, 5, 18, 'Dhunat', 130, 'Dhunat', '5850', NULL, NULL),
(1000, 5, 18, 'Dhunat', 130, 'Gosaibari', '5851', NULL, NULL),
(1001, 5, 18, 'Dupchachia', 130, 'Dupchachia', '5880', NULL, NULL),
(1002, 5, 18, 'Dupchachia', 130, 'Talora', '5881', NULL, NULL),
(1003, 5, 18, 'Gabtoli', 130, 'Gabtoli', '5820', NULL, NULL),
(1004, 5, 18, 'Gabtoli', 130, 'Sukhanpukur', '5821', NULL, NULL),
(1005, 5, 18, 'Kahalu', 130, 'Kahalu', '5870', NULL, NULL),
(1006, 5, 18, 'Nandigram', 130, 'Nandigram', '5860', NULL, NULL),
(1007, 5, 18, 'Sariakandi', 130, 'Chandan Baisha', '5831', NULL, NULL),
(1008, 5, 18, 'Sariakandi', 130, 'Sariakandi', '5830', NULL, NULL),
(1009, 5, 18, 'Sherpur', 130, 'Chandaikona', '5841', NULL, NULL),
(1010, 5, 18, 'Sherpur', 130, 'Palli Unnyan Accadem', '5842', NULL, NULL),
(1011, 5, 18, 'Sherpur', 130, 'Sherpur', '5840', NULL, NULL),
(1012, 5, 18, 'Shibganj', 130, 'Shibganj', '5810', NULL, NULL),
(1013, 5, 18, 'Sonatola', 130, 'Sonatola', '5826', NULL, NULL),
(1014, 5, 22, 'Bholahat', 130, 'Bholahat', '6330', NULL, NULL),
(1015, 5, 22, 'Chapinawabganj Sadar', 130, 'Amnura', '6303', NULL, NULL),
(1016, 5, 22, 'Chapinawabganj Sadar', 130, 'Chapinawbganj Sadar', '6300', NULL, NULL),
(1017, 5, 22, 'Chapinawabganj Sadar', 130, 'Rajarampur', '6301', NULL, NULL),
(1018, 5, 22, 'Chapinawabganj', 130, 'Ramchandrapur', '6302', NULL, NULL),
(1019, 5, 22, 'Nachol', 130, 'Mandumala', '6311', NULL, NULL),
(1020, 5, 22, 'Nachol', 130, 'Nachol', '6310', NULL, NULL),
(1021, 5, 22, 'Rohanpur', 130, 'Gomashtapur', '6321', NULL, NULL),
(1022, 5, 22, 'Rohanpur', 130, 'Rohanpur', '6320', NULL, NULL),
(1023, 5, 22, 'Shibganj U.P.O', 130, 'Kansart', '6341', NULL, NULL),
(1024, 5, 22, 'Shibganj U.P.O', 130, 'Manaksha', '6342', NULL, NULL),
(1025, 5, 22, 'Shibganj U.P.O', 130, 'Shibganj U.P.O', '6340', NULL, NULL),
(1026, 5, 19, 'Akkelpur', 130, 'Akklepur', '5940', NULL, NULL),
(1027, 5, 19, 'Akkelpur', 130, 'jamalganj', '5941', NULL, NULL),
(1028, 5, 19, 'Akkelpur', 130, 'Tilakpur', '5942', NULL, NULL),
(1029, 5, 19, 'Joypurhat Sadar', 130, 'Joypurhat Sadar', '5900', NULL, NULL),
(1030, 5, 19, 'kalai', 130, 'kalai', '5930', NULL, NULL),
(1031, 5, 19, 'Khetlal', 130, 'Khetlal', '5920', NULL, NULL),
(1032, 5, 19, 'panchbibi', 130, 'Panchbibi', '5910', NULL, NULL),
(1033, 5, 20, 'Ahsanganj', 130, 'Ahsanganj', '6596', NULL, NULL),
(1034, 5, 20, 'Ahsanganj', 130, 'Bandai', '6597', NULL, NULL),
(1035, 5, 20, 'Badalgachhi', 130, 'Badalgachhi', '6570', NULL, NULL),
(1036, 5, 20, 'Dhamuirhat', 130, 'Dhamuirhat', '6580', NULL, NULL),
(1037, 5, 20, 'Mahadebpur', 130, 'Mahadebpur', '6530', NULL, NULL),
(1038, 5, 20, 'Naogaon Sadar', 130, 'Naogaon Sadar', '6500', NULL, NULL),
(1039, 5, 20, 'Niamatpur', 130, 'Niamatpur', '6520', NULL, NULL),
(1040, 5, 20, 'Nitpur', 130, 'Nitpur', '6550', NULL, NULL),
(1041, 5, 20, 'Nitpur', 130, 'Panguria', '6552', NULL, NULL),
(1042, 5, 20, 'Nitpur', 130, 'Porsa', '6551', NULL, NULL),
(1043, 5, 20, 'Patnitala', 130, 'Patnitala', '6540', NULL, NULL),
(1044, 5, 20, 'Prasadpur', 130, 'Balihar', '6512', NULL, NULL),
(1045, 5, 20, 'Prasadpur', 130, 'Manda', '6511', NULL, NULL),
(1046, 5, 20, 'Prasadpur', 130, 'Prasadpur', '6510', NULL, NULL),
(1047, 5, 20, 'Raninagar', 130, 'Kashimpur', '6591', NULL, NULL),
(1048, 5, 20, 'Raninagar', 130, 'Raninagar', '6590', NULL, NULL),
(1049, 5, 20, 'Sapahar', 130, 'Moduhil', '6561', NULL, NULL),
(1050, 5, 20, 'Sapahar', 130, 'Sapahar', '6560', NULL, NULL),
(1051, 5, 21, 'Gopalpur UPO', 130, 'Abdulpur', '6422', NULL, NULL),
(1052, 5, 21, 'Gopalpur UPO', 130, 'Gopalpur U.P.O', '6420', NULL, NULL),
(1053, 5, 21, 'Gopalpur UPO', 130, 'Lalpur S.O', '6421', NULL, NULL),
(1054, 5, 21, 'Harua', 130, 'Baraigram', '6432', NULL, NULL),
(1055, 5, 21, 'Harua', 130, 'Dayarampur', '6431', NULL, NULL),
(1056, 5, 21, 'Harua', 130, 'Harua', '6430', NULL, NULL),
(1057, 5, 21, 'Hatgurudaspur', 130, 'Hatgurudaspur', '6440', NULL, NULL),
(1058, 5, 21, 'Laxman', 130, 'Laxman', '6410', NULL, NULL),
(1059, 5, 21, 'Natore Sadar', 130, 'Baiddyabal Gharia', '6402', NULL, NULL),
(1060, 5, 21, 'Natore Sadar', 130, 'Digapatia', '6401', NULL, NULL),
(1061, 5, 21, 'Natore Sadar', 130, 'Madhnagar', '6403', NULL, NULL),
(1062, 5, 21, 'Natore Sadar', 130, 'Natore Sadar', '6400', NULL, NULL),
(1063, 5, 21, 'Singra', 130, 'Singra', '6450', NULL, NULL),
(1064, 5, 22, 'Banwarinagar', 130, 'Banwarinagar', '6650', NULL, NULL),
(1065, 5, 22, 'Bera', 130, 'Bera', '6680', NULL, NULL),
(1066, 5, 22, 'Bera', 130, 'Kashinathpur', '6682', NULL, NULL),
(1067, 5, 22, 'Bera', 130, 'Nakalia', '6681', NULL, NULL),
(1068, 5, 22, 'Bera', 130, 'Puran Bharenga', '6683', NULL, NULL),
(1069, 5, 22, 'Bhangura', 130, 'Bhangura', '6640', NULL, NULL),
(1070, 5, 22, 'Chatmohar', 130, 'Chatmohar', '6630', NULL, NULL),
(1071, 5, 22, 'Debottar', 130, 'Debottar', '6610', NULL, NULL),
(1072, 5, 22, 'Ishwardi', 130, 'Dhapari', '6621', NULL, NULL),
(1073, 5, 22, 'Ishwardi', 130, 'Ishwardi', '6620', NULL, NULL),
(1074, 5, 22, 'Ishwardi', 130, 'Pakshi', '6622', NULL, NULL),
(1075, 5, 22, 'Ishwardi', 130, 'Rajapur', '6623', NULL, NULL),
(1076, 5, 22, 'Pabna Sadar', 130, 'Hamayetpur', '6602', NULL, NULL),
(1077, 5, 22, 'Pabna Sadar', 130, 'Kaliko Cotton Mills', '6601', NULL, NULL),
(1078, 5, 22, 'Pabna Sadar', 130, 'Pabna Sadar', '6600', NULL, NULL),
(1079, 5, 22, 'Sathia', 130, 'Sathia', '6670', NULL, NULL),
(1080, 5, 22, 'Sujanagar', 130, 'Sagarkandi', '6661', NULL, NULL),
(1081, 5, 22, 'Sujanagar', 130, 'Sujanagar', '6660', NULL, NULL),
(1082, 5, 24, 'Bagha', 130, 'Arani', '6281', NULL, NULL),
(1083, 5, 24, 'Bagha', 130, 'Bagha', '6280', NULL, NULL),
(1084, 5, 24, 'Bhabaniganj', 130, 'Bhabaniganj', '6250', NULL, NULL),
(1085, 5, 24, 'Bhabaniganj', 130, 'Taharpur', '6251', NULL, NULL),
(1086, 5, 24, 'Charghat', 130, 'Charghat', '6270', NULL, NULL),
(1087, 5, 24, 'Charghat', 130, 'Sarda', '6271', NULL, NULL),
(1088, 5, 24, 'Durgapur', 130, 'Durgapur', '6240', NULL, NULL),
(1089, 5, 24, 'Godagari', 130, 'Godagari', '6290', NULL, NULL),
(1090, 5, 24, 'Godagari', 130, 'Premtoli', '6291', NULL, NULL),
(1091, 5, 24, 'Khod Mohanpur', 130, 'Khodmohanpur', '6220', NULL, NULL),
(1092, 5, 24, 'Lalitganj', 130, 'Lalitganj', '6210', NULL, NULL),
(1093, 5, 24, 'Lalitganj', 130, 'Rajshahi Sugar Mills', '6211', NULL, NULL),
(1094, 5, 24, 'Lalitganj', 130, 'Shyampur', '6212', NULL, NULL),
(1095, 5, 24, 'Putia', 130, 'Putia', '6260', NULL, NULL),
(1096, 5, 24, 'Rajshahi Sadar', 130, 'Binodpur Bazar', '6206', NULL, NULL),
(1097, 5, 24, 'Rajshahi Sadar', 130, 'Ghuramara', '6100', NULL, NULL),
(1098, 5, 24, 'Rajshahi Sadar', 130, 'Kazla', '6204', NULL, NULL),
(1099, 5, 24, 'Rajshahi Sadar', 130, 'Rajshahi Canttonment', '6202', NULL, NULL),
(1100, 5, 24, 'Rajshahi Sadar', 130, 'Rajshahi Court', '6201', NULL, NULL),
(1101, 5, 24, 'Rajshahi Sadar', 130, 'Rajshahi Sadar', '6000', NULL, NULL),
(1102, 5, 24, 'Rajshahi Sadar', 130, 'Rajshahi University', '6205', NULL, NULL),
(1103, 5, 24, 'Rajshahi Sadar', 130, 'Sapura', '6203', NULL, NULL),
(1104, 5, 24, 'Tanor', 130, 'Tanor', '6230', NULL, NULL),
(1105, 5, 25, 'Baiddya Jam Toil', 130, 'Baiddya Jam Toil', '6730', NULL, NULL),
(1106, 5, 25, 'Belkuchi', 130, 'Belkuchi', '6740', NULL, NULL),
(1107, 5, 25, 'Belkuchi', 130, 'Enayetpur', '6751', NULL, NULL),
(1108, 5, 25, 'Belkuchi', 130, 'Rajapur', '6742', NULL, NULL),
(1109, 5, 25, 'Belkuchi', 130, 'Sohagpur', '6741', NULL, NULL),
(1110, 5, 25, 'Belkuchi', 130, 'Sthal', '6752', NULL, NULL),
(1111, 5, 25, 'Dhangora', 130, 'Dhangora', '6720', NULL, NULL),
(1112, 5, 25, 'Dhangora', 130, 'Malonga', '6721', NULL, NULL),
(1113, 5, 25, 'Kazipur', 130, 'Gandail', '6712', NULL, NULL),
(1114, 5, 25, 'Kazipur', 130, 'Kazipur', '6710', NULL, NULL),
(1115, 5, 25, 'Kazipur', 130, 'Shuvgachha', '6711', NULL, NULL),
(1116, 5, 25, 'Shahjadpur', 130, 'Jamirta', '6772', NULL, NULL),
(1117, 5, 25, 'Shahjadpur', 130, 'Kaijuri', '6773', NULL, NULL),
(1118, 5, 25, 'Shahjadpur', 130, 'Porjana', '6771', NULL, NULL),
(1119, 5, 25, 'Shahjadpur', 130, 'Shahjadpur', '6770', NULL, NULL),
(1120, 5, 25, 'Sirajganj Sadar', 130, 'Raipur', '6701', NULL, NULL),
(1121, 5, 25, 'Sirajganj Sadar', 130, 'Rashidabad', '6702', NULL, NULL),
(1122, 5, 25, 'Sirajganj Sadar', 130, 'Sirajganj Sadar', '6700', NULL, NULL),
(1123, 5, 25, 'Tarash', 130, 'Tarash', '6780', NULL, NULL),
(1124, 5, 25, 'Ullapara', 130, 'Lahiri Mohanpur', '6762', NULL, NULL),
(1125, 5, 25, 'Ullapara', 130, 'Salap', '6763', NULL, NULL),
(1126, 5, 25, 'Ullapara', 130, 'Ullapara', '6760', NULL, NULL),
(1127, 5, 25, 'Ullapara', 130, 'Ullapara R.S', '6761', NULL, NULL),
(1128, 6, 26, 'Bangla Hili', 130, 'Bangla Hili', '5270', NULL, NULL),
(1129, 6, 26, 'Biral', 130, 'Biral', '5210', NULL, NULL),
(1130, 6, 26, 'Birampur', 130, 'Birampur', '5266', NULL, NULL),
(1131, 6, 26, 'Birganj', 130, 'Birganj', '5220', NULL, NULL),
(1132, 6, 26, 'Chrirbandar', 130, 'Chrirbandar', '5240', NULL, NULL),
(1133, 6, 26, 'Chrirbandar', 130, 'Ranirbandar', '5241', NULL, NULL),
(1134, 6, 26, 'Dinajpur Sadar', 130, 'Dinajpur Rajbari', '5201', NULL, NULL),
(1135, 6, 26, 'Dinajpur Sadar', 130, 'Dinajpur Sadar', '5200', NULL, NULL),
(1136, 6, 26, 'Khansama', 130, 'Khansama', '5230', NULL, NULL),
(1137, 6, 26, 'Khansama', 130, 'Pakarhat', '5231', NULL, NULL),
(1138, 6, 26, 'Maharajganj', 130, 'Maharajganj', '5226', NULL, NULL),
(1139, 6, 26, 'Nababganj', 130, 'Daudpur', '5281', NULL, NULL),
(1140, 6, 26, 'Nababganj', 130, 'Gopalpur', '5282', NULL, NULL),
(1141, 6, 26, 'Nababganj', 130, 'Nababganj', '5280', NULL, NULL),
(1142, 6, 26, 'Osmanpur', 130, 'Ghoraghat', '5291', NULL, NULL),
(1143, 6, 26, 'Osmanpur', 130, 'Osmanpur', '5290', NULL, NULL),
(1144, 6, 26, 'Parbatipur', 130, 'Parbatipur', '5250', NULL, NULL),
(1145, 6, 26, 'Phulbari', 130, 'Phulbari', '5260', NULL, NULL),
(1146, 6, 26, 'Setabganj', 130, 'Setabganj', '5216', NULL, NULL),
(1147, 6, 27, 'Bonarpara', 130, 'Bonarpara', '5750', NULL, NULL),
(1148, 6, 27, 'Bonarpara', 130, 'saghata', '5751', NULL, NULL),
(1149, 6, 27, 'Gaibandha Sadar', 130, 'Gaibandha Sadar', '5700', NULL, NULL),
(1150, 6, 27, 'Gobindaganj', 130, 'Gobindhaganj', '5740', NULL, NULL),
(1151, 6, 27, 'Gobindaganj', 130, 'Mahimaganj', '5741', NULL, NULL),
(1152, 6, 27, 'Palashbari', 130, 'Palashbari', '5730', NULL, NULL),
(1153, 6, 27, 'Phulchhari', 130, 'Bharatkhali', '5761', NULL, NULL),
(1154, 6, 27, 'Phulchhari', 130, 'Phulchhari', '5760', NULL, NULL),
(1155, 6, 27, 'Saadullapur', 130, 'Naldanga', '5711', NULL, NULL),
(1156, 6, 27, 'Saadullapur', 130, 'Saadullapur', '5710', NULL, NULL),
(1157, 6, 27, 'Sundarganj', 130, 'Bamandanga', '5721', NULL, NULL),
(1158, 6, 27, 'Sundarganj', 130, 'Sundarganj', '5720', NULL, NULL),
(1159, 6, 28, 'Bhurungamari', 130, 'Bhurungamari', '5670', NULL, NULL),
(1160, 6, 28, 'Chilmari', 130, 'Chilmari', '5630', NULL, NULL),
(1161, 6, 28, 'Chilmari', 130, 'Jorgachh', '5631', NULL, NULL),
(1162, 6, 28, 'Kurigram Sadar', 130, 'Kurigram Sadar', '5600', NULL, NULL),
(1163, 6, 28, 'Kurigram Sadar', 130, 'Pandul', '5601', NULL, NULL),
(1164, 6, 28, 'Kurigram Sadar', 130, 'Phulbari', '5680', NULL, NULL),
(1165, 6, 28, 'Nageshwar', 130, 'Nageshwar', '5660', NULL, NULL),
(1166, 6, 28, 'Rajarhat', 130, 'Nazimkhan', '5611', NULL, NULL),
(1167, 6, 28, 'Rajarhat', 130, 'Rajarhat', '5610', NULL, NULL),
(1168, 6, 28, 'Rajibpur', 130, 'Rajibpur', '5650', NULL, NULL),
(1169, 6, 28, 'Roumari', 130, 'Roumari', '5640', NULL, NULL),
(1170, 6, 28, 'Ulipur', 130, 'Bazarhat', '5621', NULL, NULL),
(1171, 6, 28, 'Ulipur', 130, 'Ulipur', '5620', NULL, NULL),
(1172, 6, 29, 'Aditmari', 130, 'Aditmari', '5510', NULL, NULL),
(1173, 6, 29, 'Hatibandha', 130, 'Hatibandha', '5530', NULL, NULL),
(1174, 6, 29, 'Lalmonirhat Sadar', 130, 'Kulaghat SO', '5502', NULL, NULL),
(1175, 6, 29, 'Lalmonirhat Sadar', 130, 'Lalmonirhat Sadar', '5500', NULL, NULL),
(1176, 6, 29, 'Lalmonirhat Sadar', 130, 'Moghalhat', '5501', NULL, NULL),
(1177, 6, 29, 'Patgram', 130, 'Baura', '5541', NULL, NULL),
(1178, 6, 29, 'Patgram', 130, 'Burimari', '5542', NULL, NULL),
(1179, 6, 29, 'Patgram', 130, 'Patgram', '5540', NULL, NULL),
(1180, 6, 29, 'Tushbhandar', 130, 'Tushbhandar', '5520', NULL, NULL),
(1181, 6, 30, 'Dimla', 130, 'Dimla', '5350', NULL, NULL),
(1182, 6, 30, 'Dimla', 130, 'Ghaga Kharibari', '5351', NULL, NULL),
(1183, 6, 30, 'Domar', 130, 'Chilahati', '5341', NULL, NULL),
(1184, 6, 30, 'Domar', 130, 'Domar', '5340', NULL, NULL),
(1185, 6, 30, 'Jaldhaka', 130, 'Jaldhaka', '5330', NULL, NULL),
(1186, 6, 30, 'Kishoriganj', 130, 'Kishoriganj', '5320', NULL, NULL),
(1187, 6, 30, 'Nilphamari Sadar', 130, 'Nilphamari Sadar', '5300', NULL, NULL),
(1188, 6, 30, 'Nilphamari Sadar', 130, 'Nilphamari Sugar Mil', '5301', NULL, NULL),
(1189, 6, 30, 'Syedpur', 130, 'Syedpur', '5310', NULL, NULL),
(1190, 6, 30, 'Syedpur', 130, 'Syedpur Upashahar', '5311', NULL, NULL),
(1191, 6, 31, 'Boda', 130, 'Boda', '5010', NULL, NULL),
(1192, 6, 31, 'Chotto Dab', 130, 'Chotto Dab', '5040', NULL, NULL),
(1193, 6, 31, 'Chotto Dab', 130, 'Mirjapur', '5041', NULL, NULL),
(1194, 6, 31, 'Dabiganj', 130, 'Dabiganj', '5020', NULL, NULL),
(1195, 6, 31, 'Panchagarh Sadar', 130, 'Panchagarh Sadar', '5000', NULL, NULL),
(1196, 6, 31, 'Tetulia', 130, 'Tetulia', '5030', NULL, NULL),
(1197, 6, 32, 'Badarganj', 130, 'Badarganj', '5430', NULL, NULL),
(1198, 6, 32, 'Badarganj', 130, 'Shyampur', '5431', NULL, NULL),
(1199, 6, 32, 'Gangachara', 130, 'Gangachara', '5410', NULL, NULL),
(1200, 6, 32, 'Kaunia', 130, 'Haragachh', '5441', NULL, NULL),
(1201, 6, 32, 'Kaunia', 130, 'Kaunia', '5440', NULL, NULL),
(1202, 6, 32, 'Mithapukur', 130, 'Mithapukur', '5460', NULL, NULL),
(1203, 6, 32, 'Pirgachha', 130, 'Pirgachha', '5450', NULL, NULL),
(1204, 6, 32, 'Rangpur Sadar', 130, 'Alamnagar', '5402', NULL, NULL),
(1205, 6, 32, 'Rangpur Sadar', 130, 'Mahiganj', '5403', NULL, NULL),
(1206, 6, 32, 'Rangpur Sadar', 130, 'Rangpur Cadet Colleg', '5404', NULL, NULL),
(1207, 6, 32, 'Rangpur Sadar', 130, 'Rangpur Carmiecal Col', '5405', NULL, NULL),
(1208, 6, 32, 'Rangpur Sadar', 130, 'Rangpur Sadar', '5400', NULL, NULL),
(1209, 6, 32, 'Rangpur Sadar', 130, 'Rangpur Upa-Shahar', '5401', NULL, NULL),
(1210, 6, 32, 'Taraganj', 130, 'Taraganj', '5420', NULL, NULL),
(1211, 6, 33, 'Baliadangi', 130, 'Baliadangi', '5140', NULL, NULL),
(1212, 6, 33, 'Baliadangi', 130, 'Lahiri', '5141', NULL, NULL),
(1213, 6, 33, 'Jibanpur', 130, 'Jibanpur', '5130', NULL, NULL),
(1214, 6, 33, 'Pirganj', 130, 'Pirganj', '5110', NULL, NULL),
(1215, 6, 33, 'Pirganj', 130, 'Pirganj', '5470', NULL, NULL),
(1216, 6, 33, 'Rani Sankail', 130, 'Nekmarad', '5121', NULL, NULL),
(1217, 6, 33, 'Rani Sankail', 130, 'Rani Sankail', '5120', NULL, NULL),
(1218, 6, 33, 'Thakurgaon Sadar', 130, 'Ruhia', '5103', NULL, NULL),
(1219, 6, 33, 'Thakurgaon Sadar', 130, 'Shibganj', '5102', NULL, NULL),
(1220, 6, 33, 'Thakurgaon Sadar', 130, 'Thakurgaon Road', '5101', NULL, NULL),
(1221, 6, 33, 'Thakurgaon Sadar', 130, 'Thakurgaon Sadar', '5100', NULL, NULL),
(1222, 7, 51, 'Azmireeganj', 130, 'Azmireeganj', '3360', NULL, NULL),
(1223, 7, 51, 'Bahubal', 130, 'Bahubal', '3310', NULL, NULL),
(1224, 7, 51, 'Baniachang', 130, 'Baniachang', '3350', NULL, NULL),
(1225, 7, 51, 'Baniachang', 130, 'Jatrapasha', '3351', NULL, NULL),
(1226, 7, 51, 'Baniachang', 130, 'Kadirganj', '3352', NULL, NULL),
(1227, 7, 51, 'Chunarughat', 130, 'Chandpurbagan', '3321', NULL, NULL),
(1228, 7, 51, 'Chunarughat', 130, 'Chunarughat', '3320', NULL, NULL),
(1229, 7, 51, 'Chunarughat', 130, 'Narapati', '3322', NULL, NULL),
(1230, 7, 51, 'Hobiganj Sadar', 130, 'Gopaya', '3302', NULL, NULL),
(1231, 7, 51, 'Hobiganj Sadar', 130, 'Hobiganj Sadar', '3300', NULL, NULL),
(1232, 7, 51, 'Hobiganj Sadar', 130, 'Shaestaganj', '3301', NULL, NULL),
(1233, 7, 51, 'Kalauk', 130, 'Kalauk', '3340', NULL, NULL),
(1234, 7, 51, 'Kalauk', 130, 'Lakhai', '3341', NULL, NULL),
(1235, 7, 51, 'Madhabpur', 130, 'Itakhola', '3331', NULL, NULL),
(1236, 7, 51, 'Madhabpur', 130, 'Madhabpur', '3330', NULL, NULL),
(1237, 7, 51, 'Madhabpur', 130, 'Saihamnagar', '3333', NULL, NULL),
(1238, 7, 51, 'Madhabpur', 130, 'Shahajibazar', '3332', NULL, NULL),
(1239, 7, 51, 'Nabiganj', 130, 'Digalbak', '3373', NULL, NULL),
(1240, 7, 51, 'Nabiganj', 130, 'Golduba', '3372', NULL, NULL),
(1241, 7, 51, 'Nabiganj', 130, 'Goplarbazar', '3371', NULL, NULL),
(1242, 7, 51, 'Nabiganj', 130, 'Inathganj', '3374', NULL, NULL),
(1243, 7, 51, 'Nabiganj', 130, 'Nabiganj', '3370', NULL, NULL),
(1244, 7, 52, 'Baralekha', 130, 'Baralekha', '3250', NULL, NULL),
(1245, 7, 52, 'Baralekha', 130, 'Dhakkhinbag', '3252', NULL, NULL),
(1246, 7, 52, 'Baralekha', 130, 'Juri', '3251', NULL, NULL),
(1247, 7, 52, 'Baralekha', 130, 'Purbashahabajpur', '3253', NULL, NULL),
(1248, 7, 52, 'Kamalganj', 130, 'Kamalganj', '3220', NULL, NULL),
(1249, 7, 52, 'Kamalganj', 130, 'Keramatnaga', '3221', NULL, NULL),
(1250, 7, 52, 'Kamalganj', 130, 'Munshibazar', '3224', NULL, NULL),
(1251, 7, 52, 'Kamalganj', 130, 'Patrakhola', '3222', NULL, NULL),
(1252, 7, 52, 'Kamalganj', 130, 'Shamsher Nagar', '3223', NULL, NULL),
(1253, 7, 52, 'Kulaura', 130, 'Baramchal', '3237', NULL, NULL),
(1254, 7, 52, 'Kulaura', 130, 'Kajaldhara', '3234', NULL, NULL),
(1255, 7, 52, 'Kulaura', 130, 'Karimpur', '3235', NULL, NULL),
(1256, 7, 52, 'Kulaura', 130, 'Kulaura', '3230', NULL, NULL),
(1257, 7, 52, 'Kulaura', 130, 'Langla', '3232', NULL, NULL),
(1258, 7, 52, 'Kulaura', 130, 'Prithimpasha', '3233', NULL, NULL),
(1259, 7, 52, 'Kulaura', 130, 'Tillagaon', '3231', NULL, NULL),
(1260, 7, 52, 'Moulvibazar Sadar', 130, 'Afrozganj', '3203', NULL, NULL),
(1261, 7, 52, 'Moulvibazar Sadar', 130, 'Barakapan', '3201', NULL, NULL),
(1262, 7, 52, 'Moulvibazar Sadar', 130, 'Monumukh', '3202', NULL, NULL),
(1263, 7, 52, 'Moulvibazar Sadar', 130, 'Moulvibazar Sadar', '3200', NULL, NULL),
(1264, 7, 52, 'Rajnagar', 130, 'Rajnagar', '3240', NULL, NULL),
(1265, 7, 52, 'Srimangal', 130, 'Kalighat', '3212', NULL, NULL),
(1266, 7, 52, 'Srimangal', 130, 'Khejurichhara', '3213', NULL, NULL),
(1267, 7, 52, 'Srimangal', 130, 'Narain Chora', '3211', NULL, NULL),
(1268, 7, 52, 'Srimangal', 130, 'Satgaon', '3214', NULL, NULL),
(1269, 7, 52, 'Srimangal', 130, 'Srimangal', '3210', NULL, NULL),
(1270, 7, 53, 'Bishamsarpur', 130, 'Bishamsapur', '3010', NULL, NULL),
(1271, 7, 53, 'Chhatak', 130, 'Chhatak', '3080', NULL, NULL),
(1272, 7, 53, 'Chhatak', 130, 'Chhatak Cement Facto', '3081', NULL, NULL),
(1273, 7, 53, 'Chhatak', 130, 'Chhatak Paper Mills', '3082', NULL, NULL),
(1274, 7, 53, 'Chhatak', 130, 'Chourangi Bazar', '3893', NULL, NULL),
(1275, 7, 53, 'Chhatak', 130, 'Gabindaganj', '3083', NULL, NULL),
(1276, 7, 53, 'Chhatak', 130, 'Gabindaganj Natun Ba', '3084', NULL, NULL),
(1277, 7, 53, 'Chhatak', 130, 'Islamabad', '3088', NULL, NULL),
(1278, 7, 53, 'Chhatak', 130, 'jahidpur', '3087', NULL, NULL),
(1279, 7, 53, 'Chhatak', 130, 'Khurma', '3085', NULL, NULL),
(1280, 7, 53, 'Chhatak', 130, 'Moinpur', '3086', NULL, NULL),
(1281, 7, 53, 'Dhirai Chandpur', 130, 'Dhirai Chandpur', '3040', NULL, NULL),
(1282, 7, 53, 'Dhirai Chandpur', 130, 'Jagdal', '3041', NULL, NULL),
(1283, 7, 53, 'Duara bazar', 130, 'Duara bazar', '3070', NULL, NULL),
(1284, 7, 53, 'Ghungiar', 130, 'Ghungiar', '3050', NULL, NULL),
(1285, 7, 53, 'Jagnnathpur', 130, 'Atuajan', '3062', NULL, NULL),
(1286, 7, 53, 'Jagnnathpur', 130, 'Hasan Fatemapur', '3063', NULL, NULL),
(1287, 7, 53, 'Jagnnathpur', 130, 'Jagnnathpur', '3060', NULL, NULL),
(1288, 7, 53, 'Jagnnathpur', 130, 'Rasulganj', '3064', NULL, NULL),
(1289, 7, 53, 'Jagnnathpur', 130, 'Shiramsi', '3065', NULL, NULL),
(1290, 7, 53, 'Jagnnathpur', 130, 'Syedpur', '3061', NULL, NULL),
(1291, 7, 53, 'Sachna', 130, 'Sachna', '3020', NULL, NULL),
(1292, 7, 53, 'Sunamganj Sadar', 130, 'Pagla', '3001', NULL, NULL),
(1293, 7, 53, 'Sunamganj Sadar', 130, 'Patharia', '3002', NULL, NULL),
(1294, 7, 53, 'Sunamganj Sadar', 130, 'Sunamganj Sadar', '3000', NULL, NULL),
(1295, 7, 53, 'Tahirpur', 130, 'Tahirpur', '3030', NULL, NULL),
(1296, 7, 54, 'Balaganj', 130, 'Balaganj', '3120', NULL, NULL),
(1297, 7, 54, 'Balaganj', 130, 'Begumpur', '3125', NULL, NULL),
(1298, 7, 54, 'Balaganj', 130, 'Brahman Shashon', '3122', NULL, NULL),
(1299, 7, 54, 'Balaganj', 130, 'Gaharpur', '3128', NULL, NULL),
(1300, 7, 54, 'Balaganj', 130, 'Goala Bazar', '3124', NULL, NULL),
(1301, 7, 54, 'Balaganj', 130, 'Karua', '3121', NULL, NULL),
(1302, 7, 54, 'Balaganj', 130, 'Kathal Khair', '3127', NULL, NULL),
(1303, 7, 54, 'Balaganj', 130, 'Natun Bazar', '3129', NULL, NULL),
(1304, 7, 54, 'Balaganj', 130, 'Omarpur', '3126', NULL, NULL),
(1305, 7, 54, 'Balaganj', 130, 'Tajpur', '3123', NULL, NULL),
(1306, 7, 54, 'Bianibazar', 130, 'Bianibazar', '3170', NULL, NULL),
(1307, 7, 54, 'Bianibazar', 130, 'Churkai', '3175', NULL, NULL),
(1308, 7, 54, 'Bianibazar', 130, 'jaldup', '3171', NULL, NULL),
(1309, 7, 54, 'Bianibazar', 130, 'Kurar bazar', '3173', NULL, NULL),
(1310, 7, 54, 'Bianibazar', 130, 'Mathiura', '3172', NULL, NULL),
(1311, 7, 54, 'Bianibazar', 130, 'Salia bazar', '3174', NULL, NULL),
(1312, 7, 54, 'Bishwanath', 130, 'Bishwanath', '3130', NULL, NULL),
(1313, 7, 54, 'Bishwanath', 130, 'Dashghar', '3131', NULL, NULL),
(1314, 7, 54, 'Bishwanath', 130, 'Deokalas', '3133', NULL, NULL),
(1315, 7, 54, 'Bishwanath', 130, 'Doulathpur', '3132', NULL, NULL),
(1316, 7, 54, 'Bishwanath', 130, 'Singer kanch', '3134', NULL, NULL),
(1317, 7, 54, 'Fenchuganj', 130, 'Fenchuganj', '3116', NULL, NULL),
(1318, 7, 54, 'Fenchuganj', 130, 'Fenchuganj SareKarkh', '3117', NULL, NULL),
(1319, 7, 54, 'Jaintapur', 130, 'Chiknagul', '3152', NULL, NULL),
(1320, 7, 54, 'Gowainghat', 130, 'Gowainghat', '3150', NULL, NULL),
(1321, 7, 54, 'Gowainghat', 130, 'Jaflong', '3151', NULL, NULL),
(1322, 7, 54, 'Gopalganj', 130, 'banigram', '3164', NULL, NULL),
(1323, 7, 54, 'Gopalganj', 130, 'Chandanpur', '3165', NULL, NULL),
(1324, 7, 54, 'Gopalganj', 130, 'Dakkhin Bhadashore', '3162', NULL, NULL),
(1325, 7, 54, 'Gopalganj', 130, 'Dhaka Dakkhin', '3161', NULL, NULL),
(1326, 7, 54, 'Gopalganj', 130, 'Gopalgannj', '3160', NULL, NULL),
(1327, 7, 54, 'Gopalganj', 130, 'Ranaping', '3163', NULL, NULL),
(1328, 7, 54, 'Jaintapur', 130, 'Jaintapur', '3156', NULL, NULL),
(1329, 7, 54, 'Jakiganj', 130, 'Ichhamati', '3191', NULL, NULL),
(1330, 7, 54, 'Jakiganj', 130, 'Jakiganj', '3190', NULL, NULL),
(1331, 7, 54, 'Kanaighat', 130, 'Chatulbazar', '3181', NULL, NULL),
(1332, 7, 54, 'Kanaighat', 130, 'Gachbari', '3183', NULL, NULL),
(1333, 7, 54, 'Kanaighat', 130, 'Kanaighat', '3180', NULL, NULL),
(1334, 7, 54, 'Kanaighat', 130, 'Manikganj', '3182', NULL, NULL),
(1335, 7, 54, 'Kompanyganj', 130, 'Kompanyganj', '3140', NULL, NULL),
(1336, 7, 54, 'Sylhet Sadar', 130, 'Birahimpur', '3106', NULL, NULL),
(1337, 7, 54, 'Sylhet Sadar', 130, 'Jalalabad', '3107', NULL, NULL),
(1338, 7, 54, 'Sylhet Sadar', 130, 'Jalalabad Cantoment', '3104', NULL, NULL),
(1339, 7, 54, 'Sylhet Sadar', 130, 'Kadamtali', '3111', NULL, NULL),
(1340, 7, 54, 'Sylhet Sadar', 130, 'Kamalbazer', '3112', NULL, NULL),
(1341, 7, 54, 'Sylhet Sadar', 130, 'Khadimnagar', '3103', NULL, NULL),
(1342, 7, 54, 'Sylhet Sadar', 130, 'Lalbazar', '3113', NULL, NULL),
(1343, 7, 54, 'Sylhet Sadar', 130, 'Mogla', '3108', NULL, NULL),
(1344, 7, 54, 'Sylhet Sadar', 130, 'Ranga Hajiganj', '3109', NULL, NULL),
(1345, 7, 54, 'Sylhet Sadar', 130, 'Shahajalal Science &', '3114', NULL, NULL),
(1346, 7, 54, 'Sylhet Sadar', 130, 'Silam', '3105', NULL, NULL),
(1347, 7, 54, 'Sylhet Sadar', 130, 'Sylhe Sadar', '3100', NULL, NULL),
(1348, 7, 54, 'Sylhet Sadar', 130, 'Sylhet Biman Bondar', '3102', NULL, NULL),
(1349, 7, 54, 'Sylhet Sadar', 130, 'Sylhet Cadet Col', '3101', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `raw_price` varchar(255) DEFAULT NULL,
  `regular_price` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `sku` varchar(255) NOT NULL,
  `stock` varchar(255) DEFAULT NULL,
  `is_sizechart` tinyint(1) DEFAULT 0,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `brand_id`, `category_id`, `supplier_id`, `raw_price`, `regular_price`, `description`, `sku`, `stock`, `is_sizechart`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(73, 'Camping mug', 3, 21, 3, '350', '600', '<p>camping mug&nbsp;</p><p>light weight</p>', 'O4EZCURW', NULL, 0, 'camping-mug', 'active', '2024-06-04 01:39:23', '2024-06-04 01:39:23'),
(74, 'Camping Lamp', 3, 21, 3, '600', '1199', '<p><span style=\"caret-color: rgb(228, 230, 235); color: rgb(228, 230, 235); font-family: system-ui, -apple-system, BlinkMacSystemFont, &quot;.SFNSText-Regular&quot;, sans-serif; font-size: 15px; font-style: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(36, 37, 38);\">Light-weight,300-lumen LED bulb and a 4000mAh battery capacity, it provides up to 6 hours of continuous lighting.</span><br></p>', 'BFMTJ8YD', NULL, 0, 'camping-lamp', 'active', '2024-06-04 09:56:19', '2024-06-04 09:56:19'),
(77, 'AIR PILLOW', 3, 21, 3, '370', '650', 'AIR PILLOW', 'FXUS74TE', NULL, 0, 'air-pillow', 'active', '2024-06-04 10:37:09', '2024-12-18 10:06:00'),
(78, 'THERMAL WATER BOTTLE', 3, 21, 3, '550', '999', '<p>THERMAL FLAX</p>', '4QHIS8GP', NULL, 0, 'thermal-water-bottle', 'active', '2024-06-04 10:43:58', '2024-06-04 10:43:58'),
(79, 'Male Hiking Pant', 3, 26, 3, '300', '799', '<p>-none-</p>', '3RFJI1W8', NULL, 0, 'hiking-pant', 'active', '2024-07-02 22:59:53', '2024-08-12 03:03:48'),
(80, 'Headlamp', 3, 23, 3, '170', '399', '<div dir=\"auto\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve;\">Multifunctional Non-<span style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">rechargeable </span><span style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\"> Headlamp.</span></div><div dir=\"auto\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve;\"><div dir=\"auto\" style=\"font-family: system-ui, -apple-system, BlinkMacSystemFont, &quot;.SFNSText-Regular&quot;, sans-serif; caret-color: rgb(228, 230, 235); color: rgb(228, 230, 235); font-size: 15px; font-style: normal; font-variant-caps: normal; font-weight: 400;\"><br></div></div>', 'JCB5YMT3', NULL, 0, 'headlamp', 'active', '2024-07-02 23:12:21', '2024-08-13 01:43:30'),
(81, 'Spoon Knife Fork Combo', 3, 21, 3, '180', '350', '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"margin-top: 0px; text-rendering: optimizelegibility; margin-bottom: 0px !important; line-height: 32px !important;\"><font color=\"#0f1111\" face=\"Amazon Ember, Arial, sans-serif\"><span style=\"font-size: 24px;\">Multifunctional 6-in-1 fork and spoon corkscrew combination/outdoor camping fork/spoon/table knife Military package for hiking, survival and camping</span></font><br></h1>', 'RVQE0OJW', NULL, 0, 'camping-spoon-knife-fork-combo', 'active', '2024-07-06 22:34:31', '2024-07-06 22:50:13'),
(82, 'Carabiner knife Combo', 3, 21, 3, '150', '350', '<p style=\"text-align: justify; \"><span style=\"font-size: 14px;\">【6 in 1 Multitools】This multi tool includes a folding pocket knife with sharp blade, a bottle opener, a glass breaker for emergency situations, a Phillips screwdriver, a slot screwdriver and a edc keychain carabiner clip. A nice survival camping gear meeting various tasks outdoor.<br>【Sturdy &amp; Durable】The whole carabiner multitool is constructed of premium stainless steel, which effectively prevents corrosion and ensures long term durability. You can use it as a heavy duty locking carabiner buckle like hanging hammock while is not intended for supporting human weight when rock climbing.</span><br><span style=\"font-size: 14px;\">【Compact &amp; Portable】Size 4.5″L X 2.2″W, 3.8 OZ. This edc survival gear can be easily and conveniently attached to backpacks, key chain, belt loops and more. Just remember to twist the locking latch for an optimal hold when everything is done.<br></span>【Safe &amp; Easy to use】The folding pocket knife for men features a locking liner mechanism for safety and a thumb hole to ensure effortlessly opening. All tools are quick release and easy to use. Perfect for camping, backpacking, hiking, hunting and other outdoors activities.<br></p><p style=\"text-align: justify; \"><br></p>', 'P24V7EA9', NULL, 0, 'carabiner-knife-combo', 'active', '2024-07-06 22:49:23', '2024-07-06 22:49:23'),
(83, 'FOLDABLE WATERPROOF BACKPACK 22L', 5, 24, 3, '870', '1699', '<p>Convenient folding and small storage: the fabric is soft, and the whole package only weighs about 172g</p><p><span style=\"font-size: 16px; font-weight: 400;\">Small size and large capacity: one bag is enough to accommodate the travel needs</span><br></p><p><span style=\"font-size: 16px; font-weight: 400;\">Wear-resistant and waterproof, no trouble on travel: Waterproof index of 30d nylon waterproof cloth 2000+</span><br></p><p><span style=\"font-size: 16px; font-weight: 400;\">Soft and breathable, comfortable and dry: breathable strap, fit the body, breathable without sweat</span><br></p><p><span style=\"font-size: 16px; font-weight: 400;\">Quality zipper, waterproof adhesive tape: YKK waterproof zipper, small parts block rainwater infiltration</span></p><p><span style=\"font-size: 16px; font-weight: 400;\"><br></span><br></p>', '7PAV6KCN', NULL, 0, 'ultralight-nylon-waterproof-foldable-backpack-22l', 'active', '2024-07-07 00:35:05', '2024-07-18 03:19:31'),
(84, 'FOLDABLE WATERPROOF BACKPACK 18L', 5, 24, 3, '700', '1499', '<p><b>BEST QUALITY MADE</b> - Made with high quality water &amp; tear resistant 30D nylon material. ZIPPERS : YKK sealed with silicone for water resistant / Fine nylon lines stitching provides durable strong / Adjustable Shoulder Straps: Breathable tear-resistant nylon for comfortable and never breaks worry . ALL PARTS WELL MADE, quality is far better than most polyester or 210T nylon backpacks on Amazon.</p><p>WATER RESISTANT - Silicone coated nylon fabric features PU2000mm water resistant, all zippers sealed by silicone coating can be fast open and close. It will be a fantastic necessity for not matter outdoor sports or leisure activities in or out of the city.</p><p>LIGHTWEIGHT(4.2oz) and ROOMY(18L) - Main pocket is large enough to carry what you need when you are in outdoor or travel. Outer pocket &amp; Inner zippered pocket great for quick access such as guide books and valuables items.Two large side mesh pockets for water bottles or umbrella. Size:17” x 10” when unfolded and collapses to 4.7” x 2.7” when folded.</p><p>MOST COMFORTABLE - Padded should straps relieving pressure even you carry heavy inside, breathable mesh keeps cool and dry in wet weather, adjustable buckles perfectly fits your back to most comfortable way, Naturehike backpack guarantee you feel the easy and relaxing breeze when wearing it.</p>', '8EG91FMT', NULL, 0, '18l-foldable-waterproof-camping-backpack', 'active', '2024-07-07 00:40:15', '2024-07-18 03:20:09'),
(85, 'Deng Bo Shi Bagpack 45L', 3, 24, 3, '850', '1499', '<p>Introducing our 45L Backpack with Rain Cover! 🎒🌧️ The perfect companion for your outdoor adventures. With ample space and a built-in rain cover, your belongings will stay protected. Available in black and orange.<br></p>', '792YLJN8', NULL, 0, 'deng-bo-shi-bagpack-45l', 'active', '2024-07-16 02:00:08', '2024-07-18 03:20:40'),
(86, 'Multi Purpose Tool', 3, 21, 3, '260', '350', '<p>New Outdoor Multifunctional Swiss Knife Camp Multitool Bottle Opener Folding Knife Portable Scissors Military Fold Pocket Knife<br></p>', '8WHSYABJ', NULL, 0, 'multi-purpose-tool', 'active', '2024-07-16 02:08:15', '2024-07-16 02:08:15'),
(87, 'Naturehike P-Series UPF 50+ Tent waterproof (3 person)', 5, 25, 3, '6850', '8999', '<p>Naturehike P-Series UPF 50+ Tent waterproof (3 person)</p><p>Fabric Embossed Upgrade P Series Aluminum Poles Tent UPF50 + &amp; PU2000 +</p><p><br></p><p>Family camping options: multi space to meet the needs of different numbers of people, both professional and in line with the public, anti ultraviolet, easy to build, double-layer structure, main hall</p><p>Design of the main hall: the space in front of the door is expanded into a sunshade to expand the comfortable activity space outside the tent</p><p>All aluminum alloy tent pole: its performance is better than that of glass one, and it is safe to camp overnight. With simple fastener, it can be built quickly, even without experience</p><p>UPF50 + UV protection: block the penetration of sunlight, more sunscreen, and effectively resist ultraviolet radiation in the hot sun</p><p>Rain proof fabric and technology: 210t polyester waterproof fabric and waterproof coating pu2000(± 200) are used to meet the needs of rain proof in leisure camping</p>', '392Q7IE4', NULL, 0, 'naturehike-p-series-upf-50-tent-waterproof-3-person', 'active', '2024-07-16 02:27:21', '2024-07-18 03:23:54'),
(88, 'Naturehike P-Series UPF 50+ Tent waterproof (2 person)', 5, 25, 3, '5800', '6499', '<p style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-family: sans-serif;\">Naturehike P-Series UPF 50+ Tent waterproof (3 person)</p><p style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-family: sans-serif;\">Fabric Embossed Upgrade P Series Aluminum Poles Tent UPF50 + &amp; PU2000 +</p><p style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-family: sans-serif;\"><br></p><p style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-family: sans-serif;\">Family camping options: multi space to meet the needs of different numbers of people, both professional and in line with the public, anti ultraviolet, easy to build, double-layer structure, main hall</p><p style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-family: sans-serif;\">Design of the main hall: the space in front of the door is expanded into a sunshade to expand the comfortable activity space outside the tent</p><p style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-family: sans-serif;\">All aluminum alloy tent pole: its performance is better than that of glass one, and it is safe to camp overnight. With simple fastener, it can be built quickly, even without experience</p><p style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-family: sans-serif;\">UPF50 + UV protection: block the penetration of sunlight, more sunscreen, and effectively resist ultraviolet radiation in the hot sun</p><p style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-family: sans-serif;\">Rain proof fabric and technology: 210t polyester waterproof fabric and waterproof coating pu2000(± 200) are used to meet the needs of rain proof in leisure camping</p>', 'KFZDE3NC', NULL, 0, 'naturehike-p-series-upf-50-tent-waterproof-2-person', 'active', '2024-07-16 02:35:19', '2024-07-18 03:24:57'),
(89, 'NEVO RHINO Internal Frame Mountain Climbing Backpack 45+5L', 3, 24, 3, '3900', '4999', '<p>Large Capacity: Product Size: 26 x 12.6 x 9.06 inch. 50L internal frame backpack travel, hiking backpack, lightweight 2.65 lbs. Many thoughtful pockets for stuff you’ll need for an extended outdoor adventure. 2 top pockets, 1 main pocket, 1 hydration pack pocket, 1 inner pocket, 1 mesh pocket for wet clothes, 2 side pockets for water bottles, 2 waist pockets for phone, 1 separated pocket for sleeping bag, 1 bottom pocket for rain cover. Great for hiking, cycling, backpacking, climbing</p><p>High Quality: This camping backpack is made of sturdy rip-stop scratch-resistant Nylon Material. Great zippers – durable zipper, well-sewn craftsmanship, high dense stitching. Built with strong stitching in the places you need it such as the shoulder straps, carrying handle, bottom, and other places. With waterproof rain cover prevents your outdoor gear from getting wet in drizzle</p><p>Breathable System: The hiking backpack is well constructed with a streamlined suspension system and breathable mesh padding on the back, shoulder straps, and hip belt for relieving fatigue and ventilation, speeding up heat dissipation. Making your trips more comfortable</p><p>Innovative Design: High-Load Waist Buckle- Waist buckle system stands up under big loads and is easy to tighten and thickly-padded split dual wishbone waist pad with independent top and bottom hip adjustments offers a more custom fit. Practical whistle buckle, D-shape carabiners easy access zippers, shoulder straps, hip straps. Ergonomically designed semi-circle hollow provides head comfort even when the backpacking backpack is full. Good for men and women.</p>', 'RSPCDIKH', NULL, 0, 'nevo-rhino-internal-frame-mountain-climbing-backpack-455l', 'active', '2024-07-16 02:49:57', '2024-07-18 03:21:19'),
(90, 'Male Quick Dry Pants', 3, 26, 3, '300', '799', '<p>none</p>', 'FQHZPMCJ', NULL, 0, 'quick-dry-pants', 'active', '2024-07-16 03:24:48', '2024-08-12 02:55:47'),
(91, 'James & Nicholson - Men\'s bi-Elastic Outdoor Shorts', 3, 26, 3, '150', '350', '<p>-none-</p>', 'LJO0U63Y', NULL, 0, 'james-nicholson-mens-bi-elastic-outdoor-shorts', 'active', '2024-07-16 04:06:24', '2024-08-12 03:09:16');
INSERT INTO `products` (`id`, `product_name`, `brand_id`, `category_id`, `supplier_id`, `raw_price`, `regular_price`, `description`, `sku`, `stock`, `is_sizechart`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(92, 'QUECHUA 2 Man Tent - MH100', 3, 25, 3, '3300', '4000', '<div class=\"product-info-item__title\" style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / .5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; color-scheme: unset; forced-color-adjust: unset; mask: unset; math-depth: unset; position: unset; position-anchor: unset; appearance: unset; color: rgb(16, 16, 16); font-family: __Inter_aaf875, __Inter_Fallback_aaf875, sans-serif; font-feature-settings: unset; font-kerning: unset; font-optical-sizing: unset; font-palette: unset; font-size: medium; font-stretch: unset; font-style: normal; font-synthesis: unset; font-variant-alternates: unset; font-variant-caps: normal; font-variant-east-asian: unset; font-variant-ligatures: normal; font-variant-numeric: unset; font-variant-position: unset; font-variation-settings: unset; font-weight: 400; inset-area: unset; text-orientation: unset; text-rendering: unset; text-spacing-trim: unset; -webkit-font-smoothing: unset; -webkit-locale: unset; -webkit-text-orientation: unset; -webkit-writing-mode: unset; writing-mode: unset; zoom: unset; accent-color: unset; place-content: unset; place-items: unset; place-self: unset; alignment-baseline: unset; anchor-name: unset; animation-composition: unset; animation: unset; app-region: unset; aspect-ratio: unset; backdrop-filter: unset; backface-visibility: unset; background-attachment: unset; background-blend-mode: unset; background-clip: unset; background-image: unset; background-origin: unset; background-position: unset; background-repeat: unset; background-size: unset; baseline-shift: unset; baseline-source: unset; block-size: unset; border-block: unset; border: unset; border-radius: unset; border-collapse: unset; border-end-end-radius: unset; border-end-start-radius: unset; border-inline: unset; border-start-end-radius: unset; border-start-start-radius: unset; inset: unset; box-shadow: unset; break-after: unset; break-before: unset; break-inside: unset; buffered-rendering: unset; caption-side: unset; caret-color: unset; clear: unset; clip: unset; clip-path: unset; clip-rule: unset; color-interpolation: unset; color-interpolation-filters: unset; color-rendering: unset; columns: unset; column-fill: unset; gap: unset; column-rule: unset; column-span: unset; contain: unset; contain-intrinsic-block-size: unset; contain-intrinsic-size: unset; contain-intrinsic-inline-size: unset; container: unset; content: unset; content-visibility: unset; counter-increment: unset; counter-reset: unset; counter-set: unset; cursor: unset; cx: unset; cy: unset; d: unset; display: revert; dominant-baseline: unset; empty-cells: unset; field-sizing: unset; fill: unset; fill-opacity: unset; fill-rule: unset; filter: unset; flex: unset; flex-flow: unset; float: unset; flood-color: unset; flood-opacity: unset; grid: unset; grid-area: unset; height: unset; hyphenate-character: unset; hyphenate-limit-chars: unset; hyphens: unset; image-orientation: unset; image-rendering: unset; initial-letter: unset; inline-size: unset; inset-block: unset; inset-inline: unset; isolation: unset; lighting-color: unset; line-break: unset; line-height: unset; list-style: unset; margin-block: unset; margin-bottom: var(--vp-semantic-spacing-2xs); margin-inline: unset; margin-left: unset; margin-right: unset; margin-top: unset; marker: unset; mask-type: unset; math-shift: unset; math-style: unset; max-block-size: unset; max-height: unset; max-inline-size: unset; max-width: unset; min-block-size: unset; min-height: unset; min-inline-size: unset; min-width: unset; mix-blend-mode: unset; object-fit: unset; object-position: unset; object-view-box: unset; offset: unset; opacity: unset; order: unset; outline: unset; outline-offset: unset; overflow-anchor: unset; overflow-clip-margin: unset; overflow-wrap: unset; overflow: unset; overlay: unset; overscroll-behavior-block: unset; overscroll-behavior-inline: unset; overscroll-behavior: unset; padding-block: unset; padding: unset; padding-inline: unset; page: unset; page-orientation: unset; paint-order: unset; perspective: unset; perspective-origin: unset; pointer-events: unset; position-try: unset; position-visibility: unset; quotes: unset; r: unset; resize: unset; rotate: unset; ruby-position: unset; rx: unset; ry: unset; scale: unset; scroll-behavior: unset; scroll-margin-block: unset; scroll-margin: unset; scroll-margin-inline: unset; scroll-padding-block: unset; scroll-padding: unset; scroll-padding-inline: unset; scroll-snap-align: unset; scroll-snap-stop: unset; scroll-snap-type: unset; scroll-timeline: unset; scrollbar-color: unset; scrollbar-gutter: unset; scrollbar-width: unset; shape-image-threshold: unset; shape-margin: unset; shape-outside: unset; shape-rendering: unset; size: unset; speak: unset; stop-color: unset; stop-opacity: unset; stroke: unset; stroke-dasharray: unset; stroke-dashoffset: unset; stroke-linecap: unset; stroke-linejoin: unset; stroke-miterlimit: unset; stroke-opacity: unset; stroke-width: unset; tab-size: unset; table-layout: unset; text-align-last: unset; text-anchor: unset; text-combine-upright: unset; text-decoration-line: unset; text-decoration-skip-ink: unset; text-emphasis: unset; text-emphasis-position: unset; text-overflow: unset; text-shadow: unset; text-size-adjust: unset; text-underline-offset: unset; text-underline-position: unset; timeline-scope: unset; touch-action: unset; transform: unset; transform-box: unset; transform-origin: unset; transform-style: unset; transition: unset; translate: unset; user-select: unset; vector-effect: unset; vertical-align: unset; view-timeline: unset; view-transition-class: unset; view-transition-name: unset; visibility: unset; border-spacing: unset; -webkit-box-align: unset; -webkit-box-decoration-break: unset; -webkit-box-direction: unset; -webkit-box-flex: unset; -webkit-box-ordinal-group: unset; -webkit-box-orient: unset; -webkit-box-pack: unset; -webkit-box-reflect: unset; -webkit-line-break: unset; -webkit-line-clamp: unset; -webkit-mask-box-image: unset; -webkit-print-color-adjust: unset; -webkit-rtl-ordering: unset; -webkit-ruby-position: unset; -webkit-tap-highlight-color: unset; -webkit-text-combine: unset; -webkit-text-decorations-in-effect: unset; -webkit-text-fill-color: unset; -webkit-text-security: unset; -webkit-text-stroke-color: unset; -webkit-user-drag: unset; width: unset; will-change: unset; word-break: unset; x: unset; y: unset; z-index: unset;\"><div class=\"subtitle-m\" style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / .5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; color-scheme: unset; forced-color-adjust: unset; mask: unset; math-depth: unset; position: unset; position-anchor: unset; appearance: unset; color: unset; font-family: var(--vp-semantic-typography-screen-s-subtitle-m-font-family); font-feature-settings: unset; font-kerning: unset; font-optical-sizing: unset; font-palette: unset; font-size: var(--vp-semantic-typography-screen-s-subtitle-m-font-size); font-stretch: unset; font-style: unset; font-synthesis: unset; font-variant: unset; font-variation-settings: unset; font-weight: var(--vp-semantic-typography-screen-s-subtitle-m-font-weight); inset-area: unset; text-orientation: unset; text-rendering: unset; text-spacing-trim: unset; -webkit-font-smoothing: unset; -webkit-locale: unset; -webkit-text-orientation: unset; -webkit-writing-mode: unset; writing-mode: unset; zoom: unset; accent-color: unset; place-content: unset; place-items: unset; place-self: unset; alignment-baseline: unset; anchor-name: unset; animation-composition: unset; animation: unset; app-region: unset; aspect-ratio: unset; backdrop-filter: unset; backface-visibility: unset; background: unset; background-blend-mode: unset; baseline-shift: unset; baseline-source: unset; block-size: unset; border-block: unset; border: unset; border-radius: unset; border-collapse: unset; border-end-end-radius: unset; border-end-start-radius: unset; border-inline: unset; border-start-end-radius: unset; border-start-start-radius: unset; inset: unset; box-shadow: unset; break-after: unset; break-before: unset; break-inside: unset; buffered-rendering: unset; caption-side: unset; caret-color: unset; clear: unset; clip: unset; clip-path: unset; clip-rule: unset; color-interpolation: unset; color-interpolation-filters: unset; color-rendering: unset; columns: unset; column-fill: unset; gap: unset; column-rule: unset; column-span: unset; contain: unset; contain-intrinsic-block-size: unset; contain-intrinsic-size: unset; contain-intrinsic-inline-size: unset; container: unset; content: unset; content-visibility: unset; counter-increment: unset; counter-reset: unset; counter-set: unset; cursor: unset; cx: unset; cy: unset; d: unset; display: revert; dominant-baseline: unset; empty-cells: unset; field-sizing: unset; fill: unset; fill-opacity: unset; fill-rule: unset; filter: unset; flex: unset; flex-flow: unset; float: unset; flood-color: unset; flood-opacity: unset; grid: unset; grid-area: unset; height: unset; hyphenate-character: unset; hyphenate-limit-chars: unset; hyphens: unset; image-orientation: unset; image-rendering: unset; initial-letter: unset; inline-size: unset; inset-block: unset; inset-inline: unset; isolation: unset; letter-spacing: var(\r\n    --vp-semantic-typography-screen-s-subtitle-m-letter-spacing\r\n  ); lighting-color: unset; line-break: unset; line-height: var(--vp-semantic-typography-screen-s-subtitle-m-line-height); list-style: unset; margin-block: unset; margin: unset; margin-inline: unset; marker: unset; mask-type: unset; math-shift: unset; math-style: unset; max-block-size: unset; max-height: unset; max-inline-size: unset; max-width: unset; min-block-size: unset; min-height: unset; min-inline-size: unset; min-width: unset; mix-blend-mode: unset; object-fit: unset; object-position: unset; object-view-box: unset; offset: unset; opacity: unset; order: unset; orphans: unset; outline: unset; outline-offset: unset; overflow-anchor: unset; overflow-clip-margin: unset; overflow-wrap: unset; overflow: unset; overlay: unset; overscroll-behavior-block: unset; overscroll-behavior-inline: unset; overscroll-behavior: unset; padding-block: unset; padding: unset; padding-inline: unset; page: unset; page-orientation: unset; paint-order: unset; perspective: unset; perspective-origin: unset; pointer-events: unset; position-try: unset; position-visibility: unset; quotes: unset; r: unset; resize: unset; rotate: unset; ruby-position: unset; rx: unset; ry: unset; scale: unset; scroll-behavior: unset; scroll-margin-block: unset; scroll-margin: unset; scroll-margin-inline: unset; scroll-padding-block: unset; scroll-padding: unset; scroll-padding-inline: unset; scroll-snap-align: unset; scroll-snap-stop: unset; scroll-snap-type: unset; scroll-timeline: unset; scrollbar-color: unset; scrollbar-gutter: unset; scrollbar-width: unset; shape-image-threshold: unset; shape-margin: unset; shape-outside: unset; shape-rendering: unset; size: unset; speak: unset; stop-color: unset; stop-opacity: unset; stroke: unset; stroke-dasharray: unset; stroke-dashoffset: unset; stroke-linecap: unset; stroke-linejoin: unset; stroke-miterlimit: unset; stroke-opacity: unset; stroke-width: unset; tab-size: unset; table-layout: unset; text-align: unset; text-align-last: unset; text-anchor: unset; text-combine-upright: unset; text-decoration: var(\r\n    --vp-semantic-typography-screen-s-subtitle-m-text-decoration\r\n  ); text-decoration-skip-ink: unset; text-emphasis: unset; text-emphasis-position: unset; text-indent: unset; text-overflow: unset; text-shadow: unset; text-size-adjust: unset; text-transform: var(--vp-semantic-typography-screen-s-subtitle-m-text-case); text-underline-offset: unset; text-underline-position: unset; white-space: unset; timeline-scope: unset; touch-action: unset; transform: unset; transform-box: unset; transform-origin: unset; transform-style: unset; transition: unset; translate: unset; user-select: unset; vector-effect: unset; vertical-align: unset; view-timeline: unset; view-transition-class: unset; view-transition-name: unset; visibility: unset; border-spacing: unset; -webkit-box-align: unset; -webkit-box-decoration-break: unset; -webkit-box-direction: unset; -webkit-box-flex: unset; -webkit-box-ordinal-group: unset; -webkit-box-orient: unset; -webkit-box-pack: unset; -webkit-box-reflect: unset; -webkit-line-break: unset; -webkit-line-clamp: unset; -webkit-mask-box-image: unset; -webkit-print-color-adjust: unset; -webkit-rtl-ordering: unset; -webkit-ruby-position: unset; -webkit-tap-highlight-color: unset; -webkit-text-combine: unset; -webkit-text-decorations-in-effect: unset; -webkit-text-fill-color: unset; -webkit-text-security: unset; -webkit-text-stroke: unset; -webkit-user-drag: unset; widows: unset; width: unset; will-change: unset; word-break: unset; word-spacing: unset; x: unset; y: unset; z-index: unset;\">easy assembly / dismantling</div></div><div class=\"product-info-item__description\" style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / .5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; color-scheme: unset; forced-color-adjust: unset; mask: unset; math-depth: unset; position: unset; position-anchor: unset; appearance: unset; color: var(--vp-semantic-color-content-quiet); font-family: __Inter_aaf875, __Inter_Fallback_aaf875, sans-serif; font-feature-settings: unset; font-kerning: unset; font-optical-sizing: unset; font-palette: unset; font-size: medium; font-stretch: unset; font-style: normal; font-synthesis: unset; font-variant-alternates: unset; font-variant-caps: normal; font-variant-east-asian: unset; font-variant-ligatures: normal; font-variant-numeric: unset; font-variant-position: unset; font-variation-settings: unset; font-weight: var(--vp-semantic-typography-screen-s-body-m-font-weight); inset-area: unset; text-orientation: unset; text-rendering: unset; text-spacing-trim: unset; -webkit-font-smoothing: unset; -webkit-locale: unset; -webkit-text-orientation: unset; -webkit-writing-mode: unset; writing-mode: unset; zoom: unset; accent-color: unset; place-content: unset; place-items: unset; place-self: unset; alignment-baseline: unset; anchor-name: unset; animation-composition: unset; animation: unset; app-region: unset; aspect-ratio: unset; backdrop-filter: unset; backface-visibility: unset; background-attachment: unset; background-blend-mode: unset; background-clip: unset; background-image: unset; background-origin: unset; background-position: unset; background-repeat: unset; background-size: unset; baseline-shift: unset; baseline-source: unset; block-size: unset; border-block: unset; border: unset; border-radius: unset; border-collapse: unset; border-end-end-radius: unset; border-end-start-radius: unset; border-inline: unset; border-start-end-radius: unset; border-start-start-radius: unset; inset: unset; box-shadow: unset; break-after: unset; break-before: unset; break-inside: unset; buffered-rendering: unset; caption-side: unset; caret-color: unset; clear: unset; clip: unset; clip-path: unset; clip-rule: unset; color-interpolation: unset; color-interpolation-filters: unset; color-rendering: unset; columns: unset; column-fill: unset; gap: unset; column-rule: unset; column-span: unset; contain: unset; contain-intrinsic-block-size: unset; contain-intrinsic-size: unset; contain-intrinsic-inline-size: unset; container: unset; content: unset; content-visibility: unset; counter-increment: unset; counter-reset: unset; counter-set: unset; cursor: unset; cx: unset; cy: unset; d: unset; display: revert; dominant-baseline: unset; empty-cells: unset; field-sizing: unset; fill: unset; fill-opacity: unset; fill-rule: unset; filter: unset; flex: unset; flex-flow: unset; float: unset; flood-color: unset; flood-opacity: unset; grid: unset; grid-area: unset; height: unset; hyphenate-character: unset; hyphenate-limit-chars: unset; hyphens: unset; image-orientation: unset; image-rendering: unset; initial-letter: unset; inline-size: unset; inset-block: unset; inset-inline: unset; isolation: unset; letter-spacing: var(--vp-semantic-typography-screen-s-body-m-letter-spacing); lighting-color: unset; line-break: unset; line-height: var(--vp-semantic-typography-screen-s-body-m-line-height); list-style: unset; margin-block: unset; margin: unset; margin-inline: unset; marker: unset; mask-type: unset; math-shift: unset; math-style: unset; max-block-size: unset; max-height: unset; max-inline-size: unset; max-width: unset; min-block-size: unset; min-height: unset; min-inline-size: unset; min-width: unset; mix-blend-mode: unset; object-fit: unset; object-position: unset; object-view-box: unset; offset: unset; opacity: unset; order: unset; outline: unset; outline-offset: unset; overflow-anchor: unset; overflow-clip-margin: unset; overflow-wrap: unset; overflow: unset; overlay: unset; overscroll-behavior-block: unset; overscroll-behavior-inline: unset; overscroll-behavior: unset; padding-block: unset; padding: unset; padding-inline: unset; page: unset; page-orientation: unset; paint-order: unset; perspective: unset; perspective-origin: unset; pointer-events: unset; position-try: unset; position-visibility: unset; quotes: unset; r: unset; resize: unset; rotate: unset; ruby-position: unset; rx: unset; ry: unset; scale: unset; scroll-behavior: unset; scroll-margin-block: unset; scroll-margin: unset; scroll-margin-inline: unset; scroll-padding-block: unset; scroll-padding: unset; scroll-padding-inline: unset; scroll-snap-align: unset; scroll-snap-stop: unset; scroll-snap-type: unset; scroll-timeline: unset; scrollbar-color: unset; scrollbar-gutter: unset; scrollbar-width: unset; shape-image-threshold: unset; shape-margin: unset; shape-outside: unset; shape-rendering: unset; size: unset; speak: unset; stop-color: unset; stop-opacity: unset; stroke: unset; stroke-dasharray: unset; stroke-dashoffset: unset; stroke-linecap: unset; stroke-linejoin: unset; stroke-miterlimit: unset; stroke-opacity: unset; stroke-width: unset; tab-size: unset; table-layout: unset; text-align-last: unset; text-anchor: unset; text-combine-upright: unset; text-decoration-skip-ink: unset; text-emphasis: unset; text-emphasis-position: unset; text-overflow: unset; text-shadow: unset; text-size-adjust: unset; text-underline-offset: unset; text-underline-position: unset; white-space-collapse: preserve; timeline-scope: unset; touch-action: unset; transform: unset; transform-box: unset; transform-origin: unset; transform-style: unset; transition: unset; translate: unset; user-select: unset; vector-effect: unset; vertical-align: unset; view-timeline: unset; view-transition-class: unset; view-transition-name: unset; visibility: unset; border-spacing: unset; -webkit-box-align: unset; -webkit-box-decoration-break: unset; -webkit-box-direction: unset; -webkit-box-flex: unset; -webkit-box-ordinal-group: unset; -webkit-box-orient: unset; -webkit-box-pack: unset; -webkit-box-reflect: unset; -webkit-line-break: unset; -webkit-line-clamp: unset; -webkit-mask-box-image: unset; -webkit-print-color-adjust: unset; -webkit-rtl-ordering: unset; -webkit-ruby-position: unset; -webkit-tap-highlight-color: unset; -webkit-text-combine: unset; -webkit-text-decorations-in-effect: unset; -webkit-text-fill-color: unset; -webkit-text-security: unset; -webkit-text-stroke-color: unset; -webkit-user-drag: unset; width: unset; will-change: unset; word-break: unset; x: unset; y: unset; z-index: unset;\"><span class=\"body-m\" style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / .5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; color-scheme: unset; forced-color-adjust: unset; mask: unset; math-depth: unset; position: unset; position-anchor: unset; appearance: unset; color: unset; font-family: var(--vp-semantic-typography-screen-s-body-m-font-family); font-feature-settings: unset; font-kerning: unset; font-optical-sizing: unset; font-palette: unset; font-size: var(--vp-semantic-typography-screen-s-body-m-font-size); font-stretch: unset; font-style: unset; font-synthesis: unset; font-variant: unset; font-variation-settings: unset; font-weight: var(--vp-semantic-typography-screen-s-body-m-font-weight); inset-area: unset; text-orientation: unset; text-rendering: unset; text-spacing-trim: unset; -webkit-font-smoothing: unset; -webkit-locale: unset; -webkit-text-orientation: unset; -webkit-writing-mode: unset; writing-mode: unset; zoom: unset; accent-color: unset; place-content: unset; place-items: unset; place-self: unset; alignment-baseline: unset; anchor-name: unset; animation-composition: unset; animation: unset; app-region: unset; aspect-ratio: unset; backdrop-filter: unset; backface-visibility: unset; background: unset; background-blend-mode: unset; baseline-shift: unset; baseline-source: unset; block-size: unset; border-block: unset; border: unset; border-radius: unset; border-collapse: unset; border-end-end-radius: unset; border-end-start-radius: unset; border-inline: unset; border-start-end-radius: unset; border-start-start-radius: unset; inset: unset; box-shadow: unset; break-after: unset; break-before: unset; break-inside: unset; buffered-rendering: unset; caption-side: unset; caret-color: unset; clear: unset; clip: unset; clip-path: unset; clip-rule: unset; color-interpolation: unset; color-interpolation-filters: unset; color-rendering: unset; columns: unset; column-fill: unset; gap: unset; column-rule: unset; column-span: unset; contain: unset; contain-intrinsic-block-size: unset; contain-intrinsic-size: unset; contain-intrinsic-inline-size: unset; container: unset; content: unset; content-visibility: unset; counter-increment: unset; counter-reset: unset; counter-set: unset; cursor: unset; cx: unset; cy: unset; d: unset; display: revert; dominant-baseline: unset; empty-cells: unset; field-sizing: unset; fill: unset; fill-opacity: unset; fill-rule: unset; filter: unset; flex: unset; flex-flow: unset; float: unset; flood-color: unset; flood-opacity: unset; grid: unset; grid-area: unset; height: unset; hyphenate-character: unset; hyphenate-limit-chars: unset; hyphens: unset; image-orientation: unset; image-rendering: unset; initial-letter: unset; inline-size: unset; inset-block: unset; inset-inline: unset; isolation: unset; letter-spacing: var(--vp-semantic-typography-screen-s-body-m-letter-spacing); lighting-color: unset; line-break: unset; line-height: var(--vp-semantic-typography-screen-s-body-m-line-height); list-style: unset; margin-block: unset; margin: unset; margin-inline: unset; marker: unset; mask-type: unset; math-shift: unset; math-style: unset; max-block-size: unset; max-height: unset; max-inline-size: unset; max-width: unset; min-block-size: unset; min-height: unset; min-inline-size: unset; min-width: unset; mix-blend-mode: unset; object-fit: unset; object-position: unset; object-view-box: unset; offset: unset; opacity: unset; order: unset; orphans: unset; outline: unset; outline-offset: unset; overflow-anchor: unset; overflow-clip-margin: unset; overflow-wrap: unset; overflow: unset; overlay: unset; overscroll-behavior-block: unset; overscroll-behavior-inline: unset; overscroll-behavior: unset; padding-block: unset; padding: unset; padding-inline: unset; page: unset; page-orientation: unset; paint-order: unset; perspective: unset; perspective-origin: unset; pointer-events: unset; position-try: unset; position-visibility: unset; quotes: unset; r: unset; resize: unset; rotate: unset; ruby-position: unset; rx: unset; ry: unset; scale: unset; scroll-behavior: unset; scroll-margin-block: unset; scroll-margin: unset; scroll-margin-inline: unset; scroll-padding-block: unset; scroll-padding: unset; scroll-padding-inline: unset; scroll-snap-align: unset; scroll-snap-stop: unset; scroll-snap-type: unset; scroll-timeline: unset; scrollbar-color: unset; scrollbar-gutter: unset; scrollbar-width: unset; shape-image-threshold: unset; shape-margin: unset; shape-outside: unset; shape-rendering: unset; size: unset; speak: unset; stop-color: unset; stop-opacity: unset; stroke: unset; stroke-dasharray: unset; stroke-dashoffset: unset; stroke-linecap: unset; stroke-linejoin: unset; stroke-miterlimit: unset; stroke-opacity: unset; stroke-width: unset; tab-size: unset; table-layout: unset; text-align: unset; text-align-last: unset; text-anchor: unset; text-combine-upright: unset; text-decoration: var(\r\n    --vp-semantic-typography-screen-s-body-m-text-decoration\r\n  ); text-decoration-skip-ink: unset; text-emphasis: unset; text-emphasis-position: unset; text-indent: unset; text-overflow: unset; text-shadow: unset; text-size-adjust: unset; text-transform: var(--vp-semantic-typography-screen-s-body-m-text-case); text-underline-offset: unset; text-underline-position: unset; white-space: unset; timeline-scope: unset; touch-action: unset; transform: unset; transform-box: unset; transform-origin: unset; transform-style: unset; transition: unset; translate: unset; user-select: unset; vector-effect: unset; vertical-align: unset; view-timeline: unset; view-transition-class: unset; view-transition-name: unset; visibility: unset; border-spacing: unset; -webkit-box-align: unset; -webkit-box-decoration-break: unset; -webkit-box-direction: unset; -webkit-box-flex: unset; -webkit-box-ordinal-group: unset; -webkit-box-orient: unset; -webkit-box-pack: unset; -webkit-box-reflect: unset; -webkit-line-break: unset; -webkit-line-clamp: unset; -webkit-mask-box-image: unset; -webkit-print-color-adjust: unset; -webkit-rtl-ordering: unset; -webkit-ruby-position: unset; -webkit-tap-highlight-color: unset; -webkit-text-combine: unset; -webkit-text-decorations-in-effect: unset; -webkit-text-fill-color: unset; -webkit-text-security: unset; -webkit-text-stroke: unset; -webkit-user-drag: unset; widows: unset; width: unset; will-change: unset; word-break: unset; word-spacing: unset; x: unset; y: unset; z-index: unset;\">Free-standing structure. Simple pole installation.\r\n<div class=\"product-info-item__title\" style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / .5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; color-scheme: unset; forced-color-adjust: unset; mask: unset; math-depth: unset; position: unset; position-anchor: unset; appearance: unset; color: rgb(16, 16, 16); font-family: __Inter_aaf875, __Inter_Fallback_aaf875, sans-serif; font-feature-settings: unset; font-kerning: unset; font-optical-sizing: unset; font-palette: unset; font-size: medium; font-stretch: unset; font-style: normal; font-synthesis: unset; font-variant-alternates: unset; font-variant-caps: normal; font-variant-east-asian: unset; font-variant-ligatures: normal; font-variant-numeric: unset; font-variant-position: unset; font-variation-settings: unset; font-weight: 400; inset-area: unset; text-orientation: unset; text-rendering: unset; text-spacing-trim: unset; -webkit-font-smoothing: unset; -webkit-locale: unset; -webkit-text-orientation: unset; -webkit-writing-mode: unset; writing-mode: unset; zoom: unset; accent-color: unset; place-content: unset; place-items: unset; place-self: unset; alignment-baseline: unset; anchor-name: unset; animation-composition: unset; animation: unset; app-region: unset; aspect-ratio: unset; backdrop-filter: unset; backface-visibility: unset; background-attachment: unset; background-blend-mode: unset; background-clip: unset; background-image: unset; background-origin: unset; background-position: unset; background-repeat: unset; background-size: unset; baseline-shift: unset; baseline-source: unset; block-size: unset; border-block: unset; border: unset; border-radius: unset; border-collapse: unset; border-end-end-radius: unset; border-end-start-radius: unset; border-inline: unset; border-start-end-radius: unset; border-start-start-radius: unset; inset: unset; box-shadow: unset; break-after: unset; break-before: unset; break-inside: unset; buffered-rendering: unset; caption-side: unset; caret-color: unset; clear: unset; clip: unset; clip-path: unset; clip-rule: unset; color-interpolation: unset; color-interpolation-filters: unset; color-rendering: unset; columns: unset; column-fill: unset; gap: unset; column-rule: unset; column-span: unset; contain: unset; contain-intrinsic-block-size: unset; contain-intrinsic-size: unset; contain-intrinsic-inline-size: unset; container: unset; content: unset; content-visibility: unset; counter-increment: unset; counter-reset: unset; counter-set: unset; cursor: unset; cx: unset; cy: unset; d: unset; display: revert; dominant-baseline: unset; empty-cells: unset; field-sizing: unset; fill: unset; fill-opacity: unset; fill-rule: unset; filter: unset; flex: unset; flex-flow: unset; float: unset; flood-color: unset; flood-opacity: unset; grid: unset; grid-area: unset; height: unset; hyphenate-character: unset; hyphenate-limit-chars: unset; hyphens: unset; image-orientation: unset; image-rendering: unset; initial-letter: unset; inline-size: unset; inset-block: unset; inset-inline: unset; isolation: unset; lighting-color: unset; line-break: unset; line-height: unset; list-style: unset; margin-block: unset; margin-bottom: var(--vp-semantic-spacing-2xs); margin-inline: unset; margin-left: unset; margin-right: unset; margin-top: unset; marker: unset; mask-type: unset; math-shift: unset; math-style: unset; max-block-size: unset; max-height: unset; max-inline-size: unset; max-width: unset; min-block-size: unset; min-height: unset; min-inline-size: unset; min-width: unset; mix-blend-mode: unset; object-fit: unset; object-position: unset; object-view-box: unset; offset: unset; opacity: unset; order: unset; outline: unset; outline-offset: unset; overflow-anchor: unset; overflow-clip-margin: unset; overflow-wrap: unset; overflow: unset; overlay: unset; overscroll-behavior-block: unset; overscroll-behavior-inline: unset; overscroll-behavior: unset; padding-block: unset; padding: unset; padding-inline: unset; page: unset; page-orientation: unset; paint-order: unset; perspective: unset; perspective-origin: unset; pointer-events: unset; position-try: unset; position-visibility: unset; quotes: unset; r: unset; resize: unset; rotate: unset; ruby-position: unset; rx: unset; ry: unset; scale: unset; scroll-behavior: unset; scroll-margin-block: unset; scroll-margin: unset; scroll-margin-inline: unset; scroll-padding-block: unset; scroll-padding: unset; scroll-padding-inline: unset; scroll-snap-align: unset; scroll-snap-stop: unset; scroll-snap-type: unset; scroll-timeline: unset; scrollbar-color: unset; scrollbar-gutter: unset; scrollbar-width: unset; shape-image-threshold: unset; shape-margin: unset; shape-outside: unset; shape-rendering: unset; size: unset; speak: unset; stop-color: unset; stop-opacity: unset; stroke: unset; stroke-dasharray: unset; stroke-dashoffset: unset; stroke-linecap: unset; stroke-linejoin: unset; stroke-miterlimit: unset; stroke-opacity: unset; stroke-width: unset; tab-size: unset; table-layout: unset; text-align-last: unset; text-anchor: unset; text-combine-upright: unset; text-decoration-line: unset; text-decoration-skip-ink: unset; text-emphasis: unset; text-emphasis-position: unset; text-overflow: unset; text-shadow: unset; text-size-adjust: unset; text-underline-offset: unset; text-underline-position: unset; white-space-collapse: collapse; timeline-scope: unset; touch-action: unset; transform: unset; transform-box: unset; transform-origin: unset; transform-style: unset; transition: unset; translate: unset; user-select: unset; vector-effect: unset; vertical-align: unset; view-timeline: unset; view-transition-class: unset; view-transition-name: unset; visibility: unset; border-spacing: unset; -webkit-box-align: unset; -webkit-box-decoration-break: unset; -webkit-box-direction: unset; -webkit-box-flex: unset; -webkit-box-ordinal-group: unset; -webkit-box-orient: unset; -webkit-box-pack: unset; -webkit-box-reflect: unset; -webkit-line-break: unset; -webkit-line-clamp: unset; -webkit-mask-box-image: unset; -webkit-print-color-adjust: unset; -webkit-rtl-ordering: unset; -webkit-ruby-position: unset; -webkit-tap-highlight-color: unset; -webkit-text-combine: unset; -webkit-text-decorations-in-effect: unset; -webkit-text-fill-color: unset; -webkit-text-security: unset; -webkit-text-stroke-color: unset; -webkit-user-drag: unset; width: unset; will-change: unset; word-break: unset; x: unset; y: unset; z-index: unset;\"><div class=\"subtitle-m\" style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / .5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; color-scheme: unset; forced-color-adjust: unset; mask: unset; math-depth: unset; position: unset; position-anchor: unset; appearance: unset; color: unset; font-family: var(--vp-semantic-typography-screen-s-subtitle-m-font-family); font-feature-settings: unset; font-kerning: unset; font-optical-sizing: unset; font-palette: unset; font-size: var(--vp-semantic-typography-screen-s-subtitle-m-font-size); font-stretch: unset; font-style: unset; font-synthesis: unset; font-variant: unset; font-variation-settings: unset; font-weight: var(--vp-semantic-typography-screen-s-subtitle-m-font-weight); inset-area: unset; text-orientation: unset; text-rendering: unset; text-spacing-trim: unset; -webkit-font-smoothing: unset; -webkit-locale: unset; -webkit-text-orientation: unset; -webkit-writing-mode: unset; writing-mode: unset; zoom: unset; accent-color: unset; place-content: unset; place-items: unset; place-self: unset; alignment-baseline: unset; anchor-name: unset; animation-composition: unset; animation: unset; app-region: unset; aspect-ratio: unset; backdrop-filter: unset; backface-visibility: unset; background: unset; background-blend-mode: unset; baseline-shift: unset; baseline-source: unset; block-size: unset; border-block: unset; border: unset; border-radius: unset; border-collapse: unset; border-end-end-radius: unset; border-end-start-radius: unset; border-inline: unset; border-start-end-radius: unset; border-start-start-radius: unset; inset: unset; box-shadow: unset; break-after: unset; break-before: unset; break-inside: unset; buffered-rendering: unset; caption-side: unset; caret-color: unset; clear: unset; clip: unset; clip-path: unset; clip-rule: unset; color-interpolation: unset; color-interpolation-filters: unset; color-rendering: unset; columns: unset; column-fill: unset; gap: unset; column-rule: unset; column-span: unset; contain: unset; contain-intrinsic-block-size: unset; contain-intrinsic-size: unset; contain-intrinsic-inline-size: unset; container: unset; content: unset; content-visibility: unset; counter-increment: unset; counter-reset: unset; counter-set: unset; cursor: unset; cx: unset; cy: unset; d: unset; display: revert; dominant-baseline: unset; empty-cells: unset; field-sizing: unset; fill: unset; fill-opacity: unset; fill-rule: unset; filter: unset; flex: unset; flex-flow: unset; float: unset; flood-color: unset; flood-opacity: unset; grid: unset; grid-area: unset; height: unset; hyphenate-character: unset; hyphenate-limit-chars: unset; hyphens: unset; image-orientation: unset; image-rendering: unset; initial-letter: unset; inline-size: unset; inset-block: unset; inset-inline: unset; isolation: unset; letter-spacing: var(\r\n    --vp-semantic-typography-screen-s-subtitle-m-letter-spacing\r\n  ); lighting-color: unset; line-break: unset; line-height: var(--vp-semantic-typography-screen-s-subtitle-m-line-height); list-style: unset; margin-block: unset; margin: unset; margin-inline: unset; marker: unset; mask-type: unset; math-shift: unset; math-style: unset; max-block-size: unset; max-height: unset; max-inline-size: unset; max-width: unset; min-block-size: unset; min-height: unset; min-inline-size: unset; min-width: unset; mix-blend-mode: unset; object-fit: unset; object-position: unset; object-view-box: unset; offset: unset; opacity: unset; order: unset; orphans: unset; outline: unset; outline-offset: unset; overflow-anchor: unset; overflow-clip-margin: unset; overflow-wrap: unset; overflow: unset; overlay: unset; overscroll-behavior-block: unset; overscroll-behavior-inline: unset; overscroll-behavior: unset; padding-block: unset; padding: unset; padding-inline: unset; page: unset; page-orientation: unset; paint-order: unset; perspective: unset; perspective-origin: unset; pointer-events: unset; position-try: unset; position-visibility: unset; quotes: unset; r: unset; resize: unset; rotate: unset; ruby-position: unset; rx: unset; ry: unset; scale: unset; scroll-behavior: unset; scroll-margin-block: unset; scroll-margin: unset; scroll-margin-inline: unset; scroll-padding-block: unset; scroll-padding: unset; scroll-padding-inline: unset; scroll-snap-align: unset; scroll-snap-stop: unset; scroll-snap-type: unset; scroll-timeline: unset; scrollbar-color: unset; scrollbar-gutter: unset; scrollbar-width: unset; shape-image-threshold: unset; shape-margin: unset; shape-outside: unset; shape-rendering: unset; size: unset; speak: unset; stop-color: unset; stop-opacity: unset; stroke: unset; stroke-dasharray: unset; stroke-dashoffset: unset; stroke-linecap: unset; stroke-linejoin: unset; stroke-miterlimit: unset; stroke-opacity: unset; stroke-width: unset; tab-size: unset; table-layout: unset; text-align: unset; text-align-last: unset; text-anchor: unset; text-combine-upright: unset; text-decoration: var(\r\n    --vp-semantic-typography-screen-s-subtitle-m-text-decoration\r\n  ); text-decoration-skip-ink: unset; text-emphasis: unset; text-emphasis-position: unset; text-indent: unset; text-overflow: unset; text-shadow: unset; text-size-adjust: unset; text-transform: var(--vp-semantic-typography-screen-s-subtitle-m-text-case); text-underline-offset: unset; text-underline-position: unset; white-space: unset; timeline-scope: unset; touch-action: unset; transform: unset; transform-box: unset; transform-origin: unset; transform-style: unset; transition: unset; translate: unset; user-select: unset; vector-effect: unset; vertical-align: unset; view-timeline: unset; view-transition-class: unset; view-transition-name: unset; visibility: unset; border-spacing: unset; -webkit-box-align: unset; -webkit-box-decoration-break: unset; -webkit-box-direction: unset; -webkit-box-flex: unset; -webkit-box-ordinal-group: unset; -webkit-box-orient: unset; -webkit-box-pack: unset; -webkit-box-reflect: unset; -webkit-line-break: unset; -webkit-line-clamp: unset; -webkit-mask-box-image: unset; -webkit-print-color-adjust: unset; -webkit-rtl-ordering: unset; -webkit-ruby-position: unset; -webkit-tap-highlight-color: unset; -webkit-text-combine: unset; -webkit-text-decorations-in-effect: unset; -webkit-text-fill-color: unset; -webkit-text-security: unset; -webkit-text-stroke: unset; -webkit-user-drag: unset; widows: unset; width: unset; will-change: unset; word-break: unset; word-spacing: unset; x: unset; y: unset; z-index: unset;\">capacity</div></div><div class=\"product-info-item__description\" style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / .5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; color-scheme: unset; forced-color-adjust: unset; mask: unset; math-depth: unset; position: unset; position-anchor: unset; appearance: unset; color: var(--vp-semantic-color-content-quiet); font-family: __Inter_aaf875, __Inter_Fallback_aaf875, sans-serif; font-feature-settings: unset; font-kerning: unset; font-optical-sizing: unset; font-palette: unset; font-size: medium; font-stretch: unset; font-style: normal; font-synthesis: unset; font-variant-alternates: unset; font-variant-caps: normal; font-variant-east-asian: unset; font-variant-ligatures: normal; font-variant-numeric: unset; font-variant-position: unset; font-variation-settings: unset; font-weight: var(--vp-semantic-typography-screen-s-body-m-font-weight); inset-area: unset; text-orientation: unset; text-rendering: unset; text-spacing-trim: unset; -webkit-font-smoothing: unset; -webkit-locale: unset; -webkit-text-orientation: unset; -webkit-writing-mode: unset; writing-mode: unset; zoom: unset; accent-color: unset; place-content: unset; place-items: unset; place-self: unset; alignment-baseline: unset; anchor-name: unset; animation-composition: unset; animation: unset; app-region: unset; aspect-ratio: unset; backdrop-filter: unset; backface-visibility: unset; background-attachment: unset; background-blend-mode: unset; background-clip: unset; background-image: unset; background-origin: unset; background-position: unset; background-repeat: unset; background-size: unset; baseline-shift: unset; baseline-source: unset; block-size: unset; border-block: unset; border: unset; border-radius: unset; border-collapse: unset; border-end-end-radius: unset; border-end-start-radius: unset; border-inline: unset; border-start-end-radius: unset; border-start-start-radius: unset; inset: unset; box-shadow: unset; break-after: unset; break-before: unset; break-inside: unset; buffered-rendering: unset; caption-side: unset; caret-color: unset; clear: unset; clip: unset; clip-path: unset; clip-rule: unset; color-interpolation: unset; color-interpolation-filters: unset; color-rendering: unset; columns: unset; column-fill: unset; gap: unset; column-rule: unset; column-span: unset; contain: unset; contain-intrinsic-block-size: unset; contain-intrinsic-size: unset; contain-intrinsic-inline-size: unset; container: unset; content: unset; content-visibility: unset; counter-increment: unset; counter-reset: unset; counter-set: unset; cursor: unset; cx: unset; cy: unset; d: unset; display: revert; dominant-baseline: unset; empty-cells: unset; field-sizing: unset; fill: unset; fill-opacity: unset; fill-rule: unset; filter: unset; flex: unset; flex-flow: unset; float: unset; flood-color: unset; flood-opacity: unset; grid: unset; grid-area: unset; height: unset; hyphenate-character: unset; hyphenate-limit-chars: unset; hyphens: unset; image-orientation: unset; image-rendering: unset; initial-letter: unset; inline-size: unset; inset-block: unset; inset-inline: unset; isolation: unset; letter-spacing: var(--vp-semantic-typography-screen-s-body-m-letter-spacing); lighting-color: unset; line-break: unset; line-height: var(--vp-semantic-typography-screen-s-body-m-line-height); list-style: unset; margin-block: unset; margin: unset; margin-inline: unset; marker: unset; mask-type: unset; math-shift: unset; math-style: unset; max-block-size: unset; max-height: unset; max-inline-size: unset; max-width: unset; min-block-size: unset; min-height: unset; min-inline-size: unset; min-width: unset; mix-blend-mode: unset; object-fit: unset; object-position: unset; object-view-box: unset; offset: unset; opacity: unset; order: unset; outline: unset; outline-offset: unset; overflow-anchor: unset; overflow-clip-margin: unset; overflow-wrap: unset; overflow: unset; overlay: unset; overscroll-behavior-block: unset; overscroll-behavior-inline: unset; overscroll-behavior: unset; padding-block: unset; padding: unset; padding-inline: unset; page: unset; page-orientation: unset; paint-order: unset; perspective: unset; perspective-origin: unset; pointer-events: unset; position-try: unset; position-visibility: unset; quotes: unset; r: unset; resize: unset; rotate: unset; ruby-position: unset; rx: unset; ry: unset; scale: unset; scroll-behavior: unset; scroll-margin-block: unset; scroll-margin: unset; scroll-margin-inline: unset; scroll-padding-block: unset; scroll-padding: unset; scroll-padding-inline: unset; scroll-snap-align: unset; scroll-snap-stop: unset; scroll-snap-type: unset; scroll-timeline: unset; scrollbar-color: unset; scrollbar-gutter: unset; scrollbar-width: unset; shape-image-threshold: unset; shape-margin: unset; shape-outside: unset; shape-rendering: unset; size: unset; speak: unset; stop-color: unset; stop-opacity: unset; stroke: unset; stroke-dasharray: unset; stroke-dashoffset: unset; stroke-linecap: unset; stroke-linejoin: unset; stroke-miterlimit: unset; stroke-opacity: unset; stroke-width: unset; tab-size: unset; table-layout: unset; text-align-last: unset; text-anchor: unset; text-combine-upright: unset; text-decoration-skip-ink: unset; text-emphasis: unset; text-emphasis-position: unset; text-overflow: unset; text-shadow: unset; text-size-adjust: unset; text-underline-offset: unset; text-underline-position: unset; timeline-scope: unset; touch-action: unset; transform: unset; transform-box: unset; transform-origin: unset; transform-style: unset; transition: unset; translate: unset; user-select: unset; vector-effect: unset; vertical-align: unset; view-timeline: unset; view-transition-class: unset; view-transition-name: unset; visibility: unset; border-spacing: unset; -webkit-box-align: unset; -webkit-box-decoration-break: unset; -webkit-box-direction: unset; -webkit-box-flex: unset; -webkit-box-ordinal-group: unset; -webkit-box-orient: unset; -webkit-box-pack: unset; -webkit-box-reflect: unset; -webkit-line-break: unset; -webkit-line-clamp: unset; -webkit-mask-box-image: unset; -webkit-print-color-adjust: unset; -webkit-rtl-ordering: unset; -webkit-ruby-position: unset; -webkit-tap-highlight-color: unset; -webkit-text-combine: unset; -webkit-text-decorations-in-effect: unset; -webkit-text-fill-color: unset; -webkit-text-security: unset; -webkit-text-stroke-color: unset; -webkit-user-drag: unset; width: unset; will-change: unset; word-break: unset; x: unset; y: unset; z-index: unset;\"><span class=\"body-m\" style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / .5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; color-scheme: unset; forced-color-adjust: unset; mask: unset; math-depth: unset; position: unset; position-anchor: unset; appearance: unset; color: unset; font-family: var(--vp-semantic-typography-screen-s-body-m-font-family); font-feature-settings: unset; font-kerning: unset; font-optical-sizing: unset; font-palette: unset; font-size: var(--vp-semantic-typography-screen-s-body-m-font-size); font-stretch: unset; font-style: unset; font-synthesis: unset; font-variant: unset; font-variation-settings: unset; font-weight: var(--vp-semantic-typography-screen-s-body-m-font-weight); inset-area: unset; text-orientation: unset; text-rendering: unset; text-spacing-trim: unset; -webkit-font-smoothing: unset; -webkit-locale: unset; -webkit-text-orientation: unset; -webkit-writing-mode: unset; writing-mode: unset; zoom: unset; accent-color: unset; place-content: unset; place-items: unset; place-self: unset; alignment-baseline: unset; anchor-name: unset; animation-composition: unset; animation: unset; app-region: unset; aspect-ratio: unset; backdrop-filter: unset; backface-visibility: unset; background: unset; background-blend-mode: unset; baseline-shift: unset; baseline-source: unset; block-size: unset; border-block: unset; border: unset; border-radius: unset; border-collapse: unset; border-end-end-radius: unset; border-end-start-radius: unset; border-inline: unset; border-start-end-radius: unset; border-start-start-radius: unset; inset: unset; box-shadow: unset; break-after: unset; break-before: unset; break-inside: unset; buffered-rendering: unset; caption-side: unset; caret-color: unset; clear: unset; clip: unset; clip-path: unset; clip-rule: unset; color-interpolation: unset; color-interpolation-filters: unset; color-rendering: unset; columns: unset; column-fill: unset; gap: unset; column-rule: unset; column-span: unset; contain: unset; contain-intrinsic-block-size: unset; contain-intrinsic-size: unset; contain-intrinsic-inline-size: unset; container: unset; content: unset; content-visibility: unset; counter-increment: unset; counter-reset: unset; counter-set: unset; cursor: unset; cx: unset; cy: unset; d: unset; display: revert; dominant-baseline: unset; empty-cells: unset; field-sizing: unset; fill: unset; fill-opacity: unset; fill-rule: unset; filter: unset; flex: unset; flex-flow: unset; float: unset; flood-color: unset; flood-opacity: unset; grid: unset; grid-area: unset; height: unset; hyphenate-character: unset; hyphenate-limit-chars: unset; hyphens: unset; image-orientation: unset; image-rendering: unset; initial-letter: unset; inline-size: unset; inset-block: unset; inset-inline: unset; isolation: unset; letter-spacing: var(--vp-semantic-typography-screen-s-body-m-letter-spacing); lighting-color: unset; line-break: unset; line-height: var(--vp-semantic-typography-screen-s-body-m-line-height); list-style: unset; margin-block: unset; margin: unset; margin-inline: unset; marker: unset; mask-type: unset; math-shift: unset; math-style: unset; max-block-size: unset; max-height: unset; max-inline-size: unset; max-width: unset; min-block-size: unset; min-height: unset; min-inline-size: unset; min-width: unset; mix-blend-mode: unset; object-fit: unset; object-position: unset; object-view-box: unset; offset: unset; opacity: unset; order: unset; orphans: unset; outline: unset; outline-offset: unset; overflow-anchor: unset; overflow-clip-margin: unset; overflow-wrap: unset; overflow: unset; overlay: unset; overscroll-behavior-block: unset; overscroll-behavior-inline: unset; overscroll-behavior: unset; padding-block: unset; padding: unset; padding-inline: unset; page: unset; page-orientation: unset; paint-order: unset; perspective: unset; perspective-origin: unset; pointer-events: unset; position-try: unset; position-visibility: unset; quotes: unset; r: unset; resize: unset; rotate: unset; ruby-position: unset; rx: unset; ry: unset; scale: unset; scroll-behavior: unset; scroll-margin-block: unset; scroll-margin: unset; scroll-margin-inline: unset; scroll-padding-block: unset; scroll-padding: unset; scroll-padding-inline: unset; scroll-snap-align: unset; scroll-snap-stop: unset; scroll-snap-type: unset; scroll-timeline: unset; scrollbar-color: unset; scrollbar-gutter: unset; scrollbar-width: unset; shape-image-threshold: unset; shape-margin: unset; shape-outside: unset; shape-rendering: unset; size: unset; speak: unset; stop-color: unset; stop-opacity: unset; stroke: unset; stroke-dasharray: unset; stroke-dashoffset: unset; stroke-linecap: unset; stroke-linejoin: unset; stroke-miterlimit: unset; stroke-opacity: unset; stroke-width: unset; tab-size: unset; table-layout: unset; text-align: unset; text-align-last: unset; text-anchor: unset; text-combine-upright: unset; text-decoration: var(\r\n    --vp-semantic-typography-screen-s-body-m-text-decoration\r\n  ); text-decoration-skip-ink: unset; text-emphasis: unset; text-emphasis-position: unset; text-indent: unset; text-overflow: unset; text-shadow: unset; text-size-adjust: unset; text-transform: var(--vp-semantic-typography-screen-s-body-m-text-case); text-underline-offset: unset; text-underline-position: unset; white-space: unset; timeline-scope: unset; touch-action: unset; transform: unset; transform-box: unset; transform-origin: unset; transform-style: unset; transition: unset; translate: unset; user-select: unset; vector-effect: unset; vertical-align: unset; view-timeline: unset; view-transition-class: unset; view-transition-name: unset; visibility: unset; border-spacing: unset; -webkit-box-align: unset; -webkit-box-decoration-break: unset; -webkit-box-direction: unset; -webkit-box-flex: unset; -webkit-box-ordinal-group: unset; -webkit-box-orient: unset; -webkit-box-pack: unset; -webkit-box-reflect: unset; -webkit-line-break: unset; -webkit-line-clamp: unset; -webkit-mask-box-image: unset; -webkit-print-color-adjust: unset; -webkit-rtl-ordering: unset; -webkit-ruby-position: unset; -webkit-tap-highlight-color: unset; -webkit-text-combine: unset; -webkit-text-decorations-in-effect: unset; -webkit-text-fill-color: unset; -webkit-text-security: unset; -webkit-text-stroke: unset; -webkit-user-drag: unset; widows: unset; width: unset; will-change: unset; word-break: unset; word-spacing: unset; x: unset; y: unset; z-index: unset;\">130 X 210 cm bedroom. (2 x 65 cm sleeping bags) Maximum useful height: 107 cm\r\n<div class=\"product-info-item__title\" style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / .5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; color-scheme: unset; forced-color-adjust: unset; mask: unset; math-depth: unset; position: unset; position-anchor: unset; appearance: unset; color: rgb(16, 16, 16); font-family: __Inter_aaf875, __Inter_Fallback_aaf875, sans-serif; font-feature-settings: unset; font-kerning: unset; font-optical-sizing: unset; font-palette: unset; font-size: medium; font-stretch: unset; font-style: normal; font-synthesis: unset; font-variant-alternates: unset; font-variant-caps: normal; font-variant-east-asian: unset; font-variant-ligatures: normal; font-variant-numeric: unset; font-variant-position: unset; font-variation-settings: unset; font-weight: 400; inset-area: unset; text-orientation: unset; text-rendering: unset; text-spacing-trim: unset; -webkit-font-smoothing: unset; -webkit-locale: unset; -webkit-text-orientation: unset; -webkit-writing-mode: unset; writing-mode: unset; zoom: unset; accent-color: unset; place-content: unset; place-items: unset; place-self: unset; alignment-baseline: unset; anchor-name: unset; animation-composition: unset; animation: unset; app-region: unset; aspect-ratio: unset; backdrop-filter: unset; backface-visibility: unset; background-attachment: unset; background-blend-mode: unset; background-clip: unset; background-image: unset; background-origin: unset; background-position: unset; background-repeat: unset; background-size: unset; baseline-shift: unset; baseline-source: unset; block-size: unset; border-block: unset; border: unset; border-radius: unset; border-collapse: unset; border-end-end-radius: unset; border-end-start-radius: unset; border-inline: unset; border-start-end-radius: unset; border-start-start-radius: unset; inset: unset; box-shadow: unset; break-after: unset; break-before: unset; break-inside: unset; buffered-rendering: unset; caption-side: unset; caret-color: unset; clear: unset; clip: unset; clip-path: unset; clip-rule: unset; color-interpolation: unset; color-interpolation-filters: unset; color-rendering: unset; columns: unset; column-fill: unset; gap: unset; column-rule: unset; column-span: unset; contain: unset; contain-intrinsic-block-size: unset; contain-intrinsic-size: unset; contain-intrinsic-inline-size: unset; container: unset; content: unset; content-visibility: unset; counter-increment: unset; counter-reset: unset; counter-set: unset; cursor: unset; cx: unset; cy: unset; d: unset; display: revert; dominant-baseline: unset; empty-cells: unset; field-sizing: unset; fill: unset; fill-opacity: unset; fill-rule: unset; filter: unset; flex: unset; flex-flow: unset; float: unset; flood-color: unset; flood-opacity: unset; grid: unset; grid-area: unset; height: unset; hyphenate-character: unset; hyphenate-limit-chars: unset; hyphens: unset; image-orientation: unset; image-rendering: unset; initial-letter: unset; inline-size: unset; inset-block: unset; inset-inline: unset; isolation: unset; lighting-color: unset; line-break: unset; line-height: unset; list-style: unset; margin-block: unset; margin-bottom: var(--vp-semantic-spacing-2xs); margin-inline: unset; margin-left: unset; margin-right: unset; margin-top: unset; marker: unset; mask-type: unset; math-shift: unset; math-style: unset; max-block-size: unset; max-height: unset; max-inline-size: unset; max-width: unset; min-block-size: unset; min-height: unset; min-inline-size: unset; min-width: unset; mix-blend-mode: unset; object-fit: unset; object-position: unset; object-view-box: unset; offset: unset; opacity: unset; order: unset; outline: unset; outline-offset: unset; overflow-anchor: unset; overflow-clip-margin: unset; overflow-wrap: unset; overflow: unset; overlay: unset; overscroll-behavior-block: unset; overscroll-behavior-inline: unset; overscroll-behavior: unset; padding-block: unset; padding: unset; padding-inline: unset; page: unset; page-orientation: unset; paint-order: unset; perspective: unset; perspective-origin: unset; pointer-events: unset; position-try: unset; position-visibility: unset; quotes: unset; r: unset; resize: unset; rotate: unset; ruby-position: unset; rx: unset; ry: unset; scale: unset; scroll-behavior: unset; scroll-margin-block: unset; scroll-margin: unset; scroll-margin-inline: unset; scroll-padding-block: unset; scroll-padding: unset; scroll-padding-inline: unset; scroll-snap-align: unset; scroll-snap-stop: unset; scroll-snap-type: unset; scroll-timeline: unset; scrollbar-color: unset; scrollbar-gutter: unset; scrollbar-width: unset; shape-image-threshold: unset; shape-margin: unset; shape-outside: unset; shape-rendering: unset; size: unset; speak: unset; stop-color: unset; stop-opacity: unset; stroke: unset; stroke-dasharray: unset; stroke-dashoffset: unset; stroke-linecap: unset; stroke-linejoin: unset; stroke-miterlimit: unset; stroke-opacity: unset; stroke-width: unset; tab-size: unset; table-layout: unset; text-align-last: unset; text-anchor: unset; text-combine-upright: unset; text-decoration-line: unset; text-decoration-skip-ink: unset; text-emphasis: unset; text-emphasis-position: unset; text-overflow: unset; text-shadow: unset; text-size-adjust: unset; text-underline-offset: unset; text-underline-position: unset; white-space-collapse: collapse; timeline-scope: unset; touch-action: unset; transform: unset; transform-box: unset; transform-origin: unset; transform-style: unset; transition: unset; translate: unset; user-select: unset; vector-effect: unset; vertical-align: unset; view-timeline: unset; view-transition-class: unset; view-transition-name: unset; visibility: unset; border-spacing: unset; -webkit-box-align: unset; -webkit-box-decoration-break: unset; -webkit-box-direction: unset; -webkit-box-flex: unset; -webkit-box-ordinal-group: unset; -webkit-box-orient: unset; -webkit-box-pack: unset; -webkit-box-reflect: unset; -webkit-line-break: unset; -webkit-line-clamp: unset; -webkit-mask-box-image: unset; -webkit-print-color-adjust: unset; -webkit-rtl-ordering: unset; -webkit-ruby-position: unset; -webkit-tap-highlight-color: unset; -webkit-text-combine: unset; -webkit-text-decorations-in-effect: unset; -webkit-text-fill-color: unset; -webkit-text-security: unset; -webkit-text-stroke-color: unset; -webkit-user-drag: unset; width: unset; will-change: unset; word-break: unset; x: unset; y: unset; z-index: unset;\"><div class=\"subtitle-m\" style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / .5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; color-scheme: unset; forced-color-adjust: unset; mask: unset; math-depth: unset; position: unset; position-anchor: unset; appearance: unset; color: unset; font-family: var(--vp-semantic-typography-screen-s-subtitle-m-font-family); font-feature-settings: unset; font-kerning: unset; font-optical-sizing: unset; font-palette: unset; font-size: var(--vp-semantic-typography-screen-s-subtitle-m-font-size); font-stretch: unset; font-style: unset; font-synthesis: unset; font-variant: unset; font-variation-settings: unset; font-weight: var(--vp-semantic-typography-screen-s-subtitle-m-font-weight); inset-area: unset; text-orientation: unset; text-rendering: unset; text-spacing-trim: unset; -webkit-font-smoothing: unset; -webkit-locale: unset; -webkit-text-orientation: unset; -webkit-writing-mode: unset; writing-mode: unset; zoom: unset; accent-color: unset; place-content: unset; place-items: unset; place-self: unset; alignment-baseline: unset; anchor-name: unset; animation-composition: unset; animation: unset; app-region: unset; aspect-ratio: unset; backdrop-filter: unset; backface-visibility: unset; background: unset; background-blend-mode: unset; baseline-shift: unset; baseline-source: unset; block-size: unset; border-block: unset; border: unset; border-radius: unset; border-collapse: unset; border-end-end-radius: unset; border-end-start-radius: unset; border-inline: unset; border-start-end-radius: unset; border-start-start-radius: unset; inset: unset; box-shadow: unset; break-after: unset; break-before: unset; break-inside: unset; buffered-rendering: unset; caption-side: unset; caret-color: unset; clear: unset; clip: unset; clip-path: unset; clip-rule: unset; color-interpolation: unset; color-interpolation-filters: unset; color-rendering: unset; columns: unset; column-fill: unset; gap: unset; column-rule: unset; column-span: unset; contain: unset; contain-intrinsic-block-size: unset; contain-intrinsic-size: unset; contain-intrinsic-inline-size: unset; container: unset; content: unset; content-visibility: unset; counter-increment: unset; counter-reset: unset; counter-set: unset; cursor: unset; cx: unset; cy: unset; d: unset; display: revert; dominant-baseline: unset; empty-cells: unset; field-sizing: unset; fill: unset; fill-opacity: unset; fill-rule: unset; filter: unset; flex: unset; flex-flow: unset; float: unset; flood-color: unset; flood-opacity: unset; grid: unset; grid-area: unset; height: unset; hyphenate-character: unset; hyphenate-limit-chars: unset; hyphens: unset; image-orientation: unset; image-rendering: unset; initial-letter: unset; inline-size: unset; inset-block: unset; inset-inline: unset; isolation: unset; letter-spacing: var(\r\n    --vp-semantic-typography-screen-s-subtitle-m-letter-spacing\r\n  ); lighting-color: unset; line-break: unset; line-height: var(--vp-semantic-typography-screen-s-subtitle-m-line-height); list-style: unset; margin-block: unset; margin: unset; margin-inline: unset; marker: unset; mask-type: unset; math-shift: unset; math-style: unset; max-block-size: unset; max-height: unset; max-inline-size: unset; max-width: unset; min-block-size: unset; min-height: unset; min-inline-size: unset; min-width: unset; mix-blend-mode: unset; object-fit: unset; object-position: unset; object-view-box: unset; offset: unset; opacity: unset; order: unset; orphans: unset; outline: unset; outline-offset: unset; overflow-anchor: unset; overflow-clip-margin: unset; overflow-wrap: unset; overflow: unset; overlay: unset; overscroll-behavior-block: unset; overscroll-behavior-inline: unset; overscroll-behavior: unset; padding-block: unset; padding: unset; padding-inline: unset; page: unset; page-orientation: unset; paint-order: unset; perspective: unset; perspective-origin: unset; pointer-events: unset; position-try: unset; position-visibility: unset; quotes: unset; r: unset; resize: unset; rotate: unset; ruby-position: unset; rx: unset; ry: unset; scale: unset; scroll-behavior: unset; scroll-margin-block: unset; scroll-margin: unset; scroll-margin-inline: unset; scroll-padding-block: unset; scroll-padding: unset; scroll-padding-inline: unset; scroll-snap-align: unset; scroll-snap-stop: unset; scroll-snap-type: unset; scroll-timeline: unset; scrollbar-color: unset; scrollbar-gutter: unset; scrollbar-width: unset; shape-image-threshold: unset; shape-margin: unset; shape-outside: unset; shape-rendering: unset; size: unset; speak: unset; stop-color: unset; stop-opacity: unset; stroke: unset; stroke-dasharray: unset; stroke-dashoffset: unset; stroke-linecap: unset; stroke-linejoin: unset; stroke-miterlimit: unset; stroke-opacity: unset; stroke-width: unset; tab-size: unset; table-layout: unset; text-align: unset; text-align-last: unset; text-anchor: unset; text-combine-upright: unset; text-decoration: var(\r\n    --vp-semantic-typography-screen-s-subtitle-m-text-decoration\r\n  ); text-decoration-skip-ink: unset; text-emphasis: unset; text-emphasis-position: unset; text-indent: unset; text-overflow: unset; text-shadow: unset; text-size-adjust: unset; text-transform: var(--vp-semantic-typography-screen-s-subtitle-m-text-case); text-underline-offset: unset; text-underline-position: unset; white-space: unset; timeline-scope: unset; touch-action: unset; transform: unset; transform-box: unset; transform-origin: unset; transform-style: unset; transition: unset; translate: unset; user-select: unset; vector-effect: unset; vertical-align: unset; view-timeline: unset; view-transition-class: unset; view-transition-name: unset; visibility: unset; border-spacing: unset; -webkit-box-align: unset; -webkit-box-decoration-break: unset; -webkit-box-direction: unset; -webkit-box-flex: unset; -webkit-box-ordinal-group: unset; -webkit-box-orient: unset; -webkit-box-pack: unset; -webkit-box-reflect: unset; -webkit-line-break: unset; -webkit-line-clamp: unset; -webkit-mask-box-image: unset; -webkit-print-color-adjust: unset; -webkit-rtl-ordering: unset; -webkit-ruby-position: unset; -webkit-tap-highlight-color: unset; -webkit-text-combine: unset; -webkit-text-decorations-in-effect: unset; -webkit-text-fill-color: unset; -webkit-text-security: unset; -webkit-text-stroke: unset; -webkit-user-drag: unset; widows: unset; width: unset; will-change: unset; word-break: unset; word-spacing: unset; x: unset; y: unset; z-index: unset;\">easy transport</div></div><div class=\"product-info-item__description\" style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / .5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; color-scheme: unset; forced-color-adjust: unset; mask: unset; math-depth: unset; position: unset; position-anchor: unset; appearance: unset; color: var(--vp-semantic-color-content-quiet); font-family: __Inter_aaf875, __Inter_Fallback_aaf875, sans-serif; font-feature-settings: unset; font-kerning: unset; font-optical-sizing: unset; font-palette: unset; font-size: medium; font-stretch: unset; font-style: normal; font-synthesis: unset; font-variant-alternates: unset; font-variant-caps: normal; font-variant-east-asian: unset; font-variant-ligatures: normal; font-variant-numeric: unset; font-variant-position: unset; font-variation-settings: unset; font-weight: var(--vp-semantic-typography-screen-s-body-m-font-weight); inset-area: unset; text-orientation: unset; text-rendering: unset; text-spacing-trim: unset; -webkit-font-smoothing: unset; -webkit-locale: unset; -webkit-text-orientation: unset; -webkit-writing-mode: unset; writing-mode: unset; zoom: unset; accent-color: unset; place-content: unset; place-items: unset; place-self: unset; alignment-baseline: unset; anchor-name: unset; animation-composition: unset; animation: unset; app-region: unset; aspect-ratio: unset; backdrop-filter: unset; backface-visibility: unset; background-attachment: unset; background-blend-mode: unset; background-clip: unset; background-image: unset; background-origin: unset; background-position: unset; background-repeat: unset; background-size: unset; baseline-shift: unset; baseline-source: unset; block-size: unset; border-block: unset; border: unset; border-radius: unset; border-collapse: unset; border-end-end-radius: unset; border-end-start-radius: unset; border-inline: unset; border-start-end-radius: unset; border-start-start-radius: unset; inset: unset; box-shadow: unset; break-after: unset; break-before: unset; break-inside: unset; buffered-rendering: unset; caption-side: unset; caret-color: unset; clear: unset; clip: unset; clip-path: unset; clip-rule: unset; color-interpolation: unset; color-interpolation-filters: unset; color-rendering: unset; columns: unset; column-fill: unset; gap: unset; column-rule: unset; column-span: unset; contain: unset; contain-intrinsic-block-size: unset; contain-intrinsic-size: unset; contain-intrinsic-inline-size: unset; container: unset; content: unset; content-visibility: unset; counter-increment: unset; counter-reset: unset; counter-set: unset; cursor: unset; cx: unset; cy: unset; d: unset; display: revert; dominant-baseline: unset; empty-cells: unset; field-sizing: unset; fill: unset; fill-opacity: unset; fill-rule: unset; filter: unset; flex: unset; flex-flow: unset; float: unset; flood-color: unset; flood-opacity: unset; grid: unset; grid-area: unset; height: unset; hyphenate-character: unset; hyphenate-limit-chars: unset; hyphens: unset; image-orientation: unset; image-rendering: unset; initial-letter: unset; inline-size: unset; inset-block: unset; inset-inline: unset; isolation: unset; letter-spacing: var(--vp-semantic-typography-screen-s-body-m-letter-spacing); lighting-color: unset; line-break: unset; line-height: var(--vp-semantic-typography-screen-s-body-m-line-height); list-style: unset; margin-block: unset; margin: unset; margin-inline: unset; marker: unset; mask-type: unset; math-shift: unset; math-style: unset; max-block-size: unset; max-height: unset; max-inline-size: unset; max-width: unset; min-block-size: unset; min-height: unset; min-inline-size: unset; min-width: unset; mix-blend-mode: unset; object-fit: unset; object-position: unset; object-view-box: unset; offset: unset; opacity: unset; order: unset; outline: unset; outline-offset: unset; overflow-anchor: unset; overflow-clip-margin: unset; overflow-wrap: unset; overflow: unset; overlay: unset; overscroll-behavior-block: unset; overscroll-behavior-inline: unset; overscroll-behavior: unset; padding-block: unset; padding: unset; padding-inline: unset; page: unset; page-orientation: unset; paint-order: unset; perspective: unset; perspective-origin: unset; pointer-events: unset; position-try: unset; position-visibility: unset; quotes: unset; r: unset; resize: unset; rotate: unset; ruby-position: unset; rx: unset; ry: unset; scale: unset; scroll-behavior: unset; scroll-margin-block: unset; scroll-margin: unset; scroll-margin-inline: unset; scroll-padding-block: unset; scroll-padding: unset; scroll-padding-inline: unset; scroll-snap-align: unset; scroll-snap-stop: unset; scroll-snap-type: unset; scroll-timeline: unset; scrollbar-color: unset; scrollbar-gutter: unset; scrollbar-width: unset; shape-image-threshold: unset; shape-margin: unset; shape-outside: unset; shape-rendering: unset; size: unset; speak: unset; stop-color: unset; stop-opacity: unset; stroke: unset; stroke-dasharray: unset; stroke-dashoffset: unset; stroke-linecap: unset; stroke-linejoin: unset; stroke-miterlimit: unset; stroke-opacity: unset; stroke-width: unset; tab-size: unset; table-layout: unset; text-align-last: unset; text-anchor: unset; text-combine-upright: unset; text-decoration-skip-ink: unset; text-emphasis: unset; text-emphasis-position: unset; text-overflow: unset; text-shadow: unset; text-size-adjust: unset; text-underline-offset: unset; text-underline-position: unset; timeline-scope: unset; touch-action: unset; transform: unset; transform-box: unset; transform-origin: unset; transform-style: unset; transition: unset; translate: unset; user-select: unset; vector-effect: unset; vertical-align: unset; view-timeline: unset; view-transition-class: unset; view-transition-name: unset; visibility: unset; border-spacing: unset; -webkit-box-align: unset; -webkit-box-decoration-break: unset; -webkit-box-direction: unset; -webkit-box-flex: unset; -webkit-box-ordinal-group: unset; -webkit-box-orient: unset; -webkit-box-pack: unset; -webkit-box-reflect: unset; -webkit-line-break: unset; -webkit-line-clamp: unset; -webkit-mask-box-image: unset; -webkit-print-color-adjust: unset; -webkit-rtl-ordering: unset; -webkit-ruby-position: unset; -webkit-tap-highlight-color: unset; -webkit-text-combine: unset; -webkit-text-decorations-in-effect: unset; -webkit-text-fill-color: unset; -webkit-text-security: unset; -webkit-text-stroke-color: unset; -webkit-user-drag: unset; width: unset; will-change: unset; word-break: unset; x: unset; y: unset; z-index: unset;\"><span class=\"body-m\" style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / .5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; color-scheme: unset; forced-color-adjust: unset; mask: unset; math-depth: unset; position: unset; position-anchor: unset; appearance: unset; color: unset; font-family: var(--vp-semantic-typography-screen-s-body-m-font-family); font-feature-settings: unset; font-kerning: unset; font-optical-sizing: unset; font-palette: unset; font-size: var(--vp-semantic-typography-screen-s-body-m-font-size); font-stretch: unset; font-style: unset; font-synthesis: unset; font-variant: unset; font-variation-settings: unset; font-weight: var(--vp-semantic-typography-screen-s-body-m-font-weight); inset-area: unset; text-orientation: unset; text-rendering: unset; text-spacing-trim: unset; -webkit-font-smoothing: unset; -webkit-locale: unset; -webkit-text-orientation: unset; -webkit-writing-mode: unset; writing-mode: unset; zoom: unset; accent-color: unset; place-content: unset; place-items: unset; place-self: unset; alignment-baseline: unset; anchor-name: unset; animation-composition: unset; animation: unset; app-region: unset; aspect-ratio: unset; backdrop-filter: unset; backface-visibility: unset; background: unset; background-blend-mode: unset; baseline-shift: unset; baseline-source: unset; block-size: unset; border-block: unset; border: unset; border-radius: unset; border-collapse: unset; border-end-end-radius: unset; border-end-start-radius: unset; border-inline: unset; border-start-end-radius: unset; border-start-start-radius: unset; inset: unset; box-shadow: unset; break-after: unset; break-before: unset; break-inside: unset; buffered-rendering: unset; caption-side: unset; caret-color: unset; clear: unset; clip: unset; clip-path: unset; clip-rule: unset; color-interpolation: unset; color-interpolation-filters: unset; color-rendering: unset; columns: unset; column-fill: unset; gap: unset; column-rule: unset; column-span: unset; contain: unset; contain-intrinsic-block-size: unset; contain-intrinsic-size: unset; contain-intrinsic-inline-size: unset; container: unset; content: unset; content-visibility: unset; counter-increment: unset; counter-reset: unset; counter-set: unset; cursor: unset; cx: unset; cy: unset; d: unset; display: revert; dominant-baseline: unset; empty-cells: unset; field-sizing: unset; fill: unset; fill-opacity: unset; fill-rule: unset; filter: unset; flex: unset; flex-flow: unset; float: unset; flood-color: unset; flood-opacity: unset; grid: unset; grid-area: unset; height: unset; hyphenate-character: unset; hyphenate-limit-chars: unset; hyphens: unset; image-orientation: unset; image-rendering: unset; initial-letter: unset; inline-size: unset; inset-block: unset; inset-inline: unset; isolation: unset; letter-spacing: var(--vp-semantic-typography-screen-s-body-m-letter-spacing); lighting-color: unset; line-break: unset; line-height: var(--vp-semantic-typography-screen-s-body-m-line-height); list-style: unset; margin-block: unset; margin: unset; margin-inline: unset; marker: unset; mask-type: unset; math-shift: unset; math-style: unset; max-block-size: unset; max-height: unset; max-inline-size: unset; max-width: unset; min-block-size: unset; min-height: unset; min-inline-size: unset; min-width: unset; mix-blend-mode: unset; object-fit: unset; object-position: unset; object-view-box: unset; offset: unset; opacity: unset; order: unset; orphans: unset; outline: unset; outline-offset: unset; overflow-anchor: unset; overflow-clip-margin: unset; overflow-wrap: unset; overflow: unset; overlay: unset; overscroll-behavior-block: unset; overscroll-behavior-inline: unset; overscroll-behavior: unset; padding-block: unset; padding: unset; padding-inline: unset; page: unset; page-orientation: unset; paint-order: unset; perspective: unset; perspective-origin: unset; pointer-events: unset; position-try: unset; position-visibility: unset; quotes: unset; r: unset; resize: unset; rotate: unset; ruby-position: unset; rx: unset; ry: unset; scale: unset; scroll-behavior: unset; scroll-margin-block: unset; scroll-margin: unset; scroll-margin-inline: unset; scroll-padding-block: unset; scroll-padding: unset; scroll-padding-inline: unset; scroll-snap-align: unset; scroll-snap-stop: unset; scroll-snap-type: unset; scroll-timeline: unset; scrollbar-color: unset; scrollbar-gutter: unset; scrollbar-width: unset; shape-image-threshold: unset; shape-margin: unset; shape-outside: unset; shape-rendering: unset; size: unset; speak: unset; stop-color: unset; stop-opacity: unset; stroke: unset; stroke-dasharray: unset; stroke-dashoffset: unset; stroke-linecap: unset; stroke-linejoin: unset; stroke-miterlimit: unset; stroke-opacity: unset; stroke-width: unset; tab-size: unset; table-layout: unset; text-align: unset; text-align-last: unset; text-anchor: unset; text-combine-upright: unset; text-decoration: var(\r\n    --vp-semantic-typography-screen-s-body-m-text-decoration\r\n  ); text-decoration-skip-ink: unset; text-emphasis: unset; text-emphasis-position: unset; text-indent: unset; text-overflow: unset; text-shadow: unset; text-size-adjust: unset; text-transform: var(--vp-semantic-typography-screen-s-body-m-text-case); text-underline-offset: unset; text-underline-position: unset; white-space: unset; timeline-scope: unset; touch-action: unset; transform: unset; transform-box: unset; transform-origin: unset; transform-style: unset; transition: unset; translate: unset; user-select: unset; vector-effect: unset; vertical-align: unset; view-timeline: unset; view-transition-class: unset; view-transition-name: unset; visibility: unset; border-spacing: unset; -webkit-box-align: unset; -webkit-box-decoration-break: unset; -webkit-box-direction: unset; -webkit-box-flex: unset; -webkit-box-ordinal-group: unset; -webkit-box-orient: unset; -webkit-box-pack: unset; -webkit-box-reflect: unset; -webkit-line-break: unset; -webkit-line-clamp: unset; -webkit-mask-box-image: unset; -webkit-print-color-adjust: unset; -webkit-rtl-ordering: unset; -webkit-ruby-position: unset; -webkit-tap-highlight-color: unset; -webkit-text-combine: unset; -webkit-text-decorations-in-effect: unset; -webkit-text-fill-color: unset; -webkit-text-security: unset; -webkit-text-stroke: unset; -webkit-user-drag: unset; widows: unset; width: unset; will-change: unset; word-break: unset; word-spacing: unset; x: unset; y: unset; z-index: unset;\">Dimensions of the cover: 58 cm x 16 cm x 16 cm / 15 L. Weight: 2.6 kg\r\n<div class=\"product-info-item__title\" style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / .5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; color-scheme: unset; forced-color-adjust: unset; mask: unset; math-depth: unset; position: unset; position-anchor: unset; appearance: unset; color: rgb(16, 16, 16); font-family: __Inter_aaf875, __Inter_Fallback_aaf875, sans-serif; font-feature-settings: unset; font-kerning: unset; font-optical-sizing: unset; font-palette: unset; font-size: medium; font-stretch: unset; font-style: normal; font-synthesis: unset; font-variant-alternates: unset; font-variant-caps: normal; font-variant-east-asian: unset; font-variant-ligatures: normal; font-variant-numeric: unset; font-variant-position: unset; font-variation-settings: unset; font-weight: 400; inset-area: unset; text-orientation: unset; text-rendering: unset; text-spacing-trim: unset; -webkit-font-smoothing: unset; -webkit-locale: unset; -webkit-text-orientation: unset; -webkit-writing-mode: unset; writing-mode: unset; zoom: unset; accent-color: unset; place-content: unset; place-items: unset; place-self: unset; alignment-baseline: unset; anchor-name: unset; animation-composition: unset; animation: unset; app-region: unset; aspect-ratio: unset; backdrop-filter: unset; backface-visibility: unset; background-attachment: unset; background-blend-mode: unset; background-clip: unset; background-image: unset; background-origin: unset; background-position: unset; background-repeat: unset; background-size: unset; baseline-shift: unset; baseline-source: unset; block-size: unset; border-block: unset; border: unset; border-radius: unset; border-collapse: unset; border-end-end-radius: unset; border-end-start-radius: unset; border-inline: unset; border-start-end-radius: unset; border-start-start-radius: unset; inset: unset; box-shadow: unset; break-after: unset; break-before: unset; break-inside: unset; buffered-rendering: unset; caption-side: unset; caret-color: unset; clear: unset; clip: unset; clip-path: unset; clip-rule: unset; color-interpolation: unset; color-interpolation-filters: unset; color-rendering: unset; columns: unset; column-fill: unset; gap: unset; column-rule: unset; column-span: unset; contain: unset; contain-intrinsic-block-size: unset; contain-intrinsic-size: unset; contain-intrinsic-inline-size: unset; container: unset; content: unset; content-visibility: unset; counter-increment: unset; counter-reset: unset; counter-set: unset; cursor: unset; cx: unset; cy: unset; d: unset; display: revert; dominant-baseline: unset; empty-cells: unset; field-sizing: unset; fill: unset; fill-opacity: unset; fill-rule: unset; filter: unset; flex: unset; flex-flow: unset; float: unset; flood-color: unset; flood-opacity: unset; grid: unset; grid-area: unset; height: unset; hyphenate-character: unset; hyphenate-limit-chars: unset; hyphens: unset; image-orientation: unset; image-rendering: unset; initial-letter: unset; inline-size: unset; inset-block: unset; inset-inline: unset; isolation: unset; lighting-color: unset; line-break: unset; line-height: unset; list-style: unset; margin-block: unset; margin-bottom: var(--vp-semantic-spacing-2xs); margin-inline: unset; margin-left: unset; margin-right: unset; margin-top: unset; marker: unset; mask-type: unset; math-shift: unset; math-style: unset; max-block-size: unset; max-height: unset; max-inline-size: unset; max-width: unset; min-block-size: unset; min-height: unset; min-inline-size: unset; min-width: unset; mix-blend-mode: unset; object-fit: unset; object-position: unset; object-view-box: unset; offset: unset; opacity: unset; order: unset; outline: unset; outline-offset: unset; overflow-anchor: unset; overflow-clip-margin: unset; overflow-wrap: unset; overflow: unset; overlay: unset; overscroll-behavior-block: unset; overscroll-behavior-inline: unset; overscroll-behavior: unset; padding-block: unset; padding: unset; padding-inline: unset; page: unset; page-orientation: unset; paint-order: unset; perspective: unset; perspective-origin: unset; pointer-events: unset; position-try: unset; position-visibility: unset; quotes: unset; r: unset; resize: unset; rotate: unset; ruby-position: unset; rx: unset; ry: unset; scale: unset; scroll-behavior: unset; scroll-margin-block: unset; scroll-margin: unset; scroll-margin-inline: unset; scroll-padding-block: unset; scroll-padding: unset; scroll-padding-inline: unset; scroll-snap-align: unset; scroll-snap-stop: unset; scroll-snap-type: unset; scroll-timeline: unset; scrollbar-color: unset; scrollbar-gutter: unset; scrollbar-width: unset; shape-image-threshold: unset; shape-margin: unset; shape-outside: unset; shape-rendering: unset; size: unset; speak: unset; stop-color: unset; stop-opacity: unset; stroke: unset; stroke-dasharray: unset; stroke-dashoffset: unset; stroke-linecap: unset; stroke-linejoin: unset; stroke-miterlimit: unset; stroke-opacity: unset; stroke-width: unset; tab-size: unset; table-layout: unset; text-align-last: unset; text-anchor: unset; text-combine-upright: unset; text-decoration-line: unset; text-decoration-skip-ink: unset; text-emphasis: unset; text-emphasis-position: unset; text-overflow: unset; text-shadow: unset; text-size-adjust: unset; text-underline-offset: unset; text-underline-position: unset; white-space-collapse: collapse; timeline-scope: unset; touch-action: unset; transform: unset; transform-box: unset; transform-origin: unset; transform-style: unset; transition: unset; translate: unset; user-select: unset; vector-effect: unset; vertical-align: unset; view-timeline: unset; view-transition-class: unset; view-transition-name: unset; visibility: unset; border-spacing: unset; -webkit-box-align: unset; -webkit-box-decoration-break: unset; -webkit-box-direction: unset; -webkit-box-flex: unset; -webkit-box-ordinal-group: unset; -webkit-box-orient: unset; -webkit-box-pack: unset; -webkit-box-reflect: unset; -webkit-line-break: unset; -webkit-line-clamp: unset; -webkit-mask-box-image: unset; -webkit-print-color-adjust: unset; -webkit-rtl-ordering: unset; -webkit-ruby-position: unset; -webkit-tap-highlight-color: unset; -webkit-text-combine: unset; -webkit-text-decorations-in-effect: unset; -webkit-text-fill-color: unset; -webkit-text-security: unset; -webkit-text-stroke-color: unset; -webkit-user-drag: unset; width: unset; will-change: unset; word-break: unset; x: unset; y: unset; z-index: unset;\"><div class=\"subtitle-m\" style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / .5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; color-scheme: unset; forced-color-adjust: unset; mask: unset; math-depth: unset; position: unset; position-anchor: unset; appearance: unset; color: unset; font-family: var(--vp-semantic-typography-screen-s-subtitle-m-font-family); font-feature-settings: unset; font-kerning: unset; font-optical-sizing: unset; font-palette: unset; font-size: var(--vp-semantic-typography-screen-s-subtitle-m-font-size); font-stretch: unset; font-style: unset; font-synthesis: unset; font-variant: unset; font-variation-settings: unset; font-weight: var(--vp-semantic-typography-screen-s-subtitle-m-font-weight); inset-area: unset; text-orientation: unset; text-rendering: unset; text-spacing-trim: unset; -webkit-font-smoothing: unset; -webkit-locale: unset; -webkit-text-orientation: unset; -webkit-writing-mode: unset; writing-mode: unset; zoom: unset; accent-color: unset; place-content: unset; place-items: unset; place-self: unset; alignment-baseline: unset; anchor-name: unset; animation-composition: unset; animation: unset; app-region: unset; aspect-ratio: unset; backdrop-filter: unset; backface-visibility: unset; background: unset; background-blend-mode: unset; baseline-shift: unset; baseline-source: unset; block-size: unset; border-block: unset; border: unset; border-radius: unset; border-collapse: unset; border-end-end-radius: unset; border-end-start-radius: unset; border-inline: unset; border-start-end-radius: unset; border-start-start-radius: unset; inset: unset; box-shadow: unset; break-after: unset; break-before: unset; break-inside: unset; buffered-rendering: unset; caption-side: unset; caret-color: unset; clear: unset; clip: unset; clip-path: unset; clip-rule: unset; color-interpolation: unset; color-interpolation-filters: unset; color-rendering: unset; columns: unset; column-fill: unset; gap: unset; column-rule: unset; column-span: unset; contain: unset; contain-intrinsic-block-size: unset; contain-intrinsic-size: unset; contain-intrinsic-inline-size: unset; container: unset; content: unset; content-visibility: unset; counter-increment: unset; counter-reset: unset; counter-set: unset; cursor: unset; cx: unset; cy: unset; d: unset; display: revert; dominant-baseline: unset; empty-cells: unset; field-sizing: unset; fill: unset; fill-opacity: unset; fill-rule: unset; filter: unset; flex: unset; flex-flow: unset; float: unset; flood-color: unset; flood-opacity: unset; grid: unset; grid-area: unset; height: unset; hyphenate-character: unset; hyphenate-limit-chars: unset; hyphens: unset; image-orientation: unset; image-rendering: unset; initial-letter: unset; inline-size: unset; inset-block: unset; inset-inline: unset; isolation: unset; letter-spacing: var(\r\n    --vp-semantic-typography-screen-s-subtitle-m-letter-spacing\r\n  ); lighting-color: unset; line-break: unset; line-height: var(--vp-semantic-typography-screen-s-subtitle-m-line-height); list-style: unset; margin-block: unset; margin: unset; margin-inline: unset; marker: unset; mask-type: unset; math-shift: unset; math-style: unset; max-block-size: unset; max-height: unset; max-inline-size: unset; max-width: unset; min-block-size: unset; min-height: unset; min-inline-size: unset; min-width: unset; mix-blend-mode: unset; object-fit: unset; object-position: unset; object-view-box: unset; offset: unset; opacity: unset; order: unset; orphans: unset; outline: unset; outline-offset: unset; overflow-anchor: unset; overflow-clip-margin: unset; overflow-wrap: unset; overflow: unset; overlay: unset; overscroll-behavior-block: unset; overscroll-behavior-inline: unset; overscroll-behavior: unset; padding-block: unset; padding: unset; padding-inline: unset; page: unset; page-orientation: unset; paint-order: unset; perspective: unset; perspective-origin: unset; pointer-events: unset; position-try: unset; position-visibility: unset; quotes: unset; r: unset; resize: unset; rotate: unset; ruby-position: unset; rx: unset; ry: unset; scale: unset; scroll-behavior: unset; scroll-margin-block: unset; scroll-margin: unset; scroll-margin-inline: unset; scroll-padding-block: unset; scroll-padding: unset; scroll-padding-inline: unset; scroll-snap-align: unset; scroll-snap-stop: unset; scroll-snap-type: unset; scroll-timeline: unset; scrollbar-color: unset; scrollbar-gutter: unset; scrollbar-width: unset; shape-image-threshold: unset; shape-margin: unset; shape-outside: unset; shape-rendering: unset; size: unset; speak: unset; stop-color: unset; stop-opacity: unset; stroke: unset; stroke-dasharray: unset; stroke-dashoffset: unset; stroke-linecap: unset; stroke-linejoin: unset; stroke-miterlimit: unset; stroke-opacity: unset; stroke-width: unset; tab-size: unset; table-layout: unset; text-align: unset; text-align-last: unset; text-anchor: unset; text-combine-upright: unset; text-decoration: var(\r\n    --vp-semantic-typography-screen-s-subtitle-m-text-decoration\r\n  ); text-decoration-skip-ink: unset; text-emphasis: unset; text-emphasis-position: unset; text-indent: unset; text-overflow: unset; text-shadow: unset; text-size-adjust: unset; text-transform: var(--vp-semantic-typography-screen-s-subtitle-m-text-case); text-underline-offset: unset; text-underline-position: unset; white-space: unset; timeline-scope: unset; touch-action: unset; transform: unset; transform-box: unset; transform-origin: unset; transform-style: unset; transition: unset; translate: unset; user-select: unset; vector-effect: unset; vertical-align: unset; view-timeline: unset; view-transition-class: unset; view-transition-name: unset; visibility: unset; border-spacing: unset; -webkit-box-align: unset; -webkit-box-decoration-break: unset; -webkit-box-direction: unset; -webkit-box-flex: unset; -webkit-box-ordinal-group: unset; -webkit-box-orient: unset; -webkit-box-pack: unset; -webkit-box-reflect: unset; -webkit-line-break: unset; -webkit-line-clamp: unset; -webkit-mask-box-image: unset; -webkit-print-color-adjust: unset; -webkit-rtl-ordering: unset; -webkit-ruby-position: unset; -webkit-tap-highlight-color: unset; -webkit-text-combine: unset; -webkit-text-decorations-in-effect: unset; -webkit-text-fill-color: unset; -webkit-text-security: unset; -webkit-text-stroke: unset; -webkit-user-drag: unset; widows: unset; width: unset; will-change: unset; word-break: unset; word-spacing: unset; x: unset; y: unset; z-index: unset;\">heat reduction</div></div><div class=\"product-info-item__description\" style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / .5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; color-scheme: unset; forced-color-adjust: unset; mask: unset; math-depth: unset; position: unset; position-anchor: unset; appearance: unset; color: var(--vp-semantic-color-content-quiet); font-family: __Inter_aaf875, __Inter_Fallback_aaf875, sans-serif; font-feature-settings: unset; font-kerning: unset; font-optical-sizing: unset; font-palette: unset; font-size: medium; font-stretch: unset; font-style: normal; font-synthesis: unset; font-variant-alternates: unset; font-variant-caps: normal; font-variant-east-asian: unset; font-variant-ligatures: normal; font-variant-numeric: unset; font-variant-position: unset; font-variation-settings: unset; font-weight: var(--vp-semantic-typography-screen-s-body-m-font-weight); inset-area: unset; text-orientation: unset; text-rendering: unset; text-spacing-trim: unset; -webkit-font-smoothing: unset; -webkit-locale: unset; -webkit-text-orientation: unset; -webkit-writing-mode: unset; writing-mode: unset; zoom: unset; accent-color: unset; place-content: unset; place-items: unset; place-self: unset; alignment-baseline: unset; anchor-name: unset; animation-composition: unset; animation: unset; app-region: unset; aspect-ratio: unset; backdrop-filter: unset; backface-visibility: unset; background-attachment: unset; background-blend-mode: unset; background-clip: unset; background-image: unset; background-origin: unset; background-position: unset; background-repeat: unset; background-size: unset; baseline-shift: unset; baseline-source: unset; block-size: unset; border-block: unset; border: unset; border-radius: unset; border-collapse: unset; border-end-end-radius: unset; border-end-start-radius: unset; border-inline: unset; border-start-end-radius: unset; border-start-start-radius: unset; inset: unset; box-shadow: unset; break-after: unset; break-before: unset; break-inside: unset; buffered-rendering: unset; caption-side: unset; caret-color: unset; clear: unset; clip: unset; clip-path: unset; clip-rule: unset; color-interpolation: unset; color-interpolation-filters: unset; color-rendering: unset; columns: unset; column-fill: unset; gap: unset; column-rule: unset; column-span: unset; contain: unset; contain-intrinsic-block-size: unset; contain-intrinsic-size: unset; contain-intrinsic-inline-size: unset; container: unset; content: unset; content-visibility: unset; counter-increment: unset; counter-reset: unset; counter-set: unset; cursor: unset; cx: unset; cy: unset; d: unset; display: revert; dominant-baseline: unset; empty-cells: unset; field-sizing: unset; fill: unset; fill-opacity: unset; fill-rule: unset; filter: unset; flex: unset; flex-flow: unset; float: unset; flood-color: unset; flood-opacity: unset; grid: unset; grid-area: unset; height: unset; hyphenate-character: unset; hyphenate-limit-chars: unset; hyphens: unset; image-orientation: unset; image-rendering: unset; initial-letter: unset; inline-size: unset; inset-block: unset; inset-inline: unset; isolation: unset; letter-spacing: var(--vp-semantic-typography-screen-s-body-m-letter-spacing); lighting-color: unset; line-break: unset; line-height: var(--vp-semantic-typography-screen-s-body-m-line-height); list-style: unset; margin-block: unset; margin: unset; margin-inline: unset; marker: unset; mask-type: unset; math-shift: unset; math-style: unset; max-block-size: unset; max-height: unset; max-inline-size: unset; max-width: unset; min-block-size: unset; min-height: unset; min-inline-size: unset; min-width: unset; mix-blend-mode: unset; object-fit: unset; object-position: unset; object-view-box: unset; offset: unset; opacity: unset; order: unset; outline: unset; outline-offset: unset; overflow-anchor: unset; overflow-clip-margin: unset; overflow-wrap: unset; overflow: unset; overlay: unset; overscroll-behavior-block: unset; overscroll-behavior-inline: unset; overscroll-behavior: unset; padding-block: unset; padding: unset; padding-inline: unset; page: unset; page-orientation: unset; paint-order: unset; perspective: unset; perspective-origin: unset; pointer-events: unset; position-try: unset; position-visibility: unset; quotes: unset; r: unset; resize: unset; rotate: unset; ruby-position: unset; rx: unset; ry: unset; scale: unset; scroll-behavior: unset; scroll-margin-block: unset; scroll-margin: unset; scroll-margin-inline: unset; scroll-padding-block: unset; scroll-padding: unset; scroll-padding-inline: unset; scroll-snap-align: unset; scroll-snap-stop: unset; scroll-snap-type: unset; scroll-timeline: unset; scrollbar-color: unset; scrollbar-gutter: unset; scrollbar-width: unset; shape-image-threshold: unset; shape-margin: unset; shape-outside: unset; shape-rendering: unset; size: unset; speak: unset; stop-color: unset; stop-opacity: unset; stroke: unset; stroke-dasharray: unset; stroke-dashoffset: unset; stroke-linecap: unset; stroke-linejoin: unset; stroke-miterlimit: unset; stroke-opacity: unset; stroke-width: unset; tab-size: unset; table-layout: unset; text-align-last: unset; text-anchor: unset; text-combine-upright: unset; text-decoration-skip-ink: unset; text-emphasis: unset; text-emphasis-position: unset; text-overflow: unset; text-shadow: unset; text-size-adjust: unset; text-underline-offset: unset; text-underline-position: unset; timeline-scope: unset; touch-action: unset; transform: unset; transform-box: unset; transform-origin: unset; transform-style: unset; transition: unset; translate: unset; user-select: unset; vector-effect: unset; vertical-align: unset; view-timeline: unset; view-transition-class: unset; view-transition-name: unset; visibility: unset; border-spacing: unset; -webkit-box-align: unset; -webkit-box-decoration-break: unset; -webkit-box-direction: unset; -webkit-box-flex: unset; -webkit-box-ordinal-group: unset; -webkit-box-orient: unset; -webkit-box-pack: unset; -webkit-box-reflect: unset; -webkit-line-break: unset; -webkit-line-clamp: unset; -webkit-mask-box-image: unset; -webkit-print-color-adjust: unset; -webkit-rtl-ordering: unset; -webkit-ruby-position: unset; -webkit-tap-highlight-color: unset; -webkit-text-combine: unset; -webkit-text-decorations-in-effect: unset; -webkit-text-fill-color: unset; -webkit-text-security: unset; -webkit-text-stroke-color: unset; -webkit-user-drag: unset; width: unset; will-change: unset; word-break: unset; x: unset; y: unset; z-index: unset;\"><span class=\"body-m\" style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / .5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; color-scheme: unset; forced-color-adjust: unset; mask: unset; math-depth: unset; position: unset; position-anchor: unset; appearance: unset; color: unset; font-family: var(--vp-semantic-typography-screen-s-body-m-font-family); font-feature-settings: unset; font-kerning: unset; font-optical-sizing: unset; font-palette: unset; font-size: var(--vp-semantic-typography-screen-s-body-m-font-size); font-stretch: unset; font-style: unset; font-synthesis: unset; font-variant: unset; font-variation-settings: unset; font-weight: var(--vp-semantic-typography-screen-s-body-m-font-weight); inset-area: unset; text-orientation: unset; text-rendering: unset; text-spacing-trim: unset; -webkit-font-smoothing: unset; -webkit-locale: unset; -webkit-text-orientation: unset; -webkit-writing-mode: unset; writing-mode: unset; zoom: unset; accent-color: unset; place-content: unset; place-items: unset; place-self: unset; alignment-baseline: unset; anchor-name: unset; animation-composition: unset; animation: unset; app-region: unset; aspect-ratio: unset; backdrop-filter: unset; backface-visibility: unset; background: unset; background-blend-mode: unset; baseline-shift: unset; baseline-source: unset; block-size: unset; border-block: unset; border: unset; border-radius: unset; border-collapse: unset; border-end-end-radius: unset; border-end-start-radius: unset; border-inline: unset; border-start-end-radius: unset; border-start-start-radius: unset; inset: unset; box-shadow: unset; break-after: unset; break-before: unset; break-inside: unset; buffered-rendering: unset; caption-side: unset; caret-color: unset; clear: unset; clip: unset; clip-path: unset; clip-rule: unset; color-interpolation: unset; color-interpolation-filters: unset; color-rendering: unset; columns: unset; column-fill: unset; gap: unset; column-rule: unset; column-span: unset; contain: unset; contain-intrinsic-block-size: unset; contain-intrinsic-size: unset; contain-intrinsic-inline-size: unset; container: unset; content: unset; content-visibility: unset; counter-increment: unset; counter-reset: unset; counter-set: unset; cursor: unset; cx: unset; cy: unset; d: unset; display: revert; dominant-baseline: unset; empty-cells: unset; field-sizing: unset; fill: unset; fill-opacity: unset; fill-rule: unset; filter: unset; flex: unset; flex-flow: unset; float: unset; flood-color: unset; flood-opacity: unset; grid: unset; grid-area: unset; height: unset; hyphenate-character: unset; hyphenate-limit-chars: unset; hyphens: unset; image-orientation: unset; image-rendering: unset; initial-letter: unset; inline-size: unset; inset-block: unset; inset-inline: unset; isolation: unset; letter-spacing: var(--vp-semantic-typography-screen-s-body-m-letter-spacing); lighting-color: unset; line-break: unset; line-height: var(--vp-semantic-typography-screen-s-body-m-line-height); list-style: unset; margin-block: unset; margin: unset; margin-inline: unset; marker: unset; mask-type: unset; math-shift: unset; math-style: unset; max-block-size: unset; max-height: unset; max-inline-size: unset; max-width: unset; min-block-size: unset; min-height: unset; min-inline-size: unset; min-width: unset; mix-blend-mode: unset; object-fit: unset; object-position: unset; object-view-box: unset; offset: unset; opacity: unset; order: unset; orphans: unset; outline: unset; outline-offset: unset; overflow-anchor: unset; overflow-clip-margin: unset; overflow-wrap: unset; overflow: unset; overlay: unset; overscroll-behavior-block: unset; overscroll-behavior-inline: unset; overscroll-behavior: unset; padding-block: unset; padding: unset; padding-inline: unset; page: unset; page-orientation: unset; paint-order: unset; perspective: unset; perspective-origin: unset; pointer-events: unset; position-try: unset; position-visibility: unset; quotes: unset; r: unset; resize: unset; rotate: unset; ruby-position: unset; rx: unset; ry: unset; scale: unset; scroll-behavior: unset; scroll-margin-block: unset; scroll-margin: unset; scroll-margin-inline: unset; scroll-padding-block: unset; scroll-padding: unset; scroll-padding-inline: unset; scroll-snap-align: unset; scroll-snap-stop: unset; scroll-snap-type: unset; scroll-timeline: unset; scrollbar-color: unset; scrollbar-gutter: unset; scrollbar-width: unset; shape-image-threshold: unset; shape-margin: unset; shape-outside: unset; shape-rendering: unset; size: unset; speak: unset; stop-color: unset; stop-opacity: unset; stroke: unset; stroke-dasharray: unset; stroke-dashoffset: unset; stroke-linecap: unset; stroke-linejoin: unset; stroke-miterlimit: unset; stroke-opacity: unset; stroke-width: unset; tab-size: unset; table-layout: unset; text-align: unset; text-align-last: unset; text-anchor: unset; text-combine-upright: unset; text-decoration: var(\r\n    --vp-semantic-typography-screen-s-body-m-text-decoration\r\n  ); text-decoration-skip-ink: unset; text-emphasis: unset; text-emphasis-position: unset; text-indent: unset; text-overflow: unset; text-shadow: unset; text-size-adjust: unset; text-transform: var(--vp-semantic-typography-screen-s-body-m-text-case); text-underline-offset: unset; text-underline-position: unset; white-space: unset; timeline-scope: unset; touch-action: unset; transform: unset; transform-box: unset; transform-origin: unset; transform-style: unset; transition: unset; translate: unset; user-select: unset; vector-effect: unset; vertical-align: unset; view-timeline: unset; view-transition-class: unset; view-transition-name: unset; visibility: unset; border-spacing: unset; -webkit-box-align: unset; -webkit-box-decoration-break: unset; -webkit-box-direction: unset; -webkit-box-flex: unset; -webkit-box-ordinal-group: unset; -webkit-box-orient: unset; -webkit-box-pack: unset; -webkit-box-reflect: unset; -webkit-line-break: unset; -webkit-line-clamp: unset; -webkit-mask-box-image: unset; -webkit-print-color-adjust: unset; -webkit-rtl-ordering: unset; -webkit-ruby-position: unset; -webkit-tap-highlight-color: unset; -webkit-text-combine: unset; -webkit-text-decorations-in-effect: unset; -webkit-text-fill-color: unset; -webkit-text-security: unset; -webkit-text-stroke: unset; -webkit-user-drag: unset; widows: unset; width: unset; will-change: unset; word-break: unset; word-spacing: unset; x: unset; y: unset; z-index: unset;\">Flysheet and ventilation at the back. Not equipped with Fresh technology.</span></div>\r\n</span></div>\r\n</span></div>\r\n</span></div>', 'OY46ZALC', NULL, 0, 'quechua-2-man-tent-mh100', 'active', '2024-07-18 02:02:24', '2024-07-18 03:25:44');
INSERT INTO `products` (`id`, `product_name`, `brand_id`, `category_id`, `supplier_id`, `raw_price`, `regular_price`, `description`, `sku`, `stock`, `is_sizechart`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(93, 'Outdoor mini portable folding camping gas stove', 3, 21, 3, '1100', '1599', '<div class=\"attribute-item\" style=\"font-size: 14px; border-width: 1px; border-style: solid; border-color: rgb(221, 221, 221); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-family: Inter, &quot;SF Pro Text&quot;, Roboto, &quot;Helvetica Neue&quot;, Helvetica, Tahoma, Arial, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;; display: table-row; color: rgb(51, 51, 51);\"><div class=\"left\" style=\"padding: 12px; font-size: 16px; border-width: 1px; border-style: solid; border-color: rgb(221, 221, 221); font-weight: 400; line-height: 22px; color: rgb(34, 34, 34); display: table-cell; background: rgb(244, 244, 244); width: 320px;\"></div><div class=\"right\" style=\"padding: 12px; font-size: 16px; border-width: 1px; border-style: solid; border-color: rgb(221, 221, 221); font-weight: 400; line-height: 22px; color: rgb(34, 34, 34); display: table-cell; width: 420px;\"><br></div></div><div class=\"attribute-item\" style=\"font-size: 14px; border-width: 1px; border-style: solid; border-color: rgb(221, 221, 221); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-family: Inter, &quot;SF Pro Text&quot;, Roboto, &quot;Helvetica Neue&quot;, Helvetica, Tahoma, Arial, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;; display: table-row; color: rgb(51, 51, 51);\"><div class=\"left\" style=\"padding: 12px; font-size: 16px; border-width: 1px; border-style: solid; border-color: rgb(221, 221, 221); font-weight: 400; line-height: 22px; color: rgb(34, 34, 34); display: table-cell; background: rgb(244, 244, 244); width: 320px;\"></div><div class=\"right\" style=\"padding: 12px; font-size: 16px; border-width: 1px; border-style: solid; border-color: rgb(221, 221, 221); font-weight: 400; line-height: 22px; color: rgb(34, 34, 34); display: table-cell; width: 420px;\"><br></div></div><div class=\"attribute-item\" style=\"font-size: 14px; border-width: 1px; border-style: solid; border-color: rgb(221, 221, 221); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-family: Inter, &quot;SF Pro Text&quot;, Roboto, &quot;Helvetica Neue&quot;, Helvetica, Tahoma, Arial, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;; display: table-row; color: rgb(51, 51, 51);\"><div class=\"left\" style=\"padding: 12px; font-size: 16px; border-width: 1px; border-style: solid; border-color: rgb(221, 221, 221); font-weight: 400; line-height: 22px; color: rgb(34, 34, 34); display: table-cell; background: rgb(244, 244, 244); width: 320px;\"></div><div class=\"right\" style=\"padding: 12px; font-size: 16px; border-width: 1px; border-style: solid; border-color: rgb(221, 221, 221); font-weight: 400; line-height: 22px; color: rgb(34, 34, 34); display: table-cell; width: 420px;\"><br></div></div><div class=\"attribute-item\" style=\"font-size: 14px; border-width: 1px; border-style: solid; border-color: rgb(221, 221, 221); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-family: Inter, &quot;SF Pro Text&quot;, Roboto, &quot;Helvetica Neue&quot;, Helvetica, Tahoma, Arial, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;; display: table-row; color: rgb(51, 51, 51);\"><div class=\"left\" style=\"padding: 12px; font-size: 16px; border-width: 1px; border-style: solid; border-color: rgb(221, 221, 221); font-weight: 400; line-height: 22px; color: rgb(34, 34, 34); display: table-cell; background: rgb(244, 244, 244); width: 320px;\"></div><div class=\"right\" data-spm-anchor-id=\"a2700.details.0.i76.61ac459d56zjDA\" style=\"padding: 12px; font-size: 16px; border-width: 1px; border-style: solid; border-color: rgb(221, 221, 221); font-weight: 400; line-height: 22px; color: rgb(34, 34, 34); display: table-cell; width: 420px;\"><br></div></div>', 'BCJ2L07U', NULL, 0, 'outdoor-mini-portable-folding-camping-gas-stove', 'active', '2024-07-18 02:20:58', '2024-07-18 02:20:58'),
(94, 'Double Layer Tent Waterproof 3 Person', 3, 25, 3, '1700', '2799', '<p>-none-</p>', 'BFOJVWAZ', NULL, 0, 'double-layer-tent-waterproof-3-person', 'active', '2024-07-18 03:37:04', '2024-08-31 02:16:32'),
(95, 'Custom Clothing', 3, 21, 3, '0', '300', '<p>We will provide customize clothing for any event or office prepose.<br>Customize T-shirt, Jersey, Polo Shirt, Caps etc.</p>', 'EK6JVLMY', NULL, 0, 'custom-clothing', 'active', '2024-07-29 01:56:14', '2024-07-31 21:36:47'),
(96, 'Hi Gear Rock 4 Family Tent 6 Person', 3, 25, 3, '2000', '3200', '<p>-none-</p>', 'VH1GSL7D', NULL, 0, 'hi-gear-rock-4-family-tent-6-person', 'active', '2024-07-29 02:29:59', '2024-08-01 10:53:02'),
(97, 'Portable Beach Mat', 3, 21, 3, '400', '999', '<p>-none-</p>', '51H7AE0P', NULL, 0, 'portable-beach-mat', 'active', '2024-08-02 09:00:34', '2024-08-02 09:00:34'),
(98, 'Regular Hamok', 4, 21, 5, '270', '550', '<p>-none-</p>', 'C27DI3TG', NULL, 0, 'regular-hamok', 'active', '2024-08-09 22:18:02', '2024-08-09 22:18:02'),
(99, 'Outdoor Rain Poncho', 4, 23, 5, '500', '999', '<p>-none-</p>', 'ZR3VP1QH', NULL, 0, 'outdoor-rain-poncho', 'active', '2024-08-09 22:27:35', '2024-08-09 22:27:35'),
(100, 'Female Quick Dry Pants', 3, 26, 3, '300', '799', '<p>-none-</p>', '4QA3B0ZM', NULL, 0, 'female-quick-dry-pants', 'active', '2024-08-12 02:59:47', '2024-08-12 02:59:47'),
(101, 'Female Twin Hiking Pants', 3, 26, NULL, '300', '799', '<p>-none-</p>', 'Y7HG63Q4', NULL, 0, 'female-hiking-pants', 'active', '2024-08-12 03:04:10', '2024-08-12 03:10:47'),
(102, 'James & Nicholson - female bi-Elastic Outdoor Shorts', 3, 26, NULL, '150', '350', '<p>-none-</p>', 'BZ08FO93', NULL, 0, 'james-nicholson-female-bi-elastic-outdoor-shorts', 'active', '2024-08-12 03:09:26', '2024-08-12 03:09:26'),
(103, 'female Hiking Pant', 3, 26, NULL, '300', '799', '<p>-none-</p>', '0DMS3ABW', NULL, 0, 'female-hiking-pant', 'active', '2024-08-13 02:48:12', '2024-08-13 02:48:12'),
(104, 'Sleeping Bag 15°', 4, 21, 3, '450', '750', '<p>-none-</p>', 'ADKR1H5V', NULL, 0, 'sleeping-bag-15', 'active', '2024-08-13 03:08:22', '2024-08-13 03:08:22'),
(105, 'Camping Tripod Dark Grey', 3, 21, NULL, '900', '1499', '<ul><li style=\"border-style: solid; --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(0,104,157,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; border-radius: 0.25rem; --tw-bg-opacity: 1; background-color: rgb(255 255 255/var(--tw-bg-opacity)); padding-top: 15px;\"><li style=\"border-style: solid; --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(0,104,157,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; border-radius: 0.25rem; --tw-bg-opacity: 1; background-color: rgb(255 255 255/var(--tw-bg-opacity)); padding-top: 15px;\"><font face=\"__Roboto_Condensed_7d645d, __Roboto_Condensed_Fallback_7d645d\"><span style=\"font-size: 12px;\"><b>STORAGE ADVICE</b></span></font></li><li style=\"border-style: solid; --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(0,104,157,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; border-radius: 0.25rem; --tw-bg-opacity: 1; background-color: rgb(255 255 255/var(--tw-bg-opacity)); padding-top: 15px;\"><span style=\"font-size: 12px;\">Dry before storage and store in a clean, dry place.</span></li><li style=\"border-style: solid; --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(0,104,157,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; border-radius: 0.25rem; --tw-bg-opacity: 1; background-color: rgb(255 255 255/var(--tw-bg-opacity)); padding-top: 15px;\"><span style=\"font-size: 12px;\"><b>COMPOSITION</b></span></li><li style=\"border-style: solid; --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(0,104,157,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; border-radius: 0.25rem; --tw-bg-opacity: 1; background-color: rgb(255 255 255/var(--tw-bg-opacity)); padding-top: 15px;\"><font face=\"__Roboto_Condensed_7d645d, __Roboto_Condensed_Fallback_7d645d\"><span style=\"font-size: 12px;\">Metallic structure: 30.0% Polypropylene, 70.0% Steel Main fabric: 100.0% Polyester</span></font></li></li></ul><p style=\"border-style: solid; --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(0,104,157,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; border-radius: 0.25rem; --tw-bg-opacity: 1; background-color: rgb(255 255 255/var(--tw-bg-opacity)); padding-top: 15px; font-size: 1rem; font-family: __Roboto_Condensed_7d645d, __Roboto_Condensed_Fallback_7d645d; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal;\"></p>', '8Y7IQCTE', NULL, 0, 'camping-tripod-dark-grey', 'active', '2024-08-13 03:19:54', '2024-08-13 03:19:54'),
(106, 'Standard Hammock', 4, 21, NULL, '500', '999', '<p>-none-</p>', 'ZVHWG0J1', NULL, 0, 'standard-hammock', 'active', '2024-08-13 03:34:45', '2024-08-13 03:34:45'),
(107, 'Mens Cycling Shorts', 3, 26, NULL, '150', '350', '<p>-none-</p>', 'VU9DB0M5', NULL, 0, 'mens-cycle-shorts', 'active', '2024-08-14 03:43:26', '2024-08-14 03:44:21'),
(108, 'Sun Butane Gas Can', 3, 21, NULL, '130', '200', '<p><span style=\"color: rgb(62, 62, 62); font-family: Lato; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Use for Camping Cooking Burner</span><br></p>', 'I38XJPE2', NULL, 0, 'sun-butane-gas-can', 'active', '2024-08-22 02:30:34', '2024-08-22 02:41:01'),
(109, 'Camping Aluminum Cooking Set', 3, 21, 3, '2050', '2500', '<div style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; color: rgb(34, 34, 34); font-family: &quot;TT Norms Pro&quot;, &quot;Open Sans&quot;, Roboto, Arial, Helvetica, sans-serif, SimSun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\"><div data-spm-anchor-id=\"a2g0o.detail.1000023.i0.429agWQKgWQKLM\" style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px;\">Camping Cookware Kit Outdoor Aluminum Cooking Set Water Kettle Pan Pot Travelling Hiking Picnic BBQ Tableware Equipment</div><div style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px;\"><br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"></div><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-bottom: 0px; line-height: inherit;\"><kse:widget data-widget-type=\"customText\" id=\"24677411\" type=\"relation\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"></kse:widget></p><div style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px;\"><br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"></div><div style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px;\"><br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"></div><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-bottom: 12px; line-height: 28px; font-family: OpenSans; font-size: 20px; font-weight: 900; white-space-collapse: preserve; color: rgb(0, 0, 0);\">Feature:</p></div><div style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; color: rgb(34, 34, 34); font-family: &quot;TT Norms Pro&quot;, &quot;Open Sans&quot;, Roboto, Arial, Helvetica, sans-serif, SimSun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\"><p data-spm-anchor-id=\"a2g0o.detail.1000023.i1.429agWQKgWQKLM\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-bottom: 12px; line-height: 20px; font-family: OpenSans; font-size: 14px; white-space-collapse: preserve; color: rgb(0, 0, 0);\">1. Made of high quality Aluminum, bowl and spoon are made of food grade material with non-sticking coating for easy cleaning,non-toxic and high temperature resistant<br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\">2. The insulated plastic handle protects your fingers from high temperatures,Cooking utensils are essential when planning long-distance hiking.<br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\">3. The stove and the pot handle can be folded to save space, and all the items in the cooking device can be stored together in the net bag for easy carrying.<br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\">4. Suitable for 2-3 people, with complete accessories, essential for outdoor camping<br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\">5. Small size and portable, all the objects in this cooking set can be stored together in a mesh bag for convenient carry.<br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\">6. Foldable handles on pot, frying pan and soup spoon. They can be folded to save space.It is specially designed to pack up small and take up little room, so that you barely feel the weight on your back<br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\">7. The camping cookware kit can do the delicious food quickly and evenly, suitable for camping, hiking, backpacking, picnic and other outdoor activities.</p></div><div style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; color: rgb(34, 34, 34); font-family: &quot;TT Norms Pro&quot;, &quot;Open Sans&quot;, Roboto, Arial, Helvetica, sans-serif, SimSun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-bottom: 12px; line-height: 28px; font-family: OpenSans; font-size: 20px; font-weight: 900; white-space-collapse: preserve; color: rgb(0, 0, 0);\">Product Details:</p></div><div style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; color: rgb(34, 34, 34); font-family: &quot;TT Norms Pro&quot;, &quot;Open Sans&quot;, Roboto, Arial, Helvetica, sans-serif, SimSun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\"><p data-spm-anchor-id=\"a2g0o.detail.1000023.i2.429agWQKgWQKLM\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-bottom: 12px; line-height: 20px; font-family: OpenSans; font-size: 14px; white-space-collapse: preserve; color: rgb(0, 0, 0);\">Material: Anodized aluminum<br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\">Size:<br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\">Cooker: 170 mm x 90 mm <br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\">Frying pan : 175mm x 45mm<br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\">Tea capacity: 0.8L （140 mm x 80 mm）<br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\">Suitable number: 2-3 people<br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\">(All the above data is manual measurement, there will be a slight error, it is normal, and those who mind are careful to shoot)</p></div>', 'BW58Y3SX', NULL, 0, 'camping-aluminum-cooking-set', 'active', '2024-08-22 02:52:11', '2024-08-22 02:52:11'),
(110, 'Camping Folding Knife', 3, 21, 3, '250', '399', '<p style=\"margin-bottom: 20px; outline: 0px; font-variant-ligatures: normal; font-variant-caps: normal; line-height: inherit; font-family: Lato; font-size: 14px; font-style: normal; color: rgb(62, 62, 62);\"><span style=\"font-family: Arial;\">Small Knife for camping.</span></p>', '1LBQGF5Y', NULL, 0, 'camping-folding-knife', 'active', '2024-09-03 04:27:36', '2024-09-03 04:27:36'),
(111, '8 person tent', 3, 25, 3, '5000', '8000', '<p>8 person tent</p>', 'JNV92MDZ', NULL, 0, '8-person-tent', 'active', '2024-10-01 06:48:00', '2024-10-01 06:48:00'),
(112, 'Sleeping Bag', 4, 21, 5, '550', '999', '<p>-none-</p>', 'XYHWTBP7', NULL, 0, 'sleeping-bag', 'active', '2024-11-05 04:21:17', '2024-11-05 04:21:17'),
(113, 'The North Face Men’s Drop Jacket', 4, 26, 5, '1300', '1999', '<p><span style=\"color: rgb(42, 42, 42); font-family: helvetica-neue-lt, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 300;\">The Men\'s Aconcagua 3 Hoodie delivers reliable warmth from first frost to spring thaw. A 100% recycled body fabric is lined with a combination of down and synthetic insulations, giving you warmth without the unnecessary bulk. This is the jacket you\'ll reach for when temperatures drop.</span></p>', '0HO2JAEC', NULL, 0, 'the-north-face-mens-drop-jacket', 'active', '2024-12-02 06:25:28', '2024-12-02 06:25:28'),
(114, 'Nautica Inner Thermal Set', 3, 26, 5, '560', '999', '<p>-none-</p>', 'IXHGQ8O3', NULL, 0, 'nautica-inner-thermal-set', 'active', '2024-12-12 04:57:11', '2024-12-12 04:57:11'),
(115, 'Hi Gear Rock 5 Family Tent 8 Person', 3, 25, 3, '3000', '4999', '<p>This tent can accommodate 8 people. Inside, there are two adjacent rooms where 2 and 3 people can stay, totaling 5 people. The front section can be used for dining, sitting, praying, and storing bikes or bicycles. If needed, an additional 4 to 5 people can stay there. The partitions between the rooms can also be removed to create a large 16x12 feet room. It is suitable for use in school or college tent accommodation programs.</p>', 'T8R12GH4', NULL, 0, 'hi-gear-rock-5-family-tent-8-person', 'active', '2024-12-17 04:15:31', '2024-12-17 04:36:07'),
(151, 'Color Test', 3, 25, 2, '100', '170', '<p>dfsdf</p>', 'RDVZBSGE', NULL, 0, 'color-test', 'active', '2025-01-15 22:53:50', '2025-01-15 22:53:50'),
(153, 'Color 4 Test', 3, 21, 2, '270', '270', '<p>assdf gg h h</p>', '513L0DWG', NULL, 0, 'color-4-test', 'active', '2025-01-15 23:07:43', '2025-01-15 23:07:43'),
(160, 'test tent', 3, 21, 2, '1500', '1600', NULL, 'D280L3CY', NULL, 0, 'test-tent', 'active', '2025-01-19 01:30:44', '2025-01-19 01:30:44'),
(161, 'pink color', 4, 23, NULL, NULL, '1200', '<br>', 'H71W0MZ6', NULL, 0, 'pink-color', 'active', '2025-01-19 01:48:41', '2025-01-19 01:48:41'),
(162, 'test', 3, 23, 2, NULL, '1600', '<p>cd</p>', 'X4D190WC', NULL, 0, 'test', 'active', '2025-01-19 02:03:33', '2025-01-19 02:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `products_colors`
--

CREATE TABLE `products_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_colors`
--

INSERT INTO `products_colors` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(24, 27, 9, '2024-04-08 08:59:42', '2024-04-08 08:59:42'),
(25, 27, 10, '2024-04-08 08:59:42', '2024-04-08 08:59:42'),
(26, 31, 5, '2024-04-17 04:27:08', '2024-04-17 04:27:08'),
(27, 31, 6, '2024-04-17 04:27:08', '2024-04-17 04:27:08'),
(28, 33, 5, '2024-04-17 04:31:13', '2024-04-17 04:31:13'),
(29, 33, 6, '2024-04-17 04:31:13', '2024-04-17 04:31:13'),
(30, 33, 7, '2024-04-17 04:31:13', '2024-04-17 04:31:13'),
(31, 34, 5, '2024-04-17 04:33:38', '2024-04-17 04:33:38'),
(32, 34, 6, '2024-04-17 04:33:38', '2024-04-17 04:33:38'),
(33, 34, 7, '2024-04-17 04:33:38', '2024-04-17 04:33:38'),
(34, 34, 8, '2024-04-17 04:33:38', '2024-04-17 04:33:38'),
(35, 35, 5, '2024-04-17 04:37:31', '2024-04-17 04:37:31'),
(36, 35, 6, '2024-04-17 04:37:31', '2024-04-17 04:37:31'),
(37, 35, 7, '2024-04-17 04:37:31', '2024-04-17 04:37:31'),
(38, 35, 8, '2024-04-17 04:37:31', '2024-04-17 04:37:31'),
(46, 38, 5, '2024-04-18 02:49:15', '2024-04-18 02:49:15'),
(47, 38, 8, '2024-04-18 02:49:15', '2024-04-18 02:49:15'),
(50, 40, 5, '2024-05-02 09:08:23', '2024-05-02 09:08:23'),
(51, 45, 8, '2024-05-02 09:42:16', '2024-05-02 09:42:16'),
(78, 54, 10, '2024-05-31 07:51:45', '2024-05-31 07:51:45'),
(79, 54, 16, '2024-05-31 07:51:45', '2024-05-31 07:51:45'),
(80, 54, 17, '2024-05-31 07:51:45', '2024-05-31 07:51:45'),
(81, 54, 20, '2024-05-31 07:51:45', '2024-05-31 07:51:45'),
(82, 54, 23, '2024-05-31 07:51:45', '2024-05-31 07:51:45'),
(83, 54, 27, '2024-05-31 07:51:45', '2024-05-31 07:51:45'),
(84, 55, 10, '2024-05-31 08:44:21', '2024-05-31 08:44:21'),
(85, 55, 18, '2024-05-31 08:44:21', '2024-05-31 08:44:21'),
(86, 55, 21, '2024-05-31 08:44:21', '2024-05-31 08:44:21'),
(87, 55, 23, '2024-05-31 08:44:21', '2024-05-31 08:44:21'),
(88, 55, 26, '2024-05-31 08:44:21', '2024-05-31 08:44:21'),
(89, 56, 10, '2024-05-31 18:10:11', '2024-05-31 18:10:11'),
(90, 56, 11, '2024-05-31 18:10:11', '2024-05-31 18:10:11'),
(91, 56, 16, '2024-05-31 18:10:11', '2024-05-31 18:10:11'),
(92, 56, 23, '2024-05-31 18:10:11', '2024-05-31 18:10:11'),
(93, 56, 26, '2024-05-31 18:10:11', '2024-05-31 18:10:11'),
(94, 57, 10, '2024-05-31 18:14:52', '2024-05-31 18:14:52'),
(95, 57, 16, '2024-05-31 18:14:52', '2024-05-31 18:14:52'),
(96, 57, 21, '2024-05-31 18:14:52', '2024-05-31 18:14:52'),
(97, 57, 23, '2024-05-31 18:14:52', '2024-05-31 18:14:52'),
(98, 57, 24, '2024-05-31 18:14:52', '2024-05-31 18:14:52'),
(99, 57, 26, '2024-05-31 18:14:52', '2024-05-31 18:14:52'),
(100, 58, 10, '2024-05-31 18:21:13', '2024-05-31 18:21:13'),
(101, 58, 16, '2024-05-31 18:21:13', '2024-05-31 18:21:13'),
(102, 58, 21, '2024-05-31 18:21:13', '2024-05-31 18:21:13'),
(103, 58, 23, '2024-05-31 18:21:13', '2024-05-31 18:21:13'),
(104, 58, 24, '2024-05-31 18:21:13', '2024-05-31 18:21:13'),
(105, 58, 26, '2024-05-31 18:21:13', '2024-05-31 18:21:13'),
(106, 59, 10, '2024-05-31 18:59:08', '2024-05-31 18:59:08'),
(107, 59, 23, '2024-05-31 18:59:08', '2024-05-31 18:59:08'),
(108, 60, 10, '2024-05-31 19:04:48', '2024-05-31 19:04:48'),
(109, 60, 26, '2024-05-31 19:04:48', '2024-05-31 19:04:48'),
(110, 60, 28, '2024-05-31 19:04:48', '2024-05-31 19:04:48'),
(111, 61, 10, '2024-05-31 19:07:17', '2024-05-31 19:07:17'),
(112, 61, 28, '2024-05-31 19:07:17', '2024-05-31 19:07:17'),
(113, 62, 10, '2024-05-31 19:11:44', '2024-05-31 19:11:44'),
(114, 62, 26, '2024-05-31 19:11:44', '2024-05-31 19:11:44'),
(115, 62, 28, '2024-05-31 19:11:44', '2024-05-31 19:11:44'),
(119, 64, 10, '2024-05-31 19:30:31', '2024-05-31 19:30:31'),
(120, 64, 16, '2024-05-31 19:30:31', '2024-05-31 19:30:31'),
(121, 64, 17, '2024-05-31 19:30:31', '2024-05-31 19:30:31'),
(122, 64, 18, '2024-05-31 19:30:31', '2024-05-31 19:30:31'),
(123, 64, 20, '2024-05-31 19:30:31', '2024-05-31 19:30:31'),
(124, 64, 23, '2024-05-31 19:30:31', '2024-05-31 19:30:31'),
(125, 64, 26, '2024-05-31 19:30:31', '2024-05-31 19:30:31'),
(126, 65, 10, '2024-06-01 07:13:01', '2024-06-01 07:13:01'),
(127, 65, 28, '2024-06-01 07:13:01', '2024-06-01 07:13:01'),
(128, 65, 29, '2024-06-01 07:13:01', '2024-06-01 07:13:01'),
(129, 66, 10, '2024-06-01 07:28:05', '2024-06-01 07:28:05'),
(130, 66, 18, '2024-06-01 07:28:05', '2024-06-01 07:28:05'),
(131, 66, 24, '2024-06-01 07:28:05', '2024-06-01 07:28:05'),
(132, 66, 25, '2024-06-01 07:28:05', '2024-06-01 07:28:05'),
(133, 66, 28, '2024-06-01 07:28:05', '2024-06-01 07:28:05'),
(134, 67, 10, '2024-06-01 07:45:04', '2024-06-01 07:45:04'),
(135, 67, 11, '2024-06-01 07:45:04', '2024-06-01 07:45:04'),
(136, 67, 20, '2024-06-01 07:45:04', '2024-06-01 07:45:04'),
(137, 67, 21, '2024-06-01 07:45:04', '2024-06-01 07:45:04'),
(138, 67, 23, '2024-06-01 07:45:04', '2024-06-01 07:45:04'),
(139, 67, 24, '2024-06-01 07:45:04', '2024-06-01 07:45:04'),
(140, 67, 26, '2024-06-01 07:45:04', '2024-06-01 07:45:04'),
(141, 68, 10, '2024-06-01 07:49:58', '2024-06-01 07:49:58'),
(142, 68, 18, '2024-06-01 07:49:58', '2024-06-01 07:49:58'),
(143, 68, 21, '2024-06-01 07:49:58', '2024-06-01 07:49:58'),
(144, 68, 26, '2024-06-01 07:49:58', '2024-06-01 07:49:58'),
(145, 69, 10, '2024-06-01 18:27:00', '2024-06-01 18:27:00'),
(146, 69, 20, '2024-06-01 18:27:00', '2024-06-01 18:27:00'),
(147, 69, 28, '2024-06-01 18:27:00', '2024-06-01 18:27:00'),
(148, 70, 10, '2024-06-01 18:32:39', '2024-06-01 18:32:39'),
(149, 70, 27, '2024-06-01 18:32:39', '2024-06-01 18:32:39'),
(150, 70, 28, '2024-06-01 18:32:39', '2024-06-01 18:32:39'),
(151, 71, 10, '2024-06-01 18:37:27', '2024-06-01 18:37:27'),
(152, 71, 28, '2024-06-01 18:37:27', '2024-06-01 18:37:27'),
(153, 72, 10, '2024-06-01 18:39:43', '2024-06-01 18:39:43'),
(154, 72, 20, '2024-06-01 18:39:43', '2024-06-01 18:39:43'),
(155, 73, 10, '2024-06-01 18:47:34', '2024-06-01 18:47:34'),
(156, 73, 28, '2024-06-01 18:47:34', '2024-06-01 18:47:34'),
(157, 79, 10, '2024-06-03 11:26:04', '2024-06-03 11:26:04'),
(158, 79, 16, '2024-06-03 11:26:04', '2024-06-03 11:26:04'),
(159, 79, 20, '2024-06-03 11:26:04', '2024-06-03 11:26:04'),
(160, 79, 23, '2024-06-03 11:26:04', '2024-06-03 11:26:04'),
(161, 79, 28, '2024-06-03 11:26:04', '2024-06-03 11:26:04'),
(162, 79, 29, '2024-06-03 11:26:04', '2024-06-03 11:26:04'),
(163, 80, 10, '2024-06-03 17:52:12', '2024-06-03 17:52:12'),
(164, 80, 11, '2024-06-03 17:52:12', '2024-06-03 17:52:12'),
(165, 80, 21, '2024-06-03 17:52:12', '2024-06-03 17:52:12'),
(166, 80, 26, '2024-06-03 17:52:12', '2024-06-03 17:52:12'),
(172, 81, 10, '2024-06-04 11:44:05', '2024-06-04 11:44:05'),
(173, 81, 20, '2024-06-04 11:44:05', '2024-06-04 11:44:05'),
(174, 81, 21, '2024-06-04 11:44:05', '2024-06-04 11:44:05'),
(175, 81, 24, '2024-06-04 11:44:05', '2024-06-04 11:44:05'),
(176, 81, 28, '2024-06-04 11:44:05', '2024-06-04 11:44:05'),
(177, 82, 10, '2024-06-04 12:25:19', '2024-06-04 12:25:19'),
(178, 82, 21, '2024-06-04 12:25:19', '2024-06-04 12:25:19'),
(179, 82, 24, '2024-06-04 12:25:19', '2024-06-04 12:25:19'),
(180, 82, 26, '2024-06-04 12:25:19', '2024-06-04 12:25:19'),
(181, 82, 28, '2024-06-04 12:25:19', '2024-06-04 12:25:19'),
(182, 83, 10, '2024-06-04 19:40:14', '2024-06-04 19:40:14'),
(183, 83, 20, '2024-06-04 19:40:14', '2024-06-04 19:40:14'),
(184, 84, 26, '2024-06-05 03:19:19', '2024-06-05 03:19:19'),
(185, 84, 31, '2024-06-05 03:19:19', '2024-06-05 03:19:19'),
(186, 85, 26, '2024-06-05 03:21:06', '2024-06-05 03:21:06'),
(187, 85, 31, '2024-06-05 03:21:06', '2024-06-05 03:21:06'),
(189, 114, 24, '2024-07-06 10:41:28', '2024-07-06 10:41:28'),
(190, 113, 24, '2024-07-06 10:41:58', '2024-07-06 10:41:58'),
(191, 112, 24, '2024-07-06 10:42:32', '2024-07-06 10:42:32'),
(192, 111, 24, '2024-07-06 10:43:17', '2024-07-06 10:43:17'),
(193, 110, 24, '2024-07-06 10:43:48', '2024-07-06 10:43:48'),
(194, 109, 24, '2024-07-06 10:44:45', '2024-07-06 10:44:45'),
(195, 108, 24, '2024-07-06 10:46:18', '2024-07-06 10:46:18'),
(196, 107, 24, '2024-07-06 10:47:09', '2024-07-06 10:47:09'),
(197, 106, 24, '2024-07-06 10:47:52', '2024-07-06 10:47:52'),
(198, 105, 24, '2024-07-06 10:48:28', '2024-07-06 10:48:28'),
(199, 104, 24, '2024-07-06 10:49:15', '2024-07-06 10:49:15'),
(200, 103, 24, '2024-07-06 10:50:39', '2024-07-06 10:50:39'),
(201, 102, 24, '2024-07-06 10:51:21', '2024-07-06 10:51:21'),
(202, 101, 24, '2024-07-07 09:36:00', '2024-07-07 09:36:00'),
(203, 100, 24, '2024-07-07 09:36:40', '2024-07-07 09:36:40'),
(204, 99, 24, '2024-07-07 09:37:22', '2024-07-07 09:37:22'),
(205, 98, 24, '2024-07-07 09:37:53', '2024-07-07 09:37:53'),
(207, 97, 24, '2024-07-07 09:39:06', '2024-07-07 09:39:06'),
(208, 96, 24, '2024-07-07 09:39:49', '2024-07-07 09:39:49'),
(209, 95, 24, '2024-07-07 09:40:22', '2024-07-07 09:40:22'),
(210, 94, 24, '2024-07-07 09:40:55', '2024-07-07 09:40:55'),
(211, 86, 24, '2024-07-07 09:42:12', '2024-07-07 09:42:12'),
(212, 87, 24, '2024-07-07 09:42:44', '2024-07-07 09:42:44'),
(213, 88, 24, '2024-07-07 09:43:15', '2024-07-07 09:43:15'),
(214, 89, 24, '2024-07-07 09:43:47', '2024-07-07 09:43:47'),
(215, 90, 24, '2024-07-07 09:44:18', '2024-07-07 09:44:18'),
(216, 91, 24, '2024-07-07 09:44:48', '2024-07-07 09:44:48'),
(217, 92, 24, '2024-07-07 09:45:17', '2024-07-07 09:45:17'),
(218, 93, 24, '2024-07-07 09:45:47', '2024-07-07 09:45:47'),
(219, 115, 24, '2024-07-08 07:51:18', '2024-07-08 07:51:18'),
(220, 116, 24, '2024-07-08 07:53:43', '2024-07-08 07:53:43'),
(221, 117, 24, '2024-07-08 07:54:43', '2024-07-08 07:54:43'),
(222, 118, 28, '2024-07-09 07:14:36', '2024-07-09 07:14:36'),
(224, 120, 10, '2024-07-12 18:04:54', '2024-07-12 18:04:54'),
(225, 121, 16, '2024-07-12 18:10:02', '2024-07-12 18:10:02'),
(226, 122, 28, '2024-07-14 07:01:22', '2024-07-14 07:01:22'),
(234, 123, 10, '2024-08-16 18:05:25', '2024-08-16 18:05:25'),
(235, 123, 16, '2024-08-16 18:05:25', '2024-08-16 18:05:25'),
(236, 123, 21, '2024-08-16 18:05:25', '2024-08-16 18:05:25'),
(237, 123, 22, '2024-08-16 18:05:25', '2024-08-16 18:05:25'),
(238, 123, 24, '2024-08-16 18:05:25', '2024-08-16 18:05:25'),
(239, 124, 10, '2024-08-16 18:24:17', '2024-08-16 18:24:17'),
(240, 124, 16, '2024-08-16 18:24:17', '2024-08-16 18:24:17'),
(241, 124, 17, '2024-08-16 18:24:17', '2024-08-16 18:24:17'),
(242, 124, 20, '2024-08-16 18:24:17', '2024-08-16 18:24:17'),
(243, 124, 28, '2024-08-16 18:24:17', '2024-08-16 18:24:17'),
(244, 124, 30, '2024-08-16 18:24:17', '2024-08-16 18:24:17'),
(245, 125, 20, '2024-08-21 08:02:37', '2024-08-21 08:02:37'),
(246, 125, 27, '2024-08-21 08:02:37', '2024-08-21 08:02:37'),
(247, 125, 28, '2024-08-21 08:02:37', '2024-08-21 08:02:37'),
(248, 125, 30, '2024-08-21 08:02:37', '2024-08-21 08:02:37'),
(249, 126, 16, '2024-08-22 16:00:35', '2024-08-22 16:00:35'),
(250, 126, 17, '2024-08-22 16:00:35', '2024-08-22 16:00:35'),
(251, 126, 20, '2024-08-22 16:00:35', '2024-08-22 16:00:35'),
(252, 126, 26, '2024-08-22 16:00:35', '2024-08-22 16:00:35'),
(253, 127, 21, '2024-08-22 16:10:05', '2024-08-22 16:10:05'),
(260, 56, 20, '2024-08-23 17:04:04', '2024-08-23 17:04:04'),
(261, 57, 11, '2024-08-23 17:21:15', '2024-08-23 17:21:15'),
(262, 57, 20, '2024-08-23 17:21:15', '2024-08-23 17:21:15'),
(263, 65, 31, '2024-08-27 06:31:48', '2024-08-27 06:31:48'),
(264, 66, 20, '2024-08-27 06:38:37', '2024-08-27 06:38:37'),
(265, 67, 16, '2024-08-28 06:47:22', '2024-08-28 06:47:22'),
(266, 81, 11, '2024-08-29 09:22:14', '2024-08-29 09:22:14'),
(267, 81, 22, '2024-08-29 09:22:14', '2024-08-29 09:22:14'),
(268, 128, 10, '2024-09-08 07:50:08', '2024-09-08 07:50:08'),
(269, 128, 11, '2024-09-08 07:50:08', '2024-09-08 07:50:08'),
(270, 128, 21, '2024-09-08 07:50:08', '2024-09-08 07:50:08'),
(271, 128, 22, '2024-09-08 07:50:08', '2024-09-08 07:50:08'),
(274, 129, 16, '2024-09-08 08:01:40', '2024-09-08 08:01:40'),
(275, 129, 18, '2024-09-08 08:01:40', '2024-09-08 08:01:40'),
(276, 129, 25, '2024-09-08 08:01:40', '2024-09-08 08:01:40'),
(277, 129, 26, '2024-09-08 08:01:40', '2024-09-08 08:01:40'),
(278, 129, 28, '2024-09-08 08:01:40', '2024-09-08 08:01:40'),
(313, 59, 16, '2024-09-08 17:19:02', '2024-09-08 17:19:02'),
(321, 133, 10, '2024-09-15 04:06:27', '2024-09-15 04:06:27'),
(322, 133, 11, '2024-09-15 04:06:27', '2024-09-15 04:06:27'),
(323, 133, 17, '2024-09-15 04:06:27', '2024-09-15 04:06:27'),
(324, 133, 18, '2024-09-15 04:06:27', '2024-09-15 04:06:27'),
(325, 133, 23, '2024-09-15 04:06:27', '2024-09-15 04:06:27'),
(327, 134, 11, '2024-09-28 06:22:45', '2024-09-28 06:22:45'),
(328, 134, 16, '2024-09-28 06:22:45', '2024-09-28 06:22:45'),
(329, 134, 21, '2024-09-28 06:22:45', '2024-09-28 06:22:45'),
(330, 134, 26, '2024-09-28 06:22:45', '2024-09-28 06:22:45'),
(331, 135, 10, '2024-10-16 16:06:49', '2024-10-16 16:06:49'),
(332, 135, 16, '2024-10-16 16:06:49', '2024-10-16 16:06:49'),
(333, 135, 20, '2024-10-16 16:06:49', '2024-10-16 16:06:49'),
(334, 135, 21, '2024-10-16 16:06:49', '2024-10-16 16:06:49'),
(335, 135, 22, '2024-10-16 16:06:49', '2024-10-16 16:06:49'),
(336, 135, 23, '2024-10-17 04:44:04', '2024-10-17 04:44:04'),
(337, 136, 10, '2024-11-12 14:04:08', '2024-11-12 14:04:08'),
(338, 136, 16, '2024-11-12 14:04:08', '2024-11-12 14:04:08'),
(339, 136, 20, '2024-11-12 14:04:08', '2024-11-12 14:04:08'),
(340, 136, 22, '2024-11-12 14:04:08', '2024-11-12 14:04:08'),
(341, 136, 26, '2024-11-12 14:04:08', '2024-11-12 14:04:08'),
(342, 137, 10, '2024-11-13 19:00:34', '2024-11-13 19:00:34'),
(343, 137, 16, '2024-11-13 19:00:34', '2024-11-13 19:00:34'),
(344, 137, 17, '2024-11-13 19:00:34', '2024-11-13 19:00:34'),
(345, 137, 20, '2024-11-13 19:00:34', '2024-11-13 19:00:34'),
(346, 137, 28, '2024-11-13 19:00:34', '2024-11-13 19:00:34'),
(347, 138, 10, '2024-12-04 09:57:05', '2024-12-04 09:57:05'),
(348, 138, 17, '2024-12-04 09:57:05', '2024-12-04 09:57:05'),
(349, 138, 21, '2024-12-04 09:57:05', '2024-12-04 09:57:05'),
(350, 138, 28, '2024-12-04 09:57:05', '2024-12-04 09:57:05'),
(351, 139, 10, '2024-12-06 13:04:52', '2024-12-06 13:04:52'),
(352, 139, 23, '2024-12-06 13:04:52', '2024-12-06 13:04:52'),
(353, 139, 24, '2024-12-06 13:04:52', '2024-12-06 13:04:52'),
(354, 140, 10, '2024-12-06 13:16:20', '2024-12-06 13:16:20'),
(355, 140, 16, '2024-12-06 13:16:20', '2024-12-06 13:16:20'),
(356, 140, 23, '2024-12-06 13:16:20', '2024-12-06 13:16:20'),
(357, 140, 28, '2024-12-06 13:16:20', '2024-12-06 13:16:20');

-- --------------------------------------------------------

--
-- Table structure for table `products_sizes`
--

CREATE TABLE `products_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_sizes`
--

INSERT INTO `products_sizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(49, 25, 5, '2024-02-07 10:31:34', '2024-02-07 10:31:34'),
(50, 25, 6, '2024-02-07 10:31:34', '2024-02-07 10:31:34'),
(51, 25, 7, '2024-02-07 10:31:34', '2024-02-07 10:31:34'),
(52, 25, 8, '2024-02-07 10:31:34', '2024-02-07 10:31:34'),
(53, 26, 5, '2024-02-07 10:38:18', '2024-02-07 10:38:18'),
(54, 26, 6, '2024-02-07 10:38:18', '2024-02-07 10:38:18'),
(55, 26, 7, '2024-02-07 10:38:18', '2024-02-07 10:38:18'),
(56, 26, 8, '2024-02-07 10:38:18', '2024-02-07 10:38:18');

-- --------------------------------------------------------

--
-- Table structure for table `product_additionalinfos`
--

CREATE TABLE `product_additionalinfos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `additional_name` varchar(255) DEFAULT NULL,
  `additional_value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_additionalinfos`
--

INSERT INTO `product_additionalinfos` (`id`, `product_id`, `additional_name`, `additional_value`, `created_at`, `updated_at`) VALUES
(116, 27, 'Frame :', NULL, '2024-04-08 08:59:42', '2024-04-08 08:59:42'),
(117, 27, 'Weight Capacity :', NULL, '2024-04-08 08:59:42', '2024-04-08 08:59:42'),
(118, 27, 'Width :', NULL, '2024-04-08 08:59:42', '2024-04-08 08:59:42'),
(119, 27, 'Height :', NULL, '2024-04-08 08:59:42', '2024-04-08 08:59:42'),
(120, 27, 'Wheels :', NULL, '2024-04-08 08:59:42', '2024-04-08 08:59:42'),
(121, 28, 'Frame :', NULL, '2024-04-08 09:04:51', '2024-04-08 09:04:51'),
(122, 28, 'Weight Capacity :', NULL, '2024-04-08 09:04:51', '2024-04-08 09:04:51'),
(123, 28, 'Width :', NULL, '2024-04-08 09:04:51', '2024-04-08 09:04:51'),
(124, 28, 'Height :', NULL, '2024-04-08 09:04:51', '2024-04-08 09:04:51'),
(125, 28, 'Wheels :', NULL, '2024-04-08 09:04:51', '2024-04-08 09:04:51'),
(126, 29, 'Frame :', NULL, '2024-04-08 09:11:40', '2024-04-08 09:11:40'),
(127, 29, 'Weight Capacity :', NULL, '2024-04-08 09:11:40', '2024-04-08 09:11:40'),
(128, 29, 'Width :', NULL, '2024-04-08 09:11:40', '2024-04-08 09:11:40'),
(129, 29, 'Height :', NULL, '2024-04-08 09:11:40', '2024-04-08 09:11:40'),
(130, 29, 'Wheels :', NULL, '2024-04-08 09:11:40', '2024-04-08 09:11:40');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `product_id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(458, 151, 'Color', '27', '2025-01-15 22:53:50', '2025-01-15 22:53:50'),
(459, 151, 'Size', '37', '2025-01-15 22:53:50', '2025-01-15 22:53:50'),
(460, 151, 'Color', '30', '2025-01-15 22:53:50', '2025-01-15 22:53:50'),
(461, 151, 'Size', '38', '2025-01-15 22:53:50', '2025-01-15 22:53:50'),
(462, 151, 'Color', '31', '2025-01-15 22:53:50', '2025-01-15 22:53:50'),
(463, 151, 'Size', '42', '2025-01-15 22:53:50', '2025-01-15 22:53:50'),
(464, 151, 'Color', '36', '2025-01-15 22:53:50', '2025-01-15 22:53:50'),
(465, 151, 'Size', '39', '2025-01-15 22:53:50', '2025-01-15 22:53:50'),
(466, 151, 'Color', '28', '2025-01-15 22:53:50', '2025-01-15 22:53:50'),
(467, 151, 'Size', '40', '2025-01-15 22:53:50', '2025-01-15 22:53:50'),
(478, 153, 'Color', '27', '2025-01-15 23:07:43', '2025-01-15 23:07:43'),
(479, 153, 'Size', '38', '2025-01-15 23:07:43', '2025-01-15 23:07:43'),
(480, 153, 'Color', '30', '2025-01-15 23:07:43', '2025-01-15 23:07:43'),
(481, 153, 'Size', '40', '2025-01-15 23:07:43', '2025-01-15 23:07:43'),
(482, 153, 'Color', '31', '2025-01-15 23:07:43', '2025-01-15 23:07:43'),
(483, 153, 'Size', '41', '2025-01-15 23:07:43', '2025-01-15 23:07:43'),
(498, 162, 'Color', '29', '2025-01-19 02:03:33', '2025-01-19 02:03:33'),
(499, 162, 'Size', '38', '2025-01-19 02:03:33', '2025-01-19 02:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `product_color_images`
--

CREATE TABLE `product_color_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_color_images`
--

INSERT INTO `product_color_images` (`id`, `product_id`, `color_id`, `image`, `created_at`, `updated_at`) VALUES
(34, 151, 27, 'product_images/color-image/product_151271737003325.png', '2025-01-15 22:55:25', '2025-01-15 22:55:25'),
(35, 151, 28, 'product_images/color-image/product_151281737003325.png', '2025-01-15 22:55:25', '2025-01-15 22:55:25'),
(36, 151, 30, 'product_images/color-image/product_151301737003325.png', '2025-01-15 22:55:25', '2025-01-15 22:55:25'),
(37, 151, 31, 'product_images/color-image/product_151311737003325.png', '2025-01-15 22:55:25', '2025-01-15 22:55:25'),
(38, 151, 36, 'product_images/color-image/product_151361737006825.png', '2025-01-15 22:55:25', '2025-01-15 23:53:45'),
(39, 153, 27, 'product_images/color-image/product_153271737004100.png', '2025-01-15 23:08:20', '2025-01-15 23:08:20'),
(40, 153, 30, 'product_images/color-image/product_153301737004100.png', '2025-01-15 23:08:20', '2025-01-15 23:08:20'),
(41, 153, 31, 'product_images/color-image/product_153311737004100.png', '2025-01-15 23:08:20', '2025-01-15 23:08:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_extras`
--

CREATE TABLE `product_extras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `warranty_type` varchar(255) DEFAULT NULL,
  `return_policy` varchar(255) DEFAULT NULL,
  `delivery_type` varchar(255) DEFAULT NULL,
  `emi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_extras`
--

INSERT INTO `product_extras` (`id`, `product_id`, `warranty_type`, `return_policy`, `delivery_type`, `emi`, `created_at`, `updated_at`) VALUES
(130, 148, NULL, NULL, '1', 'Not Available', '2025-01-14 04:37:29', '2025-01-14 04:37:29'),
(131, 149, NULL, NULL, '1', 'Not Available', '2025-01-14 04:53:33', '2025-01-14 04:53:33'),
(132, 150, NULL, NULL, '1', 'Not Available', '2025-01-14 05:04:21', '2025-01-14 05:04:21'),
(133, 151, NULL, NULL, '1', 'Not Available', '2025-01-15 22:53:53', '2025-01-15 22:53:53'),
(135, 153, NULL, NULL, '1', 'Not Available', '2025-01-15 23:07:43', '2025-01-15 23:07:43'),
(136, 154, NULL, NULL, '1', 'Available', '2025-01-19 00:32:49', '2025-01-19 00:46:24'),
(137, 159, NULL, NULL, '1', 'Not Available', '2025-01-19 00:52:01', '2025-01-19 00:52:01'),
(138, 160, NULL, NULL, '1', 'Not Available', '2025-01-19 01:30:44', '2025-01-19 01:30:44'),
(139, 161, NULL, NULL, '1', 'Not Available', '2025-01-19 01:48:41', '2025-01-19 01:48:41'),
(140, 162, NULL, NULL, '1', 'Not Available', '2025-01-19 02:03:33', '2025-01-19 02:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `product_image`, `slug`, `created_at`, `updated_at`) VALUES
(68, 23, 'mens-premium-panjabi-sa06_0.jpg', '', '2024-02-06 22:15:47', '2024-02-06 22:15:47'),
(69, 23, 'mens-premium-panjabi-sa06_1.jpg', '', '2024-02-06 22:15:48', '2024-02-06 22:15:48'),
(70, 23, 'mens-premium-panjabi-sa06_2.jpg', '', '2024-02-06 22:15:49', '2024-02-06 22:15:49'),
(71, 23, 'mens-premium-panjabi-sa06_3.jpg', '', '2024-02-06 22:15:50', '2024-02-06 22:15:50'),
(72, 23, 'mens-premium-panjabi-sa06_4.jpg', '', '2024-02-06 22:15:50', '2024-02-06 22:15:50'),
(73, 24, 'mens-printed-panjabi-pr05_0.jpg', '', '2024-02-06 22:20:36', '2024-02-06 22:20:36'),
(74, 24, 'mens-printed-panjabi-pr05_1.jpg', '', '2024-02-06 22:20:37', '2024-02-06 22:20:37'),
(75, 24, 'mens-printed-panjabi-pr05_2.jpg', '', '2024-02-06 22:20:38', '2024-02-06 22:20:38'),
(76, 24, 'mens-printed-panjabi-pr05_3.jpg', '', '2024-02-06 22:20:39', '2024-02-06 22:20:39'),
(77, 24, 'mens-printed-panjabi-pr05_4.jpg', '', '2024-02-06 22:20:40', '2024-02-06 22:20:40'),
(78, 25, 'mens-printed-panjabi-pr04_0.jpg', '', '2024-02-06 22:31:35', '2024-02-06 22:31:35'),
(79, 25, 'mens-printed-panjabi-pr04_1.jpg', '', '2024-02-06 22:31:36', '2024-02-06 22:31:36'),
(80, 25, 'mens-printed-panjabi-pr04_2.jpg', '', '2024-02-06 22:31:37', '2024-02-06 22:31:37'),
(81, 25, 'mens-printed-panjabi-pr04_3.jpg', '', '2024-02-06 22:31:38', '2024-02-06 22:31:38'),
(82, 25, 'mens-printed-panjabi-pr04_4.jpg', '', '2024-02-06 22:31:39', '2024-02-06 22:31:39'),
(83, 26, 'mens-printed-panjabi-pr03_0.jpg', '', '2024-02-06 22:38:20', '2024-02-06 22:38:20'),
(84, 26, 'mens-printed-panjabi-pr03_1.jpg', '', '2024-02-06 22:38:21', '2024-02-06 22:38:21'),
(85, 26, 'mens-printed-panjabi-pr03_2.jpg', '', '2024-02-06 22:38:22', '2024-02-06 22:38:22'),
(86, 26, 'mens-printed-panjabi-pr03_3.jpg', '', '2024-02-06 22:38:22', '2024-02-06 22:38:22'),
(87, 26, 'mens-printed-panjabi-pr03_4.jpg', '', '2024-02-06 22:38:23', '2024-02-06 22:38:23'),
(129, 74, 'camping-lamp_0_1719398736.jpg', '', '2024-06-25 22:45:36', '2024-06-25 22:45:36'),
(130, 74, 'camping-lamp_0_1720002589.jpg', '', '2024-07-02 22:29:49', '2024-07-02 22:29:49'),
(141, 86, 'multi-purpose-tool_0.jpg', '', '2024-07-16 02:08:15', '2024-07-16 02:08:15'),
(142, 86, 'multi-purpose-tool_1.jpg', '', '2024-07-16 02:08:15', '2024-07-16 02:08:15'),
(143, 87, 'naturehike-p-series-upf-50-tent-waterproof-3-person_0.jpg', '', '2024-07-16 02:27:21', '2024-07-16 02:27:21'),
(144, 87, 'naturehike-p-series-upf-50-tent-waterproof-3-person_1.jpg', '', '2024-07-16 02:27:21', '2024-07-16 02:27:21'),
(145, 88, 'naturehike-p-series-upf-50-tent-waterproof-2-person_0.jpg', '', '2024-07-16 02:35:19', '2024-07-16 02:35:19'),
(146, 88, 'naturehike-p-series-upf-50-tent-waterproof-2-person_1.png', '', '2024-07-16 02:35:20', '2024-07-16 02:35:20'),
(147, 89, 'nevo-rhino-internal-frame-mountain-climbing-backpack-455l_0.jpg', '', '2024-07-16 02:49:57', '2024-07-16 02:49:57'),
(148, 89, 'nevo-rhino-internal-frame-mountain-climbing-backpack-455l_1.jpg', '', '2024-07-16 02:49:57', '2024-07-16 02:49:57'),
(151, 90, 'quick-dry-pants_0.JPG', '', '2024-07-16 03:24:48', '2024-07-16 03:24:48'),
(153, 91, 'james-nicholson-mens-bi-elastic-outdoor-shorts_0.jpg', '', '2024-07-16 04:06:24', '2024-07-16 04:06:24'),
(154, 91, 'james-nicholson-mens-bi-elastic-outdoor-shorts_1.jpg', '', '2024-07-16 04:06:24', '2024-07-16 04:06:24'),
(155, 92, 'quechua-2-man-tent-mh100_0.jpg', '', '2024-07-18 02:02:25', '2024-07-18 02:02:25'),
(156, 92, 'quechua-2-man-tent-mh100_1.jpg', '', '2024-07-18 02:02:25', '2024-07-18 02:02:25'),
(157, 93, 'outdoor-mini-portable-folding-camping-gas-stove_0.jpg', '', '2024-07-18 02:20:58', '2024-07-18 02:20:58'),
(158, 93, 'outdoor-mini-portable-folding-camping-gas-stove_1.jpg', '', '2024-07-18 02:20:58', '2024-07-18 02:20:58'),
(161, 95, 'custom-clothing_0.jpg', '', '2024-07-29 01:56:15', '2024-07-29 01:56:15'),
(162, 95, 'custom-clothing_1.jpg', '', '2024-07-29 01:56:15', '2024-07-29 01:56:15'),
(163, 96, 'hi-gear-rock-4-family-tent-6-person_0.jpg', '', '2024-07-29 02:29:59', '2024-07-29 02:29:59'),
(164, 96, 'hi-gear-rock-4-family-tent-6-person_1.jpg', '', '2024-07-29 02:29:59', '2024-07-29 02:29:59'),
(165, 97, 'portable-beach-mat_0.jpg', '', '2024-08-02 09:00:35', '2024-08-02 09:00:35'),
(166, 97, 'portable-beach-mat_1.jpg', '', '2024-08-02 09:00:35', '2024-08-02 09:00:35'),
(167, 98, 'regular-hamok_0.jpg', '', '2024-08-09 22:18:03', '2024-08-09 22:18:03'),
(168, 99, 'outdoor-rain-poncho_0.jpg', '', '2024-08-09 22:27:35', '2024-08-09 22:27:35'),
(170, 90, 'quick-dry-pants_0_1723460349.JPG', '', '2024-08-12 02:59:09', '2024-08-12 02:59:09'),
(171, 100, 'female-quick-dry-pants_0.JPG', '', '2024-08-12 02:59:47', '2024-08-12 02:59:47'),
(172, 100, 'female-quick-dry-pants_1.JPG', '', '2024-08-12 02:59:47', '2024-08-12 02:59:47'),
(173, 101, 'female-hiking-pants_0.JPG', '', '2024-08-12 03:04:10', '2024-08-12 03:04:10'),
(174, 101, 'female-hiking-pants_1.jpg', '', '2024-08-12 03:04:10', '2024-08-12 03:04:10'),
(175, 102, 'james-nicholson-female-bi-elastic-outdoor-shorts_0.jpg', '', '2024-08-12 03:09:26', '2024-08-12 03:09:26'),
(176, 102, 'james-nicholson-female-bi-elastic-outdoor-shorts_1.jpg', '', '2024-08-12 03:09:26', '2024-08-12 03:09:26'),
(177, 103, 'female-hiking-pant_0.JPG', '', '2024-08-13 02:48:13', '2024-08-13 02:48:13'),
(178, 103, 'female-hiking-pant_1.JPG', '', '2024-08-13 02:48:13', '2024-08-13 02:48:13'),
(179, 104, 'sleeping-bag-15_0.jpg', '', '2024-08-13 03:08:22', '2024-08-13 03:08:22'),
(181, 105, 'camping-tripod-dark-grey_1.jpg', '', '2024-08-13 03:19:54', '2024-08-13 03:19:54'),
(182, 105, 'camping-tripod-dark-grey_0_1723548050.jpg', '', '2024-08-13 03:20:50', '2024-08-13 03:20:50'),
(183, 106, 'standard-hammock_0.jpg', '', '2024-08-13 03:34:45', '2024-08-13 03:34:45'),
(184, 107, 'mens-cycle-shorts_0.jpg', '', '2024-08-14 03:43:27', '2024-08-14 03:43:27'),
(185, 107, 'mens-cycle-shorts_1.jpg', '', '2024-08-14 03:43:28', '2024-08-14 03:43:28'),
(186, 108, 'sun-butane-gas-can_0.jpeg', '', '2024-08-22 02:30:35', '2024-08-22 02:30:35'),
(187, 109, 'camping-aluminum-cooking-set_0.jpeg', '', '2024-08-22 02:52:11', '2024-08-22 02:52:11'),
(188, 77, 'air-pillow_0_1724664497.jpg', '', '2024-08-26 01:28:17', '2024-08-26 01:28:17'),
(189, 77, 'air-pillow_1_1724664497.jpg', '', '2024-08-26 01:28:17', '2024-08-26 01:28:17'),
(190, 73, 'camping-mug_0_1724664660.jpg', '', '2024-08-26 01:31:00', '2024-08-26 01:31:00'),
(191, 73, 'camping-mug_1_1724664660.jpg', '', '2024-08-26 01:31:00', '2024-08-26 01:31:00'),
(192, 78, 'thermal-water-bottle_0_1724664866.jpg', '', '2024-08-26 01:34:26', '2024-08-26 01:34:26'),
(193, 78, 'thermal-water-bottle_1_1724664866.jpg', '', '2024-08-26 01:34:26', '2024-08-26 01:34:26'),
(194, 79, 'hiking-pant_0_1724665953.JPG', '', '2024-08-26 01:52:33', '2024-08-26 01:52:33'),
(195, 80, 'headlamp_0_1724667467.jpg', '', '2024-08-26 02:17:47', '2024-08-26 02:17:47'),
(196, 81, 'camping-spoon-knife-fork-combo_0_1724754184.jpg', '', '2024-08-27 02:23:04', '2024-08-27 02:23:04'),
(197, 82, 'carabiner-knife-combo_0_1724754258.jpg', '', '2024-08-27 02:24:18', '2024-08-27 02:24:18'),
(198, 82, 'carabiner-knife-combo_1_1724754258.jpg', '', '2024-08-27 02:24:18', '2024-08-27 02:24:18'),
(199, 83, 'ultralight-nylon-waterproof-foldable-backpack-22l_0_1724754313.jpg', '', '2024-08-27 02:25:13', '2024-08-27 02:25:13'),
(200, 83, 'ultralight-nylon-waterproof-foldable-backpack-22l_1_1724754313.jpg', '', '2024-08-27 02:25:13', '2024-08-27 02:25:13'),
(201, 84, '18l-foldable-waterproof-camping-backpack_0_1724754390.jpg', '', '2024-08-27 02:26:30', '2024-08-27 02:26:30'),
(202, 84, '18l-foldable-waterproof-camping-backpack_1_1724754390.jpg', '', '2024-08-27 02:26:30', '2024-08-27 02:26:30'),
(203, 85, 'deng-bo-shi-bagpack-45l_0_1724756196.jpg', '', '2024-08-27 02:56:36', '2024-08-27 02:56:36'),
(204, 94, 'double-layer-tent-waterproof-3-person_0_1725365159.jpg', '', '2024-09-03 04:05:59', '2024-09-03 04:05:59'),
(205, 94, 'double-layer-tent-waterproof-3-person_1_1725365159.jpg', '', '2024-09-03 04:05:59', '2024-09-03 04:05:59'),
(206, 110, 'camping-folding-knife_0.jpg', '', '2024-09-03 04:27:36', '2024-09-03 04:27:36'),
(207, 110, 'camping-folding-knife_1.jpg', '', '2024-09-03 04:27:36', '2024-09-03 04:27:36'),
(208, 111, '8-person-tent_0.jpg', '', '2024-10-01 06:48:00', '2024-10-01 06:48:00'),
(209, 112, 'sleeping-bag_0.jpg', '', '2024-11-05 04:21:17', '2024-11-05 04:21:17'),
(210, 112, 'sleeping-bag_1.jpg', '', '2024-11-05 04:21:17', '2024-11-05 04:21:17'),
(211, 113, 'the-north-face-mens-drop-jacket_0.jpeg', '', '2024-12-02 06:25:29', '2024-12-02 06:25:29'),
(212, 113, 'the-north-face-mens-drop-jacket_1.jpeg', '', '2024-12-02 06:25:29', '2024-12-02 06:25:29'),
(213, 114, 'nautica-inner-thermal-set_0.jpg', '', '2024-12-12 04:57:11', '2024-12-12 04:57:11'),
(214, 115, 'hi-gear-rock-5-family-tent-8-person_0.jpg', '', '2024-12-17 04:15:32', '2024-12-17 04:15:32'),
(215, 115, 'hi-gear-rock-5-family-tent-8-person_1.jpg', '', '2024-12-17 04:15:32', '2024-12-17 04:15:32'),
(229, 72, 'thermal-water-bottle_0_1717477312.jpg', '', '2024-06-03 17:01:53', '2024-06-03 17:01:53'),
(243, 74, 'camping-lamp_0_1720002589.jpg', '', '2024-07-02 22:29:49', '2024-07-02 22:29:49'),
(273, 86, 'multi-purpose-tool_0.jpg', '', '2024-07-16 02:08:15', '2024-07-16 02:08:15'),
(274, 86, 'multi-purpose-tool_1.jpg', '', '2024-07-16 02:08:15', '2024-07-16 02:08:15'),
(275, 86, 'multi-purpose-tool_2.jpg', '', '2024-07-16 02:08:15', '2024-07-16 02:08:15'),
(276, 86, 'multi-purpose-tool_3.jpg', '', '2024-07-16 02:08:15', '2024-07-16 02:08:15'),
(277, 86, 'multi-purpose-tool_4.jpg', '', '2024-07-16 02:08:15', '2024-07-16 02:08:15'),
(278, 86, 'multi-purpose-tool_5.jpg', '', '2024-07-16 02:08:15', '2024-07-16 02:08:15'),
(279, 87, 'naturehike-p-series-upf-50-tent-waterproof-3-person_0.jpg', '', '2024-07-16 02:27:21', '2024-07-16 02:27:21'),
(280, 87, 'naturehike-p-series-upf-50-tent-waterproof-3-person_1.jpg', '', '2024-07-16 02:27:21', '2024-07-16 02:27:21'),
(281, 87, 'naturehike-p-series-upf-50-tent-waterproof-3-person_2.jpg', '', '2024-07-16 02:27:21', '2024-07-16 02:27:21'),
(282, 87, 'naturehike-p-series-upf-50-tent-waterproof-3-person_3.jpg', '', '2024-07-16 02:27:21', '2024-07-16 02:27:21'),
(283, 87, 'naturehike-p-series-upf-50-tent-waterproof-3-person_4.jpg', '', '2024-07-16 02:27:21', '2024-07-16 02:27:21'),
(284, 87, 'naturehike-p-series-upf-50-tent-waterproof-3-person_5.png', '', '2024-07-16 02:27:22', '2024-07-16 02:27:22'),
(285, 88, 'naturehike-p-series-upf-50-tent-waterproof-2-person_0.jpg', '', '2024-07-16 02:35:20', '2024-07-16 02:35:20'),
(286, 88, 'naturehike-p-series-upf-50-tent-waterproof-2-person_1.jpg', '', '2024-07-16 02:35:20', '2024-07-16 02:35:20'),
(287, 88, 'naturehike-p-series-upf-50-tent-waterproof-2-person_2.jpg', '', '2024-07-16 02:35:20', '2024-07-16 02:35:20'),
(288, 88, 'naturehike-p-series-upf-50-tent-waterproof-2-person_3.jpg', '', '2024-07-16 02:35:20', '2024-07-16 02:35:20'),
(289, 88, 'naturehike-p-series-upf-50-tent-waterproof-2-person_4.jpg', '', '2024-07-16 02:35:20', '2024-07-16 02:35:20'),
(290, 88, 'naturehike-p-series-upf-50-tent-waterproof-2-person_5.jpg', '', '2024-07-16 02:35:20', '2024-07-16 02:35:20'),
(295, 89, 'nevo-rhino-internal-frame-mountain-climbing-backpack-455l_0_1721127196.jpg', '', '2024-07-16 02:53:16', '2024-07-16 02:53:16'),
(296, 89, 'nevo-rhino-internal-frame-mountain-climbing-backpack-455l_1_1721127196.jpg', '', '2024-07-16 02:53:16', '2024-07-16 02:53:16'),
(297, 89, 'nevo-rhino-internal-frame-mountain-climbing-backpack-455l_2_1721127196.jpg', '', '2024-07-16 02:53:16', '2024-07-16 02:53:16'),
(298, 89, 'nevo-rhino-internal-frame-mountain-climbing-backpack-455l_3_1721127196.jpg', '', '2024-07-16 02:53:16', '2024-07-16 02:53:16'),
(299, 89, 'nevo-rhino-internal-frame-mountain-climbing-backpack-455l_4_1721127196.jpg', '', '2024-07-16 02:53:16', '2024-07-16 02:53:16'),
(306, 90, 'quick-dry-pants_0.JPG', '', '2024-07-16 03:24:48', '2024-07-16 03:24:48'),
(307, 90, 'quick-dry-pants_1.JPG', '', '2024-07-16 03:24:48', '2024-07-16 03:24:48'),
(311, 91, 'james-nicholson-mens-bi-elastic-outdoor-shorts_0.jpg', '', '2024-07-16 04:06:24', '2024-07-16 04:06:24'),
(312, 91, 'james-nicholson-mens-bi-elastic-outdoor-shorts_1.jpg', '', '2024-07-16 04:06:24', '2024-07-16 04:06:24'),
(313, 91, 'james-nicholson-mens-bi-elastic-outdoor-shorts_2.jpg', '', '2024-07-16 04:06:24', '2024-07-16 04:06:24'),
(314, 91, 'james-nicholson-mens-bi-elastic-outdoor-shorts_3.jpg', '', '2024-07-16 04:06:24', '2024-07-16 04:06:24'),
(315, 91, 'james-nicholson-mens-bi-elastic-outdoor-shorts_4.jpg', '', '2024-07-16 04:06:24', '2024-07-16 04:06:24'),
(316, 91, 'james-nicholson-mens-bi-elastic-outdoor-shorts_5.jpg', '', '2024-07-16 04:06:24', '2024-07-16 04:06:24'),
(317, 91, 'james-nicholson-mens-bi-elastic-outdoor-shorts_6.jpg', '', '2024-07-16 04:06:24', '2024-07-16 04:06:24'),
(318, 91, 'james-nicholson-mens-bi-elastic-outdoor-shorts_7.jpg', '', '2024-07-16 04:06:25', '2024-07-16 04:06:25'),
(319, 91, 'james-nicholson-mens-bi-elastic-outdoor-shorts_8.jpg', '', '2024-07-16 04:06:25', '2024-07-16 04:06:25'),
(320, 91, 'james-nicholson-mens-bi-elastic-outdoor-shorts_9.jpg', '', '2024-07-16 04:06:25', '2024-07-16 04:06:25'),
(321, 92, 'quechua-2-man-tent-mh100_0.jpg', '', '2024-07-18 02:02:25', '2024-07-18 02:02:25'),
(322, 92, 'quechua-2-man-tent-mh100_1.jpg', '', '2024-07-18 02:02:25', '2024-07-18 02:02:25'),
(323, 92, 'quechua-2-man-tent-mh100_2.jpg', '', '2024-07-18 02:02:25', '2024-07-18 02:02:25'),
(324, 92, 'quechua-2-man-tent-mh100_3.jpg', '', '2024-07-18 02:02:25', '2024-07-18 02:02:25'),
(325, 92, 'quechua-2-man-tent-mh100_4.jpg', '', '2024-07-18 02:02:25', '2024-07-18 02:02:25'),
(326, 92, 'quechua-2-man-tent-mh100_5.jpg', '', '2024-07-18 02:02:25', '2024-07-18 02:02:25'),
(327, 92, 'quechua-2-man-tent-mh100_6.jpg', '', '2024-07-18 02:02:26', '2024-07-18 02:02:26'),
(328, 92, 'quechua-2-man-tent-mh100_7.jpg', '', '2024-07-18 02:02:26', '2024-07-18 02:02:26'),
(329, 92, 'quechua-2-man-tent-mh100_8.jpg', '', '2024-07-18 02:02:26', '2024-07-18 02:02:26'),
(330, 92, 'quechua-2-man-tent-mh100_9.jpg', '', '2024-07-18 02:02:26', '2024-07-18 02:02:26'),
(331, 92, 'quechua-2-man-tent-mh100_10.jpg', '', '2024-07-18 02:02:26', '2024-07-18 02:02:26'),
(332, 92, 'quechua-2-man-tent-mh100_11.jpg', '', '2024-07-18 02:02:26', '2024-07-18 02:02:26'),
(333, 93, 'outdoor-mini-portable-folding-camping-gas-stove_0.jpg', '', '2024-07-18 02:20:58', '2024-07-18 02:20:58'),
(334, 93, 'outdoor-mini-portable-folding-camping-gas-stove_1.jpg', '', '2024-07-18 02:20:58', '2024-07-18 02:20:58'),
(335, 93, 'outdoor-mini-portable-folding-camping-gas-stove_2.jpg', '', '2024-07-18 02:20:58', '2024-07-18 02:20:58'),
(336, 93, 'outdoor-mini-portable-folding-camping-gas-stove_3.jpg', '', '2024-07-18 02:20:58', '2024-07-18 02:20:58'),
(337, 93, 'outdoor-mini-portable-folding-camping-gas-stove_4.jpg', '', '2024-07-18 02:20:59', '2024-07-18 02:20:59'),
(340, 95, 'custom-clothing_0.jpg', '', '2024-07-29 01:56:15', '2024-07-29 01:56:15'),
(341, 95, 'custom-clothing_1.jpg', '', '2024-07-29 01:56:15', '2024-07-29 01:56:15'),
(342, 95, 'custom-clothing_2.jpg', '', '2024-07-29 01:56:15', '2024-07-29 01:56:15'),
(343, 95, 'custom-clothing_3.jpg', '', '2024-07-29 01:56:15', '2024-07-29 01:56:15'),
(344, 95, 'custom-clothing_4.jpg', '', '2024-07-29 01:56:15', '2024-07-29 01:56:15'),
(345, 95, 'custom-clothing_5.jpg', '', '2024-07-29 01:56:15', '2024-07-29 01:56:15'),
(346, 95, 'custom-clothing_6.jpg', '', '2024-07-29 01:56:15', '2024-07-29 01:56:15'),
(347, 95, 'custom-clothing_7.jpg', '', '2024-07-29 01:56:15', '2024-07-29 01:56:15'),
(348, 96, 'hi-gear-rock-4-family-tent-6-person_0.jpg', '', '2024-07-29 02:30:00', '2024-07-29 02:30:00'),
(349, 96, 'hi-gear-rock-4-family-tent-6-person_1.jpg', '', '2024-07-29 02:30:00', '2024-07-29 02:30:00'),
(350, 97, 'portable-beach-mat_0.jpg', '', '2024-08-02 09:00:35', '2024-08-02 09:00:35'),
(351, 97, 'portable-beach-mat_1.jpg', '', '2024-08-02 09:00:35', '2024-08-02 09:00:35'),
(352, 97, 'portable-beach-mat_2.jpg', '', '2024-08-02 09:00:36', '2024-08-02 09:00:36'),
(353, 97, 'portable-beach-mat_3.jpg', '', '2024-08-02 09:00:36', '2024-08-02 09:00:36'),
(354, 97, 'portable-beach-mat_4.jpg', '', '2024-08-02 09:00:36', '2024-08-02 09:00:36'),
(355, 98, 'regular-hamok_0.jpg', '', '2024-08-09 22:18:03', '2024-08-09 22:18:03'),
(356, 99, 'outdoor-rain-poncho_0.jpg', '', '2024-08-09 22:27:35', '2024-08-09 22:27:35'),
(359, 90, 'quick-dry-pants_0_1723460349.JPG', '', '2024-08-12 02:59:09', '2024-08-12 02:59:09'),
(360, 100, 'female-quick-dry-pants_0.JPG', '', '2024-08-12 02:59:47', '2024-08-12 02:59:47'),
(361, 100, 'female-quick-dry-pants_1.JPG', '', '2024-08-12 02:59:47', '2024-08-12 02:59:47'),
(362, 100, 'female-quick-dry-pants_2.JPG', '', '2024-08-12 02:59:48', '2024-08-12 02:59:48'),
(363, 100, 'female-quick-dry-pants_3.JPG', '', '2024-08-12 02:59:48', '2024-08-12 02:59:48'),
(364, 101, 'female-hiking-pants_0.JPG', '', '2024-08-12 03:04:10', '2024-08-12 03:04:10'),
(365, 101, 'female-hiking-pants_1.jpg', '', '2024-08-12 03:04:10', '2024-08-12 03:04:10'),
(366, 101, 'female-hiking-pants_2.jpg', '', '2024-08-12 03:04:10', '2024-08-12 03:04:10'),
(367, 101, 'female-hiking-pants_3.jpg', '', '2024-08-12 03:04:10', '2024-08-12 03:04:10'),
(368, 102, 'james-nicholson-female-bi-elastic-outdoor-shorts_0.jpg', '', '2024-08-12 03:09:26', '2024-08-12 03:09:26'),
(369, 102, 'james-nicholson-female-bi-elastic-outdoor-shorts_1.jpg', '', '2024-08-12 03:09:26', '2024-08-12 03:09:26'),
(370, 102, 'james-nicholson-female-bi-elastic-outdoor-shorts_2.jpg', '', '2024-08-12 03:09:26', '2024-08-12 03:09:26'),
(371, 102, 'james-nicholson-female-bi-elastic-outdoor-shorts_3.jpg', '', '2024-08-12 03:09:26', '2024-08-12 03:09:26'),
(372, 102, 'james-nicholson-female-bi-elastic-outdoor-shorts_4.jpg', '', '2024-08-12 03:09:26', '2024-08-12 03:09:26'),
(373, 102, 'james-nicholson-female-bi-elastic-outdoor-shorts_5.jpg', '', '2024-08-12 03:09:26', '2024-08-12 03:09:26'),
(374, 102, 'james-nicholson-female-bi-elastic-outdoor-shorts_6.jpg', '', '2024-08-12 03:09:26', '2024-08-12 03:09:26'),
(375, 102, 'james-nicholson-female-bi-elastic-outdoor-shorts_7.jpg', '', '2024-08-12 03:09:26', '2024-08-12 03:09:26'),
(376, 102, 'james-nicholson-female-bi-elastic-outdoor-shorts_8.jpg', '', '2024-08-12 03:09:26', '2024-08-12 03:09:26'),
(377, 102, 'james-nicholson-female-bi-elastic-outdoor-shorts_9.jpg', '', '2024-08-12 03:09:26', '2024-08-12 03:09:26'),
(378, 103, 'female-hiking-pant_0.jpg', '', '2024-08-13 02:48:13', '2024-08-13 02:48:13'),
(379, 103, 'female-hiking-pant_1.jpg', '', '2024-08-13 02:48:14', '2024-08-13 02:48:14'),
(380, 103, 'female-hiking-pant_2.jpg', '', '2024-08-13 02:48:14', '2024-08-13 02:48:14'),
(381, 103, 'female-hiking-pant_3.jpg', '', '2024-08-13 02:48:14', '2024-08-13 02:48:14'),
(382, 104, 'sleeping-bag-15_0.jpg', '', '2024-08-13 03:08:22', '2024-08-13 03:08:22'),
(383, 105, 'camping-tripod-dark-grey_0.jpg', '', '2024-08-13 03:19:54', '2024-08-13 03:19:54'),
(384, 105, 'camping-tripod-dark-grey_1.jpg', '', '2024-08-13 03:19:54', '2024-08-13 03:19:54'),
(385, 105, 'camping-tripod-dark-grey_2.jpg', '', '2024-08-13 03:19:54', '2024-08-13 03:19:54'),
(386, 105, 'camping-tripod-dark-grey_3.jpg', '', '2024-08-13 03:19:54', '2024-08-13 03:19:54'),
(387, 105, 'camping-tripod-dark-grey_4.jpg', '', '2024-08-13 03:19:54', '2024-08-13 03:19:54'),
(388, 105, 'camping-tripod-dark-grey_0_1723548050.jpg', '', '2024-08-13 03:20:50', '2024-08-13 03:20:50'),
(389, 106, 'standard-hammock_0.jpg', '', '2024-08-13 03:34:45', '2024-08-13 03:34:45'),
(390, 106, 'standard-hammock_1.jpg', '', '2024-08-13 03:34:45', '2024-08-13 03:34:45'),
(391, 107, 'mens-cycle-shorts_0.jpg', '', '2024-08-14 03:43:28', '2024-08-14 03:43:28'),
(392, 107, 'mens-cycle-shorts_1.jpg', '', '2024-08-14 03:43:28', '2024-08-14 03:43:28'),
(393, 107, 'mens-cycle-shorts_2.jpg', '', '2024-08-14 03:43:28', '2024-08-14 03:43:28'),
(394, 107, 'mens-cycle-shorts_3.jpg', '', '2024-08-14 03:43:28', '2024-08-14 03:43:28'),
(395, 107, 'mens-cycle-shorts_4.jpg', '', '2024-08-14 03:43:28', '2024-08-14 03:43:28'),
(396, 108, 'sun-butane-gas-can_0.jpeg', '', '2024-08-22 02:30:35', '2024-08-22 02:30:35'),
(397, 108, 'sun-butane-gas-can_1.jpeg', '', '2024-08-22 02:30:35', '2024-08-22 02:30:35'),
(398, 109, 'camping-aluminum-cooking-set_0.jpeg', '', '2024-08-22 02:52:11', '2024-08-22 02:52:11'),
(399, 109, 'camping-aluminum-cooking-set_1.jpeg', '', '2024-08-22 02:52:11', '2024-08-22 02:52:11'),
(400, 109, 'camping-aluminum-cooking-set_2.jpeg', '', '2024-08-22 02:52:11', '2024-08-22 02:52:11'),
(401, 109, 'camping-aluminum-cooking-set_3.jpeg', '', '2024-08-22 02:52:11', '2024-08-22 02:52:11'),
(402, 77, 'air-pillow_0_1724664497.jpg', '', '2024-08-26 01:28:17', '2024-08-26 01:28:17'),
(403, 77, 'air-pillow_1_1724664497.jpg', '', '2024-08-26 01:28:17', '2024-08-26 01:28:17'),
(404, 77, 'air-pillow_2_1724664497.jpg', '', '2024-08-26 01:28:17', '2024-08-26 01:28:17'),
(405, 77, 'air-pillow_3_1724664497.jpg', '', '2024-08-26 01:28:17', '2024-08-26 01:28:17'),
(406, 73, 'camping-mug_0_1724664660.jpg', '', '2024-08-26 01:31:00', '2024-08-26 01:31:00'),
(407, 73, 'camping-mug_1_1724664660.jpg', '', '2024-08-26 01:31:00', '2024-08-26 01:31:00'),
(408, 73, 'camping-mug_2_1724664660.jpg', '', '2024-08-26 01:31:00', '2024-08-26 01:31:00'),
(409, 73, 'camping-mug_3_1724664660.jpg', '', '2024-08-26 01:31:00', '2024-08-26 01:31:00'),
(410, 73, 'camping-mug_4_1724664660.jpg', '', '2024-08-26 01:31:00', '2024-08-26 01:31:00'),
(411, 73, 'camping-mug_5_1724664660.jpg', '', '2024-08-26 01:31:00', '2024-08-26 01:31:00'),
(412, 74, 'camping-lamp_0_1724664743.jpg', '', '2024-08-26 01:32:23', '2024-08-26 01:32:23'),
(413, 78, 'thermal-water-bottle_0_1724664866.jpg', '', '2024-08-26 01:34:26', '2024-08-26 01:34:26'),
(414, 78, 'thermal-water-bottle_1_1724664866.jpg', '', '2024-08-26 01:34:26', '2024-08-26 01:34:26'),
(415, 78, 'thermal-water-bottle_2_1724664866.jpg', '', '2024-08-26 01:34:26', '2024-08-26 01:34:26'),
(416, 79, 'hiking-pant_0_1724665953.JPG', '', '2024-08-26 01:52:33', '2024-08-26 01:52:33'),
(417, 79, 'hiking-pant_1_1724665953.JPG', '', '2024-08-26 01:52:33', '2024-08-26 01:52:33'),
(418, 79, 'hiking-pant_2_1724665953.JPG', '', '2024-08-26 01:52:33', '2024-08-26 01:52:33'),
(419, 79, 'hiking-pant_3_1724665953.JPG', '', '2024-08-26 01:52:33', '2024-08-26 01:52:33'),
(420, 79, 'hiking-pant_4_1724665953.JPG', '', '2024-08-26 01:52:33', '2024-08-26 01:52:33'),
(421, 79, 'hiking-pant_5_1724665953.jpg', '', '2024-08-26 01:52:33', '2024-08-26 01:52:33'),
(422, 79, 'hiking-pant_6_1724665953.jpg', '', '2024-08-26 01:52:33', '2024-08-26 01:52:33'),
(423, 79, 'hiking-pant_7_1724665953.jpg', '', '2024-08-26 01:52:33', '2024-08-26 01:52:33'),
(424, 79, 'hiking-pant_8_1724665953.jpg', '', '2024-08-26 01:52:33', '2024-08-26 01:52:33'),
(425, 79, 'hiking-pant_9_1724665953.jpg', '', '2024-08-26 01:52:33', '2024-08-26 01:52:33'),
(426, 79, 'hiking-pant_10_1724665953.jpg', '', '2024-08-26 01:52:33', '2024-08-26 01:52:33'),
(427, 80, 'headlamp_0_1724667466.jpg', '', '2024-08-26 02:17:46', '2024-08-26 02:17:46'),
(428, 80, 'headlamp_1_1724667466.jpg', '', '2024-08-26 02:17:47', '2024-08-26 02:17:47'),
(429, 80, 'headlamp_2_1724667467.jpg', '', '2024-08-26 02:17:47', '2024-08-26 02:17:47'),
(430, 80, 'headlamp_3_1724667467.jpg', '', '2024-08-26 02:17:47', '2024-08-26 02:17:47'),
(431, 80, 'headlamp_4_1724667467.jpg', '', '2024-08-26 02:17:47', '2024-08-26 02:17:47'),
(432, 81, 'camping-spoon-knife-fork-combo_0_1724754183.jpg', '', '2024-08-27 02:23:03', '2024-08-27 02:23:03'),
(433, 81, 'camping-spoon-knife-fork-combo_1_1724754184.jpg', '', '2024-08-27 02:23:04', '2024-08-27 02:23:04'),
(434, 81, 'camping-spoon-knife-fork-combo_2_1724754184.jpg', '', '2024-08-27 02:23:04', '2024-08-27 02:23:04'),
(435, 81, 'camping-spoon-knife-fork-combo_3_1724754184.jpg', '', '2024-08-27 02:23:04', '2024-08-27 02:23:04'),
(436, 82, 'carabiner-knife-combo_0_1724754258.jpg', '', '2024-08-27 02:24:18', '2024-08-27 02:24:18'),
(437, 82, 'carabiner-knife-combo_1_1724754258.jpg', '', '2024-08-27 02:24:18', '2024-08-27 02:24:18'),
(438, 83, 'ultralight-nylon-waterproof-foldable-backpack-22l_0_1724754313.jpg', '', '2024-08-27 02:25:13', '2024-08-27 02:25:13'),
(439, 83, 'ultralight-nylon-waterproof-foldable-backpack-22l_1_1724754313.jpg', '', '2024-08-27 02:25:13', '2024-08-27 02:25:13'),
(440, 83, 'ultralight-nylon-waterproof-foldable-backpack-22l_2_1724754313.jpg', '', '2024-08-27 02:25:13', '2024-08-27 02:25:13'),
(441, 84, '18l-foldable-waterproof-camping-backpack_0_1724754389.jpg', '', '2024-08-27 02:26:29', '2024-08-27 02:26:29'),
(442, 84, '18l-foldable-waterproof-camping-backpack_1_1724754389.jpg', '', '2024-08-27 02:26:29', '2024-08-27 02:26:29'),
(443, 84, '18l-foldable-waterproof-camping-backpack_2_1724754389.jpg', '', '2024-08-27 02:26:29', '2024-08-27 02:26:29'),
(444, 84, '18l-foldable-waterproof-camping-backpack_3_1724754389.jpg', '', '2024-08-27 02:26:29', '2024-08-27 02:26:29'),
(445, 84, '18l-foldable-waterproof-camping-backpack_4_1724754389.jpg', '', '2024-08-27 02:26:29', '2024-08-27 02:26:29'),
(446, 85, 'deng-bo-shi-bagpack-45l_0_1724756196.jpg', '', '2024-08-27 02:56:36', '2024-08-27 02:56:36'),
(447, 85, 'deng-bo-shi-bagpack-45l_1_1724756196.jpg', '', '2024-08-27 02:56:36', '2024-08-27 02:56:36'),
(448, 85, 'deng-bo-shi-bagpack-45l_2_1724756196.jpg', '', '2024-08-27 02:56:36', '2024-08-27 02:56:36'),
(449, 94, 'double-layer-tent-waterproof-3-person_0_1725365158.jpg', '', '2024-09-03 04:05:58', '2024-09-03 04:05:58'),
(450, 94, 'double-layer-tent-waterproof-3-person_1_1725365159.jpg', '', '2024-09-03 04:05:59', '2024-09-03 04:05:59'),
(451, 94, 'double-layer-tent-waterproof-3-person_2_1725365159.jpg', '', '2024-09-03 04:05:59', '2024-09-03 04:05:59'),
(452, 94, 'double-layer-tent-waterproof-3-person_3_1725365159.jpg', '', '2024-09-03 04:05:59', '2024-09-03 04:05:59'),
(453, 110, 'camping-folding-knife_0.jpg', '', '2024-09-03 04:27:36', '2024-09-03 04:27:36'),
(454, 110, 'camping-folding-knife_1.jpg', '', '2024-09-03 04:27:36', '2024-09-03 04:27:36'),
(455, 110, 'camping-folding-knife_2.jpg', '', '2024-09-03 04:27:36', '2024-09-03 04:27:36'),
(456, 110, 'camping-folding-knife_3.jpg', '', '2024-09-03 04:27:36', '2024-09-03 04:27:36'),
(457, 112, 'sleeping-bag_0.jpg', '', '2024-11-05 04:21:17', '2024-11-05 04:21:17'),
(458, 112, 'sleeping-bag_1.jpg', '', '2024-11-05 04:21:17', '2024-11-05 04:21:17'),
(459, 113, 'the-north-face-mens-drop-jacket_0.jpeg', '', '2024-12-02 06:25:29', '2024-12-02 06:25:29'),
(460, 113, 'the-north-face-mens-drop-jacket_1.jpeg', '', '2024-12-02 06:25:29', '2024-12-02 06:25:29'),
(461, 114, 'nautica-inner-thermal-set_0.jpg', '', '2024-12-12 04:57:11', '2024-12-12 04:57:11'),
(462, 114, 'nautica-inner-thermal-set_1.jpg', '', '2024-12-12 04:57:11', '2024-12-12 04:57:11'),
(463, 115, 'hi-gear-rock-5-family-tent-8-person_0.jpg', '', '2024-12-17 04:15:33', '2024-12-17 04:15:33'),
(464, 151, 'color-test_0.png', '', '2025-01-15 22:53:53', '2025-01-15 22:53:53'),
(466, 153, 'color-4-test_0.png', '', '2025-01-15 23:07:43', '2025-01-15 23:07:43'),
(469, 154, 'nature-hike-bagpack_0_1737269233.jpg', '', '2025-01-19 00:47:13', '2025-01-19 00:47:13'),
(470, 159, 'bag-60l_0.png', '', '2025-01-19 00:52:01', '2025-01-19 00:52:01'),
(471, 160, 'test-tent_0.jpg', '', '2025-01-19 01:30:44', '2025-01-19 01:30:44'),
(472, 161, 'pink-color_0.png', '', '2025-01-19 01:48:41', '2025-01-19 01:48:41'),
(473, 162, 'test_0.png', '', '2025-01-19 02:03:33', '2025-01-19 02:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `product_image_with_colors`
--

CREATE TABLE `product_image_with_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `stock` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_overviews`
--

CREATE TABLE `product_overviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `overview_name` varchar(255) DEFAULT NULL,
  `overview_value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_overviews`
--

INSERT INTO `product_overviews` (`id`, `product_id`, `overview_name`, `overview_value`, `created_at`, `updated_at`) VALUES
(182, 148, 'dcv', 'sv', '2025-01-14 04:37:29', '2025-01-14 04:37:29'),
(183, 149, '76uy6', 'yu', '2025-01-14 04:53:33', '2025-01-14 04:53:33'),
(184, 150, 'aca', 'ac', '2025-01-14 05:04:21', '2025-01-14 05:04:21'),
(185, 151, 'Color', 'Check', '2025-01-15 22:53:53', '2025-01-15 22:53:53'),
(187, 153, 'name', 'color', '2025-01-15 23:07:43', '2025-01-15 23:07:43'),
(188, 154, 'For', '2 Person', '2025-01-19 00:32:49', '2025-01-19 00:32:49'),
(189, 159, 'cvb', 'fdg', '2025-01-19 00:52:01', '2025-01-19 00:52:01'),
(190, 160, 'dffgd', 'dvd', '2025-01-19 01:30:44', '2025-01-19 01:30:44'),
(191, 161, 'sd sd', 'ds sd s dsdsds', '2025-01-19 01:48:41', '2025-01-19 01:48:41'),
(192, 162, 'dfv', 'dvd', '2025-01-19 02:03:33', '2025-01-19 02:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `product_prices`
--

CREATE TABLE `product_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `offer_price` varchar(255) DEFAULT NULL,
  `percentage` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_prices`
--

INSERT INTO `product_prices` (`id`, `product_id`, `offer_price`, `percentage`, `amount`, `created_at`, `updated_at`) VALUES
(64, 72, '0', NULL, NULL, '2024-05-31 05:36:26', '2024-05-31 05:36:26'),
(65, 73, '0', NULL, NULL, '2024-06-04 01:39:23', '2024-06-04 01:39:23'),
(66, 74, '0', NULL, NULL, '2024-06-04 09:56:19', '2024-09-09 03:58:20'),
(67, 77, '0', NULL, NULL, '2024-06-04 10:37:09', '2024-08-26 01:29:01'),
(68, 78, '0', NULL, NULL, '2024-06-04 10:43:58', '2024-06-04 10:43:58'),
(69, 79, '0', NULL, NULL, '2024-07-02 22:59:53', '2024-07-02 22:59:53'),
(70, 80, '0', NULL, NULL, '2024-07-02 23:12:21', '2024-08-14 03:21:02'),
(71, 81, '0', NULL, NULL, '2024-07-06 22:34:31', '2024-07-06 22:34:31'),
(72, 82, '0', NULL, NULL, '2024-07-06 22:49:24', '2024-07-06 22:49:24'),
(73, 83, '1495.12', '12', '203.88', '2024-07-07 00:35:05', '2024-08-27 02:25:13'),
(74, 84, '1199.2', '20', '299.8', '2024-07-07 00:40:16', '2024-07-18 03:20:09'),
(75, 85, '0', NULL, NULL, '2024-07-16 02:00:08', '2024-07-16 02:00:08'),
(76, 86, '0', NULL, NULL, '2024-07-16 02:08:15', '2024-07-16 02:08:15'),
(77, 87, '0', NULL, NULL, '2024-07-16 02:27:22', '2024-07-16 02:27:22'),
(78, 88, '0', NULL, NULL, '2024-07-16 02:35:20', '2024-07-16 02:35:20'),
(79, 89, '0', NULL, NULL, '2024-07-16 02:49:57', '2024-07-16 02:49:57'),
(80, 90, '0', NULL, NULL, '2024-07-16 03:24:48', '2024-07-16 03:24:48'),
(81, 91, '0', NULL, NULL, '2024-07-16 04:06:25', '2024-07-16 04:06:25'),
(82, 92, '0', NULL, NULL, '2024-07-18 02:02:26', '2024-07-18 02:02:26'),
(83, 93, '0', NULL, NULL, '2024-07-18 02:20:59', '2024-07-18 02:20:59'),
(84, 94, '0', NULL, NULL, '2024-07-18 03:37:04', '2024-07-18 03:37:04'),
(85, 95, '0', NULL, NULL, '2024-07-29 01:56:15', '2024-07-29 01:56:15'),
(86, 96, '0', NULL, NULL, '2024-07-29 02:30:00', '2024-07-29 02:30:00'),
(87, 97, '0', NULL, NULL, '2024-08-02 09:00:36', '2024-08-02 09:00:36'),
(88, 98, '0', NULL, NULL, '2024-08-09 22:18:03', '2024-08-09 22:18:03'),
(89, 99, '0', NULL, NULL, '2024-08-09 22:27:35', '2024-08-09 22:27:35'),
(90, 100, '0', NULL, NULL, '2024-08-12 02:59:48', '2024-08-12 02:59:48'),
(91, 101, '0', NULL, NULL, '2024-08-12 03:04:10', '2024-08-12 03:04:10'),
(92, 102, '0', NULL, NULL, '2024-08-12 03:09:26', '2024-08-12 03:09:26'),
(93, 103, '0', NULL, NULL, '2024-08-13 02:48:14', '2024-08-13 02:48:14'),
(94, 104, '0', NULL, NULL, '2024-08-13 03:08:22', '2024-08-13 03:08:22'),
(95, 105, '0', NULL, NULL, '2024-08-13 03:19:54', '2024-08-13 03:19:54'),
(96, 106, '0', NULL, NULL, '2024-08-13 03:34:45', '2024-08-13 03:34:45'),
(97, 107, '250', '29', '100.1', '2024-08-14 03:43:28', '2024-08-14 03:44:21'),
(98, 108, '0', NULL, NULL, '2024-08-22 02:30:35', '2024-08-22 02:30:35'),
(99, 109, '0', NULL, NULL, '2024-08-22 02:52:11', '2024-08-22 02:52:11'),
(100, 110, '0', NULL, NULL, '2024-09-03 04:27:36', '2024-09-03 04:27:36'),
(101, 111, '0', NULL, NULL, '2024-10-01 06:48:00', '2024-10-01 06:48:00'),
(102, 112, '0', NULL, NULL, '2024-11-05 04:21:17', '2024-11-05 04:21:17'),
(103, 113, '1799', '10.0', '200', '2024-12-02 06:25:29', '2024-12-02 06:25:29'),
(104, 114, '0', NULL, NULL, '2024-12-12 04:57:11', '2024-12-12 04:57:11'),
(105, 115, '0', NULL, NULL, '2024-12-17 04:15:33', '2024-12-17 04:15:33'),
(130, 151, '0', NULL, NULL, '2025-01-15 22:53:53', '2025-01-15 22:53:53'),
(132, 153, '243', '10', '27', '2025-01-15 23:07:43', '2025-01-15 23:07:43'),
(133, 154, '0', NULL, NULL, '2025-01-19 00:32:49', '2025-01-19 00:32:49'),
(134, 159, '686', '2', '14', '2025-01-19 00:52:01', '2025-01-19 00:52:01'),
(135, 160, '1580', '1.3', '20', '2025-01-19 01:30:44', '2025-01-19 01:30:44'),
(136, 161, '0', NULL, NULL, '2025-01-19 01:48:41', '2025-01-19 01:48:41'),
(137, 162, '0', NULL, NULL, '2025-01-19 02:03:33', '2025-01-19 02:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `inStock` varchar(255) NOT NULL DEFAULT '0',
  `outStock` varchar(255) NOT NULL DEFAULT '0',
  `price` varchar(255) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tags`
--

INSERT INTO `product_tags` (`id`, `product_id`, `tag`, `created_at`, `updated_at`) VALUES
(199, 151, 'color', '2025-01-15 22:53:53', '2025-01-15 22:53:53'),
(200, 151, 'yello', '2025-01-15 22:53:53', '2025-01-15 22:53:53'),
(201, 151, 'green', '2025-01-15 22:53:53', '2025-01-15 22:53:53'),
(202, 151, 'white', '2025-01-15 22:53:53', '2025-01-15 22:53:53'),
(203, 151, 'black', '2025-01-15 22:53:53', '2025-01-15 22:53:53'),
(204, 151, 'pink', '2025-01-15 22:53:53', '2025-01-15 22:53:53'),
(209, 153, 'test', '2025-01-15 23:07:43', '2025-01-15 23:07:43'),
(210, 153, 'yellow', '2025-01-15 23:07:43', '2025-01-15 23:07:43'),
(217, 160, '', '2025-01-19 01:30:44', '2025-01-19 01:30:44'),
(218, 161, 'bf', '2025-01-19 01:48:41', '2025-01-19 01:48:41'),
(219, 162, 'jn', '2025-01-19 02:03:33', '2025-01-19 02:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `product_thumbnails`
--

CREATE TABLE `product_thumbnails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_thumbnail` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `stock` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(318, 151, 170.00, '4', '2025-01-15 22:53:50', '2025-01-15 22:53:50'),
(319, 151, 170.00, '5', '2025-01-15 22:53:50', '2025-01-15 22:53:50'),
(320, 151, 170.00, '3', '2025-01-15 22:53:50', '2025-01-15 22:53:50'),
(321, 151, 170.00, '2', '2025-01-15 22:53:50', '2025-01-15 22:53:50'),
(322, 151, 170.00, '5', '2025-01-15 22:53:50', '2025-01-15 22:53:50'),
(328, 153, 270.00, '7', '2025-01-15 23:07:43', '2025-01-15 23:07:43'),
(329, 153, 270.00, '4', '2025-01-15 23:07:43', '2025-01-15 23:07:43'),
(330, 153, 270.00, '3', '2025-01-15 23:07:43', '2025-01-15 23:07:43'),
(338, 160, 1600.00, '0', '2025-01-19 01:30:44', '2025-01-19 01:30:44'),
(339, 162, 2.00, '3', '2025-01-19 02:03:33', '2025-01-19 02:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `purchase_date` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `register_customers`
--

CREATE TABLE `register_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` enum('registerd','not registerd') NOT NULL DEFAULT 'registerd',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `register_customers`
--

INSERT INTO `register_customers` (`id`, `customer_id`, `phone`, `email`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, '01601958560', 'qbittech.dev1@gmail.com', '$2y$12$gatqJjWF0NuzAsYDhFZBtuG8q.fvv5F9M8B1ZqcvTVPZxzLMYM66i', 'registerd', NULL, '2024-07-14 21:49:02', '2024-07-14 21:49:02'),
(3, 3, '01558023281', 'admin@atripzbd.com', '$2y$12$0tDT9Qv090fBBbPl73iZ0OhMB1he4zOEsaVl9IOhHCPuGorM57IjW', 'registerd', NULL, '2024-08-03 23:48:03', '2024-08-03 23:48:03'),
(4, 47, '01844674502', 'masudszone.design@gmail.com', '$2y$12$lvd.9KPHBULzvjZY1NYaYews2pxrRoyGfV5g2eqB4wILv5oCno4IS', 'registerd', NULL, '2024-08-20 10:16:29', '2024-08-20 10:16:29'),
(5, 56, 'Fulton', 'tester.two@gmail.com', '$2y$12$w0yizo9C9hdZULNy6qr.JOP9Zy9aPstfYK8JSXXMFshrmMSXWRJKW', 'registerd', NULL, '2024-08-31 22:19:58', '2024-08-31 22:19:58'),
(6, 57, '01816114149', 'superadmin.tester@gmail.com', '$2y$12$2A11wbd.t.XGwfLr8COq0eU5.a3yWBXf1m.2hDhG/G0POlu5WnwAC', 'registerd', NULL, '2024-09-02 02:44:39', '2024-09-02 02:44:39'),
(7, 58, '01616663949', 'mdrhbhuiyan98@gmail.com', '$2y$12$OTquNt6zsjuWtg2uZWmAuuWLh5VVZrDCoaQXADOyS8HN5lsiFz/FS', 'registerd', NULL, '2024-09-03 02:58:46', '2024-09-03 02:58:46'),
(8, 68, '01601958560', 'arifhossen853@gmail.com', '$2y$12$TsreCPsbh1D/LFwoJdwtYeuzoScnKvFR7soNVsMjKk8XBgc3QUx/.', 'registerd', NULL, '2024-09-21 02:27:27', '2024-09-21 02:27:27'),
(9, 79, '01719249771', 'mmahfuzmhm@gmail.com', '$2y$12$XuQ4eF/OI1FxgY4QccMmNOd2JpewRFo1pU5WwlEX9TObXgjg1YmPu', 'registerd', NULL, '2024-10-26 21:27:02', '2024-10-26 21:27:02'),
(10, 80, '01914644706', 'kaziscout@gmail.com', '$2y$12$UuFNE2goVdY2x.TZA.uxKueYTHKlVsmGxtQfNzgHnhOzbXN1ABlAi', 'registerd', NULL, '2024-10-28 01:11:11', '2024-10-28 01:11:11'),
(11, 94, '01643150198', 'ars.kst12345@gmail.com', '$2y$12$/U5Mwno8DIX3gkElp6AzA.7dvnJOeKRECiSUS7TjZRxkyy9XT3DT2', 'registerd', NULL, '2024-12-04 10:28:59', '2024-12-04 10:28:59'),
(12, 96, '01720208362', 'parvess1980@gmail.com', '$2y$12$VRpTifhhtrw4/aOnksliZeDKqZxoB6qvDmZDPxa5.EGcrqacZ/NPi', 'registerd', NULL, '2024-12-08 08:25:16', '2024-12-08 08:25:16'),
(13, 108, '01815628620', 'sumonchbd620@gmail.com', '$2y$12$NJbKyxSI/OOFnFm0Um1SEeaqjqzlu8CDUFdqRNV3sMn0Lr/B4mILG', 'registerd', NULL, '2024-12-30 02:56:07', '2024-12-30 02:56:07'),
(227, 278, '01521428527', 'amitroyrock@gmail.com', '$2y$12$x0sSLEHtGOtKyvkK.aKfbeijw7vbMGb9qyU59ufdwWtnjgmCJ7dW2', 'registerd', NULL, '2025-01-19 01:16:03', '2025-01-19 01:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'Super Admin', 'web', '2024-03-21 04:41:50', '2024-03-21 12:06:04'),
(3, 'admin', 'web', '2024-03-21 04:41:55', '2024-07-07 10:44:06'),
(4, 'manager', 'web', '2024-03-21 04:42:02', '2024-07-07 10:44:04'),
(5, 'user', 'web', '2024-03-21 04:42:08', '2024-07-07 10:44:08');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(84, 5),
(85, 5),
(86, 5),
(87, 5),
(96, 5),
(97, 5),
(98, 5),
(99, 5);

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seoTitle` varchar(255) NOT NULL,
  `seoLogo` varchar(255) NOT NULL,
  `seoDescription` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `seoTitle`, `seoLogo`, `seoDescription`, `created_at`, `updated_at`) VALUES
(2, 'Koohen', '1714553583.png', 'Koohen offers a wide range of clothing, including T-shirts, hoodies, traditional Panjabi and Sharee dresses. Orders are carefully handled from Dhaka and delivered across Bangladesh!', '2024-05-01 02:53:03', '2024-05-01 02:53:03'),
(3, 'Goose Glass', '1714668128.jpg', 'This handy tool helps you create dummy text for all your layout needs. We are gradually adding new functionality and we welcome your suggestions and feedback.', '2024-05-02 10:42:08', '2024-05-02 10:42:08'),
(4, 'Goose Glass', '1714668166.jpg', 'This handy tool helps you create dummy text for all your layout needs. We are gradually adding new functionality and we welcome your suggestions and feedback.', '2024-05-02 10:42:46', '2024-05-02 10:42:46');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `primary_mobile_no` varchar(255) DEFAULT NULL,
  `secondary_mobile_no` varchar(255) DEFAULT NULL,
  `whatsapp_url` varchar(255) DEFAULT NULL,
  `facebook_url` varchar(255) DEFAULT NULL,
  `twiter_url` varchar(255) DEFAULT NULL,
  `instagram_url` varchar(255) DEFAULT NULL,
  `youtube_url` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `company_address` text DEFAULT NULL,
  `company_short_details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `primary_mobile_no`, `secondary_mobile_no`, `whatsapp_url`, `facebook_url`, `twiter_url`, `instagram_url`, `youtube_url`, `email`, `company_address`, `company_short_details`, `created_at`, `updated_at`) VALUES
(1, '+880 1751218778', '+880 1303027936', '#', NULL, NULL, NULL, NULL, 'gooseglassesbd@gmail.com', 'Shop 108, Twin Tower Concord Shopping Complex, Shnatinagar, Dhaka-1217', 'Koohen offers a wide range of clothing, including T-shirts, hoodies, traditional Panjabi and Sharee dresses. Orders are carefully handled from Dhaka and delivered across Bangladesh!', NULL, '2024-02-16 09:32:56');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `s_phone` varchar(255) NOT NULL,
  `s_email` varchar(255) NOT NULL,
  `shipping_add` text NOT NULL,
  `division` varchar(255) DEFAULT NULL,
  `district` varchar(255) NOT NULL,
  `area` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `customer_id`, `order_id`, `first_name`, `last_name`, `s_phone`, `s_email`, `shipping_add`, `division`, `district`, `area`, `created_at`, `updated_at`) VALUES
(125, 194, NULL, 'amit', 'roy', '01521428527', 'amitroyrock@gmail.com', 'Dhaka', '3', '1', 461, '2025-01-14 06:50:30', '2025-01-14 06:50:30'),
(132, 235, 333, 'tfhfgh', 'fghfh', '45654654', 'admin@koohen.com', 'dfgdg', '3', '14', 757, '2025-01-15 04:57:20', '2025-01-15 04:57:20'),
(146, 249, 347, 'afrin', 'dgvd', '43243', 'mizancse2018@gmail.com', 'svsv', '3', '2', 509, '2025-01-15 05:20:27', '2025-01-15 05:20:27'),
(148, 251, 349, 'Amit', 'Roy', '01521428527', 'amitroyrock6071@gmail.com', 'vdvdv', '3', '1', 467, '2025-01-15 05:32:00', '2025-01-15 05:32:00'),
(150, 272, 369, 'Amit', 'Roy', '01521428525', 'amitroy98.ewu@gmail.com', 'df sf sf', '3', '1', 491, '2025-01-15 06:41:25', '2025-01-15 06:41:25'),
(151, 274, 370, 'mizan', 'rahman', '01521422807', 'mizan@mail.com', 'dhaka', '3', '1', 452, '2025-01-15 07:00:23', '2025-01-15 07:00:23'),
(152, 275, 371, 'mizan', 'rahman', '01511111111', 'mizan@test.com', 'dhaka', '1', '34', 1, '2025-01-15 07:05:18', '2025-01-15 07:05:18'),
(153, 276, 372, 'mizan', 'rahman', '01511111112', 'mizan@test1.com', 'dhaka', '1', '34', 1, '2025-01-15 07:08:16', '2025-01-15 07:08:16'),
(154, 277, 375, 'mizanurrahman', 'rahman', '01982729327', 'mizanurrahman5298@gmail.com', 'pabna', '3', '1', 452, '2025-01-15 07:18:59', '2025-01-15 07:18:59'),
(155, 278, 376, 'Amit', 'Roy', '01521428527', 'amitroyrock@gmail.com', 'gopibagh', '3', '1', 457, '2025-01-19 01:16:03', '2025-01-19 01:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) NOT NULL,
  `instance` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('amitroyrock@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2025-01-19 02:41:50', NULL),
('mizan@test.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2025-01-15 07:14:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size_name` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size_name`, `size`, `status`, `created_at`, `updated_at`) VALUES
(35, 'Volume', '300 ml', '1', '2024-06-04 01:32:30', '2024-07-02 22:52:20'),
(36, 'size', 'size', '1', '2024-06-04 10:10:56', '2024-07-02 22:51:57'),
(37, 'M', 'M', '1', '2024-06-04 10:24:45', '2024-07-02 22:56:04'),
(38, 'L', 'L', '1', '2024-06-04 10:25:21', '2024-07-02 22:56:13'),
(39, 'S', 'S', '1', '2024-07-02 22:51:15', '2024-07-02 22:56:18'),
(40, 'XL', 'XL', '1', '2024-07-02 22:53:10', '2024-07-02 22:56:27'),
(41, 'XXL', 'XXL', '1', '2024-07-02 22:53:25', '2024-07-02 22:56:37'),
(42, 'XXXL', 'XXXL', '1', '2024-07-02 22:53:36', '2024-07-02 22:56:43'),
(43, 'XS', 'XS', '1', '2024-08-12 08:55:26', '2024-08-12 08:55:26');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `btntext` varchar(255) DEFAULT NULL,
  `slider_url` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `subtitle`, `btntext`, `slider_url`, `image`, `created_at`, `updated_at`) VALUES
(17, 'Winter Special Offer 2025', 'This Winter Special Offer 2025. Offer and discounted', 'Shop Now', 'https://atripzbd.com/shop', 'slider/1716389453.jpg', '2025-01-15 00:28:24', '2025-01-15 00:28:24'),
(18, 'OFFER', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy                                             eirmod tempor invidunt ut labore et dolore magna aliquyam erat', 'Shop Now', 'https://antstore.in/shop', 'slider/1724581675.jpg', '2025-01-15 00:31:49', '2025-01-15 00:31:49'),
(20, NULL, NULL, NULL, NULL, 'slider/1724583875.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `socialinfos`
--

CREATE TABLE `socialinfos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `social_title` varchar(255) NOT NULL,
  `title_value` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialinfos`
--

INSERT INTO `socialinfos` (`id`, `social_title`, `title_value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Phone', '+880100000000', '1', '2024-05-05 00:05:57', '2024-07-09 05:12:30'),
(2, 'Email', 'support@atripzbd.com', '1', '2024-05-05 00:05:57', '2025-01-14 23:29:56'),
(3, 'WhatsApp', '01800000000', '1', '2024-05-05 00:05:57', '2024-07-09 05:12:54'),
(4, 'Facebook', 'https://www.facebook.com/', '1', '2024-05-05 00:05:57', '2025-01-14 23:29:56'),
(5, 'Instagram', 'https://www.instagram.com/', '1', '2024-05-05 00:05:57', '2025-01-14 23:29:56'),
(6, 'LinkedIn', 'https://www.linkedin.com', '0', '2024-05-05 00:05:57', '2024-05-07 04:45:50'),
(7, 'YouTube', 'https://www.youtube.com', '0', '2024-05-05 00:05:57', '2024-06-01 06:55:53'),
(8, 'Twitter', 'https://www.twitter.com', '0', '2024-05-05 00:05:57', '2024-06-01 06:55:54');

-- --------------------------------------------------------

--
-- Table structure for table `specifications`
--

CREATE TABLE `specifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `specification_features`
--

CREATE TABLE `specification_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `specification_id` bigint(20) UNSIGNED NOT NULL,
  `feature_name` varchar(255) DEFAULT NULL,
  `feature_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `subcategory_image` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `balance` decimal(8,2) NOT NULL DEFAULT 0.00,
  `status` enum('Active','Inactive') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `supplier_name`, `phone`, `email`, `address`, `balance`, `status`, `created_at`, `updated_at`) VALUES
(2, 'AtripZ', '018000000000', NULL, 'Dhaka', 0.00, 'Active', '2024-02-07 02:21:22', '2025-01-14 00:38:33');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','online','cash') NOT NULL DEFAULT 'cod',
  `transaction_no` varchar(255) DEFAULT NULL,
  `status` enum('paid','unpaid','declined','refunded') DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `customer_id`, `order_id`, `mode`, `transaction_no`, `status`, `created_at`, `updated_at`) VALUES
(7, 24, 26, 'cash', NULL, 'paid', '2024-08-12 03:43:34', '2024-08-13 04:10:25'),
(10, 26, 29, 'cash', NULL, 'unpaid', '2024-08-13 02:55:37', '2024-08-13 02:55:37'),
(11, 27, 30, 'cash', NULL, 'paid', '2024-08-13 04:15:33', '2024-08-13 04:15:33'),
(12, 28, 31, 'cash', NULL, 'paid', '2024-08-13 04:19:20', '2024-08-13 04:19:20'),
(13, 29, 32, 'cash', NULL, 'paid', '2024-08-13 04:33:18', '2024-08-14 02:17:45'),
(14, 30, 33, 'cash', NULL, 'paid', '2024-08-13 04:40:18', '2024-08-14 00:41:26'),
(15, 31, 34, 'cash', NULL, 'paid', '2024-08-14 00:18:41', '2024-08-23 00:40:43'),
(16, 32, 35, 'cash', NULL, 'paid', '2024-08-14 00:25:00', '2024-08-15 10:12:10'),
(17, 33, 36, 'cash', NULL, 'paid', '2024-08-14 02:21:39', '2024-08-14 23:12:54'),
(18, 34, 37, 'cash', NULL, 'paid', '2024-08-14 02:26:56', '2024-08-16 02:03:17'),
(19, 35, 38, 'cash', NULL, 'paid', '2024-08-14 23:19:17', '2024-08-17 04:30:57'),
(20, 36, 39, 'cash', NULL, 'paid', '2024-08-14 23:21:18', '2024-08-17 04:30:47'),
(21, 37, 40, 'cash', NULL, 'paid', '2024-08-14 23:23:45', '2024-08-17 04:30:38'),
(22, 38, 41, 'cash', NULL, 'paid', '2024-08-15 03:08:58', '2024-08-15 10:12:33'),
(23, 39, 42, 'cash', NULL, 'unpaid', '2024-08-15 03:13:11', '2024-08-15 03:13:11'),
(24, 40, 43, 'cash', NULL, 'paid', '2024-08-16 01:14:06', '2024-08-17 04:30:28'),
(25, 41, 44, 'cash', NULL, 'paid', '2024-08-16 01:15:54', '2024-08-18 01:09:36'),
(26, 42, 45, 'cash', NULL, 'paid', '2024-08-17 10:36:52', '2024-08-18 01:09:26'),
(27, 43, 46, 'cash', NULL, 'paid', '2024-08-17 10:40:16', '2024-08-18 10:03:53'),
(28, 44, 47, 'cash', NULL, 'paid', '2024-08-17 10:42:06', '2024-08-19 09:50:49'),
(29, 45, 48, 'cash', NULL, 'paid', '2024-08-18 03:51:36', '2024-08-26 12:05:33'),
(30, 46, 49, 'cash', NULL, 'paid', '2024-08-18 04:05:04', '2024-08-20 01:55:43'),
(32, 48, 51, 'cash', NULL, 'paid', '2024-08-21 03:32:36', '2024-08-22 04:08:43'),
(33, 49, 52, 'cash', NULL, 'paid', '2024-08-21 03:34:37', '2024-08-26 12:05:16'),
(34, 50, 53, 'cash', NULL, 'paid', '2024-08-21 04:01:15', '2024-08-31 02:24:50'),
(35, 51, 54, 'cash', NULL, 'paid', '2024-08-21 04:55:27', '2024-08-22 01:22:00'),
(36, 52, 55, 'cash', NULL, 'paid', '2024-08-22 02:55:16', '2024-08-23 10:46:17'),
(38, 54, 57, 'cash', NULL, 'paid', '2024-08-24 09:01:55', '2024-09-07 02:24:17'),
(39, 55, 58, 'cash', NULL, 'unpaid', '2024-08-26 01:22:03', '2024-08-26 01:22:03'),
(40, 56, 59, 'cod', NULL, 'unpaid', '2024-08-31 22:19:58', '2024-08-31 22:19:58'),
(45, 61, 64, 'cash', NULL, 'unpaid', '2024-09-07 02:21:10', '2024-09-07 02:21:10'),
(46, 62, 65, 'cash', NULL, 'unpaid', '2024-09-08 00:03:27', '2024-09-08 00:03:27'),
(47, 63, 66, 'cash', NULL, 'paid', '2024-09-08 00:24:56', '2024-09-08 08:02:12'),
(48, 64, 67, 'cash', NULL, 'paid', '2024-09-08 08:43:29', '2024-09-08 08:43:29'),
(50, 66, 69, 'cash', NULL, 'paid', '2024-09-10 23:57:12', '2024-09-10 23:57:12'),
(51, 67, 70, 'cash', NULL, 'paid', '2024-09-20 05:06:42', '2024-09-20 05:06:42'),
(52, 68, 71, 'cod', NULL, 'unpaid', '2024-09-21 02:27:27', '2024-09-21 02:27:27'),
(53, 69, 72, 'cash', NULL, 'paid', '2024-09-21 07:59:02', '2024-09-21 07:59:02'),
(54, 70, 73, 'cod', NULL, 'paid', '2024-09-28 01:47:13', '2024-10-02 05:46:40'),
(55, 71, 74, 'cod', NULL, 'paid', '2024-10-01 06:56:14', '2024-10-07 02:17:02'),
(56, 72, 75, 'cod', NULL, 'paid', '2024-10-01 23:57:00', '2024-10-06 03:44:09'),
(57, 73, 76, 'cod', NULL, 'paid', '2024-10-01 23:58:42', '2024-10-02 05:46:09'),
(58, 74, 77, 'cash', NULL, 'unpaid', '2024-10-06 02:23:00', '2024-10-06 02:23:00'),
(59, 75, 78, 'cash', NULL, 'unpaid', '2024-10-08 04:09:11', '2024-10-08 04:09:11'),
(60, 76, 79, 'cod', NULL, 'paid', '2024-10-09 01:49:04', '2024-10-21 04:51:10'),
(61, 77, 80, 'cash', NULL, 'paid', '2024-10-12 01:52:25', '2024-10-21 04:50:23'),
(62, 78, 81, 'cash', NULL, 'paid', '2024-10-21 05:06:25', '2024-10-30 08:39:53'),
(63, 79, 82, 'cod', NULL, 'paid', '2024-10-26 21:27:02', '2024-10-30 08:42:18'),
(64, 79, 83, 'cod', NULL, 'unpaid', '2024-10-26 21:31:20', '2024-10-26 21:31:20'),
(65, 81, 84, 'cod', NULL, 'paid', '2024-10-28 03:57:11', '2024-10-30 08:38:54'),
(66, 82, 85, 'cod', NULL, 'paid', '2024-11-05 04:14:25', '2024-11-09 00:24:34'),
(67, 83, 86, 'cod', NULL, 'paid', '2024-11-05 04:16:18', '2024-11-09 00:23:52'),
(68, 84, 87, 'cod', NULL, 'paid', '2024-11-05 04:36:32', '2024-11-09 00:23:40'),
(69, 85, 88, 'cash', NULL, 'unpaid', '2024-11-07 07:15:35', '2024-11-07 07:15:35'),
(70, 86, 89, 'cash', NULL, 'unpaid', '2024-11-23 08:34:08', '2024-11-23 08:34:08'),
(71, 87, 90, 'cash', NULL, 'unpaid', '2024-11-26 03:36:37', '2024-11-26 03:36:37'),
(72, 88, 91, 'cash', NULL, 'unpaid', '2024-11-26 03:40:09', '2024-11-26 03:40:09'),
(73, 89, 92, 'cash', NULL, 'paid', '2024-11-29 10:25:21', '2024-11-29 10:25:21'),
(74, 90, 93, 'cash', NULL, 'paid', '2024-12-01 09:23:44', '2024-12-01 09:23:44'),
(75, 91, 94, 'cash', NULL, 'unpaid', '2024-12-01 09:26:34', '2024-12-01 09:26:34'),
(76, 92, 95, 'cash', 'BKASH', 'paid', '2024-12-03 23:50:55', '2024-12-04 06:46:12'),
(77, 93, 96, 'cash', NULL, 'unpaid', '2024-12-04 07:12:10', '2024-12-04 07:12:10'),
(78, 94, 97, 'online', 'BKASH', 'paid', '2024-12-04 10:28:59', '2024-12-10 00:41:31'),
(79, 95, 98, 'cash', NULL, 'paid', '2024-12-07 07:02:39', '2024-12-07 07:02:39'),
(80, 96, 99, 'cod', NULL, 'paid', '2024-12-08 08:25:16', '2024-12-10 00:43:17'),
(81, 97, 100, 'cash', NULL, 'paid', '2024-12-10 01:00:32', '2024-12-11 03:05:02'),
(82, 98, 101, 'cash', NULL, 'paid', '2024-12-10 11:03:21', '2024-12-16 12:18:53'),
(83, 99, 102, 'cash', NULL, 'paid', '2024-12-11 00:17:29', '2024-12-11 00:17:29'),
(84, 100, 103, 'cash', NULL, 'paid', '2024-12-12 09:32:00', '2024-12-13 09:45:05'),
(85, 101, 104, 'cash', NULL, 'paid', '2024-12-12 09:38:27', '2024-12-12 09:40:26'),
(86, 102, 105, 'cash', NULL, 'unpaid', '2024-12-13 09:52:33', '2024-12-13 09:52:33'),
(87, 103, 106, 'cash', NULL, 'paid', '2024-12-16 13:29:57', '2024-12-17 05:46:51'),
(88, 104, 107, 'cash', NULL, 'unpaid', '2024-12-17 03:49:39', '2024-12-17 03:49:39'),
(89, 85, 108, 'cash', NULL, 'unpaid', '2024-12-17 03:54:22', '2024-12-17 03:54:22'),
(90, 85, 109, 'cash', NULL, 'unpaid', '2024-12-17 03:58:31', '2024-12-17 03:58:31'),
(91, 85, 110, 'cash', NULL, 'paid', '2024-12-17 04:00:13', '2024-12-17 05:45:19'),
(92, 88, 111, 'cash', NULL, 'paid', '2024-12-17 05:40:02', '2024-12-17 05:51:45'),
(93, 105, 112, 'cash', NULL, 'paid', '2024-12-17 23:52:43', '2024-12-17 23:52:43'),
(94, 106, 113, 'cash', NULL, 'unpaid', '2024-12-18 00:03:14', '2024-12-18 00:03:14'),
(95, 107, 114, 'cash', NULL, 'unpaid', '2024-12-25 03:35:00', '2024-12-25 03:35:00'),
(96, 108, 115, 'cash', NULL, 'paid', '2024-12-30 02:56:07', '2025-01-07 03:30:03'),
(97, 109, 116, 'cash', NULL, 'paid', '2025-01-04 01:28:41', '2025-01-04 08:10:24'),
(98, 110, 117, 'cash', NULL, 'unpaid', '2025-01-04 08:09:47', '2025-01-04 08:09:47'),
(99, 111, 118, 'cash', NULL, 'unpaid', '2025-01-12 06:22:29', '2025-01-12 06:22:29'),
(252, 278, 376, 'cod', NULL, 'unpaid', '2025-01-19 01:16:03', '2025-01-19 01:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `upazillas`
--

CREATE TABLE `upazillas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `bn_name` varchar(255) NOT NULL,
  `zone_charge` decimal(10,0) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `upazillas`
--

INSERT INTO `upazillas` (`id`, `district_id`, `name`, `bn_name`, `zone_charge`, `created_at`, `updated_at`) VALUES
(1, 34, 'Amtali', 'আমতলী', 130, NULL, NULL),
(2, 34, 'Bamna', 'বামনা', 130, NULL, NULL),
(3, 34, 'Barguna Sadar', 'বরগুনা সদর', 130, NULL, NULL),
(4, 34, 'Betagi', 'বেতাগি', 130, NULL, NULL),
(5, 34, 'Patharghata', 'পাথরঘাটা', 130, NULL, NULL),
(6, 34, 'Taltali', 'তালতলী', 130, NULL, NULL),
(7, 35, 'Muladi', 'মুলাদি', 130, NULL, NULL),
(8, 35, 'Babuganj', 'বাবুগঞ্জ', 130, NULL, NULL),
(9, 35, 'Agailjhara', 'আগাইলঝরা', 130, NULL, NULL),
(10, 35, 'Barisal Sadar', 'বরিশাল সদর', 130, NULL, NULL),
(11, 35, 'Bakerganj', 'বাকেরগঞ্জ', 130, NULL, NULL),
(12, 35, 'Banaripara', 'বানাড়িপারা', 130, NULL, NULL),
(13, 35, 'Gaurnadi', 'গৌরনদী', 130, NULL, NULL),
(14, 35, 'Hizla', 'হিজলা', 130, NULL, NULL),
(15, 35, 'Mehendiganj', 'মেহেদিগঞ্জ ', 130, NULL, NULL),
(16, 35, 'Wazirpur', 'ওয়াজিরপুর', 130, NULL, NULL),
(17, 36, 'Bhola Sadar', 'ভোলা সদর', 130, NULL, NULL),
(18, 36, 'Burhanuddin', 'বুরহানউদ্দিন', 130, NULL, NULL),
(19, 36, 'Char Fasson', 'চর ফ্যাশন', 130, NULL, NULL),
(20, 36, 'Daulatkhan', 'দৌলতখান', 130, NULL, NULL),
(21, 36, 'Lalmohan', 'লালমোহন', 130, NULL, NULL),
(22, 36, 'Manpura', 'মনপুরা', 130, NULL, NULL),
(23, 36, 'Tazumuddin', 'তাজুমুদ্দিন', 130, NULL, NULL),
(24, 37, 'Jhalokati Sadar', 'ঝালকাঠি সদর', 130, NULL, NULL),
(25, 37, 'Kathalia', 'কাঁঠালিয়া', 130, NULL, NULL),
(26, 37, 'Nalchity', 'নালচিতি', 130, NULL, NULL),
(27, 37, 'Rajapur', 'রাজাপুর', 130, NULL, NULL),
(28, 38, 'Bauphal', 'বাউফল', 130, NULL, NULL),
(29, 38, 'Dashmina', 'দশমিনা', 130, NULL, NULL),
(30, 38, 'Galachipa', 'গলাচিপা', 130, NULL, NULL),
(31, 38, 'Kalapara', 'কালাপারা', 130, NULL, NULL),
(32, 38, 'Mirzaganj', 'মির্জাগঞ্জ ', 130, NULL, NULL),
(33, 38, 'Patuakhali Sadar', 'পটুয়াখালী সদর', 130, NULL, NULL),
(34, 38, 'Dumki', 'ডুমকি', 130, NULL, NULL),
(35, 38, 'Rangabali', 'রাঙ্গাবালি', 130, NULL, NULL),
(36, 39, 'Bhandaria', 'ভ্যান্ডারিয়া', 130, NULL, NULL),
(37, 39, 'Kaukhali', 'কাউখালি', 130, NULL, NULL),
(38, 39, 'Mathbaria', 'মাঠবাড়িয়া', 130, NULL, NULL),
(39, 39, 'Nazirpur', 'নাজিরপুর', 130, NULL, NULL),
(40, 39, 'Nesarabad', 'নেসারাবাদ', 130, NULL, NULL),
(41, 39, 'Pirojpur Sadar', 'পিরোজপুর সদর', 130, NULL, NULL),
(42, 39, 'Zianagar', 'জিয়ানগর', 130, NULL, NULL),
(43, 40, 'Bandarban Sadar', 'বান্দরবন সদর', 130, NULL, NULL),
(44, 40, 'Thanchi', 'থানচি', 130, NULL, NULL),
(45, 40, 'Lama', 'লামা', 130, NULL, NULL),
(46, 40, 'Naikhongchhari', 'নাইখংছড়ি ', 130, NULL, NULL),
(47, 40, 'Ali kadam', 'আলী কদম', 130, NULL, NULL),
(48, 40, 'Rowangchhari', 'রউয়াংছড়ি ', 130, NULL, NULL),
(49, 40, 'Ruma', 'রুমা', 130, NULL, NULL),
(50, 41, 'Brahmanbaria Sadar', 'ব্রাহ্মণবাড়িয়া সদর', 130, NULL, NULL),
(51, 41, 'Ashuganj', 'আশুগঞ্জ', 130, NULL, NULL),
(52, 41, 'Nasirnagar', 'নাসির নগর', 130, NULL, NULL),
(53, 41, 'Nabinagar', 'নবীনগর', 130, NULL, NULL),
(54, 41, 'Sarail', 'সরাইল', 130, NULL, NULL),
(55, 41, 'Shahbazpur Town', 'শাহবাজপুর টাউন', 130, NULL, NULL),
(56, 41, 'Kasba', 'কসবা', 130, NULL, NULL),
(57, 41, 'Akhaura', 'আখাউরা', 130, NULL, NULL),
(58, 41, 'Bancharampur', 'বাঞ্ছারামপুর', 130, NULL, NULL),
(59, 41, 'Bijoynagar', 'বিজয় নগর', 130, NULL, NULL),
(60, 42, 'Chandpur Sadar', 'চাঁদপুর সদর', 130, NULL, NULL),
(61, 42, 'Faridganj', 'ফরিদগঞ্জ', 130, NULL, NULL),
(62, 42, 'Haimchar', 'হাইমচর', 130, NULL, NULL),
(63, 42, 'Haziganj', 'হাজীগঞ্জ', 130, NULL, NULL),
(64, 42, 'Kachua', 'কচুয়া', 130, NULL, NULL),
(65, 42, 'Matlab Uttar', 'মতলব উত্তর', 130, NULL, NULL),
(66, 42, 'Matlab Dakkhin', 'মতলব দক্ষিণ', 130, NULL, NULL),
(67, 42, 'Shahrasti', 'শাহরাস্তি', 130, NULL, NULL),
(68, 43, 'Anwara', 'আনোয়ারা', 130, NULL, NULL),
(69, 43, 'Banshkhali', 'বাশখালি', 130, NULL, NULL),
(70, 43, 'Boalkhali', 'বোয়ালখালি', 130, NULL, NULL),
(71, 43, 'Chandanaish', 'চন্দনাইশ', 130, NULL, NULL),
(72, 43, 'Fatikchhari', 'ফটিকছড়ি', 130, NULL, NULL),
(73, 43, 'Hathazari', 'হাঠহাজারী', 130, NULL, NULL),
(74, 43, 'Lohagara', 'লোহাগারা', 130, NULL, NULL),
(75, 43, 'Mirsharai', 'মিরসরাই', 130, NULL, NULL),
(76, 43, 'Patiya', 'পটিয়া', 130, NULL, NULL),
(77, 43, 'Rangunia', 'রাঙ্গুনিয়া', 130, NULL, NULL),
(78, 43, 'Raozan', 'রাউজান', 130, NULL, NULL),
(79, 43, 'Sandwip', 'সন্দ্বীপ', 130, NULL, NULL),
(80, 43, 'Satkania', 'সাতকানিয়া', 130, NULL, NULL),
(81, 43, 'Sitakunda', 'সীতাকুণ্ড', 130, NULL, NULL),
(82, 44, 'Barura', 'বড়ুরা', 130, NULL, NULL),
(83, 44, 'Brahmanpara', 'ব্রাহ্মণপাড়া', 130, NULL, NULL),
(84, 44, 'Burichong', 'বুড়িচং', 130, NULL, NULL),
(85, 44, 'Chandina', 'চান্দিনা', 130, NULL, NULL),
(86, 44, 'Chauddagram', 'চৌদ্দগ্রাম', 130, NULL, NULL),
(87, 44, 'Daudkandi', 'দাউদকান্দি', 130, NULL, NULL),
(88, 44, 'Debidwar', 'দেবীদ্বার', 130, NULL, NULL),
(89, 44, 'Homna', 'হোমনা', 130, NULL, NULL),
(90, 44, 'Comilla Sadar', 'কুমিল্লা সদর', 130, NULL, NULL),
(91, 44, 'Laksam', 'লাকসাম', 130, NULL, NULL),
(92, 44, 'Monohorgonj', 'মনোহরগঞ্জ', 130, NULL, NULL),
(93, 44, 'Meghna', 'মেঘনা', 130, NULL, NULL),
(94, 44, 'Muradnagar', 'মুরাদনগর', 130, NULL, NULL),
(95, 44, 'Nangalkot', 'নাঙ্গালকোট', 130, NULL, NULL),
(96, 44, 'Comilla Sadar South', 'কুমিল্লা সদর দক্ষিণ', 130, NULL, NULL),
(97, 44, 'Titas', 'তিতাস', 130, NULL, NULL),
(98, 45, 'Chakaria', 'চকরিয়া', 130, NULL, NULL),
(100, 45, '{{198}}\'\'{{199}}', 'কক্স বাজার সদর', 130, NULL, NULL),
(101, 45, 'Kutubdia', 'কুতুবদিয়া', 130, NULL, NULL),
(102, 45, 'Maheshkhali', 'মহেশখালী', 130, NULL, NULL),
(103, 45, 'Ramu', 'রামু', 130, NULL, NULL),
(104, 45, 'Teknaf', 'টেকনাফ', 130, NULL, NULL),
(105, 45, 'Ukhia', 'উখিয়া', 130, NULL, NULL),
(106, 45, 'Pekua', 'পেকুয়া', 130, NULL, NULL),
(107, 46, 'Feni Sadar', 'ফেনী সদর', 130, NULL, NULL),
(108, 46, 'Chagalnaiya', 'ছাগল নাইয়া', 130, NULL, NULL),
(109, 46, 'Daganbhyan', 'দাগানভিয়া', 130, NULL, NULL),
(110, 46, 'Parshuram', 'পরশুরাম', 130, NULL, NULL),
(111, 46, 'Fhulgazi', 'ফুলগাজি', 130, NULL, NULL),
(112, 46, 'Sonagazi', 'সোনাগাজি', 130, NULL, NULL),
(113, 47, 'Dighinala', 'দিঘিনালা ', 130, NULL, NULL),
(114, 47, 'Khagrachhari', 'খাগড়াছড়ি', 130, NULL, NULL),
(115, 47, 'Lakshmichhari', 'লক্ষ্মীছড়ি', 130, NULL, NULL),
(116, 47, 'Mahalchhari', 'মহলছড়ি', 130, NULL, NULL),
(117, 47, 'Manikchhari', 'মানিকছড়ি', 130, NULL, NULL),
(118, 47, 'Matiranga', 'মাটিরাঙ্গা', 130, NULL, NULL),
(119, 47, 'Panchhari', 'পানছড়ি', 130, NULL, NULL),
(120, 47, 'Ramgarh', 'রামগড়', 130, NULL, NULL),
(121, 48, 'Lakshmipur Sadar', 'লক্ষ্মীপুর সদর', 130, NULL, NULL),
(122, 48, 'Raipur', 'রায়পুর', 130, NULL, NULL),
(123, 48, 'Ramganj', 'রামগঞ্জ', 130, NULL, NULL),
(124, 48, 'Ramgati', 'রামগতি', 130, NULL, NULL),
(125, 48, 'Komol Nagar', 'কমল নগর', 130, NULL, NULL),
(126, 49, 'Noakhali Sadar', 'নোয়াখালী সদর', 130, NULL, NULL),
(127, 49, 'Begumganj', 'বেগমগঞ্জ', 130, NULL, NULL),
(128, 49, 'Chatkhil', 'চাটখিল', 130, NULL, NULL),
(129, 49, 'Companyganj', 'কোম্পানীগঞ্জ', 130, NULL, NULL),
(130, 49, 'Shenbag', 'শেনবাগ', 130, NULL, NULL),
(131, 49, 'Hatia', 'হাতিয়া', 130, NULL, NULL),
(132, 49, 'Kobirhat', 'কবিরহাট ', 130, NULL, NULL),
(133, 49, 'Sonaimuri', 'সোনাইমুরি', 130, NULL, NULL),
(134, 49, 'Suborno Char', 'সুবর্ণ চর ', 130, NULL, NULL),
(135, 50, 'Rangamati Sadar', 'রাঙ্গামাটি সদর', 130, NULL, NULL),
(136, 50, 'Belaichhari', 'বেলাইছড়ি', 130, NULL, NULL),
(137, 50, 'Bagaichhari', 'বাঘাইছড়ি', 130, NULL, NULL),
(138, 50, 'Barkal', 'বরকল', 130, NULL, NULL),
(139, 50, 'Juraichhari', 'জুরাইছড়ি', 130, NULL, NULL),
(140, 50, 'Rajasthali', 'রাজাস্থলি', 130, NULL, NULL),
(141, 50, 'Kaptai', 'কাপ্তাই', 130, NULL, NULL),
(142, 50, 'Langadu', 'লাঙ্গাডু', 130, NULL, NULL),
(143, 50, 'Nannerchar', 'নান্নেরচর ', 130, NULL, NULL),
(144, 50, 'Kaukhali', 'কাউখালি', 130, NULL, NULL),
(145, 1, 'Dhamrai', 'ধামরাই', 80, NULL, NULL),
(146, 1, 'Dohar', 'দোহার', 80, NULL, '2024-01-29 03:04:04'),
(147, 1, 'Keraniganj', 'কেরানীগঞ্জ', 80, NULL, NULL),
(148, 1, 'Nawabganj', 'নবাবগঞ্জ', 80, NULL, NULL),
(149, 1, 'Savar', 'সাভার', 80, NULL, NULL),
(150, 2, 'Faridpur Sadar', 'ফরিদপুর সদর', 130, NULL, NULL),
(151, 2, 'Boalmari', 'বোয়ালমারী', 130, NULL, NULL),
(152, 2, 'Alfadanga', 'আলফাডাঙ্গা', 130, NULL, NULL),
(153, 2, 'Madhukhali', 'মধুখালি', 130, NULL, NULL),
(154, 2, 'Bhanga', 'ভাঙ্গা', 130, NULL, NULL),
(155, 2, 'Nagarkanda', 'নগরকান্ড', 130, NULL, NULL),
(156, 2, 'Charbhadrasan', 'চরভদ্রাসন ', 130, NULL, NULL),
(157, 2, 'Sadarpur', 'সদরপুর', 130, NULL, NULL),
(158, 2, 'Shaltha', 'শালথা', 130, NULL, NULL),
(159, 3, 'Gazipur Sadar-Joydebpur', 'গাজীপুর সদর', 130, NULL, NULL),
(160, 3, 'Kaliakior', 'কালিয়াকৈর', 130, NULL, NULL),
(161, 3, 'Kapasia', 'কাপাসিয়া', 130, NULL, NULL),
(162, 3, 'Sripur', 'শ্রীপুর', 50, NULL, '2024-01-29 03:51:16'),
(163, 3, 'Kaliganj', 'কালীগঞ্জ', 130, NULL, NULL),
(164, 3, 'Tongi', 'টঙ্গি', 130, NULL, NULL),
(165, 4, 'Gopalganj Sadar', 'গোপালগঞ্জ সদর', 130, NULL, NULL),
(166, 4, 'Kashiani', 'কাশিয়ানি', 130, NULL, NULL),
(167, 4, 'Kotalipara', 'কোটালিপাড়া', 130, NULL, NULL),
(168, 4, 'Muksudpur', 'মুকসুদপুর', 130, NULL, NULL),
(169, 4, 'Tungipara', 'টুঙ্গিপাড়া', 130, NULL, NULL),
(170, 5, 'Dewanganj', 'দেওয়ানগঞ্জ', 130, NULL, NULL),
(171, 5, 'Baksiganj', 'বকসিগঞ্জ', 130, NULL, NULL),
(172, 5, 'Islampur', 'ইসলামপুর', 130, NULL, NULL),
(173, 5, 'Jamalpur Sadar', 'জামালপুর সদর', 130, NULL, NULL),
(174, 5, 'Madarganj', 'মাদারগঞ্জ', 130, NULL, NULL),
(175, 5, 'Melandaha', 'মেলানদাহা', 130, NULL, NULL),
(176, 5, 'Sarishabari', 'সরিষাবাড়ি ', 130, NULL, NULL),
(177, 5, 'Narundi Police I.C', 'নারুন্দি', 130, NULL, NULL),
(178, 6, 'Astagram', 'অষ্টগ্রাম', 130, NULL, NULL),
(179, 6, 'Bajitpur', 'বাজিতপুর', 130, NULL, NULL),
(180, 6, 'Bhairab', 'ভৈরব', 130, NULL, NULL),
(181, 6, 'Hossainpur', 'হোসেনপুর ', 130, NULL, NULL),
(182, 6, 'Itna', 'ইটনা', 130, NULL, NULL),
(183, 6, 'Karimganj', 'করিমগঞ্জ', 130, NULL, NULL),
(184, 6, 'Katiadi', 'কতিয়াদি', 130, NULL, NULL),
(185, 6, 'Kishoreganj Sadar', 'কিশোরগঞ্জ সদর', 130, NULL, NULL),
(186, 6, 'Kuliarchar', 'কুলিয়ারচর', 130, NULL, NULL),
(187, 6, 'Mithamain', 'মিঠামাইন', 130, NULL, NULL),
(188, 6, 'Nikli', 'নিকলি', 130, NULL, NULL),
(189, 6, 'Pakundia', 'পাকুন্ডা', 130, NULL, NULL),
(190, 6, 'Tarail', 'তাড়াইল', 130, NULL, NULL),
(191, 7, 'Madaripur Sadar', 'মাদারীপুর সদর', 130, NULL, NULL),
(192, 7, 'Kalkini', 'কালকিনি', 130, NULL, NULL),
(193, 7, 'Rajoir', 'রাজইর', 130, NULL, NULL),
(194, 7, 'Shibchar', 'শিবচর', 130, NULL, NULL),
(195, 8, 'Manikganj Sadar', 'মানিকগঞ্জ সদর', 130, NULL, NULL),
(196, 8, 'Singair', 'সিঙ্গাইর', 130, NULL, NULL),
(197, 8, 'Shibalaya', 'শিবালয়', 130, NULL, NULL),
(198, 8, 'Saturia', 'সাটুরিয়া', 130, NULL, NULL),
(199, 8, 'Harirampur', 'হরিরামপুর', 130, NULL, NULL),
(200, 8, 'Ghior', 'ঘিওর', 130, NULL, NULL),
(201, 8, 'Daulatpur', 'দৌলতপুর', 130, NULL, NULL),
(202, 9, 'Lohajang', 'লোহাজং', 130, NULL, NULL),
(203, 9, 'Sreenagar', 'শ্রীনগর', 130, NULL, NULL),
(204, 9, 'Munshiganj Sadar', 'মুন্সিগঞ্জ সদর', 130, NULL, NULL),
(205, 9, 'Sirajdikhan', 'সিরাজদিখান', 130, NULL, NULL),
(206, 9, 'Tongibari', 'টঙ্গিবাড়ি', 130, NULL, NULL),
(207, 9, 'Gazaria', 'গজারিয়া', 130, NULL, NULL),
(208, 10, 'Bhaluka', 'ভালুকা', 130, NULL, NULL),
(209, 10, 'Trishal', 'ত্রিশাল', 130, NULL, NULL),
(210, 10, 'Haluaghat', 'হালুয়াঘাট', 130, NULL, NULL),
(211, 10, 'Muktagachha', 'মুক্তাগাছা', 130, NULL, NULL),
(212, 10, 'Dhobaura', 'ধবারুয়া', 130, NULL, NULL),
(213, 10, 'Fulbaria', 'ফুলবাড়িয়া', 130, NULL, NULL),
(214, 10, 'Gaffargaon', 'গফরগাঁও', 130, NULL, NULL),
(215, 10, 'Gauripur', 'গৌরিপুর', 130, NULL, NULL),
(216, 10, 'Ishwarganj', 'ঈশ্বরগঞ্জ', 130, NULL, NULL),
(217, 10, 'Mymensingh Sadar', 'ময়মনসিং সদর', 130, NULL, NULL),
(218, 10, 'Nandail', 'নন্দাইল', 130, NULL, NULL),
(219, 10, 'Phulpur', 'ফুলপুর', 130, NULL, NULL),
(220, 11, 'Araihazar', 'আড়াইহাজার', 130, NULL, NULL),
(221, 11, 'Sonargaon', 'সোনারগাঁও', 130, NULL, NULL),
(222, 11, 'Bandar', 'বান্দার', 130, NULL, NULL),
(223, 11, 'Naryanganj Sadar', 'নারায়ানগঞ্জ সদর', 130, NULL, NULL),
(224, 11, 'Rupganj', 'রূপগঞ্জ', 130, NULL, NULL),
(225, 11, 'Siddirgonj', 'সিদ্ধিরগঞ্জ', 130, NULL, NULL),
(226, 12, 'Belabo', 'বেলাবো', 130, NULL, NULL),
(227, 12, 'Monohardi', 'মনোহরদি', 130, NULL, NULL),
(228, 12, 'Narsingdi Sadar', 'নরসিংদী সদর', 130, NULL, NULL),
(229, 12, 'Palash', 'পলাশ', 130, NULL, NULL),
(230, 12, 'Raipura, Narsingdi', 'রায়পুর', 130, NULL, NULL),
(231, 12, 'Shibpur', 'শিবপুর', 130, NULL, NULL),
(232, 13, 'Kendua Upazilla', 'কেন্দুয়া', 130, NULL, NULL),
(233, 13, 'Atpara Upazilla', 'আটপাড়া', 130, NULL, NULL),
(234, 13, 'Barhatta Upazilla', 'বরহাট্টা', 130, NULL, NULL),
(235, 13, 'Durgapur Upazilla', 'দুর্গাপুর', 130, NULL, NULL),
(236, 13, 'Kalmakanda Upazilla', 'কলমাকান্দা', 130, NULL, NULL),
(237, 13, 'Madan Upazilla', 'মদন', 130, NULL, NULL),
(238, 13, 'Mohanganj Upazilla', 'মোহনগঞ্জ', 130, NULL, NULL),
(239, 13, 'Netrakona-S Upazilla', 'নেত্রকোনা সদর', 130, NULL, NULL),
(240, 13, 'Purbadhala Upazilla', 'পূর্বধলা', 130, NULL, NULL),
(241, 13, 'Khaliajuri Upazilla', 'খালিয়াজুরি', 130, NULL, NULL),
(242, 14, 'Baliakandi', 'বালিয়াকান্দি', 130, NULL, NULL),
(243, 14, 'Goalandaghat', 'গোয়ালন্দ ঘাট', 130, NULL, NULL),
(244, 14, 'Pangsha', 'পাংশা', 130, NULL, NULL),
(245, 14, 'Kalukhali', 'কালুখালি', 130, NULL, NULL),
(246, 14, 'Rajbari Sadar', 'রাজবাড়ি সদর', 130, NULL, NULL),
(247, 15, 'Shariatpur Sadar -Palong', 'শরীয়তপুর সদর ', 130, NULL, NULL),
(248, 15, 'Damudya', 'দামুদিয়া', 130, NULL, NULL),
(249, 15, 'Naria', 'নড়িয়া', 130, NULL, NULL),
(250, 15, 'Jajira', 'জাজিরা', 130, NULL, NULL),
(251, 15, 'Bhedarganj', 'ভেদারগঞ্জ', 130, NULL, NULL),
(252, 15, 'Gosairhat', 'গোসাইর হাট ', 130, NULL, NULL),
(253, 16, 'Jhenaigati', 'ঝিনাইগাতি', 130, NULL, NULL),
(254, 16, 'Nakla', 'নাকলা', 130, NULL, NULL),
(255, 16, 'Nalitabari', 'নালিতাবাড়ি', 130, NULL, NULL),
(256, 16, 'Sherpur Sadar', 'শেরপুর সদর', 130, NULL, NULL),
(257, 16, 'Sreebardi', 'শ্রীবরদি', 130, NULL, NULL),
(258, 17, 'Tangail Sadar', 'টাঙ্গাইল সদর', 130, NULL, NULL),
(259, 17, 'Sakhipur', 'সখিপুর', 130, NULL, NULL),
(260, 17, 'Basail', 'বসাইল', 130, NULL, NULL),
(261, 17, 'Madhupur', 'মধুপুর', 130, NULL, NULL),
(262, 17, 'Ghatail', 'ঘাটাইল', 130, NULL, NULL),
(263, 17, 'Kalihati', 'কালিহাতি', 130, NULL, NULL),
(264, 17, 'Nagarpur', 'নগরপুর', 130, NULL, NULL),
(265, 17, 'Mirzapur', 'মির্জাপুর', 130, NULL, NULL),
(266, 17, 'Gopalpur', 'গোপালপুর', 130, NULL, NULL),
(267, 17, 'Delduar', 'দেলদুয়ার', 130, NULL, NULL),
(268, 17, 'Bhuapur', 'ভুয়াপুর', 130, NULL, NULL),
(269, 17, 'Dhanbari', 'ধানবাড়ি', 130, NULL, NULL),
(270, 55, 'Bagerhat Sadar', 'বাগেরহাট সদর', 130, NULL, NULL),
(271, 55, 'Chitalmari', 'চিতলমাড়ি', 130, NULL, NULL),
(272, 55, 'Fakirhat', 'ফকিরহাট', 130, NULL, NULL),
(273, 55, 'Kachua', 'কচুয়া', 130, NULL, NULL),
(274, 55, 'Mollahat', 'মোল্লাহাট ', 130, NULL, NULL),
(275, 55, 'Mongla', 'মংলা', 130, NULL, NULL),
(276, 55, 'Morrelganj', 'মরেলগঞ্জ', 130, NULL, NULL),
(277, 55, 'Rampal', 'রামপাল', 130, NULL, NULL),
(278, 55, 'Sarankhola', 'স্মরণখোলা', 130, NULL, NULL),
(279, 56, 'Damurhuda', 'দামুরহুদা', 130, NULL, NULL),
(280, 56, 'Chuadanga-S', 'চুয়াডাঙ্গা সদর', 130, NULL, NULL),
(281, 56, 'Jibannagar', 'জীবন নগর ', 130, NULL, NULL),
(282, 56, 'Alamdanga', 'আলমডাঙ্গা', 130, NULL, NULL),
(283, 57, 'Abhaynagar', 'অভয়নগর', 130, NULL, NULL),
(284, 57, 'Keshabpur', 'কেশবপুর', 130, NULL, NULL),
(285, 57, 'Bagherpara', 'বাঘের পাড়া ', 130, NULL, NULL),
(286, 57, 'Jessore Sadar', 'যশোর সদর', 130, NULL, NULL),
(287, 57, 'Chaugachha', 'চৌগাছা', 130, NULL, NULL),
(288, 57, 'Manirampur', 'মনিরামপুর ', 130, NULL, NULL),
(289, 57, 'Jhikargachha', 'ঝিকরগাছা', 130, NULL, NULL),
(290, 57, 'Sharsha', 'সারশা', 130, NULL, NULL),
(291, 58, 'Jhenaidah Sadar', 'ঝিনাইদহ সদর', 130, NULL, NULL),
(292, 58, 'Maheshpur', 'মহেশপুর', 130, NULL, NULL),
(293, 58, 'Kaliganj', 'কালীগঞ্জ', 130, NULL, NULL),
(294, 58, 'Kotchandpur', 'কোট চাঁদপুর ', 130, NULL, NULL),
(295, 58, 'Shailkupa', 'শৈলকুপা', 130, NULL, NULL),
(296, 58, 'Harinakunda', 'হাড়িনাকুন্দা', 130, NULL, NULL),
(297, 59, 'Terokhada', 'তেরোখাদা', 130, NULL, NULL),
(298, 59, 'Batiaghata', 'বাটিয়াঘাটা ', 130, NULL, NULL),
(299, 59, 'Dacope', 'ডাকপে', 130, NULL, NULL),
(300, 59, 'Dumuria', 'ডুমুরিয়া', 130, NULL, NULL),
(301, 59, 'Dighalia', 'দিঘলিয়া', 130, NULL, NULL),
(302, 59, 'Koyra', 'কয়ড়া', 130, NULL, NULL),
(303, 59, 'Paikgachha', 'পাইকগাছা', 130, NULL, NULL),
(304, 59, 'Phultala', 'ফুলতলা', 130, NULL, NULL),
(305, 59, 'Rupsa', 'রূপসা', 130, NULL, NULL),
(306, 60, 'Kushtia Sadar', 'কুষ্টিয়া সদর', 130, NULL, NULL),
(307, 60, 'Kumarkhali', 'কুমারখালি', 130, NULL, NULL),
(308, 60, 'Daulatpur', 'দৌলতপুর', 130, NULL, NULL),
(309, 60, 'Mirpur', 'মিরপুর', 130, NULL, NULL),
(310, 60, 'Bheramara', 'ভেরামারা', 130, NULL, NULL),
(311, 60, 'Khoksa', 'খোকসা', 130, NULL, NULL),
(312, 61, 'Magura Sadar', 'মাগুরা সদর', 130, NULL, NULL),
(313, 61, 'Mohammadpur', 'মোহাম্মাদপুর', 130, NULL, NULL),
(314, 61, 'Shalikha', 'শালিখা', 130, NULL, NULL),
(315, 61, 'Sreepur', 'শ্রীপুর', 130, NULL, NULL),
(316, 62, 'angni', 'আংনি', 130, NULL, NULL),
(317, 62, 'Mujib Nagar', 'মুজিব নগর', 130, NULL, NULL),
(318, 62, 'Meherpur-S', 'মেহেরপুর সদর', 130, NULL, NULL),
(319, 63, 'Narail-S Upazilla', 'নড়াইল সদর', 130, NULL, NULL),
(320, 63, 'Lohagara Upazilla', 'লোহাগাড়া', 130, NULL, NULL),
(321, 63, 'Kalia Upazilla', 'কালিয়া', 130, NULL, NULL),
(322, 64, 'Satkhira Sadar', 'সাতক্ষীরা সদর', 130, NULL, NULL),
(323, 64, 'Assasuni', 'আসসাশুনি ', 130, NULL, NULL),
(324, 64, 'Debhata', 'দেভাটা', 130, NULL, NULL),
(325, 64, 'Tala', 'তালা', 130, NULL, NULL),
(326, 64, 'Kalaroa', 'কলরোয়া', 130, NULL, NULL),
(327, 64, 'Kaliganj', 'কালীগঞ্জ', 130, NULL, NULL),
(328, 64, 'Shyamnagar', 'শ্যামনগর', 130, NULL, NULL),
(329, 18, 'Adamdighi', 'আদমদিঘী', 130, NULL, NULL),
(330, 18, 'Bogra Sadar', 'বগুড়া সদর', 130, NULL, NULL),
(331, 18, 'Sherpur', 'শেরপুর', 130, NULL, NULL),
(332, 18, 'Dhunat', 'ধুনট', 130, NULL, NULL),
(333, 18, 'Dhupchanchia', 'দুপচাচিয়া', 130, NULL, NULL),
(334, 18, 'Gabtali', 'গাবতলি', 130, NULL, NULL),
(335, 18, 'Kahaloo', 'কাহালু', 130, NULL, NULL),
(336, 18, 'Nandigram', 'নন্দিগ্রাম', 130, NULL, NULL),
(337, 18, 'Sahajanpur', 'শাহজাহানপুর', 130, NULL, NULL),
(338, 18, 'Sariakandi', 'সারিয়াকান্দি', 130, NULL, NULL),
(339, 18, 'Shibganj', 'শিবগঞ্জ', 130, NULL, NULL),
(340, 18, 'Sonatala', 'সোনাতলা', 130, NULL, NULL),
(341, 19, 'Joypurhat S', 'জয়পুরহাট সদর', 130, NULL, NULL),
(342, 19, 'Akkelpur', 'আক্কেলপুর', 130, NULL, NULL),
(343, 19, 'Kalai', 'কালাই', 130, NULL, NULL),
(344, 19, 'Khetlal', 'খেতলাল', 130, NULL, NULL),
(345, 19, 'Panchbibi', 'পাঁচবিবি', 130, NULL, NULL),
(346, 20, 'Naogaon Sadar', 'নওগাঁ সদর', 130, NULL, NULL),
(347, 20, 'Mohadevpur', 'মহাদেবপুর', 130, NULL, NULL),
(348, 20, 'Manda', 'মান্দা', 130, NULL, NULL),
(349, 20, 'Niamatpur', 'নিয়ামতপুর', 130, NULL, NULL),
(350, 20, 'Atrai', 'আত্রাই', 130, NULL, NULL),
(351, 20, 'Raninagar', 'রাণীনগর', 130, NULL, NULL),
(352, 20, 'Patnitala', 'পত্নীতলা', 130, NULL, NULL),
(353, 20, 'Dhamoirhat', 'ধামইরহাট ', 130, NULL, NULL),
(354, 20, 'Sapahar', 'সাপাহার', 130, NULL, NULL),
(355, 20, 'Porsha', 'পোরশা', 130, NULL, NULL),
(356, 20, 'Badalgachhi', 'বদলগাছি', 130, NULL, NULL),
(357, 21, 'Natore Sadar', 'নাটোর সদর', 130, NULL, NULL),
(358, 21, 'Baraigram', 'বড়াইগ্রাম', 130, NULL, NULL),
(359, 21, 'Bagatipara', 'বাগাতিপাড়া', 130, NULL, NULL),
(360, 21, 'Lalpur', 'লালপুর', 130, NULL, NULL),
(361, 21, 'Natore Sadar', 'নাটোর সদর', 130, NULL, NULL),
(362, 21, 'Baraigram', 'বড়াই গ্রাম', 130, NULL, NULL),
(363, 22, 'Bholahat', 'ভোলাহাট', 130, NULL, NULL),
(364, 22, 'Gomastapur', 'গোমস্তাপুর', 130, NULL, NULL),
(365, 22, 'Nachole', 'নাচোল', 130, NULL, NULL),
(366, 22, 'Nawabganj Sadar', 'নবাবগঞ্জ সদর', 130, NULL, NULL),
(367, 22, 'Shibganj', 'শিবগঞ্জ', 130, NULL, NULL),
(368, 23, 'Atgharia', 'আটঘরিয়া', 130, NULL, NULL),
(369, 23, 'Bera', 'বেড়া', 130, NULL, NULL),
(370, 23, 'Bhangura', 'ভাঙ্গুরা', 130, NULL, NULL),
(371, 23, 'Chatmohar', 'চাটমোহর', 130, NULL, NULL),
(372, 23, 'Faridpur', 'ফরিদপুর', 130, NULL, NULL),
(373, 23, 'Ishwardi', 'ঈশ্বরদী', 130, NULL, NULL),
(374, 23, 'Pabna Sadar', 'পাবনা সদর', 130, NULL, NULL),
(375, 23, 'Santhia', 'সাথিয়া', 130, NULL, NULL),
(376, 23, 'Sujanagar', 'সুজানগর', 130, NULL, NULL),
(377, 24, 'Bagha', 'বাঘা', 130, NULL, NULL),
(378, 24, 'Bagmara', 'বাগমারা', 130, NULL, NULL),
(379, 24, 'Charghat', 'চারঘাট', 130, NULL, NULL),
(380, 24, 'Durgapur', 'দুর্গাপুর', 130, NULL, NULL),
(381, 24, 'Godagari', 'গোদাগারি', 130, NULL, NULL),
(382, 24, 'Mohanpur', 'মোহনপুর', 130, NULL, NULL),
(383, 24, 'Paba', 'পবা', 130, NULL, NULL),
(384, 24, 'Puthia', 'পুঠিয়া', 130, NULL, NULL),
(385, 24, 'Tanore', 'তানোর', 130, NULL, NULL),
(386, 25, 'Sirajganj Sadar', 'সিরাজগঞ্জ সদর', 130, NULL, NULL),
(387, 25, 'Belkuchi', 'বেলকুচি', 130, NULL, NULL),
(388, 25, 'Chauhali', 'চৌহালি', 130, NULL, NULL),
(389, 25, 'Kamarkhanda', 'কামারখান্দা', 130, NULL, NULL),
(390, 25, 'Kazipur', 'কাজীপুর', 130, NULL, NULL),
(391, 25, 'Raiganj', 'রায়গঞ্জ', 130, NULL, NULL),
(392, 25, 'Shahjadpur', 'শাহজাদপুর', 130, NULL, NULL),
(393, 25, 'Tarash', 'তারাশ', 130, NULL, NULL),
(394, 25, 'Ullahpara', 'উল্লাপাড়া', 130, NULL, NULL),
(395, 26, 'Birampur', 'বিরামপুর', 130, NULL, NULL),
(396, 26, 'Birganj', 'বীরগঞ্জ', 130, NULL, NULL),
(397, 26, 'Biral', 'বিড়াল', 130, NULL, NULL),
(398, 26, 'Bochaganj', 'বোচাগঞ্জ', 130, NULL, NULL),
(399, 26, 'Chirirbandar', 'চিরিরবন্দর', 130, NULL, NULL),
(400, 26, 'Phulbari', 'ফুলবাড়ি', 130, NULL, NULL),
(401, 26, 'Ghoraghat', 'ঘোড়াঘাট', 130, NULL, NULL),
(402, 26, 'Hakimpur', 'হাকিমপুর', 130, NULL, NULL),
(403, 26, 'Kaharole', 'কাহারোল', 130, NULL, NULL),
(404, 26, 'Khansama', 'খানসামা', 130, NULL, NULL),
(405, 26, 'Dinajpur Sadar', 'দিনাজপুর সদর', 130, NULL, NULL),
(406, 26, 'Nawabganj', 'নবাবগঞ্জ', 130, NULL, NULL),
(407, 26, 'Parbatipur', 'পার্বতীপুর', 130, NULL, NULL),
(408, 27, 'Fulchhari', 'ফুলছড়ি', 130, NULL, NULL),
(409, 27, 'Gaibandha sadar', 'গাইবান্ধা সদর', 130, NULL, NULL),
(410, 27, 'Gobindaganj', 'গোবিন্দগঞ্জ', 130, NULL, NULL),
(411, 27, 'Palashbari', 'পলাশবাড়ী', 130, NULL, NULL),
(412, 27, 'Sadullapur', 'সাদুল্যাপুর', 130, NULL, NULL),
(413, 27, 'Saghata', 'সাঘাটা', 130, NULL, NULL),
(414, 27, 'Sundarganj', 'সুন্দরগঞ্জ', 130, NULL, NULL),
(415, 28, 'Kurigram Sadar', 'কুড়িগ্রাম সদর', 130, NULL, NULL),
(416, 28, 'Nageshwari', 'নাগেশ্বরী', 130, NULL, NULL),
(417, 28, 'Bhurungamari', 'ভুরুঙ্গামারি', 130, NULL, NULL),
(418, 28, 'Phulbari', 'ফুলবাড়ি', 130, NULL, NULL),
(419, 28, 'Rajarhat', 'রাজারহাট', 130, NULL, NULL),
(420, 28, 'Ulipur', 'উলিপুর', 130, NULL, NULL),
(421, 28, 'Chilmari', 'চিলমারি', 130, NULL, NULL),
(422, 28, 'Rowmari', 'রউমারি', 130, NULL, NULL),
(423, 28, 'Char Rajibpur', 'চর রাজিবপুর', 130, NULL, NULL),
(424, 29, 'Lalmanirhat Sadar', 'লালমনিরহাট সদর', 130, NULL, NULL),
(425, 29, 'Aditmari', 'আদিতমারি', 130, NULL, NULL),
(426, 29, 'Kaliganj', 'কালীগঞ্জ', 130, NULL, NULL),
(427, 29, 'Hatibandha', 'হাতিবান্ধা', 130, NULL, NULL),
(428, 29, 'Patgram', 'পাটগ্রাম', 130, NULL, NULL),
(429, 30, 'Nilphamari Sadar', 'নীলফামারী সদর', 130, NULL, NULL),
(430, 30, 'Saidpur', 'সৈয়দপুর', 130, NULL, NULL),
(431, 30, 'Jaldhaka', 'জলঢাকা', 130, NULL, NULL),
(432, 30, 'Kishoreganj', 'কিশোরগঞ্জ', 130, NULL, NULL),
(433, 30, 'Domar', 'ডোমার', 130, NULL, NULL),
(434, 30, 'Dimla', 'ডিমলা', 130, NULL, NULL),
(435, 31, 'Panchagarh Sadar', 'পঞ্চগড় সদর', 130, NULL, NULL),
(436, 31, 'Debiganj', 'দেবীগঞ্জ', 130, NULL, NULL),
(437, 31, 'Boda', 'বোদা', 130, NULL, NULL),
(438, 31, 'Atwari', 'আটোয়ারি', 130, NULL, NULL),
(439, 31, 'Tetulia', 'তেঁতুলিয়া', 130, NULL, NULL),
(440, 32, 'Badarganj', 'বদরগঞ্জ', 130, NULL, NULL),
(441, 32, 'Mithapukur', 'মিঠাপুকুর', 130, NULL, NULL),
(442, 32, 'Gangachara', 'গঙ্গাচরা', 130, NULL, NULL),
(443, 32, 'Kaunia', 'কাউনিয়া', 130, NULL, NULL),
(444, 32, 'Rangpur Sadar', 'রংপুর সদর', 130, NULL, NULL),
(445, 32, 'Pirgachha', 'পীরগাছা', 130, NULL, NULL),
(446, 32, 'Pirganj', 'পীরগঞ্জ', 130, NULL, NULL),
(447, 32, 'Taraganj', 'তারাগঞ্জ', 130, NULL, NULL),
(448, 33, 'Thakurgaon Sadar', 'ঠাকুরগাঁও সদর', 130, NULL, NULL),
(449, 33, 'Pirganj', 'পীরগঞ্জ', 130, NULL, NULL),
(450, 33, 'Baliadangi', 'বালিয়াডাঙ্গি', 130, NULL, NULL),
(451, 33, 'Haripur', 'হরিপুর', 130, NULL, NULL),
(452, 33, 'Ranisankail', 'রাণীসংকইল', 130, NULL, NULL),
(453, 51, 'Ajmiriganj', 'আজমিরিগঞ্জ', 130, NULL, NULL),
(454, 51, 'Baniachang', 'বানিয়াচং', 130, NULL, NULL),
(455, 51, 'Bahubal', 'বাহুবল', 130, NULL, NULL),
(456, 51, 'Chunarughat', 'চুনারুঘাট', 130, NULL, NULL),
(457, 51, 'Habiganj Sadar', 'হবিগঞ্জ সদর', 130, NULL, NULL),
(458, 51, 'Lakhai', 'লাক্ষাই', 130, NULL, NULL),
(459, 51, 'Madhabpur', 'মাধবপুর', 130, NULL, NULL),
(460, 51, 'Nabiganj', 'নবীগঞ্জ', 130, NULL, NULL),
(461, 51, 'Shaistagonj', 'শায়েস্তাগঞ্জ', 130, NULL, NULL),
(462, 52, 'Moulvibazar Sadar', 'মৌলভীবাজার', 130, NULL, NULL),
(463, 52, 'Barlekha', 'বড়লেখা', 130, NULL, NULL),
(464, 52, 'Juri', 'জুড়ি', 130, NULL, NULL),
(465, 52, 'Kamalganj', 'কামালগঞ্জ', 130, NULL, NULL),
(466, 52, 'Kulaura', 'কুলাউরা', 130, NULL, NULL),
(467, 52, 'Rajnagar', 'রাজনগর', 130, NULL, NULL),
(468, 52, 'Sreemangal', 'শ্রীমঙ্গল', 130, NULL, NULL),
(469, 53, 'Bishwamvarpur', 'বিসশম্ভারপুর', 130, NULL, NULL),
(470, 53, 'Chhatak', 'ছাতক', 130, NULL, NULL),
(471, 53, 'Derai', 'দেড়াই', 130, NULL, NULL),
(472, 53, 'Dharampasha', 'ধরমপাশা', 130, NULL, NULL),
(473, 53, 'Dowarabazar', 'দোয়ারাবাজার', 130, NULL, NULL),
(474, 53, 'Jagannathpur', 'জগন্নাথপুর', 130, NULL, NULL),
(475, 53, 'Jamalganj', 'জামালগঞ্জ', 130, NULL, NULL),
(476, 53, 'Sulla', 'সুল্লা', 130, NULL, NULL),
(477, 53, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর', 130, NULL, NULL),
(478, 53, 'Shanthiganj', 'শান্তিগঞ্জ', 130, NULL, NULL),
(479, 53, 'Tahirpur', 'তাহিরপুর', 130, NULL, NULL),
(480, 54, 'Sylhet Sadar', 'সিলেট সদর', 130, NULL, NULL),
(481, 54, 'Beanibazar', 'বেয়ানিবাজার', 130, NULL, NULL),
(482, 54, 'Bishwanath', 'বিশ্বনাথ', 130, NULL, NULL),
(483, 54, 'Dakshin Surma', 'দক্ষিণ সুরমা', 130, NULL, NULL),
(484, 54, 'Balaganj', 'বালাগঞ্জ', 130, NULL, NULL),
(485, 54, 'Companiganj', 'কোম্পানিগঞ্জ', 130, NULL, NULL),
(486, 54, 'Fenchuganj', 'ফেঞ্চুগঞ্জ', 130, NULL, NULL),
(487, 54, 'Golapganj', 'গোলাপগঞ্জ', 130, NULL, NULL),
(488, 54, 'Gowainghat', 'গোয়াইনঘাট', 130, NULL, NULL),
(489, 54, 'Jointapur', 'জৈন্তাপুর', 130, NULL, NULL),
(490, 54, 'Kanaighat', 'কানাইঘাট', 130, NULL, NULL),
(491, 54, 'Zakiganj', 'জাকিগঞ্জ', 130, NULL, NULL),
(492, 54, 'Nobigonj', 'নবীগঞ্জ', 130, NULL, NULL),
(493, 45, 'Eidgaon', 'ঈদগাঁও', 130, NULL, NULL),
(494, 53, 'Modhyanagar', 'মধ্যনগর', 130, NULL, NULL),
(495, 7, 'Dasar', 'দশর', 130, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'GooseGlass', 'gooseglassesbd@gmail.com', NULL, '$2y$12$58bGqrPN4SViZU8O5G3LW.wjlCyschx8yUfHoCl5RqrxwyjKFw5FG', 'pGw3vQ3aOhMHZQJxmgk8i7LNWpwwbGW6jiliKeBSy7gBi7cXhNjm6DfFVeM9', '2024-01-11 01:33:04', '2024-05-08 04:21:24'),
(5, 'User', 'user@mail.com', NULL, '$2y$12$YWS0kw.afh3igoNyExBdv.qkWG1V.KqJUvZVwwECOlVPsUDFcT55W', 'LbMZ0GAmTtymyWQiOduFQUIGccrDkzWPk2y2ldIyBYIAEl0aan28Iyf6kNq3', '2024-03-21 04:45:10', '2024-04-30 12:43:03'),
(12, 'Super Admin', 'superadmin@mail.com', NULL, '$2y$12$YWS0kw.afh3igoNyExBdv.qkWG1V.KqJUvZVwwECOlVPsUDFcT55W', 'JHrpvGZfYcZ2CZE7G4vkfHls2nCh2eibxLsV8F6YE6Gf34mxGBwKvlSVDQ1P', '2024-12-30 02:04:31', '2024-12-30 02:04:31');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appName` varchar(255) NOT NULL,
  `ownerName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `weblogo` varchar(255) DEFAULT NULL,
  `webfavicon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `appName`, `ownerName`, `email`, `phone`, `address`, `description`, `startDate`, `weblogo`, `webfavicon`, `created_at`, `updated_at`) VALUES
(1, 'Goose Glass', 'MR Goose', 'mrgoose@gmail.com', '0170000000', 'Dhaka, Bangladesh', 'This handy tool helps you create dummy text for all your layout needs. We are gradually adding new functionality and we welcome your suggestions and feedback.', '2024-03-01', '1714667765.jpg', '1714667766.jpg', '2024-04-30 19:57:22', '2024-05-02 10:36:06');

-- --------------------------------------------------------

--
-- Table structure for table `variant_attributes`
--

CREATE TABLE `variant_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variant_attributes`
--

INSERT INTO `variant_attributes` (`id`, `variant_id`, `attribute_id`, `created_at`, `updated_at`) VALUES
(472, 318, 458, '2025-01-15 22:53:50', '2025-01-15 22:53:50'),
(473, 318, 459, '2025-01-15 22:53:50', '2025-01-15 22:53:50'),
(474, 319, 460, '2025-01-15 22:53:50', '2025-01-15 22:53:50'),
(475, 319, 461, '2025-01-15 22:53:50', '2025-01-15 22:53:50'),
(476, 320, 462, '2025-01-15 22:53:50', '2025-01-15 22:53:50'),
(477, 320, 463, '2025-01-15 22:53:50', '2025-01-15 22:53:50'),
(478, 321, 464, '2025-01-15 22:53:50', '2025-01-15 22:53:50'),
(479, 321, 465, '2025-01-15 22:53:50', '2025-01-15 22:53:50'),
(480, 322, 466, '2025-01-15 22:53:50', '2025-01-15 22:53:50'),
(481, 322, 467, '2025-01-15 22:53:50', '2025-01-15 22:53:50'),
(492, 328, 478, '2025-01-15 23:07:43', '2025-01-15 23:07:43'),
(493, 328, 479, '2025-01-15 23:07:43', '2025-01-15 23:07:43'),
(494, 329, 480, '2025-01-15 23:07:43', '2025-01-15 23:07:43'),
(495, 329, 481, '2025-01-15 23:07:43', '2025-01-15 23:07:43'),
(496, 330, 482, '2025-01-15 23:07:43', '2025-01-15 23:07:43'),
(497, 330, 483, '2025-01-15 23:07:43', '2025-01-15 23:07:43'),
(512, 339, 498, '2025-01-19 02:03:33', '2025-01-19 02:03:33'),
(513, 339, 499, '2025-01-19 02:03:33', '2025-01-19 02:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `varients`
--

CREATE TABLE `varients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webmessages`
--

CREATE TABLE `webmessages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_infos`
--

CREATE TABLE `web_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appName` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `weblogo` varchar(255) NOT NULL,
  `footerlogo` varchar(255) DEFAULT NULL,
  `webfavicon` varchar(255) NOT NULL,
  `marquee` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) NOT NULL,
  `entitle` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_infos`
--

INSERT INTO `web_infos` (`id`, `appName`, `description`, `weblogo`, `footerlogo`, `webfavicon`, `marquee`, `copyright`, `entitle`, `created_at`, `updated_at`) VALUES
(1, 'ATRIPZ', 'ATRIPZ', '1736919206.png', 'footer_1736921698.png', '1736940922.png', 'Welcome to Our WebSite ATripZ', '2024 © All rights reserved by ATRIPZ', 'Your ultimate Lifestyle.', '2024-05-05 05:14:15', '2025-01-19 02:40:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutuses`
--
ALTER TABLE `aboutuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applied_coupones`
--
ALTER TABLE `applied_coupones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applied_coupones_customer_id_foreign` (`customer_id`),
  ADD KEY `applied_coupones_order_id_foreign` (`order_id`),
  ADD KEY `applied_coupones_coupone_id_foreign` (`coupone_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `camp_products`
--
ALTER TABLE `camp_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `camp_products_campaign_id_foreign` (`campaign_id`),
  ADD KEY `camp_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_categories_id_unique` (`categories_id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `category_size_headers`
--
ALTER TABLE `category_size_headers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_size_headers_category_id_foreign` (`category_id`),
  ADD KEY `category_size_headers_size_id_foreign` (`size_id`),
  ADD KEY `category_size_headers_size_header_id_foreign` (`size_header_id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactinfos`
--
ALTER TABLE `contactinfos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_zones`
--
ALTER TABLE `delivery_zones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_zones_district_id_foreign` (`district_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feature_categories`
--
ALTER TABLE `feature_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feature_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `feature_products`
--
ALTER TABLE `feature_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature_products_with_pivot`
--
ALTER TABLE `feature_products_with_pivot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feature_products_with_pivot_feature_products_id_foreign` (`feature_products_id`),
  ADD KEY `feature_products_with_pivot_products_id_foreign` (`products_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer_types`
--
ALTER TABLE `offer_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_track_id` (`order_track_id`),
  ADD UNIQUE KEY `Invoice No` (`invoice_no`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `orderstatuses`
--
ALTER TABLE `orderstatuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderstatuses_order_id_foreign` (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_color_id_foreign` (`color_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `postcodes`
--
ALTER TABLE `postcodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postcodes_division_id_foreign` (`division_id`),
  ADD KEY `postcodes_district_id_foreign` (`district_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `products_colors`
--
ALTER TABLE `products_colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_colors_product_id_foreign` (`product_id`),
  ADD KEY `products_colors_color_id_foreign` (`color_id`);

--
-- Indexes for table `products_sizes`
--
ALTER TABLE `products_sizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_sizes_product_id_foreign` (`product_id`),
  ADD KEY `products_sizes_size_id_foreign` (`size_id`);

--
-- Indexes for table `product_additionalinfos`
--
ALTER TABLE `product_additionalinfos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_additionalinfos_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_attributes_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_color_images`
--
ALTER TABLE `product_color_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_color_images_product_id_foreign` (`product_id`),
  ADD KEY `product_color_images_color_id_foreign` (`color_id`);

--
-- Indexes for table `product_extras`
--
ALTER TABLE `product_extras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_extras_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_image_with_colors`
--
ALTER TABLE `product_image_with_colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_image_with_colors_color_id_foreign` (`color_id`),
  ADD KEY `product_image_with_colors_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_overviews`
--
ALTER TABLE `product_overviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_overviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_prices`
--
ALTER TABLE `product_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_prices_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_stocks_product_id_foreign` (`product_id`),
  ADD KEY `product_stocks_color_id_foreign` (`color_id`) USING BTREE;

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_tags_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_thumbnails`
--
ALTER TABLE `product_thumbnails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_thumbnails_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variants_product_id_foreign` (`product_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `register_customers`
--
ALTER TABLE `register_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `register_customers_email_unique` (`email`),
  ADD KEY `register_customers_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_customer_id_foreign` (`customer_id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`),
  ADD KEY `area` (`area`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialinfos`
--
ALTER TABLE `socialinfos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specifications`
--
ALTER TABLE `specifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specifications_product_id_foreign` (`product_id`);

--
-- Indexes for table `specification_features`
--
ALTER TABLE `specification_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specification_features_specification_id_foreign` (`specification_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subcategories_slug_unique` (`slug`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_customer_id_foreign` (`customer_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Indexes for table `upazillas`
--
ALTER TABLE `upazillas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upazillas_district_id_foreign` (`district_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variant_attributes`
--
ALTER TABLE `variant_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variant_attributes_variant_id_foreign` (`variant_id`),
  ADD KEY `variant_attributes_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `varients`
--
ALTER TABLE `varients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webmessages`
--
ALTER TABLE `webmessages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_infos`
--
ALTER TABLE `web_infos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutuses`
--
ALTER TABLE `aboutuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `applied_coupones`
--
ALTER TABLE `applied_coupones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `camp_products`
--
ALTER TABLE `camp_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `category_size_headers`
--
ALTER TABLE `category_size_headers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `contactinfos`
--
ALTER TABLE `contactinfos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT for table `delivery_zones`
--
ALTER TABLE `delivery_zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feature_categories`
--
ALTER TABLE `feature_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `feature_products`
--
ALTER TABLE `feature_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feature_products_with_pivot`
--
ALTER TABLE `feature_products_with_pivot`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offer_types`
--
ALTER TABLE `offer_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=377;

--
-- AUTO_INCREMENT for table `orderstatuses`
--
ALTER TABLE `orderstatuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=320;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `postcodes`
--
ALTER TABLE `postcodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1350;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `products_colors`
--
ALTER TABLE `products_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT for table `products_sizes`
--
ALTER TABLE `products_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `product_additionalinfos`
--
ALTER TABLE `product_additionalinfos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=500;

--
-- AUTO_INCREMENT for table `product_color_images`
--
ALTER TABLE `product_color_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `product_extras`
--
ALTER TABLE `product_extras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=474;

--
-- AUTO_INCREMENT for table `product_image_with_colors`
--
ALTER TABLE `product_image_with_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=356;

--
-- AUTO_INCREMENT for table `product_overviews`
--
ALTER TABLE `product_overviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `product_prices`
--
ALTER TABLE `product_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `product_thumbnails`
--
ALTER TABLE `product_thumbnails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `register_customers`
--
ALTER TABLE `register_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `socialinfos`
--
ALTER TABLE `socialinfos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `specifications`
--
ALTER TABLE `specifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `specification_features`
--
ALTER TABLE `specification_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=980;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `upazillas`
--
ALTER TABLE `upazillas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=496;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `variant_attributes`
--
ALTER TABLE `variant_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=514;

--
-- AUTO_INCREMENT for table `varients`
--
ALTER TABLE `varients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webmessages`
--
ALTER TABLE `webmessages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `web_infos`
--
ALTER TABLE `web_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applied_coupones`
--
ALTER TABLE `applied_coupones`
  ADD CONSTRAINT `applied_coupones_coupone_id_foreign` FOREIGN KEY (`coupone_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `applied_coupones_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `applied_coupones_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `camp_products`
--
ALTER TABLE `camp_products`
  ADD CONSTRAINT `camp_products_campaign_id_foreign` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `camp_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `delivery_zones`
--
ALTER TABLE `delivery_zones`
  ADD CONSTRAINT `delivery_zones_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feature_categories`
--
ALTER TABLE `feature_categories`
  ADD CONSTRAINT `feature_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feature_products_with_pivot`
--
ALTER TABLE `feature_products_with_pivot`
  ADD CONSTRAINT `feature_products_with_pivot_feature_products_id_foreign` FOREIGN KEY (`feature_products_id`) REFERENCES `feature_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `feature_products_with_pivot_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orderstatuses`
--
ALTER TABLE `orderstatuses`
  ADD CONSTRAINT `orderstatuses_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `postcodes`
--
ALTER TABLE `postcodes`
  ADD CONSTRAINT `postcodes_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `postcodes_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD CONSTRAINT `product_attributes_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_color_images`
--
ALTER TABLE `product_color_images`
  ADD CONSTRAINT `product_color_images_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_color_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_image_with_colors`
--
ALTER TABLE `product_image_with_colors`
  ADD CONSTRAINT `product_image_with_colors_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_image_with_colors_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD CONSTRAINT `product_stocks_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_stocks_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD CONSTRAINT `product_tags_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `specifications`
--
ALTER TABLE `specifications`
  ADD CONSTRAINT `specifications_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `specification_features`
--
ALTER TABLE `specification_features`
  ADD CONSTRAINT `specification_features_specification_id_foreign` FOREIGN KEY (`specification_id`) REFERENCES `specifications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `variant_attributes`
--
ALTER TABLE `variant_attributes`
  ADD CONSTRAINT `variant_attributes_ibfk_1` FOREIGN KEY (`attribute_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `variant_attributes_ibfk_2` FOREIGN KEY (`variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
