-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2024 at 04:20 PM
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
-- Database: `hospitals`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
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
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$oF6wWpkcEJn0Gm0N8UkgG.sn.ssPlp6718HVbvjOqvRclNIWr8KhG', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ambulances`
--

CREATE TABLE `ambulances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `car_number` varchar(255) NOT NULL,
  `car_model` varchar(255) NOT NULL,
  `car_year_made` varchar(255) NOT NULL,
  `driver_license_number` varchar(255) NOT NULL,
  `driver_phone` varchar(255) NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 1,
  `car_type` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ambulance_translations`
--

CREATE TABLE `ambulance_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `driver_name` varchar(255) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `ambulance_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `created_at`, `updated_at`) VALUES
(1, '2024-04-07 18:55:31', '2024-04-07 18:55:31'),
(2, '2024-04-07 18:55:32', '2024-04-07 18:55:32'),
(3, '2024-04-07 18:55:32', '2024-04-07 18:55:32'),
(4, '2024-04-07 18:55:32', '2024-04-07 18:55:32'),
(5, '2024-04-07 18:55:32', '2024-04-07 18:55:32'),
(6, '2024-04-07 18:55:32', '2024-04-07 18:55:32'),
(7, '2024-04-07 18:55:32', '2024-04-07 18:55:32');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_doctor`
--

CREATE TABLE `appointment_doctor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `appointment_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointment_doctor`
--

INSERT INTO `appointment_doctor` (`id`, `doctor_id`, `appointment_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 1, 6, NULL, NULL),
(3, 2, 3, NULL, NULL),
(4, 2, 5, NULL, NULL),
(5, 3, 7, NULL, NULL),
(6, 4, 2, NULL, NULL),
(7, 4, 3, NULL, NULL),
(8, 4, 6, NULL, NULL),
(9, 5, 2, NULL, NULL),
(10, 5, 3, NULL, NULL),
(11, 5, 4, NULL, NULL),
(12, 6, 1, NULL, NULL),
(13, 6, 3, NULL, NULL),
(14, 6, 4, NULL, NULL),
(15, 6, 5, NULL, NULL),
(16, 7, 3, NULL, NULL),
(17, 7, 4, NULL, NULL),
(18, 7, 5, NULL, NULL),
(19, 7, 7, NULL, NULL),
(20, 8, 2, NULL, NULL),
(21, 9, 1, NULL, NULL),
(22, 9, 6, NULL, NULL),
(23, 10, 5, NULL, NULL),
(24, 10, 6, NULL, NULL),
(25, 10, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appointment_translations`
--

CREATE TABLE `appointment_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `appointment_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointment_translations`
--

INSERT INTO `appointment_translations` (`id`, `locale`, `name`, `appointment_id`) VALUES
(1, 'en', 'satrday', 1),
(2, 'en', 'sunday', 2),
(3, 'en', 'monday', 3),
(4, 'en', 'tuseday', 4),
(5, 'en', 'wednsday', 5),
(6, 'en', 'thersday', 6),
(7, 'en', 'friday', 7);

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_email` varchar(255) NOT NULL COMMENT 'المرسل',
  `receiver_email` varchar(255) NOT NULL COMMENT 'المستقبل',
  `last_time_message` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `sender_email`, `receiver_email`, `last_time_message`, `created_at`, `updated_at`) VALUES
(8, 'b@gmail.com', 'flavie.stiedemann@example.net', '2024-07-15 09:53:43', '2024-05-12 03:34:24', '2024-07-15 09:53:43');

-- --------------------------------------------------------

--
-- Table structure for table `diagnostics`
--

CREATE TABLE `diagnostics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `review_date` datetime DEFAULT NULL,
  `diagnosis` longtext NOT NULL,
  `medicine` longtext NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `email`, `email_verified_at`, `password`, `section_id`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(1, 'flavie.stiedemann@example.net', '2024-04-07 18:55:33', '$2y$10$/Pwlw362JUBv/IoXFnAfsOfyJj2NqsW7efqXkUAtptCRns0t4h3qa', 4, '1-954-305-3561', 1, '2024-04-07 18:55:34', '2024-04-07 18:55:34'),
(2, 'labadie.hudson@example.net', '2024-04-07 18:55:33', '$2y$10$bLX3Rzm95tJ468XvOHCeJeRjO7kI0P.4dLUUEZCBzW/1rjxyEcVI2', 4, '+1-541-764-0539', 1, '2024-04-07 18:55:34', '2024-04-07 18:55:34'),
(3, 'cpollich@example.org', '2024-04-07 18:55:34', '$2y$10$DSGKaGSOwB0KmWqpMNPeLendJew5UxpIe4QDDu5ctb8K5eoyhOKO6', 4, '+1.707.269.6088', 1, '2024-04-07 18:55:34', '2024-04-07 18:55:34'),
(4, 'bertha52@example.net', '2024-04-07 18:55:34', '$2y$10$bWvJ9uqxD.dI8Ka4qKJ4eOT6oKixjJ8lnfRwUePXUL48CoKzArGYy', 4, '(901) 901-6142', 1, '2024-04-07 18:55:35', '2024-04-07 18:55:35'),
(5, 'shaylee.bednar@example.net', '2024-04-07 18:55:34', '$2y$10$WWzAlmehS12NZEfGM4kOHeIyiQs8d6hGPjnKamHtAOM8FJyU2Z9R6', 5, '626.552.1940', 1, '2024-04-07 18:55:35', '2024-04-07 18:55:35'),
(6, 'candido38@example.org', '2024-04-07 18:55:34', '$2y$10$xewhljWu5dR3/Pnl.sk.IuTTxNOQasH42QhhuolLIobSXR513mgTe', 4, '+1-941-630-9906', 1, '2024-04-07 18:55:35', '2024-04-07 18:55:35'),
(7, 'brown.melyssa@example.com', '2024-04-07 18:55:34', '$2y$10$nJHmKjNRDT7HzwPe5joKnu7lNfiUYdOrFiLB51RKT.ceRpLxJxNDS', 3, '848.847.4758', 1, '2024-04-07 18:55:35', '2024-04-07 18:55:35'),
(8, 'jena15@example.net', '2024-04-07 18:55:34', '$2y$10$/AZQdKjz/./Otd7m0D399OWKQc5Pl0093K34KRxqpo1j4PQRaIEEK', 1, '1-818-687-0247', 1, '2024-04-07 18:55:35', '2024-04-07 18:55:35'),
(9, 'helene51@example.net', '2024-04-07 18:55:34', '$2y$10$7HE7/O3MHEOHTHiWwiVa..aojIXB2BZEMseNmauzh/uZO/hEWdn.q', 4, '+1-563-496-5541', 1, '2024-04-07 18:55:35', '2024-04-07 18:55:35'),
(10, 'brown.lenora@example.com', '2024-04-07 18:55:34', '$2y$10$VdfMqh.qKmJXhR5ABNBdBOv5Lc5Mjp.sqeWkVjOEpon5dVgNaQAKO', 2, '+1-269-699-9367', 1, '2024-04-07 18:55:35', '2024-04-07 18:55:35');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_translations`
--

CREATE TABLE `doctor_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_translations`
--

INSERT INTO `doctor_translations` (`id`, `locale`, `name`, `doctor_id`) VALUES
(1, 'en', 'Nya Moore', 1),
(2, 'en', 'Tierra Hammes', 2),
(3, 'en', 'Aletha Reichel', 3),
(4, 'en', 'Ms. Opal Gutkowski Jr.', 4),
(5, 'en', 'Bonnie Daniel', 5),
(6, 'en', 'Grady Cummerata DDS', 6),
(7, 'en', 'Mrs. Heaven Hill Sr.', 7),
(8, 'en', 'Isabel Graham', 8),
(9, 'en', 'Donnie Hessel', 9),
(10, 'en', 'Dovie Spencer', 10);

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
-- Table structure for table `fund_accounts`
--

CREATE TABLE `fund_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `receipt_id` bigint(20) UNSIGNED DEFAULT NULL,
  `Payment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `Debit` decimal(8,2) DEFAULT NULL,
  `credit` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fund_accounts`
--

INSERT INTO `fund_accounts` (`id`, `date`, `invoice_id`, `receipt_id`, `Payment_id`, `Debit`, `credit`, `created_at`, `updated_at`) VALUES
(32, '2024-05-04', 34, NULL, NULL, 35.10, 0.00, '2024-05-04 20:59:14', '2024-05-04 20:59:14'),
(33, '2024-05-05', 35, NULL, NULL, 117.00, 0.00, '2024-05-04 22:29:12', '2024-05-04 22:29:12');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Total_before_discount` decimal(8,2) NOT NULL,
  `discount_value` decimal(8,2) NOT NULL,
  `Total_after_discount` decimal(8,2) NOT NULL,
  `tax_rate` varchar(255) NOT NULL,
  `Total_with_tax` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `Total_before_discount`, `discount_value`, `Total_after_discount`, `tax_rate`, `Total_with_tax`, `created_at`, `updated_at`) VALUES
(1, 120.00, 20.00, 100.00, '17', 117.00, '2024-04-07 19:05:56', '2024-04-07 19:08:51'),
(3, 80.00, 16.00, 64.00, '17', 74.88, '2024-04-07 19:07:32', '2024-04-07 19:07:32');

-- --------------------------------------------------------

--
-- Table structure for table `group_invoices`
--

CREATE TABLE `group_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_date` date NOT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `Group_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `discount_value` double(8,2) NOT NULL DEFAULT 0.00,
  `tax_rate` varchar(255) NOT NULL,
  `tax_value` varchar(255) NOT NULL,
  `total_with_tax` double(8,2) NOT NULL DEFAULT 0.00,
  `type` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_translations`
--

CREATE TABLE `group_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `Group_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_translations`
--

INSERT INTO `group_translations` (`id`, `locale`, `name`, `notes`, `Group_id`) VALUES
(1, 'en', 'skincare ', NULL, 1),
(2, 'en', 'skincare Facial ', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) NOT NULL,
  `imageable_id` int(11) NOT NULL,
  `imageable_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `filename`, `imageable_id`, `imageable_type`, `created_at`, `updated_at`) VALUES
(1, '3.jpg', 2, 'App\\Models\\Doctor', '2024-04-07 18:55:36', '2024-04-07 18:55:36'),
(2, '4.jpg', 4, 'App\\Models\\Doctor', '2024-04-07 18:55:36', '2024-04-07 18:55:36'),
(3, '3.jpg', 5, 'App\\Models\\Doctor', '2024-04-07 18:55:36', '2024-04-07 18:55:36'),
(4, '3.jpg', 1, 'App\\Models\\Doctor', '2024-04-07 18:55:36', '2024-04-07 18:55:36'),
(5, '4.jpg', 1, 'App\\Models\\Doctor', '2024-04-07 18:55:37', '2024-04-07 18:55:37'),
(6, '3.jpg', 6, 'App\\Models\\Doctor', '2024-04-07 18:55:37', '2024-04-07 18:55:37'),
(7, '3.jpg', 6, 'App\\Models\\Doctor', '2024-04-07 18:55:37', '2024-04-07 18:55:37'),
(8, '4.jpg', 1, 'App\\Models\\Doctor', '2024-04-07 18:55:37', '2024-04-07 18:55:37'),
(9, '1.jpg', 7, 'App\\Models\\Doctor', '2024-04-07 18:55:37', '2024-04-07 18:55:37'),
(10, '3.jpg', 9, 'App\\Models\\Doctor', '2024-04-07 18:55:37', '2024-04-07 18:55:37'),
(11, '2.jpg', 1, 'App\\Models\\Ray', '2024-04-11 15:18:51', '2024-04-11 15:18:51'),
(12, 'x-ray.jpg', 1, 'App\\Models\\Ray', '2024-04-13 07:10:57', '2024-04-13 07:10:57'),
(13, 'x-ray.jpg', 2, 'App\\Models\\Ray', '2024-04-13 19:55:54', '2024-04-13 19:55:54'),
(14, 'WhatsApp Image 2024-03-27 at 11.04.57 PM.jpeg', 3, 'App\\Models\\Ray', '2024-04-13 20:17:02', '2024-04-13 20:17:02'),
(15, 'Screenshot_23-3-2024_123631_.jpeg', 3, 'App\\Models\\Ray', '2024-04-13 20:17:02', '2024-04-13 20:17:02'),
(16, 'WhatsApp Image 2024-03-21 at 12.08.33 PM (1).jpeg', 3, 'App\\Models\\Ray', '2024-04-13 20:17:02', '2024-04-13 20:17:02'),
(17, '1.jpg', 1, 'App\\Models\\Laboratorie', '2024-04-15 17:05:01', '2024-04-15 17:05:01');

-- --------------------------------------------------------

--
-- Table structure for table `insurances`
--

CREATE TABLE `insurances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `insurance_code` varchar(255) NOT NULL,
  `discount_percentage` varchar(255) NOT NULL,
  `Company_rate` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `insurance_translations`
--

CREATE TABLE `insurance_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `insurance_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_type` int(11) NOT NULL,
  `invoice_date` date NOT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `Group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `Service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `discount_value` double(8,2) NOT NULL DEFAULT 0.00,
  `tax_rate` varchar(255) NOT NULL,
  `tax_value` varchar(255) NOT NULL,
  `total_with_tax` double(8,2) NOT NULL DEFAULT 0.00,
  `type` int(11) NOT NULL DEFAULT 1,
  `invoice_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_type`, `invoice_date`, `patient_id`, `doctor_id`, `section_id`, `Group_id`, `Service_id`, `price`, `discount_value`, `tax_rate`, `tax_value`, `total_with_tax`, `type`, `invoice_status`, `created_at`, `updated_at`) VALUES
(34, 1, '2024-05-04', 1, 1, 4, NULL, 1, 30.00, 0.00, '17', '5.1', 35.10, 1, 1, '2024-05-04 20:59:14', '2024-05-04 20:59:14'),
(35, 2, '2024-05-05', 1, 2, 4, 1, NULL, 120.00, 20.00, '17', '17', 117.00, 1, 1, '2024-05-04 22:29:11', '2024-05-04 22:29:11');

-- --------------------------------------------------------

--
-- Table structure for table `laboratories`
--

CREATE TABLE `laboratories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description_employee` longtext DEFAULT NULL,
  `case` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laboratorie_employees`
--

CREATE TABLE `laboratorie_employees` (
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
-- Dumping data for table `laboratorie_employees`
--

INSERT INTO `laboratorie_employees` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ahmad', 'a@gmail.com', NULL, '$2y$10$XoLvVPrCRRJNpnxUZ/L/XOROLJ3b59278QEb25IsVqmR6b7vL8EbG', NULL, '2024-04-15 15:46:22', '2024-04-15 15:46:22');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) UNSIGNED NOT NULL,
  `sender_email` varchar(255) NOT NULL,
  `receiver_email` varchar(255) NOT NULL,
  `read` tinyint(1) DEFAULT 0,
  `body` text DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `sender_email`, `receiver_email`, `read`, `body`, `type`, `created_at`, `updated_at`) VALUES
(17, 8, 'b@gmail.com', 'flavie.stiedemann@example.net', 0, 'السلام عليكم', NULL, '2024-05-12 03:34:24', '2024-05-12 03:34:24'),
(18, 8, 'b@gmail.com', 'flavie.stiedemann@example.net', 0, 'fffff', NULL, '2024-05-12 03:34:32', '2024-05-12 03:34:32'),
(19, 8, 'flavie.stiedemann@example.net', 'b@gmail.com', 0, 'aa', NULL, '2024-05-12 03:34:45', '2024-05-12 03:34:45'),
(20, 8, 'flavie.stiedemann@example.net', 'b@gmail.com', 0, 'aaa', NULL, '2024-07-15 09:47:59', '2024-07-15 09:47:59'),
(21, 8, 'b@gmail.com', 'flavie.stiedemann@example.net', 0, 'from me', NULL, '2024-07-15 09:53:43', '2024-07-15 09:53:43');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_17_221454_create_admins_table', 1),
(6, '2024_03_19_234446_create_sections_table', 1),
(7, '2024_03_19_234553_create_section_translations_table', 1),
(8, '2024_03_20_190029_create_doctors_table', 1),
(9, '2024_03_20_190217_create_doctor_translations_table', 1),
(10, '2024_03_20_192424_create_images_table', 1),
(11, '2024_03_27_120726_create_appointments-table', 1),
(12, '2024_03_27_120850_create_appointment-translations_table', 1),
(13, '2024_03_27_140208_create_appointment_doctor_table', 1),
(14, '2024_03_28_184401_create_services_table', 1),
(15, '2024_03_28_203456_create_service_translations', 1),
(16, '2024_03_28_220554_create_groups_table', 1),
(17, '2024_03_28_220647_create_group_translations_table', 1),
(18, '2024_03_28_221158_create_pivot_service_group_table', 1),
(19, '2024_03_30_114902_create_insurances_table', 1),
(20, '2024_03_30_114927_create_insurance_translations_table', 1),
(21, '2024_03_30_151937_create_ambulances_table', 1),
(22, '2024_03_30_152409_create_ambulance_translations_table', 1),
(23, '2024_03_30_152505_create_patients_table', 1),
(24, '2024_03_30_152531_create_patient_translations_table', 1),
(25, '2024_04_02_223642_create_invoices_table', 1),
(26, '2024_04_03_130340_single_invoices_table', 1),
(27, '2024_04_03_130342_create_group_invoices_table', 1),
(28, '2024_04_03_130350_create_payment_accounts_table', 1),
(29, '2024_04_03_133451_create_recipt_accounts_table', 1),
(30, '2024_04_03_133704_create_patient_accounts_table', 1),
(31, '2024_04_03_134112_create_fund_accounts_table', 1),
(32, '2024_04_07_151139_create_diagnostics_table', 1),
(33, '2024_04_07_165141_create_ray_employees_table', 1),
(34, '2024_04_07_204420_create_rays_table', 1),
(35, '2024_04_07_204825_create_laboratorie_employees_table', 1),
(36, '2024_04_07_204925_create_laboratories_table', 1),
(37, '2024_04_23_211610_create_notifications_table', 2),
(38, '2024_05_06_220606_create_conversations_table', 3),
(39, '2024_05_06_220712_create_messages_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reader_status` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `reader_status`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(26, 0, 2, 'كشف جديد : banan omar', '2024-05-04 20:59:14', '2024-05-04 20:59:14');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Date_Birth` date NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Blood_Group` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `email`, `password`, `Date_Birth`, `Phone`, `Gender`, `Blood_Group`, `created_at`, `updated_at`) VALUES
(1, 'b@gmail.com', '$2y$10$K7NU8SBnbAaW54b63hO3..1BG0MVSiV9Y90QmcgYdDebwpgudi0Wu', '2024-04-08', '07888888', '2', 'A+', '2024-04-07 19:10:19', '2024-07-15 10:52:38'),
(2, 'b11@gmail.com', '$2y$10$rgYQJEcjlxGVZ/KhkroypOxUkMITzpM.5hbbLju9Hno/9agczIb1K', '2024-04-15', '07888884', '1', 'A+', '2024-04-13 20:13:45', '2024-07-15 10:52:53');

-- --------------------------------------------------------

--
-- Table structure for table `patient_accounts`
--

CREATE TABLE `patient_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `receipt_id` bigint(20) UNSIGNED DEFAULT NULL,
  `Payment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `Debit` decimal(8,2) DEFAULT NULL,
  `credit` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient_translations`
--

CREATE TABLE `patient_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patient_translations`
--

INSERT INTO `patient_translations` (`id`, `locale`, `name`, `Address`, `patient_id`) VALUES
(1, 'en', 'banan omar', 'Irbid mall', 1),
(2, 'en', 'ali ahmad', 'irbid', 2),
(3, 'ar', 'بنان عمر', 'اربد', 1),
(4, 'ar', 'علي', 'اربد', 2);

-- --------------------------------------------------------

--
-- Table structure for table `payment_accounts`
--

CREATE TABLE `payment_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pivot_service_group`
--

CREATE TABLE `pivot_service_group` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Group_id` bigint(20) UNSIGNED NOT NULL,
  `Service_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pivot_service_group`
--

INSERT INTO `pivot_service_group` (`id`, `Group_id`, `Service_id`, `quantity`, `created_at`, `updated_at`) VALUES
(4, 3, 1, 1, NULL, NULL),
(5, 3, 3, 1, NULL, NULL),
(6, 1, 1, 1, NULL, NULL),
(7, 1, 2, 1, NULL, NULL),
(8, 1, 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rays`
--

CREATE TABLE `rays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description_employee` longtext DEFAULT NULL,
  `case` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ray_employees`
--

CREATE TABLE `ray_employees` (
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
-- Dumping data for table `ray_employees`
--

INSERT INTO `ray_employees` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'rami', 'r@gmail.com', NULL, '$2y$10$itNV.7ngTBJxZnvOSLoC1OiYCKeD9qIZVja51EVOLZ5nNmZOc0HWa', NULL, '2024-04-11 08:24:17', '2024-04-11 08:24:17');

-- --------------------------------------------------------

--
-- Table structure for table `recipt_accounts`
--

CREATE TABLE `recipt_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `created_at`, `updated_at`) VALUES
(1, '2024-04-07 18:55:33', '2024-04-07 18:55:33'),
(2, '2024-04-07 18:55:33', '2024-04-07 18:55:33'),
(3, '2024-04-07 18:55:33', '2024-04-07 18:55:33'),
(4, '2024-04-07 18:55:33', '2024-04-07 18:55:33'),
(5, '2024-04-07 18:55:33', '2024-04-07 18:55:33');

-- --------------------------------------------------------

--
-- Table structure for table `section_translations`
--

CREATE TABLE `section_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `description` longtext NOT NULL DEFAULT 'description',
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `section_translations`
--

INSERT INTO `section_translations` (`id`, `locale`, `description`, `section_id`, `name`) VALUES
(1, 'en', 'Fugit voluptatem molestiae excepturi ipsam praesentium consequatur. Ab laboriosam enim sed. Iusto voluptates a facilis molestias suscipit.', 1, 'Department of Neurology'),
(2, 'en', 'Alias sequi fugiat corrupti. Nesciunt nesciunt velit sed qui.', 2, 'Department of Obstetrics and Gynecology'),
(3, 'en', 'Eveniet eum dolor nihil. Veniam eos quis nihil quod sequi omnis saepe. Dolorem et officiis nemo nobis sunt ipsa. Molestias perferendis rem et dolores ipsam perspiciatis aut pariatur. Dolorem voluptatum eum maiores quae aut impedit incidunt.', 3, 'children section'),
(4, 'en', 'Sit sed incidunt ipsum illum. Modi odit et ipsam. Aliquam et quis harum consequatur est quae delectus. Aut eaque et exercitationem id delectus illum non consequuntur. Debitis nisi iure necessitatibus laboriosam et dolorum alias.', 4, 'Department of Internal Affairs'),
(5, 'en', 'Iusto suscipit voluptatem et hic et cupiditate aut. Dolor possimus dolorem eos aut et blanditiis. Maxime cum rerum amet quaerat totam sunt voluptate. Asperiores nemo sit voluptatum nemo perferendis aspernatur.', 5, 'Department of Surgery');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `price`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 30.00, NULL, 1, '2024-04-07 19:03:33', '2024-04-07 19:03:33'),
(2, 40.00, NULL, 1, '2024-04-07 19:03:47', '2024-04-07 19:03:47'),
(3, 50.00, NULL, 1, '2024-04-07 19:04:20', '2024-04-07 19:04:20');

-- --------------------------------------------------------

--
-- Table structure for table `service_translations`
--

CREATE TABLE `service_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `Service_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_translations`
--

INSERT INTO `service_translations` (`id`, `locale`, `name`, `Service_id`) VALUES
(1, 'en', 'Hydra Facial', 1),
(2, 'en', 'Carbon peeling', 2),
(3, 'en', 'Collagen Facial', 3);

-- --------------------------------------------------------

--
-- Table structure for table `single_invoices`
--

CREATE TABLE `single_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_date` date NOT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `Service_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `discount_value` double(8,2) NOT NULL DEFAULT 0.00,
  `tax_rate` varchar(255) NOT NULL,
  `tax_value` varchar(255) NOT NULL,
  `total_with_tax` double(8,2) NOT NULL DEFAULT 0.00,
  `type` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'user', 'user@gmail.com', NULL, '$2y$10$wZ8TY249SFn8L7uTlKA/.efPqjldpaU6SqxMWZaPbRpa3iXYDkYxW', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `ambulances`
--
ALTER TABLE `ambulances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ambulance_translations`
--
ALTER TABLE `ambulance_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ambulance_translations_ambulance_id_locale_driver_name_unique` (`ambulance_id`,`locale`,`driver_name`),
  ADD KEY `ambulance_translations_locale_index` (`locale`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment_doctor`
--
ALTER TABLE `appointment_doctor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointment_doctor_doctor_id_foreign` (`doctor_id`),
  ADD KEY `appointment_doctor_appointment_id_foreign` (`appointment_id`);

--
-- Indexes for table `appointment_translations`
--
ALTER TABLE `appointment_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `appointment_translations_appointment_id_locale_unique` (`appointment_id`,`locale`),
  ADD KEY `appointment_translations_locale_index` (`locale`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diagnostics`
--
ALTER TABLE `diagnostics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diagnostics_invoice_id_foreign` (`invoice_id`),
  ADD KEY `diagnostics_patient_id_foreign` (`patient_id`),
  ADD KEY `diagnostics_doctor_id_foreign` (`doctor_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doctors_email_unique` (`email`),
  ADD KEY `doctors_section_id_foreign` (`section_id`);

--
-- Indexes for table `doctor_translations`
--
ALTER TABLE `doctor_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doctor_translations_doctor_id_locale_unique` (`doctor_id`,`locale`),
  ADD KEY `doctor_translations_locale_index` (`locale`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fund_accounts`
--
ALTER TABLE `fund_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fund_accounts_invoice_id_foreign` (`invoice_id`),
  ADD KEY `fund_accounts_receipt_id_foreign` (`receipt_id`),
  ADD KEY `fund_accounts_payment_id_foreign` (`Payment_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_invoices`
--
ALTER TABLE `group_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_invoices_patient_id_foreign` (`patient_id`),
  ADD KEY `group_invoices_doctor_id_foreign` (`doctor_id`),
  ADD KEY `group_invoices_section_id_foreign` (`section_id`),
  ADD KEY `group_invoices_group_id_foreign` (`Group_id`);

--
-- Indexes for table `group_translations`
--
ALTER TABLE `group_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_translations_group_id_locale_name_unique` (`Group_id`,`locale`,`name`),
  ADD KEY `group_translations_locale_index` (`locale`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurances`
--
ALTER TABLE `insurances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurance_translations`
--
ALTER TABLE `insurance_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `insurance_translations_insurance_id_locale_name_unique` (`insurance_id`,`locale`,`name`),
  ADD KEY `insurance_translations_locale_index` (`locale`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_patient_id_foreign` (`patient_id`),
  ADD KEY `invoices_doctor_id_foreign` (`doctor_id`),
  ADD KEY `invoices_section_id_foreign` (`section_id`),
  ADD KEY `invoices_group_id_foreign` (`Group_id`),
  ADD KEY `invoices_service_id_foreign` (`Service_id`);

--
-- Indexes for table `laboratories`
--
ALTER TABLE `laboratories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laboratories_invoice_id_foreign` (`invoice_id`),
  ADD KEY `laboratories_patient_id_foreign` (`patient_id`),
  ADD KEY `laboratories_doctor_id_foreign` (`doctor_id`),
  ADD KEY `laboratories_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `laboratorie_employees`
--
ALTER TABLE `laboratorie_employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `laboratorie_employees_email_unique` (`email`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_conversation_id_foreign` (`conversation_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `patients_email_unique` (`email`),
  ADD UNIQUE KEY `patients_phone_unique` (`Phone`);

--
-- Indexes for table `patient_accounts`
--
ALTER TABLE `patient_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_accounts_patient_id_foreign` (`patient_id`),
  ADD KEY `patient_accounts_invoice_id_foreign` (`invoice_id`),
  ADD KEY `patient_accounts_receipt_id_foreign` (`receipt_id`),
  ADD KEY `patient_accounts_payment_id_foreign` (`Payment_id`);

--
-- Indexes for table `patient_translations`
--
ALTER TABLE `patient_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `patient_translations_patient_id_locale_unique` (`patient_id`,`locale`),
  ADD KEY `patient_translations_locale_index` (`locale`);

--
-- Indexes for table `payment_accounts`
--
ALTER TABLE `payment_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_accounts_patient_id_foreign` (`patient_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pivot_service_group`
--
ALTER TABLE `pivot_service_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pivot_service_group_group_id_foreign` (`Group_id`),
  ADD KEY `pivot_service_group_service_id_foreign` (`Service_id`);

--
-- Indexes for table `rays`
--
ALTER TABLE `rays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rays_invoice_id_foreign` (`invoice_id`),
  ADD KEY `rays_patient_id_foreign` (`patient_id`),
  ADD KEY `rays_doctor_id_foreign` (`doctor_id`),
  ADD KEY `rays_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `ray_employees`
--
ALTER TABLE `ray_employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ray_employees_email_unique` (`email`);

--
-- Indexes for table `recipt_accounts`
--
ALTER TABLE `recipt_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipt_accounts_patient_id_foreign` (`patient_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_translations`
--
ALTER TABLE `section_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `section_translations_section_id_locale_unique` (`section_id`,`locale`),
  ADD KEY `section_translations_locale_index` (`locale`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_translations`
--
ALTER TABLE `service_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `service_translations_service_id_locale_name_unique` (`Service_id`,`locale`,`name`),
  ADD KEY `service_translations_locale_index` (`locale`);

--
-- Indexes for table `single_invoices`
--
ALTER TABLE `single_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `single_invoices_patient_id_foreign` (`patient_id`),
  ADD KEY `single_invoices_doctor_id_foreign` (`doctor_id`),
  ADD KEY `single_invoices_section_id_foreign` (`section_id`),
  ADD KEY `single_invoices_service_id_foreign` (`Service_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ambulances`
--
ALTER TABLE `ambulances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ambulance_translations`
--
ALTER TABLE `ambulance_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `appointment_doctor`
--
ALTER TABLE `appointment_doctor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `appointment_translations`
--
ALTER TABLE `appointment_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `diagnostics`
--
ALTER TABLE `diagnostics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `doctor_translations`
--
ALTER TABLE `doctor_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fund_accounts`
--
ALTER TABLE `fund_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `group_invoices`
--
ALTER TABLE `group_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_translations`
--
ALTER TABLE `group_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `insurances`
--
ALTER TABLE `insurances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `insurance_translations`
--
ALTER TABLE `insurance_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `laboratories`
--
ALTER TABLE `laboratories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `laboratorie_employees`
--
ALTER TABLE `laboratorie_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient_accounts`
--
ALTER TABLE `patient_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient_translations`
--
ALTER TABLE `patient_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_accounts`
--
ALTER TABLE `payment_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pivot_service_group`
--
ALTER TABLE `pivot_service_group`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rays`
--
ALTER TABLE `rays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ray_employees`
--
ALTER TABLE `ray_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `recipt_accounts`
--
ALTER TABLE `recipt_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `section_translations`
--
ALTER TABLE `section_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service_translations`
--
ALTER TABLE `service_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `single_invoices`
--
ALTER TABLE `single_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ambulance_translations`
--
ALTER TABLE `ambulance_translations`
  ADD CONSTRAINT `ambulance_translations_ambulance_id_foreign` FOREIGN KEY (`ambulance_id`) REFERENCES `ambulances` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `appointment_doctor`
--
ALTER TABLE `appointment_doctor`
  ADD CONSTRAINT `appointment_doctor_appointment_id_foreign` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointment_doctor_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `appointment_translations`
--
ALTER TABLE `appointment_translations`
  ADD CONSTRAINT `appointment_translations_appointment_id_foreign` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `diagnostics`
--
ALTER TABLE `diagnostics`
  ADD CONSTRAINT `diagnostics_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `diagnostics_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `diagnostics_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `doctor_translations`
--
ALTER TABLE `doctor_translations`
  ADD CONSTRAINT `doctor_translations_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fund_accounts`
--
ALTER TABLE `fund_accounts`
  ADD CONSTRAINT `fund_accounts_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fund_accounts_payment_id_foreign` FOREIGN KEY (`Payment_id`) REFERENCES `payment_accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fund_accounts_receipt_id_foreign` FOREIGN KEY (`receipt_id`) REFERENCES `recipt_accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `group_invoices`
--
ALTER TABLE `group_invoices`
  ADD CONSTRAINT `group_invoices_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `group_invoices_group_id_foreign` FOREIGN KEY (`Group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `group_invoices_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `group_invoices_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `group_translations`
--
ALTER TABLE `group_translations`
  ADD CONSTRAINT `group_translations_group_id_foreign` FOREIGN KEY (`Group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `insurance_translations`
--
ALTER TABLE `insurance_translations`
  ADD CONSTRAINT `insurance_translations_insurance_id_foreign` FOREIGN KEY (`insurance_id`) REFERENCES `insurances` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoices_group_id_foreign` FOREIGN KEY (`Group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoices_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoices_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoices_service_id_foreign` FOREIGN KEY (`Service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `laboratories`
--
ALTER TABLE `laboratories`
  ADD CONSTRAINT `laboratories_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `laboratories_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `laboratorie_employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `laboratories_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `laboratories_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_conversation_id_foreign` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`);

--
-- Constraints for table `patient_accounts`
--
ALTER TABLE `patient_accounts`
  ADD CONSTRAINT `patient_accounts_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `patient_accounts_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `patient_accounts_payment_id_foreign` FOREIGN KEY (`Payment_id`) REFERENCES `payment_accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `patient_accounts_receipt_id_foreign` FOREIGN KEY (`receipt_id`) REFERENCES `recipt_accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `patient_translations`
--
ALTER TABLE `patient_translations`
  ADD CONSTRAINT `patient_translations_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_accounts`
--
ALTER TABLE `payment_accounts`
  ADD CONSTRAINT `payment_accounts_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pivot_service_group`
--
ALTER TABLE `pivot_service_group`
  ADD CONSTRAINT `pivot_service_group_group_id_foreign` FOREIGN KEY (`Group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pivot_service_group_service_id_foreign` FOREIGN KEY (`Service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rays`
--
ALTER TABLE `rays`
  ADD CONSTRAINT `rays_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rays_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `ray_employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rays_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rays_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recipt_accounts`
--
ALTER TABLE `recipt_accounts`
  ADD CONSTRAINT `recipt_accounts_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `section_translations`
--
ALTER TABLE `section_translations`
  ADD CONSTRAINT `section_translations_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_translations`
--
ALTER TABLE `service_translations`
  ADD CONSTRAINT `service_translations_service_id_foreign` FOREIGN KEY (`Service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `single_invoices`
--
ALTER TABLE `single_invoices`
  ADD CONSTRAINT `single_invoices_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `single_invoices_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `single_invoices_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `single_invoices_service_id_foreign` FOREIGN KEY (`Service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
